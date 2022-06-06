	.file	"softwareblink.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-elf)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultilib rv32i/ilp32
# -iprefix /data/f-of-e-tools/tools/sunflower/sunflower-toolchain/tools/riscv/bin/../lib/gcc/riscv32-elf/8.2.0/
# -D M32 softwareblink.c -march=rv32i -mabi=ilp32 -O0 -Wall -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
# -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
# -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
# -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcommon
# -fdelete-null-pointer-checks -fearly-inlining
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -fverbose-asm
# -fzero-initialized-in-bss -mexplicit-relocs -mplt -mstrict-align

	.text
	.globl	kSpinDelay
	.section	.srodata,"a"
	.align	2
	.type	kSpinDelay, @object
	.size	kSpinDelay, 4
kSpinDelay:
	.word	400000
	.globl	gDebugLedsMemoryMappedRegister
	.section	.sdata,"aw"
	.align	2
	.type	gDebugLedsMemoryMappedRegister, @object
	.size	gDebugLedsMemoryMappedRegister, 4
gDebugLedsMemoryMappedRegister:
	.word	8192
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sw	s0,28(sp)	#,
	addi	s0,sp,32	#,,
# softwareblink.c:22: 	i = 432;
	li	a5,432		# tmp75,
	sw	a5,-20(s0)	# tmp75, i
# softwareblink.c:23: 	if (i == 432) {
	lw	a4,-20(s0)		# tmp76, i
	li	a5,432		# tmp77,
	bne	a4,a5,.L2	#, tmp76, tmp77,
# softwareblink.c:24: 		*gDebugLedsMemoryMappedRegister = 0xFF;
	lui	a5,%hi(gDebugLedsMemoryMappedRegister)	# tmp78,
	lw	a5,%lo(gDebugLedsMemoryMappedRegister)(a5)		# gDebugLedsMemoryMappedRegister.0_1, gDebugLedsMemoryMappedRegister
# softwareblink.c:24: 		*gDebugLedsMemoryMappedRegister = 0xFF;
	li	a4,255		# tmp79,
	sw	a4,0(a5)	# tmp79, *gDebugLedsMemoryMappedRegister.0_1
.L2:
	li	a5,0		# _6,
# softwareblink.c:40: }
	mv	a0,a5	#, <retval>
	lw	s0,28(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
