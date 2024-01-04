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
static const char *ng0 = "C:/dev/ULiC/Verilog/Projekt_S5_Gr1/SPI_Project/register.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 1U};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};
static int ng6[] = {4, 0};
static int ng7[] = {5, 0};
static int ng8[] = {6, 0};
static int ng9[] = {7, 0};



static void Initial_16_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(17, ng0);

LAB2:    xsi_set_current_line(18, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 8);
    xsi_set_current_line(19, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_22_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 4232);
    *((int *)t2) = 1;
    t3 = (t0 + 3448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(23, ng0);

LAB5:    xsi_set_current_line(24, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(25, ng0);

LAB9:    xsi_set_current_line(26, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 2248);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 1);
    goto LAB8;

}

static void Always_30_2(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 3664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 4248);
    *((int *)t2) = 1;
    t3 = (t0 + 3696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 2088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t9 = (t6 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 0);
    t15 = (t14 & 1);
    *((unsigned int *)t8) = t15;
    t16 = (t0 + 2248);
    xsi_vlogvar_assign_value(t16, t7, 0, 0, 1);
    goto LAB2;

}

static void Always_35_3(char *t0)
{
    char t4[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    int t25;

LAB0:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 4264);
    *((int *)t2) = 1;
    t3 = (t0 + 3944);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(42, ng0);

LAB14:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 1);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t12);
    t11 = (t10 >> 1);
    t14 = (t11 & 1);
    *((unsigned int *)t6) = t14;
    t13 = (t0 + 2088);
    t19 = (t0 + 2088);
    t20 = (t19 + 72U);
    t22 = *((char **)t20);
    t23 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t21, t22, 2, t23, 32, 1);
    t24 = (t21 + 4);
    t15 = *((unsigned int *)t24);
    t25 = (!(t15));
    if (t25 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 2);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t12);
    t11 = (t10 >> 2);
    t14 = (t11 & 1);
    *((unsigned int *)t6) = t14;
    t13 = (t0 + 2088);
    t19 = (t0 + 2088);
    t20 = (t19 + 72U);
    t22 = *((char **)t20);
    t23 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t21, t22, 2, t23, 32, 1);
    t24 = (t21 + 4);
    t15 = *((unsigned int *)t24);
    t25 = (!(t15));
    if (t25 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 3);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t12);
    t11 = (t10 >> 3);
    t14 = (t11 & 1);
    *((unsigned int *)t6) = t14;
    t13 = (t0 + 2088);
    t19 = (t0 + 2088);
    t20 = (t19 + 72U);
    t22 = *((char **)t20);
    t23 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t21, t22, 2, t23, 32, 1);
    t24 = (t21 + 4);
    t15 = *((unsigned int *)t24);
    t25 = (!(t15));
    if (t25 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 4);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t12);
    t11 = (t10 >> 4);
    t14 = (t11 & 1);
    *((unsigned int *)t6) = t14;
    t13 = (t0 + 2088);
    t19 = (t0 + 2088);
    t20 = (t19 + 72U);
    t22 = *((char **)t20);
    t23 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t21, t22, 2, t23, 32, 1);
    t24 = (t21 + 4);
    t15 = *((unsigned int *)t24);
    t25 = (!(t15));
    if (t25 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 5);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t12);
    t11 = (t10 >> 5);
    t14 = (t11 & 1);
    *((unsigned int *)t6) = t14;
    t13 = (t0 + 2088);
    t19 = (t0 + 2088);
    t20 = (t19 + 72U);
    t22 = *((char **)t20);
    t23 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t21, t22, 2, t23, 32, 1);
    t24 = (t21 + 4);
    t15 = *((unsigned int *)t24);
    t25 = (!(t15));
    if (t25 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 6);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t12);
    t11 = (t10 >> 6);
    t14 = (t11 & 1);
    *((unsigned int *)t6) = t14;
    t13 = (t0 + 2088);
    t19 = (t0 + 2088);
    t20 = (t19 + 72U);
    t22 = *((char **)t20);
    t23 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t21, t22, 2, t23, 32, 1);
    t24 = (t21 + 4);
    t15 = *((unsigned int *)t24);
    t25 = (!(t15));
    if (t25 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 7);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t12);
    t11 = (t10 >> 7);
    t14 = (t11 & 1);
    *((unsigned int *)t6) = t14;
    t13 = (t0 + 2088);
    t19 = (t0 + 2088);
    t20 = (t19 + 72U);
    t22 = *((char **)t20);
    t23 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t21, t22, 2, t23, 32, 1);
    t24 = (t21 + 4);
    t15 = *((unsigned int *)t24);
    t25 = (!(t15));
    if (t25 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2088);
    t5 = (t0 + 2088);
    t6 = (t5 + 72U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t4, t12, 2, t13, 32, 1);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t25 = (!(t7));
    if (t25 == 1)
        goto LAB29;

LAB30:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(38, ng0);

LAB13:    xsi_set_current_line(39, ng0);
    t19 = (t0 + 1368U);
    t20 = *((char **)t19);
    t19 = (t0 + 2088);
    xsi_vlogvar_assign_value(t19, t20, 0, 0, 8);
    goto LAB12;

LAB15:    xsi_vlogvar_assign_value(t13, t4, 0, *((unsigned int *)t21), 1);
    goto LAB16;

LAB17:    xsi_vlogvar_assign_value(t13, t4, 0, *((unsigned int *)t21), 1);
    goto LAB18;

LAB19:    xsi_vlogvar_assign_value(t13, t4, 0, *((unsigned int *)t21), 1);
    goto LAB20;

LAB21:    xsi_vlogvar_assign_value(t13, t4, 0, *((unsigned int *)t21), 1);
    goto LAB22;

LAB23:    xsi_vlogvar_assign_value(t13, t4, 0, *((unsigned int *)t21), 1);
    goto LAB24;

LAB25:    xsi_vlogvar_assign_value(t13, t4, 0, *((unsigned int *)t21), 1);
    goto LAB26;

LAB27:    xsi_vlogvar_assign_value(t13, t4, 0, *((unsigned int *)t21), 1);
    goto LAB28;

LAB29:    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t4), 1);
    goto LAB30;

}


extern void work_m_00000000003157916197_3913188552_init()
{
	static char *pe[] = {(void *)Initial_16_0,(void *)Always_22_1,(void *)Always_30_2,(void *)Always_35_3};
	xsi_register_didat("work_m_00000000003157916197_3913188552", "isim/schematic_schematic_sch_tb_isim_beh.exe.sim/work/m_00000000003157916197_3913188552.didat");
	xsi_register_executes(pe);
}
