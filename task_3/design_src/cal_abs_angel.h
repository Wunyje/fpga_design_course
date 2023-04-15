#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define PI 3.141592654

typedef struct {
    char real; // S_0_7
    char imag; // S_0_7
    int abs_o;
    float angle_o;
} comp_num; 

comp_num cal_abs_ref(char real_i, char imag_i);

comp_num cal_abs_angel_poly(char real_i, char imag_i, int pow_value);

float k_sqrt_interp[1024] = {0};
float b_sqrt_interp[1024] = {0};
int sqrt_lut(int mid_abs_value)
{
    float abs_value = 0;
    float mid_abs_value_temp = (float)(mid_abs_value);
    float k_value = 0;
    float b_value = 0;
    int lut_i = 0;
    mid_abs_value_temp = mid_abs_value_temp/pow(2, 14);
    lut_i = (int)(mid_abs_value_temp*1024);
    k_value = k_sqrt_interp[lut_i];
    b_value = b_sqrt_interp[lut_i];
    abs_value = k_value*mid_abs_value_temp + b_value;
    abs_value = abs_value*128;
    return (int)abs_value;
}

int sqrt_poly(int mid_abs_value)
{
    float abs_value = 0;
    float mid_abs_value_temp = (float)(mid_abs_value);
    mid_abs_value_temp = mid_abs_value_temp/pow(2, 14);
    abs_value = -0.5716*pow(mid_abs_value_temp, 2) + mid_abs_value_temp* 1.372 + 0.1714;
    abs_value = abs_value*128;
    // abs_value = 0.8895*pow(mid_abs_value_temp, 3) + (-1.906)*pow(mid_abs_value_temp, 2)  +mid_abs_value_temp*1.905+0.1269;
    // abs_value = abs_value*128;
    return (int)abs_value;
}

float atan_poly(float mid_atan_value)
{
    float atan_value = 0.0;
    atan_value = -0.2886*pow(mid_atan_value, 2) + mid_atan_value* 1.08 -0.005194;

    // atan_value = -0.06033*pow(mid_atan_value, 3) + (-0.1981)*pow(mid_atan_value, 2) + mid_atan_value*1.044 + -0.002178;
    return (float)atan_value;
}

comp_num cal_abs_angel_test(char real_i, char imag_i, int pow_value)
{
    comp_num c_num  = {0};
    int mid_abs_value = 0;
    float mid_atan_value = 0;
    c_num.real = real_i;
    c_num.imag = imag_i;

    // absolute value calculation
    mid_abs_value = c_num.real * c_num.real + c_num.imag * c_num.imag;
    c_num.abs_o = sqrt_lut(mid_abs_value);
    
    // angel calculation
    if(c_num.imag == 0)
        c_num.angle_o = 0;
    else if(c_num.real == 0)
        c_num.angle_o = PI/2;
    else
    {
        mid_atan_value = (float)(c_num.imag) / (float)(c_num.real);
        if(fabs(mid_atan_value)<1 )
        {
            if(mid_atan_value > 0)
            {
                c_num.angle_o = atan_poly(mid_atan_value);
                c_num.angle_o = c_num.angle_o;
            }
            else if(mid_atan_value < 0)
            {
                mid_atan_value = -mid_atan_value;
                c_num.angle_o = -atan_poly(mid_atan_value);
            }
        }
        else
        {
            mid_atan_value = (float)(c_num.real) / (float)(c_num.imag);
            if((mid_atan_value > 0))
                c_num.angle_o =  PI/2 - atan_poly(mid_atan_value);
            else if((mid_atan_value < 0))
            {
                mid_atan_value = -mid_atan_value;
                c_num.angle_o = -PI/2 + atan_poly(mid_atan_value);
            }
        }
        
        if((c_num.real&0x80))
            if((c_num.imag&0x80))
                c_num.angle_o = c_num.angle_o - PI;
            else
                c_num.angle_o = c_num.angle_o + PI;
    }
    return c_num;
}

comp_num cal_abs_ref(char real_i, char imag_i)
{
    comp_num c_num  = {0};
    float div_value = 0;
    c_num.real = real_i;
    c_num.imag = imag_i;
    c_num.abs_o = sqrt(c_num.real * c_num.real + c_num.imag * c_num.imag);
    
    if(c_num.imag == 0)
        c_num.angle_o = 0;
    else if(c_num.real == 0)
        c_num.angle_o = PI/2;
    else    
    {
        div_value = ((float)(c_num.imag*128) / (float)(c_num.real*128));
        c_num.angle_o = atan(div_value);
        if((c_num.real&0x80))
            if((c_num.imag&0x80))
                c_num.angle_o = c_num.angle_o - PI;
            else
                c_num.angle_o = c_num.angle_o + PI;
    }
    return c_num;
}

        



