#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <complex.h>
#define N 100
#define PI 3.141592654

typedef struct {
    char real; // S_0_7
    char imag; // S_0_7
    int abs_o;
    float angle_o;
} comp_num; 


comp_num cal_abs_angel_origin(char real_i, char imag_i)
{
    comp_num c_num  = {0};
    float div_value = 0;
    c_num.real = real_i;
    c_num.imag = imag_i;
    c_num.abs_o = sqrt(c_num.real * c_num.real + c_num.imag * c_num.imag);
    
    div_value = ((float)(c_num.imag*128) / (float)(c_num.real*128));
    c_num.angle_o = atan(div_value);
    if((c_num.real&0x80))
        if((c_num.imag&0x80))
            c_num.angle_o = c_num.angle_o - PI;
        else
            c_num.angle_o = c_num.angle_o + PI;
    return c_num;
}

comp_num cal_abs_angel_partial_hard(char real_i, char imag_i)
{
    comp_num c_num  = {0};
    c_num.real = real_i;
    c_num.imag = imag_i;
    c_num.abs_o = sqrt(c_num.real * c_num.real + c_num.imag * c_num.imag);
    
    c_num.angle_o = atan(((float)(c_num.imag) / (float)(c_num.real)));
    if((c_num.real&0x80))
        if((c_num.imag&0x80))
            c_num.angle_o = c_num.angle_o - PI;
        else
            c_num.angle_o = c_num.angle_o + PI;
    return c_num;
}


comp_num cal_abs_ref(char real_i, char imag_i)
{
    comp_num c_num = {0};
    _Dcomplex num_z ={0};
    c_num.real = real_i;
    c_num.imag = imag_i;
    num_z = _Cbuild((double)c_num.real*128, ((double)c_num.imag*128));
    c_num.abs_o = cabs(num_z)/128;
    c_num.angle_o = carg(num_z);
    return c_num;
}

int main()
{
    comp_num res[N] = {0};
    comp_num res_ref[N] = {0};
    // data generation
    for (int i = 0; i < N; i++) {
        do {
            res[i].real = rand() % 256 - 128; // +- 128
            res[i].imag = rand() % 256 - 128; // +- 128
        } while (sqrt(res[i].real  * res[i].real  + res[i].imag  * res[i].imag )/ 128.0 < 1.0);
        // results generation
        res[i] = cal_abs_angel_origin(res[i].real, res[i].imag);
        res_ref[i] = cal_abs_ref(res[i].real, res[i].imag);

        // exam the results
        if((fabs((float)res[i].abs_o - (float)res_ref[i].abs_o) > 0.01)|(fabs(res[i].angle_o - res_ref[i].angle_o) > 0.01))
        {
            printf("There is a problem at index %d.\n", i);
            printf("res[%d].abs_o = %d.\t", i, res[i].abs_o);
            printf("res[%d].angle_o = %f.\n", i, res[i].angle_o);
            printf("res_ref[%d].abs_o = %d.\t", i, res_ref[i].abs_o);
            printf("res_ref[%d].angle_o = %f.\n", i, res_ref[i].angle_o);
            printf("Test failed.\n");
            break;
        }
        else if(i == N-1)
            printf("Test passed!\n");
    }

    return 1;
}