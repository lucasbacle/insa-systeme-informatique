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
static const char *ng0 = "/home/lucasbacle/Workspaces/xilinx/processeur/memoire_donnees.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3370682733_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3464);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t3 = xsi_get_transient_memory(8U);
    memset(t3, 0, 8U);
    t4 = t3;
    memset(t4, (unsigned char)2, 8U);
    t5 = (t0 + 3544);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t10 = (t2 == (unsigned char)2);
    if (t10 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t10 = (t2 == (unsigned char)3);
    if (t10 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 5944U);
    t15 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t4, t1);
    t16 = (t15 - 255);
    t12 = (t16 * -1);
    t17 = (8U * t12);
    t18 = (0U + t17);
    t5 = (t0 + 3608);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_delta(t5, t18, 8U, 0LL);

LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t1 = xsi_get_transient_memory(2048U);
    memset(t1, 0, 2048U);
    t4 = t1;
    t5 = (t0 + 8099);
    t11 = (8U != 0);
    if (t11 == 1)
        goto LAB8;

LAB9:    t7 = (t0 + 3608);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2048U);
    xsi_driver_first_trans_fast(t7);
    goto LAB6;

LAB8:    t12 = (2048U / 8U);
    xsi_mem_set_data(t4, t5, 8U, t12);
    goto LAB9;

LAB10:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 5944U);
    t15 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t5, t1);
    t16 = (t15 - 255);
    t12 = (t16 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t15);
    t17 = (8U * t12);
    t18 = (0 + t17);
    t6 = (t4 + t18);
    t7 = (t0 + 3544);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB11;

}


extern void work_a_3370682733_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3370682733_3212880686_p_0};
	xsi_register_didat("work_a_3370682733_3212880686", "isim/tb_processor_isim_beh.exe.sim/work/a_3370682733_3212880686.didat");
	xsi_register_executes(pe);
}
