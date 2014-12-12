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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Xilinx/Project/Uart/Uart_txrx/Uart_tx.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0550431143_3212880686_p_0(char *t0)
{
    char t10[16];
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    int t19;
    unsigned int t20;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4112);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 4192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4192);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB7:    goto LAB2;

LAB4:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4320);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t0 + 6896U);
    t1 = xsi_base_array_concat(t1, t10, t4, (char)99, (unsigned char)3, (char)97, t2, t5, (char)101);
    t7 = ((IEEE_P_2592010699) + 4024);
    t6 = xsi_base_array_concat(t6, t11, t7, (char)97, t1, t10, (char)99, (unsigned char)2, (char)101);
    t12 = (1U + 8U);
    t13 = (t12 + 1U);
    t3 = (10U != t13);
    if (t3 == 1)
        goto LAB9;

LAB10:    t8 = (t0 + 4384);
    t14 = (t8 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 10U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1632U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB2;

LAB5:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 4192);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4256);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB9:    xsi_size_not_matching(10U, t13, 0);
    goto LAB10;

LAB11:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t18 = *((int *)t4);
    if (t18 == 0)
        goto LAB15;

LAB26:    if (t18 == 1)
        goto LAB16;

LAB27:    if (t18 == 2)
        goto LAB17;

LAB28:    if (t18 == 3)
        goto LAB18;

LAB29:    if (t18 == 4)
        goto LAB19;

LAB30:    if (t18 == 5)
        goto LAB20;

LAB31:    if (t18 == 6)
        goto LAB21;

LAB32:    if (t18 == 7)
        goto LAB22;

LAB33:    if (t18 == 8)
        goto LAB23;

LAB34:    if (t18 == 9)
        goto LAB24;

LAB35:
LAB25:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 4192);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB14:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t19 = (t18 + 1);
    t1 = (t0 + 4448);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t19;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t3 = (t18 == 10);
    if (t3 != 0)
        goto LAB37;

LAB39:
LAB38:    goto LAB12;

LAB15:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t19 = (0 - 9);
    t12 = (t19 * -1);
    t13 = (1U * t12);
    t20 = (0 + t13);
    t2 = (t5 + t20);
    t9 = *((unsigned char *)t2);
    t6 = (t0 + 4192);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t14 = (t8 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t9;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB14;

LAB16:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t18 = (1 - 9);
    t12 = (t18 * -1);
    t13 = (1U * t12);
    t20 = (0 + t13);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 4192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB14;

LAB17:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t18 = (2 - 9);
    t12 = (t18 * -1);
    t13 = (1U * t12);
    t20 = (0 + t13);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 4192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB14;

LAB18:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t18 = (3 - 9);
    t12 = (t18 * -1);
    t13 = (1U * t12);
    t20 = (0 + t13);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 4192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB14;

LAB19:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t18 = (4 - 9);
    t12 = (t18 * -1);
    t13 = (1U * t12);
    t20 = (0 + t13);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 4192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB14;

LAB20:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t18 = (5 - 9);
    t12 = (t18 * -1);
    t13 = (1U * t12);
    t20 = (0 + t13);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 4192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB14;

LAB21:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t18 = (6 - 9);
    t12 = (t18 * -1);
    t13 = (1U * t12);
    t20 = (0 + t13);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 4192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB14;

LAB22:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t18 = (7 - 9);
    t12 = (t18 * -1);
    t13 = (1U * t12);
    t20 = (0 + t13);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 4192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB14;

LAB23:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t18 = (8 - 9);
    t12 = (t18 * -1);
    t13 = (1U * t12);
    t20 = (0 + t13);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 4192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB14;

LAB24:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t18 = (9 - 9);
    t12 = (t18 * -1);
    t13 = (1U * t12);
    t20 = (0 + t13);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 4192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB14;

LAB36:;
LAB37:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4448);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4256);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 7008);
    t4 = (t0 + 4320);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB38;

}


extern void work_a_0550431143_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0550431143_3212880686_p_0};
	xsi_register_didat("work_a_0550431143_3212880686", "isim/simu_txrx_isim_beh.exe.sim/work/a_0550431143_3212880686.didat");
	xsi_register_executes(pe);
}
