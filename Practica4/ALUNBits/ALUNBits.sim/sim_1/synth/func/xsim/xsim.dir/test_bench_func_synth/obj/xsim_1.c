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
extern void execute_142(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_60(char*, char *);
extern void execute_67(char*, char *);
extern void execute_71(char*, char *);
extern void execute_75(char*, char *);
extern void execute_79(char*, char *);
extern void execute_81(char*, char *);
extern void execute_85(char*, char *);
extern void execute_95(char*, char *);
extern void execute_102(char*, char *);
extern void execute_109(char*, char *);
extern void execute_112(char*, char *);
extern void execute_125(char*, char *);
extern void execute_139(char*, char *);
funcp funcTab[18] = {(funcp)execute_142, (funcp)execute_15, (funcp)execute_16, (funcp)execute_55, (funcp)execute_56, (funcp)execute_60, (funcp)execute_67, (funcp)execute_71, (funcp)execute_75, (funcp)execute_79, (funcp)execute_81, (funcp)execute_85, (funcp)execute_95, (funcp)execute_102, (funcp)execute_109, (funcp)execute_112, (funcp)execute_125, (funcp)execute_139};
const int NumRelocateId= 18;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/test_bench_func_synth/xsim.reloc",  (void **)funcTab, 18);
	iki_vhdl_file_variable_register(dp + 12440);
	iki_vhdl_file_variable_register(dp + 12496);


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
