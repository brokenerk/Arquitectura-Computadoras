/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_227(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_48(char*, char *);
extern void execute_62(char*, char *);
extern void execute_68(char*, char *);
extern void execute_76(char*, char *);
extern void execute_87(char*, char *);
extern void execute_93(char*, char *);
extern void execute_99(char*, char *);
extern void execute_110(char*, char *);
extern void execute_118(char*, char *);
extern void execute_126(char*, char *);
extern void execute_134(char*, char *);
extern void execute_142(char*, char *);
extern void execute_148(char*, char *);
extern void execute_152(char*, char *);
extern void execute_160(char*, char *);
extern void execute_168(char*, char *);
extern void execute_182(char*, char *);
extern void execute_193(char*, char *);
extern void execute_198(char*, char *);
extern void execute_199(char*, char *);
funcp funcTab[23] = {(funcp)execute_227, (funcp)execute_42, (funcp)execute_43, (funcp)execute_48, (funcp)execute_62, (funcp)execute_68, (funcp)execute_76, (funcp)execute_87, (funcp)execute_93, (funcp)execute_99, (funcp)execute_110, (funcp)execute_118, (funcp)execute_126, (funcp)execute_134, (funcp)execute_142, (funcp)execute_148, (funcp)execute_152, (funcp)execute_160, (funcp)execute_168, (funcp)execute_182, (funcp)execute_193, (funcp)execute_198, (funcp)execute_199};
const int NumRelocateId= 23;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/test_bench_func_synth/xsim.reloc",  (void **)funcTab, 23);
	iki_vhdl_file_variable_register(dp + 11200);
	iki_vhdl_file_variable_register(dp + 11256);
	iki_vhdl_file_variable_register(dp + 22128);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/test_bench_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/test_bench_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/test_bench_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/test_bench_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/test_bench_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
