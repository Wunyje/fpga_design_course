#include "cal_abs_angle.h"

void para_load()
{
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
        k_sqrt_interp_fix[i] = (int)(k_sqrt_interp[i]*pow(2,14));
        b_sqrt_interp_fix[i] = (int)(b_sqrt_interp[i]*pow(2,14));
    }
    fclose(fp_k);
    fclose(fp_b);
}

void eval()
{
    comp_num res[N] = {0};
    comp_num res_ref[N] = {0};
    para_load();

    // data generation
    for (int i = 0; i < N; i++) {
        do {
            res[i].real = rand() % 256 - 128; // +- 128
            res[i].imag = rand() % 256 - 128; // +- 128
        } while (sqrt(pow(res[i].real, 2)  + pow(res[i].imag, 2))/ 128.0 > 1.0);
        // results generation
        res[i] = cal_abs_angle_test(res[i].real, res[i].imag);
        res_ref[i] = cal_abs_ref(res[i].real, res[i].imag);

        // exam the results
        if((fabs((float)res[i].abs_o - (float)res_ref[i].abs_o) > 1.28)|(fabs(res[i].angle_o - res_ref[i].angle_o) > 0.0314))
        {
            printf("There is a problem at index %d.\n", i);
            printf("res[%d].real = %d.\n", i, res[i].real);
            printf("res[%d].imag = %d.\n\n", i, res[i].imag);
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
}

// res export

void res_export()
{
    int real_value = 0;
    int imag_value = 0;
    int sqrt_in = 0;
    int sqrt_out = 0;
    int atan_in = 0;
    int atan_out = 0;
    int angle_cal_res = 0;
    comp_num c_num  = {0};
    int mid_abs_value = 0;
    int k_value = 0;
    int b_value = 0;

    FILE* fp_real_value;
    FILE* fp_imag_value;
    FILE* fp_sqrt_in;
    FILE* fp_sqrt_out;
    FILE* fp_atan_in;
    FILE* fp_atan_out;
    FILE* fp_angle_cal_res;
    FILE* fp_k;
    FILE* fp_b;

    fp_real_value = fopen("para_and_res/input_real_value.txt", "w+");
    fp_imag_value = fopen("para_and_res/input_imag_value.txt", "w+");
    fp_sqrt_in    = fopen("para_and_res/mid_sqrt_in.txt", "w+");
    fp_sqrt_out   = fopen("para_and_res/res_sqrt_out.txt", "w+");
    fp_atan_in    = fopen("para_and_res/mid_atan_in.txt", "w+");
    fp_atan_out   = fopen("para_and_res/res_atan_out.txt", "w+");
    fp_angle_cal_res = fopen("para_and_res/res_angle_cal_res.txt", "w+");
    fp_k = fopen("para_and_res/para_k_sqrt_fix.txt", "w+");
    fp_b = fopen("para_and_res/para_b_sqrt_fix.txt", "w+");

    para_load();

    for (int i = 0; i < N; i++) 
    {

        k_value = k_sqrt_interp_fix[i]; // S_0_14
        b_value = b_sqrt_interp_fix[i]; // S_0_14
        fprintf(fp_k, "%x\n", k_value);
        fprintf(fp_b, "%x\n", b_value);

        do {
            real_value = rand() % 256 - 128; // +- 128
            imag_value = rand() % 256 - 128; // +- 128
        } while (sqrt(pow(real_value, 2)  + pow(imag_value, 2))/ 128.0 > 1.0);
        fprintf(fp_real_value, "%x\n", real_value);
        fprintf(fp_imag_value, "%x\n", imag_value);
        
        sqrt_in = pow(real_value, 2) + pow(imag_value, 2);
        fprintf(fp_sqrt_in, "%x\n", sqrt_in);

        sqrt_out = sqrt_lut_fix(sqrt_in);
        fprintf(fp_sqrt_out, "%x\n", sqrt_out);

        c_num = cal_abs_angle_test(real_value, imag_value);
        angle_cal_res = (int)(c_num.angle_o*pow(2,14));
        fprintf(fp_angle_cal_res, "%x\n", angle_cal_res);

        do {
            atan_in = (int)(rand()*pow(2, 7)/rand());
        } while (fabs(rand()/rand()) < 1);
        fprintf(fp_atan_in, "%x\n", atan_in);
        atan_out = atan_poly_fix(atan_in) >> 7;
        printf("%f\t, %x\n", ((float)atan_out)/pow(2,21), (atan_out));
        fprintf(fp_atan_out, "%x\n", atan_out);

    }
}

int main()
{
    eval();
    return 1;
}
