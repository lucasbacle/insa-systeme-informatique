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
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1756163058_3212880686_p_0(char *t0)
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
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1952U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3944);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 6624U);
    t17 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t4, t1);
    t18 = (t17 - 15);
    t11 = (t18 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t17);
    t19 = (8U * t11);
    t20 = (0 + t19);
    t7 = (t3 + t20);
    t8 = (t0 + 4088);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 8U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t1 = (t0 + 6640U);
    t17 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t4, t1);
    t18 = (t17 - 15);
    t11 = (t18 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t17);
    t19 = (8U * t11);
    t20 = (0 + t19);
    t7 = (t3 + t20);
    t8 = (t0 + 4152);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 8U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(59, ng0);
    t3 = xsi_get_transient_memory(128U);
    memset(t3, 0, 128U);
    t7 = t3;
    t8 = (t0 + 6911);
    t10 = (8U != 0);
    if (t10 == 1)
        goto LAB8;

LAB9:    t12 = (t0 + 4024);
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

LAB10:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t6 = 1;
    if (4U == 4U)
        goto LAB16;

LAB17:    t6 = 0;

LAB18:    if (t6 != 0)
        goto LAB13;

LAB15:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t2 = 1;
    if (4U == 4U)
        goto LAB24;

LAB25:    t2 = 0;

LAB26:    if (t2 != 0)
        goto LAB22;

LAB23:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 6656U);
    t17 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t4, t1);
    t18 = (t17 - 15);
    t11 = (t18 * -1);
    t19 = (8U * t11);
    t20 = (0U + t19);
    t7 = (t0 + 4024);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 8U);
    xsi_driver_first_trans_delta(t7, t20, 8U, 0LL);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(66, ng0);
    t9 = (t0 + 1672U);
    t12 = *((char **)t9);
    t9 = (t0 + 4088);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB14;

LAB16:    t11 = 0;

LAB19:    if (t11 < 4U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t1 = (t4 + t11);
    t8 = (t7 + t11);
    if (*((unsigned char *)t1) != *((unsigned char *)t8))
        goto LAB17;

LAB21:    t11 = (t11 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(68, ng0);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t8 = (t0 + 4152);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB14;

LAB24:    t11 = 0;

LAB27:    if (t11 < 4U)
        goto LAB28;
    else
        goto LAB26;

LAB28:    t1 = (t3 + t11);
    t7 = (t4 + t11);
    if (*((unsigned char *)t1) != *((unsigned char *)t7))
        goto LAB25;

LAB29:    t11 = (t11 + 1);
    goto LAB27;

}


extern void work_a_1756163058_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1756163058_3212880686_p_0};
	xsi_register_didat("work_a_1756163058_3212880686", "isim/banc_de_registres_isim_beh.exe.sim/work/a_1756163058_3212880686.didat");
	xsi_register_executes(pe);
}
