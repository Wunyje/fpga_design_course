#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <complex.h>
#define N 10

typedef struct {
    char real; // S_0_7
    char imag; // S_0_7
    int abs_o;
    int angle_o;
} comp_num; 


comp_num cal_abs_angel_0(char real_i, char imag_i)
{
    comp_num c_num;
    c_num.real = real_i;
    c_num.imag = imag_i;
    c_num.abs_o = sqrt(c_num.real * c_num.real + c_num.imag * c_num.imag);
    c_num.angle_o = atan(abs(c_num.real) / abs(c_num.imag));
    return c_num;
}

comp_num cal_abs_ref(char real_i, char imag_i)
{
    comp_num c_num;
    _Dcomplex num_z = _Cbuild((double)real_i / 128.0, ((double)imag_i / 128.0));
    c_num.abs_o = cabs(num_z);
    c_num.angle_o = carg(num_z);
    return c_num;
}

int main()
{
    comp_num c[N] = {0};
    comp_num c_ref[N] = {0};
    for (int i = 0; i < N; i++) {
        do {
            c[i].real = rand() % 256 - 128;
            c[i].imag = rand() % 256 - 128;
        } while (sqrt(c[i].real / 128.0 * c[i].real / 128.0 + c[i].imag / 128.0 * c[i].imag / 128.0) < 1.0);
        c[i] = cal_abs_angel_0(c[i].real, c[i].imag);
        c_ref[i] = cal_abs_ref(c[i].real, c[i].imag);
    }

    return 1;
}