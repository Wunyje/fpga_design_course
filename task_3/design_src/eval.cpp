#include "cal_abs_angel.h"
#define N 500

int main()
{
    comp_num res[N] = {0};
    comp_num res_ref[N] = {0};
    // data generation
    for (int i = 0; i < N; i++) {
        do {
            res[i].real = rand() % 256 - 128; // +- 128
            res[i].imag = rand() % 256 - 128; // +- 128
        } while (sqrt(pow(res[i].real, 2)  + pow(res[i].imag, 2))/ 128.0 > 1.0);
        // results generation
        res[i] = cal_abs_angel_poly(res[i].real, res[i].imag, 2);
        res_ref[i] = cal_abs_ref(res[i].real, res[i].imag);

        // exam the results
        if((fabs((float)res[i].abs_o - (float)res_ref[i].abs_o) > 15)|(fabs(res[i].angle_o - res_ref[i].angle_o) > 0.01))
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
