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
static const char *ng0 = "/home/lucasbacle/Workspaces/xilinx/processeur/memoire_instructions.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2314141808_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t5;
    unsigned int t6;
    char *t7;
    char *t9;
    char *t11;
    char *t13;
    char *t15;
    char *t17;
    char *t19;
    char *t21;
    char *t23;
    char *t25;
    char *t27;
    char *t29;
    char *t31;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t1 = xsi_get_transient_memory(8192U);
    memset(t1, 0, 8192U);
    t2 = t1;
    t3 = (t0 + 13873);
    t5 = (32U != 0);
    if (t5 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 13905);
    memcpy(t2, t7, 32U);
    t2 = (t2 + 32U);
    t9 = (t0 + 13937);
    memcpy(t2, t9, 32U);
    t2 = (t2 + 32U);
    t11 = (t0 + 13969);
    memcpy(t2, t11, 32U);
    t2 = (t2 + 32U);
    t13 = (t0 + 14001);
    memcpy(t2, t13, 32U);
    t2 = (t2 + 32U);
    t15 = (t0 + 14033);
    memcpy(t2, t15, 32U);
    t2 = (t2 + 32U);
    t17 = (t0 + 14065);
    memcpy(t2, t17, 32U);
    t2 = (t2 + 32U);
    t19 = (t0 + 14097);
    memcpy(t2, t19, 32U);
    t2 = (t2 + 32U);
    t21 = (t0 + 14129);
    memcpy(t2, t21, 32U);
    t2 = (t2 + 32U);
    t23 = (t0 + 14161);
    memcpy(t2, t23, 32U);
    t2 = (t2 + 32U);
    t25 = (t0 + 14193);
    memcpy(t2, t25, 32U);
    t2 = (t2 + 32U);
    t27 = (t0 + 14225);
    memcpy(t2, t27, 32U);
    t2 = (t2 + 32U);
    t29 = (t0 + 14257);
    memcpy(t2, t29, 32U);
    t2 = (t2 + 32U);
    t31 = (t0 + 14289);
    memcpy(t2, t31, 32U);
    t2 = (t2 + 32U);
    t33 = (t0 + 14321);
    memcpy(t2, t33, 32U);
    t2 = (t2 + 32U);
    t35 = (t0 + 3312);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t1, 8192U);
    xsi_driver_first_trans_fast(t35);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t6 = (8192U / 32U);
    xsi_mem_set_data(t2, t3, 32U, t6);
    goto LAB6;

}

static void work_a_2314141808_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3232);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t3 = (t0 + 1032U);
    t5 = *((char **)t3);
    t3 = (t0 + 5600U);
    t6 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t5, t3);
    t7 = (t6 - 255);
    t8 = (t7 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t6);
    t9 = (32U * t8);
    t10 = (0 + t9);
    t11 = (t4 + t10);
    t12 = (t0 + 3376);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t11, 32U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

}


extern void work_a_2314141808_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2314141808_3212880686_p_0,(void *)work_a_2314141808_3212880686_p_1};
	xsi_register_didat("work_a_2314141808_3212880686", "isim/tb_processor_isim_beh.exe.sim/work/a_2314141808_3212880686.didat");
	xsi_register_executes(pe);
}
