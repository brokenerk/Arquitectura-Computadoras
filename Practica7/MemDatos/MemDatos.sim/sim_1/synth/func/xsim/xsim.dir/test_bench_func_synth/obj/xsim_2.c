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
extern void execute_386582(char*, char *);
extern void execute_386583(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_128(char*, char *);
extern void execute_293(char*, char *);
extern void execute_1942(char*, char *);
extern void execute_2440(char*, char *);
extern void execute_2604(char*, char *);
extern void execute_3096(char*, char *);
extern void execute_3752(char*, char *);
extern void execute_4411(char*, char *);
extern void execute_4576(char*, char *);
extern void execute_5236(char*, char *);
extern void execute_7380(char*, char *);
extern void execute_7384(char*, char *);
extern void execute_7553(char*, char *);
extern void execute_7721(char*, char *);
extern void execute_7725(char*, char *);
extern void execute_7890(char*, char *);
extern void execute_7893(char*, char *);
extern void execute_8066(char*, char *);
extern void execute_8235(char*, char *);
extern void execute_9228(char*, char *);
extern void execute_9562(char*, char *);
extern void execute_9731(char*, char *);
extern void execute_9900(char*, char *);
extern void execute_10069(char*, char *);
extern void execute_10238(char*, char *);
extern void execute_10914(char*, char *);
extern void execute_11078(char*, char *);
extern void execute_11247(char*, char *);
extern void execute_11416(char*, char *);
extern void execute_11585(char*, char *);
extern void execute_11754(char*, char *);
extern void execute_11923(char*, char *);
extern void execute_12092(char*, char *);
extern void execute_12929(char*, char *);
extern void execute_13432(char*, char *);
extern void execute_14751(char*, char *);
extern void execute_16075(char*, char *);
extern void execute_16240(char*, char *);
extern void execute_16408(char*, char *);
extern void execute_17397(char*, char *);
extern void execute_17400(char*, char *);
extern void execute_18389(char*, char *);
extern void execute_18558(char*, char *);
extern void execute_18561(char*, char *);
extern void execute_19056(char*, char *);
extern void execute_19060(char*, char *);
extern void execute_20379(char*, char *);
extern void execute_21532(char*, char *);
extern void execute_23839(char*, char *);
extern void execute_24003(char*, char *);
extern void execute_28116(char*, char *);
extern void execute_36860(char*, char *);
extern void execute_39833(char*, char *);
extern void execute_40493(char*, char *);
extern void execute_42308(char*, char *);
extern void execute_45775(char*, char *);
extern void execute_49074(char*, char *);
extern void execute_51548(char*, char *);
extern void execute_51713(char*, char *);
extern void execute_53196(char*, char *);
extern void execute_53860(char*, char *);
extern void execute_55674(char*, char *);
extern void execute_56008(char*, char *);
extern void execute_56342(char*, char *);
extern void execute_56511(char*, char *);
extern void execute_57348(char*, char *);
extern void execute_58839(char*, char *);
extern void execute_59008(char*, char *);
extern void execute_59175(char*, char *);
extern void execute_59509(char*, char *);
extern void execute_60180(char*, char *);
extern void execute_60517(char*, char *);
extern void execute_60851(char*, char *);
extern void execute_61020(char*, char *);
extern void execute_63011(char*, char *);
extern void execute_63349(char*, char *);
extern void execute_63518(char*, char *);
extern void execute_63687(char*, char *);
extern void execute_63856(char*, char *);
extern void execute_64190(char*, char *);
extern void execute_64194(char*, char *);
extern void execute_64525(char*, char *);
extern void execute_64528(char*, char *);
extern void execute_64697(char*, char *);
extern void execute_64866(char*, char *);
extern void execute_65200(char*, char *);
extern void execute_66039(char*, char *);
extern void execute_73633(char*, char *);
extern void execute_76277(char*, char *);
extern void execute_77762(char*, char *);
extern void execute_84366(char*, char *);
extern void execute_85190(char*, char *);
extern void execute_85193(char*, char *);
extern void execute_88162(char*, char *);
extern void execute_89977(char*, char *);
extern void execute_97399(char*, char *);
extern void execute_98554(char*, char *);
extern void execute_99709(char*, char *);
extern void execute_108293(char*, char *);
extern void execute_110442(char*, char *);
extern void execute_114896(char*, char *);
extern void execute_115390(char*, char *);
extern void execute_119669(char*, char *);
extern void execute_124779(char*, char *);
extern void execute_133519(char*, char *);
extern void execute_133684(char*, char *);
extern void execute_143760(char*, char *);
extern void execute_143935(char*, char *);
extern void execute_169184(char*, char *);
extern void execute_170672(char*, char *);
extern void execute_180563(char*, char *);
extern void execute_183368(char*, char *);
extern void execute_188155(char*, char *);
extern void execute_188327(char*, char *);
extern void execute_188496(char*, char *);
extern void execute_191159(char*, char *);
extern void execute_191497(char*, char *);
extern void execute_192004(char*, char *);
extern void execute_193835(char*, char *);
extern void execute_201927(char*, char *);
extern void execute_202591(char*, char *);
extern void execute_210012(char*, char *);
extern void execute_217276(char*, char *);
extern void execute_219262(char*, char *);
extern void execute_228515(char*, char *);
extern void execute_243048(char*, char *);
extern void execute_249193(char*, char *);
extern void execute_249700(char*, char *);
extern void execute_250040(char*, char *);
extern void execute_250209(char*, char *);
extern void execute_292986(char*, char *);
extern void execute_317904(char*, char *);
extern void execute_338354(char*, char *);
extern void execute_338357(char*, char *);
extern void execute_338500(char*, char *);
extern void execute_338501(char*, char *);
extern void execute_338503(char*, char *);
extern void execute_338505(char*, char *);
extern void execute_338727(char*, char *);
extern void transaction_2(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[153] = {(funcp)execute_386582, (funcp)execute_386583, (funcp)execute_19, (funcp)execute_20, (funcp)execute_56, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_128, (funcp)execute_293, (funcp)execute_1942, (funcp)execute_2440, (funcp)execute_2604, (funcp)execute_3096, (funcp)execute_3752, (funcp)execute_4411, (funcp)execute_4576, (funcp)execute_5236, (funcp)execute_7380, (funcp)execute_7384, (funcp)execute_7553, (funcp)execute_7721, (funcp)execute_7725, (funcp)execute_7890, (funcp)execute_7893, (funcp)execute_8066, (funcp)execute_8235, (funcp)execute_9228, (funcp)execute_9562, (funcp)execute_9731, (funcp)execute_9900, (funcp)execute_10069, (funcp)execute_10238, (funcp)execute_10914, (funcp)execute_11078, (funcp)execute_11247, (funcp)execute_11416, (funcp)execute_11585, (funcp)execute_11754, (funcp)execute_11923, (funcp)execute_12092, (funcp)execute_12929, (funcp)execute_13432, (funcp)execute_14751, (funcp)execute_16075, (funcp)execute_16240, (funcp)execute_16408, (funcp)execute_17397, (funcp)execute_17400, (funcp)execute_18389, (funcp)execute_18558, (funcp)execute_18561, (funcp)execute_19056, (funcp)execute_19060, (funcp)execute_20379, (funcp)execute_21532, (funcp)execute_23839, (funcp)execute_24003, (funcp)execute_28116, (funcp)execute_36860, (funcp)execute_39833, (funcp)execute_40493, (funcp)execute_42308, (funcp)execute_45775, (funcp)execute_49074, (funcp)execute_51548, (funcp)execute_51713, (funcp)execute_53196, (funcp)execute_53860, (funcp)execute_55674, (funcp)execute_56008, (funcp)execute_56342, (funcp)execute_56511, (funcp)execute_57348, (funcp)execute_58839, (funcp)execute_59008, (funcp)execute_59175, (funcp)execute_59509, (funcp)execute_60180, (funcp)execute_60517, (funcp)execute_60851, (funcp)execute_61020, (funcp)execute_63011, (funcp)execute_63349, (funcp)execute_63518, (funcp)execute_63687, (funcp)execute_63856, (funcp)execute_64190, (funcp)execute_64194, (funcp)execute_64525, (funcp)execute_64528, (funcp)execute_64697, (funcp)execute_64866, (funcp)execute_65200, (funcp)execute_66039, (funcp)execute_73633, (funcp)execute_76277, (funcp)execute_77762, (funcp)execute_84366, (funcp)execute_85190, (funcp)execute_85193, (funcp)execute_88162, (funcp)execute_89977, (funcp)execute_97399, (funcp)execute_98554, (funcp)execute_99709, (funcp)execute_108293, (funcp)execute_110442, (funcp)execute_114896, (funcp)execute_115390, (funcp)execute_119669, (funcp)execute_124779, (funcp)execute_133519, (funcp)execute_133684, (funcp)execute_143760, (funcp)execute_143935, (funcp)execute_169184, (funcp)execute_170672, (funcp)execute_180563, (funcp)execute_183368, (funcp)execute_188155, (funcp)execute_188327, (funcp)execute_188496, (funcp)execute_191159, (funcp)execute_191497, (funcp)execute_192004, (funcp)execute_193835, (funcp)execute_201927, (funcp)execute_202591, (funcp)execute_210012, (funcp)execute_217276, (funcp)execute_219262, (funcp)execute_228515, (funcp)execute_243048, (funcp)execute_249193, (funcp)execute_249700, (funcp)execute_250040, (funcp)execute_250209, (funcp)execute_292986, (funcp)execute_317904, (funcp)execute_338354, (funcp)execute_338357, (funcp)execute_338500, (funcp)execute_338501, (funcp)execute_338503, (funcp)execute_338505, (funcp)execute_338727, (funcp)transaction_2};
const int NumRelocateId= 153;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/test_bench_func_synth/xsim.reloc",  (void **)funcTab, 153);
	iki_vhdl_file_variable_register(dp + 79554800);
	iki_vhdl_file_variable_register(dp + 79554856);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/test_bench_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/test_bench_func_synth/xsim.reloc");

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
