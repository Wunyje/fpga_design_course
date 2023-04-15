#include "cal_abs_angel.h"
#define N 1024

int main()
{
    comp_num res[N] = {0};
    comp_num res_ref[N] = {0};
    // data read for lut method
    FILE* fp_k;
    FILE* fp_b;
    fp_k = fopen("k_sqrt_interp.txt", "r");
    fp_b = fopen("b_sqrt_interp.txt", "r");
    if (!fp_k||!fp_b)
        printf("no file");
    for (int i = 0; i < 1024; i++) {
        fscanf(fp_k, "%f", &k_sqrt_interp[i]);
        fscanf(fp_b, "%f", &b_sqrt_interp[i]);
    }
    fclose(fp_k);

    // data generation
    for (int i = 0; i < N; i++) {
        do {
            res[i].real = rand() % 256 - 128; // +- 128
            res[i].imag = rand() % 256 - 128; // +- 128
        } while (sqrt(pow(res[i].real, 2)  + pow(res[i].imag, 2))/ 128.0 > 1.0);
        // results generation
        res[i] = cal_abs_angel_test(res[i].real, res[i].imag, 2);
        res_ref[i] = cal_abs_ref(res[i].real, res[i].imag);

        // exam the results
        if((fabs((float)res[i].abs_o - (float)res_ref[i].abs_o) > 1.28)|(fabs(res[i].angle_o - res_ref[i].angle_o) > 0.01))
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
