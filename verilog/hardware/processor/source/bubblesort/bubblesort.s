	.file	"bubblesort.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-elf)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultilib rv32i/ilp32
# -iprefix /data/f-of-e-tools/tools/sunflower/sunflower-toolchain/tools/riscv/bin/../lib/gcc/riscv32-elf/8.2.0/
# -D M32 bubblesort.c -march=rv32i -mabi=ilp32 -O0 -Wall -fverbose-asm
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
	.globl	gDebugLedsMemoryMappedRegister
	.section	.sdata,"aw"
	.align	2
	.type	gDebugLedsMemoryMappedRegister, @object
	.size	gDebugLedsMemoryMappedRegister, 4
gDebugLedsMemoryMappedRegister:
	.word	8192
	.text
	.align	2
	.globl	swap
	.type	swap, @function
swap:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# xp, xp
	sw	a1,-40(s0)	# yp, yp
# bubblesort.c:7: 	int temp = *xp;
	lw	a5,-36(s0)		# tmp73, xp
	lw	a5,0(a5)		# tmp74, *xp_3(D)
	sw	a5,-20(s0)	# tmp74, temp
# bubblesort.c:8: 	*xp = *yp;
	lw	a5,-40(s0)		# tmp75, yp
	lw	a4,0(a5)		# _1, *yp_5(D)
# bubblesort.c:8: 	*xp = *yp;
	lw	a5,-36(s0)		# tmp76, xp
	sw	a4,0(a5)	# _1, *xp_3(D)
# bubblesort.c:9: 	*yp = temp;
	lw	a5,-40(s0)		# tmp77, yp
	lw	a4,-20(s0)		# tmp78, temp
	sw	a4,0(a5)	# tmp78, *yp_5(D)
# bubblesort.c:10: }
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	swap, .-swap
	.align	2
	.globl	bubbleSort
	.type	bubbleSort, @function
bubbleSort:
	addi	sp,sp,-48	#,,
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# arr, arr
	sw	a1,-40(s0)	# n, n
# bubblesort.c:15: 	for (i = 0; i < n - 1; i++)
	sw	zero,-20(s0)	#, i
# bubblesort.c:15: 	for (i = 0; i < n - 1; i++)
	j	.L3		#
.L7:
# bubblesort.c:16: 		for (j = 0; j < n - i - 1; j++)
	sw	zero,-24(s0)	#, j
# bubblesort.c:16: 		for (j = 0; j < n - i - 1; j++)
	j	.L4		#
.L6:
# bubblesort.c:17: 			if (arr[j] > arr[j + 1])
	lw	a5,-24(s0)		# j.0_1, j
	slli	a5,a5,2	#, _2, j.0_1
	lw	a4,-36(s0)		# tmp91, arr
	add	a5,a4,a5	# _2, _3, tmp91
	lw	a4,0(a5)		# _4, *_3
# bubblesort.c:17: 			if (arr[j] > arr[j + 1])
	lw	a5,-24(s0)		# j.1_5, j
	addi	a5,a5,1	#, _6, j.1_5
	slli	a5,a5,2	#, _7, _6
	lw	a3,-36(s0)		# tmp92, arr
	add	a5,a3,a5	# _7, _8, tmp92
	lw	a5,0(a5)		# _9, *_8
# bubblesort.c:17: 			if (arr[j] > arr[j + 1])
	ble	a4,a5,.L5	#, _4, _9,
# bubblesort.c:18: 				swap(&arr[j], &arr[j + 1]);
	lw	a5,-24(s0)		# j.2_10, j
	slli	a5,a5,2	#, _11, j.2_10
# bubblesort.c:18: 				swap(&arr[j], &arr[j + 1]);
	lw	a4,-36(s0)		# tmp93, arr
	add	a3,a4,a5	# _11, _12, tmp93
# bubblesort.c:18: 				swap(&arr[j], &arr[j + 1]);
	lw	a5,-24(s0)		# j.3_13, j
# bubblesort.c:18: 				swap(&arr[j], &arr[j + 1]);
	addi	a5,a5,1	#, _14, j.3_13
	slli	a5,a5,2	#, _15, _14
	lw	a4,-36(s0)		# tmp94, arr
	add	a5,a4,a5	# _15, _16, tmp94
	mv	a1,a5	#, _16
	mv	a0,a3	#, _12
	call	swap		#
.L5:
# bubblesort.c:16: 		for (j = 0; j < n - i - 1; j++)
	lw	a5,-24(s0)		# tmp96, j
	addi	a5,a5,1	#, tmp95, tmp96
	sw	a5,-24(s0)	# tmp95, j
.L4:
# bubblesort.c:16: 		for (j = 0; j < n - i - 1; j++)
	lw	a4,-40(s0)		# tmp97, n
	lw	a5,-20(s0)		# tmp98, i
	sub	a5,a4,a5	# _17, tmp97, tmp98
# bubblesort.c:16: 		for (j = 0; j < n - i - 1; j++)
	addi	a5,a5,-1	#, _18, _17
# bubblesort.c:16: 		for (j = 0; j < n - i - 1; j++)
	lw	a4,-24(s0)		# tmp99, j
	blt	a4,a5,.L6	#, tmp99, _18,
# bubblesort.c:15: 	for (i = 0; i < n - 1; i++)
	lw	a5,-20(s0)		# tmp101, i
	addi	a5,a5,1	#, tmp100, tmp101
	sw	a5,-20(s0)	# tmp100, i
.L3:
# bubblesort.c:15: 	for (i = 0; i < n - 1; i++)
	lw	a5,-40(s0)		# tmp102, n
	addi	a5,a5,-1	#, _19, tmp102
# bubblesort.c:15: 	for (i = 0; i < n - 1; i++)
	lw	a4,-20(s0)		# tmp103, i
	blt	a4,a5,.L7	#, tmp103, _19,
# bubblesort.c:19: }
	nop	
	lw	ra,44(sp)		#,
	lw	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	bubbleSort, .-bubbleSort
	.section	.rodata
	.align	2
.LC0:
	.word	20
	.word	80
	.word	9
	.word	64
	.word	34
	.word	25
	.word	12
	.word	22
	.word	11
	.word	90
	.word	121
	.word	124
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80	#,,
	sw	ra,76(sp)	#,
	sw	s0,72(sp)	#,
	addi	s0,sp,80	#,,
# bubblesort.c:23: 	int c = 0;
	sw	zero,-20(s0)	#, c
.L11:
# bubblesort.c:25: 		int arr[] = { 20, 80, 9, 64, 34, 25, 12, 22, 11, 90, 121, 124};
	lui	a5,%hi(.LC0)	# tmp75,
	lw	t5,%lo(.LC0)(a5)		# tmp76,
	addi	a4,a5,%lo(.LC0)	# tmp78, tmp75,
	lw	t4,4(a4)		# tmp77,
	addi	a4,a5,%lo(.LC0)	# tmp80, tmp75,
	lw	t3,8(a4)		# tmp79,
	addi	a4,a5,%lo(.LC0)	# tmp82, tmp75,
	lw	t1,12(a4)		# tmp81,
	addi	a4,a5,%lo(.LC0)	# tmp84, tmp75,
	lw	a7,16(a4)		# tmp83,
	addi	a4,a5,%lo(.LC0)	# tmp86, tmp75,
	lw	a6,20(a4)		# tmp85,
	addi	a4,a5,%lo(.LC0)	# tmp88, tmp75,
	lw	a0,24(a4)		# tmp87,
	addi	a4,a5,%lo(.LC0)	# tmp90, tmp75,
	lw	a1,28(a4)		# tmp89,
	addi	a4,a5,%lo(.LC0)	# tmp92, tmp75,
	lw	a2,32(a4)		# tmp91,
	addi	a4,a5,%lo(.LC0)	# tmp94, tmp75,
	lw	a3,36(a4)		# tmp93,
	addi	a4,a5,%lo(.LC0)	# tmp96, tmp75,
	lw	a4,40(a4)		# tmp95,
	addi	a5,a5,%lo(.LC0)	# tmp98, tmp75,
	lw	a5,44(a5)		# tmp97,
	sw	t5,-72(s0)	# tmp76, arr
	sw	t4,-68(s0)	# tmp77, arr
	sw	t3,-64(s0)	# tmp79, arr
	sw	t1,-60(s0)	# tmp81, arr
	sw	a7,-56(s0)	# tmp83, arr
	sw	a6,-52(s0)	# tmp85, arr
	sw	a0,-48(s0)	# tmp87, arr
	sw	a1,-44(s0)	# tmp89, arr
	sw	a2,-40(s0)	# tmp91, arr
	sw	a3,-36(s0)	# tmp93, arr
	sw	a4,-32(s0)	# tmp95, arr
	sw	a5,-28(s0)	# tmp97, arr
# bubblesort.c:26: 		int n = sizeof(arr) / sizeof(arr[0]);
	li	a5,12		# tmp99,
	sw	a5,-24(s0)	# tmp99, n
# bubblesort.c:27: 		bubbleSort(arr, n);
	addi	a5,s0,-72	#, tmp100,
	lw	a1,-24(s0)		#, n
	mv	a0,a5	#, tmp100
	call	bubbleSort		#
# bubblesort.c:28: 		c++;
	lw	a5,-20(s0)		# tmp102, c
	addi	a5,a5,1	#, tmp101, tmp102
	sw	a5,-20(s0)	# tmp101, c
# bubblesort.c:29: 		if (c==1000){
	lw	a4,-20(s0)		# tmp103, c
	li	a5,1000		# tmp104,
	bne	a4,a5,.L9	#, tmp103, tmp104,
# bubblesort.c:30: 			*gDebugLedsMemoryMappedRegister = 0xFF;
	lui	a5,%hi(gDebugLedsMemoryMappedRegister)	# tmp105,
	lw	a5,%lo(gDebugLedsMemoryMappedRegister)(a5)		# gDebugLedsMemoryMappedRegister.4_1, gDebugLedsMemoryMappedRegister
# bubblesort.c:30: 			*gDebugLedsMemoryMappedRegister = 0xFF;
	li	a4,255		# tmp106,
	sw	a4,0(a5)	# tmp106, *gDebugLedsMemoryMappedRegister.4_1
.L9:
# bubblesort.c:32: 		if (c==2000){
	lw	a4,-20(s0)		# tmp107, c
	li	a5,2000		# tmp108,
	bne	a4,a5,.L11	#, tmp107, tmp108,
# bubblesort.c:33: 			*gDebugLedsMemoryMappedRegister = 0x00;
	lui	a5,%hi(gDebugLedsMemoryMappedRegister)	# tmp109,
	lw	a5,%lo(gDebugLedsMemoryMappedRegister)(a5)		# gDebugLedsMemoryMappedRegister.5_2, gDebugLedsMemoryMappedRegister
# bubblesort.c:33: 			*gDebugLedsMemoryMappedRegister = 0x00;
	sw	zero,0(a5)	#, *gDebugLedsMemoryMappedRegister.5_2
# bubblesort.c:34: 			c = 0;
	sw	zero,-20(s0)	#, c
# bubblesort.c:24: 	while (1){
	j	.L11		#
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
