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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002308292362_4048538423_init();
    work_m_00000000003157916197_3913188552_init();
    work_m_00000000001517140783_2468648714_init();
    work_m_00000000000978056818_0181236066_init();
    work_m_00000000000210645089_0540155903_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000210645089_0540155903");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
