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
extern void execute_368(char*, char *);
extern void execute_369(char*, char *);
extern void execute_370(char*, char *);
extern void execute_371(char*, char *);
extern void execute_632(char*, char *);
extern void execute_633(char*, char *);
extern void execute_634(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_10(char*, char *);
extern void execute_11(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_381(char*, char *);
extern void execute_382(char*, char *);
extern void execute_383(char*, char *);
extern void execute_393(char*, char *);
extern void execute_394(char*, char *);
extern void execute_395(char*, char *);
extern void execute_44(char*, char *);
extern void execute_396(char*, char *);
extern void execute_46(char*, char *);
extern void execute_397(char*, char *);
extern void execute_398(char*, char *);
extern void execute_399(char*, char *);
extern void execute_54(char*, char *);
extern void execute_402(char*, char *);
extern void execute_403(char*, char *);
extern void execute_404(char*, char *);
extern void execute_405(char*, char *);
extern void execute_406(char*, char *);
extern void execute_407(char*, char *);
extern void execute_408(char*, char *);
extern void execute_409(char*, char *);
extern void execute_401(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_425(char*, char *);
extern void execute_426(char*, char *);
extern void execute_427(char*, char *);
extern void execute_182(char*, char *);
extern void execute_183(char*, char *);
extern void execute_210(char*, char *);
extern void execute_527(char*, char *);
extern void execute_528(char*, char *);
extern void execute_529(char*, char *);
extern void execute_530(char*, char *);
extern void execute_526(char*, char *);
extern void execute_373(char*, char *);
extern void execute_374(char*, char *);
extern void execute_375(char*, char *);
extern void execute_635(char*, char *);
extern void execute_636(char*, char *);
extern void execute_637(char*, char *);
extern void execute_638(char*, char *);
extern void execute_639(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_115(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_237(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_241(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_245(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_249(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_253(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_257(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_261(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_265(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_269(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_407(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_411(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_415(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_419(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_423(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_427(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_431(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_435(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_439(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_443(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_447(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_509(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_513(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_517(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[98] = {(funcp)execute_368, (funcp)execute_369, (funcp)execute_370, (funcp)execute_371, (funcp)execute_632, (funcp)execute_633, (funcp)execute_634, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_6, (funcp)execute_7, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_10, (funcp)execute_11, (funcp)execute_27, (funcp)execute_28, (funcp)execute_29, (funcp)execute_381, (funcp)execute_382, (funcp)execute_383, (funcp)execute_393, (funcp)execute_394, (funcp)execute_395, (funcp)execute_44, (funcp)execute_396, (funcp)execute_46, (funcp)execute_397, (funcp)execute_398, (funcp)execute_399, (funcp)execute_54, (funcp)execute_402, (funcp)execute_403, (funcp)execute_404, (funcp)execute_405, (funcp)execute_406, (funcp)execute_407, (funcp)execute_408, (funcp)execute_409, (funcp)execute_401, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_425, (funcp)execute_426, (funcp)execute_427, (funcp)execute_182, (funcp)execute_183, (funcp)execute_210, (funcp)execute_527, (funcp)execute_528, (funcp)execute_529, (funcp)execute_530, (funcp)execute_526, (funcp)execute_373, (funcp)execute_374, (funcp)execute_375, (funcp)execute_635, (funcp)execute_636, (funcp)execute_637, (funcp)execute_638, (funcp)execute_639, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_107, (funcp)transaction_111, (funcp)transaction_115, (funcp)transaction_119, (funcp)transaction_142, (funcp)transaction_156, (funcp)transaction_184, (funcp)transaction_188, (funcp)transaction_192, (funcp)transaction_196, (funcp)transaction_200, (funcp)transaction_204, (funcp)transaction_208, (funcp)transaction_212, (funcp)transaction_237, (funcp)transaction_241, (funcp)transaction_245, (funcp)transaction_249, (funcp)transaction_253, (funcp)transaction_257, (funcp)transaction_261, (funcp)transaction_265, (funcp)transaction_269, (funcp)transaction_407, (funcp)transaction_411, (funcp)transaction_415, (funcp)transaction_419, (funcp)transaction_423, (funcp)transaction_427, (funcp)transaction_431, (funcp)transaction_435, (funcp)transaction_439, (funcp)transaction_443, (funcp)transaction_447, (funcp)transaction_509, (funcp)transaction_513, (funcp)transaction_517};
const int NumRelocateId= 98;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/uart_rx_ex_tb_func_synth/xsim.reloc",  (void **)funcTab, 98);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/uart_rx_ex_tb_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/uart_rx_ex_tb_func_synth/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/uart_rx_ex_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/uart_rx_ex_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/uart_rx_ex_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
