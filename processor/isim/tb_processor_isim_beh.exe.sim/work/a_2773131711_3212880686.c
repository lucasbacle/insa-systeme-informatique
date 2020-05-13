/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/lucasbacle/Workspaces/xilinx/processeur/registre.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2773131711_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t5 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t5 = 0;

LAB10:    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t17 = (t0 + 2472U);
    t18 = *((char **)t17);
    t17 = (t0 + 1032U);
    t19 = *((char **)t17);
    t17 = (t0 + 7272U);
    t20 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t19, t17);
    t21 = (t20 - 15);
    t22 = (t21 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t20);
    t23 = (8U * t22);
    t24 = (0 + t23);
    t25 = (t18 + t24);
    t26 = (t0 + 4552);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t25, 8U);
    xsi_driver_first_trans_fast_port(t26);

LAB2:    t31 = (t0 + 4440);
    *((int *)t31) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 1672U);
    t12 = *((char **)t8);
    t8 = (t0 + 4552);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t6 = 0;

LAB11:    if (t6 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB9;

LAB13:    t6 = (t6 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_2773131711_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t5 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t5 = 0;

LAB10:    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t17 = (t0 + 2472U);
    t18 = *((char **)t17);
    t17 = (t0 + 1192U);
    t19 = *((char **)t17);
    t17 = (t0 + 7288U);
    t20 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t19, t17);
    t21 = (t20 - 15);
    t22 = (t21 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t20);
    t23 = (8U * t22);
    t24 = (0 + t23);
    t25 = (t18 + t24);
    t26 = (t0 + 4616);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t25, 8U);
    xsi_driver_first_trans_fast_port(t26);

LAB2:    t31 = (t0 + 4456);
    *((int *)t31) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 1672U);
    t12 = *((char **)t8);
    t8 = (t0 + 4616);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t6 = 0;

LAB11:    if (t6 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB9;

LAB13:    t6 = (t6 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_2773131711_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned int t18;
    char *t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1952U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t3 = xsi_get_transient_memory(128U);
    memset(t3, 0, 128U);
    t7 = t3;
    t8 = (t0 + 7559);
    t10 = (8U != 0);
    if (t10 == 1)
        goto LAB8;

LAB9:    t12 = (t0 + 4680);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t3, 128U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB8:    t11 = (128U / 8U);
    xsi_mem_set_data(t7, t8, 8U, t11);
    goto LAB9;

LAB10:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 1032U);
    t7 = *((char **)t1);
    t10 = 1;
    if (4U == 4U)
        goto LAB19;

LAB20:    t10 = 0;

LAB21:    if ((!(t10)) == 1)
        goto LAB16;

LAB17:    t6 = (unsigned char)0;

LAB18:    if (t6 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(67, ng0);
    t15 = (t0 + 1672U);
    t16 = *((char **)t15);
    t15 = (t0 + 1352U);
    t19 = *((char **)t15);
    t15 = (t0 + 7304U);
    t20 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t19, t15);
    t21 = (t20 - 15);
    t22 = (t21 * -1);
    t23 = (8U * t22);
    t24 = (0U + t23);
    t25 = (t0 + 4680);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t16, 8U);
    xsi_driver_first_trans_delta(t25, t24, 8U, 0LL);
    goto LAB14;

LAB16:    t9 = (t0 + 1352U);
    t12 = *((char **)t9);
    t9 = (t0 + 1192U);
    t13 = *((char **)t9);
    t17 = 1;
    if (4U == 4U)
        goto LAB25;

LAB26:    t17 = 0;

LAB27:    t6 = (!(t17));
    goto LAB18;

LAB19:    t11 = 0;

LAB22:    if (t11 < 4U)
        goto LAB23;
    else
        goto LAB21;

LAB23:    t1 = (t4 + t11);
    t8 = (t7 + t11);
    if (*((unsigned char *)t1) != *((unsigned char *)t8))
        goto LAB20;

LAB24:    t11 = (t11 + 1);
    goto LAB22;

LAB25:    t18 = 0;

LAB28:    if (t18 < 4U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t9 = (t12 + t18);
    t14 = (t13 + t18);
    if (*((unsigned char *)t9) != *((unsigned char *)t14))
        goto LAB26;

LAB30:    t18 = (t18 + 1);
    goto LAB28;

}


extern void work_a_2773131711_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2773131711_3212880686_p_0,(void *)work_a_2773131711_3212880686_p_1,(void *)work_a_2773131711_3212880686_p_2};
	xsi_register_didat("work_a_2773131711_3212880686", "isim/tb_processor_isim_beh.exe.sim/work/a_2773131711_3212880686.didat");
	xsi_register_executes(pe);
}
