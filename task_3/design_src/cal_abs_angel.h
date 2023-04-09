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

comp_num cal_abs_angel_origin(char real_i, char imag_i);

comp_num cal_abs_angel_poly(char real_i, char imag_i, int pow_value);

comp_num cal_abs_ref(char real_i, char imag_i);

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

comp_num cal_abs_angel_poly(char real_i, char imag_i, int pow_value)
{
    comp_num c_num  = {0};
    int mid_abs_value = 0;
    float mid_atan_value = 0;
    c_num.real = real_i;
    c_num.imag = imag_i;

    // absolute value calculation
    mid_abs_value = c_num.real * c_num.real + c_num.imag * c_num.imag;
    c_num.abs_o = sqrt_poly(mid_abs_value, pow_value);
    
    // angel calculation
    mid_atan_value = (float)(c_num.imag) / (float)(c_num.real);
    if(fabs(mid_atan_value)>1 || fabs(mid_atan_value)==1)
    {
        if(mid_atan_value > 0)
        {
            c_num.angle_o = atan_poly(mid_atan_value, pow_value);
            c_num.angle_o = c_num.angle_o;
        }
        else if(mid_atan_value < 0)
        {
            mid_atan_value = -mid_atan_value;
            c_num.angle_o = -atan_poly(mid_atan_value, pow_value);
        }
    }
    else
    {
        mid_atan_value = (float)(c_num.real) / (float)(c_num.imag);
        if((mid_atan_value > 0))
            c_num.angle_o =  PI/2 - atan_poly(mid_atan_value, pow_value);
        else if((mid_atan_value < 0))
        {
            mid_atan_value = -mid_atan_value;
            c_num.angle_o = -PI/2 + atan_poly(mid_atan_value, pow_value);
        }
    }
    
    if((c_num.real&0x80))
        if((c_num.imag&0x80))
            c_num.angle_o = c_num.angle_o - PI;
        else
            c_num.angle_o = c_num.angle_o + PI;
    return c_num;
}

int sqrt_poly(int mid_abs_value, int pow_value)
{
    float abs_value = 0;
    float mid_abs_value_temp = (float)(mid_abs_value);
    mid_abs_value_temp = mid_abs_value_temp/pow(2, 14);
    if(pow_value == 1)
    {
        abs_value = 0.8001*(float)mid_abs_value_temp +  0.2666;
        abs_value = abs_value*128;
    }  
    else if(pow_value == 2)
    {
        abs_value = -0.5716*pow(mid_abs_value_temp, 2) + mid_abs_value_temp* 1.372 + 0.1714;
        abs_value = abs_value*128;
    }
    else
    {
        abs_value = 0.8895*pow(mid_abs_value_temp, 3) + (-1.906)*pow(mid_abs_value_temp, 2)  +mid_abs_value_temp*1.905+0.1269;
        abs_value = abs_value*128;
    }
    return (int)abs_value;
}

float atan_poly(float mid_atan_value, int pow_value)
{
    float atan_value = 0.0;
    if(pow_value == 1)
        atan_value = 0.7918*mid_atan_value +  0.0429;
    else if(pow_value == 2)
        atan_value = -0.2886*pow(mid_atan_value, 2) + mid_atan_value* 1.08 -0.005194;
    else
        atan_value = -0.06033*pow(mid_atan_value, 3) + (-0.1981)*pow(mid_atan_value, 2) + mid_atan_value*1.044 + -0.002178;
    return (float)atan_value;
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

