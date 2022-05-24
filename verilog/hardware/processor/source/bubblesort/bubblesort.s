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
# bubblesort.c:18: 		for (j = 0; j < n - i - 1; j++)
	sw	zero,-24(s0)	#, j
# bubblesort.c:18: 		for (j = 0; j < n - i - 1; j++)
	j	.L4		#
.L6:
# bubblesort.c:19: 			if (arr[j] > arr[j + 1])
	lw	a5,-24(s0)		# j.0_1, j
	slli	a5,a5,2	#, _2, j.0_1
	lw	a4,-36(s0)		# tmp91, arr
	add	a5,a4,a5	# _2, _3, tmp91
	lw	a4,0(a5)		# _4, *_3
# bubblesort.c:19: 			if (arr[j] > arr[j + 1])
	lw	a5,-24(s0)		# j.1_5, j
	addi	a5,a5,1	#, _6, j.1_5
	slli	a5,a5,2	#, _7, _6
	lw	a3,-36(s0)		# tmp92, arr
	add	a5,a3,a5	# _7, _8, tmp92
	lw	a5,0(a5)		# _9, *_8
# bubblesort.c:19: 			if (arr[j] > arr[j + 1])
	ble	a4,a5,.L5	#, _4, _9,
# bubblesort.c:20: 				swap(&arr[j], &arr[j + 1]);
	lw	a5,-24(s0)		# j.2_10, j
	slli	a5,a5,2	#, _11, j.2_10
# bubblesort.c:20: 				swap(&arr[j], &arr[j + 1]);
	lw	a4,-36(s0)		# tmp93, arr
	add	a3,a4,a5	# _11, _12, tmp93
# bubblesort.c:20: 				swap(&arr[j], &arr[j + 1]);
	lw	a5,-24(s0)		# j.3_13, j
# bubblesort.c:20: 				swap(&arr[j], &arr[j + 1]);
	addi	a5,a5,1	#, _14, j.3_13
	slli	a5,a5,2	#, _15, _14
	lw	a4,-36(s0)		# tmp94, arr
	add	a5,a4,a5	# _15, _16, tmp94
	mv	a1,a5	#, _16
	mv	a0,a3	#, _12
	call	swap		#
.L5:
# bubblesort.c:18: 		for (j = 0; j < n - i - 1; j++)
	lw	a5,-24(s0)		# tmp96, j
	addi	a5,a5,1	#, tmp95, tmp96
	sw	a5,-24(s0)	# tmp95, j
.L4:
# bubblesort.c:18: 		for (j = 0; j < n - i - 1; j++)
	lw	a4,-40(s0)		# tmp97, n
	lw	a5,-20(s0)		# tmp98, i
	sub	a5,a4,a5	# _17, tmp97, tmp98
# bubblesort.c:18: 		for (j = 0; j < n - i - 1; j++)
	addi	a5,a5,-1	#, _18, _17
# bubblesort.c:18: 		for (j = 0; j < n - i - 1; j++)
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
# bubblesort.c:21: }
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
	.word	94
	.word	99
	.word	144
	.word	121
	.word	81
	.word	199
	.word	80
	.word	39
	.word	134
	.word	116
	.word	144
	.word	136
	.word	87
	.word	88
	.word	159
	.word	188
	.word	117
	.word	87
	.word	38
	.word	159
	.word	80
	.word	138
	.word	213
	.word	75
	.word	77
	.word	181
	.word	124
	.word	125
	.word	7
	.word	156
	.word	223
	.word	185
	.word	227
	.word	30
	.word	241
	.word	195
	.word	251
	.word	39
	.word	160
	.word	79
	.word	235
	.word	162
	.word	122
	.word	109
	.word	135
	.word	221
	.word	225
	.word	171
	.word	134
	.word	122
	.word	116
	.word	194
	.word	26
	.word	45
	.word	57
	.word	61
	.word	156
	.word	69
	.word	55
	.word	128
	.word	106
	.word	252
	.word	76
	.word	227
	.word	47
	.word	140
	.word	179
	.word	30
	.word	76
	.word	229
	.word	222
	.word	141
	.word	93
	.word	117
	.word	76
	.word	147
	.word	144
	.word	209
	.word	13
	.word	107
	.word	3
	.word	201
	.word	246
	.word	34
	.word	0
	.word	250
	.word	150
	.word	107
	.word	185
	.word	102
	.word	208
	.word	191
	.word	127
	.word	109
	.word	175
	.word	14
	.word	185
	.word	122
	.word	31
	.word	87
	.word	245
	.word	204
	.word	63
	.word	172
	.word	218
	.word	80
	.word	152
	.word	214
	.word	219
	.word	171
	.word	195
	.word	121
	.word	13
	.word	233
	.word	242
	.word	137
	.word	246
	.word	120
	.word	25
	.word	64
	.word	202
	.word	227
	.word	84
	.word	32
	.word	153
	.word	79
	.word	181
	.word	31
	.word	229
	.word	102
	.word	104
	.word	98
	.word	249
	.word	154
	.word	4
	.word	205
	.word	236
	.word	254
	.word	182
	.word	134
	.word	130
	.word	248
	.word	34
	.word	159
	.word	255
	.word	181
	.word	99
	.word	132
	.word	68
	.word	15
	.word	66
	.word	83
	.word	107
	.word	241
	.word	248
	.word	139
	.word	223
	.word	129
	.word	217
	.word	233
	.word	169
	.word	45
	.word	57
	.word	2
	.word	136
	.word	65
	.word	105
	.word	141
	.word	164
	.word	227
	.word	194
	.word	62
	.word	85
	.word	44
	.word	168
	.word	81
	.word	89
	.word	145
	.word	31
	.word	237
	.word	200
	.word	82
	.word	29
	.word	182
	.word	222
	.word	155
	.word	8
	.word	248
	.word	150
	.word	242
	.word	233
	.word	122
	.word	57
	.word	109
	.word	31
	.word	112
	.word	165
	.word	175
	.word	78
	.word	61
	.word	94
	.word	169
	.word	170
	.word	89
	.word	250
	.word	198
	.word	101
	.word	156
	.word	112
	.word	104
	.word	85
	.word	191
	.word	112
	.word	65
	.word	55
	.word	29
	.word	161
	.word	89
	.word	241
	.word	204
	.word	234
	.word	239
	.word	31
	.word	106
	.word	124
	.word	23
	.word	210
	.word	99
	.word	163
	.word	97
	.word	5
	.word	127
	.word	221
	.word	44
	.word	82
	.word	32
	.word	21
	.word	160
	.word	82
	.word	1
	.word	37
	.word	186
	.word	134
	.word	216
	.word	25
	.word	96
	.word	230
	.word	165
	.word	222
	.word	82
	.word	187
	.word	139
	.word	112
	.word	1
	.word	252
	.word	156
	.word	118
	.word	10
	.word	165
	.word	252
	.word	143
	.word	224
	.word	208
	.word	27
	.word	253
	.word	189
	.word	115
	.word	203
	.word	27
	.word	104
	.word	89
	.word	65
	.word	200
	.word	148
	.word	197
	.word	162
	.word	118
	.word	110
	.word	252
	.word	130
	.word	183
	.word	108
	.word	221
	.word	70
	.word	73
	.word	97
	.word	105
	.word	191
	.word	199
	.word	121
	.word	138
	.word	252
	.word	0
	.word	238
	.word	136
	.word	77
	.word	207
	.word	61
	.word	224
	.word	119
	.word	216
	.word	232
	.word	52
	.word	169
	.word	203
	.word	91
	.word	244
	.word	137
	.word	46
	.word	217
	.word	247
	.word	162
	.word	55
	.word	131
	.word	242
	.word	250
	.word	198
	.word	221
	.word	44
	.word	41
	.word	249
	.word	217
	.word	141
	.word	180
	.word	54
	.word	161
	.word	81
	.word	176
	.word	71
	.word	95
	.word	99
	.word	113
	.word	150
	.word	49
	.word	91
	.word	111
	.word	66
	.word	241
	.word	235
	.word	2
	.word	247
	.word	49
	.word	211
	.word	162
	.word	93
	.word	61
	.word	224
	.word	114
	.word	6
	.word	8
	.word	239
	.word	236
	.word	123
	.word	78
	.word	34
	.word	211
	.word	138
	.word	223
	.word	10
	.word	46
	.word	27
	.word	179
	.word	55
	.word	230
	.word	115
	.word	169
	.word	95
	.word	48
	.word	47
	.word	148
	.word	99
	.word	100
	.word	103
	.word	159
	.word	171
	.word	237
	.word	147
	.word	168
	.word	224
	.word	101
	.word	112
	.word	40
	.word	195
	.word	178
	.word	179
	.word	152
	.word	62
	.word	138
	.word	105
	.word	244
	.word	178
	.word	16
	.word	41
	.word	24
	.word	188
	.word	103
	.word	148
	.word	148
	.word	72
	.word	67
	.word	97
	.word	56
	.word	216
	.word	6
	.word	129
	.word	156
	.word	5
	.word	130
	.word	49
	.word	250
	.word	184
	.word	248
	.word	145
	.word	13
	.word	213
	.word	105
	.word	108
	.word	50
	.word	251
	.word	16
	.word	52
	.word	16
	.word	236
	.word	90
	.word	78
	.word	236
	.word	91
	.word	211
	.word	200
	.word	194
	.word	85
	.word	198
	.word	104
	.word	229
	.word	56
	.word	244
	.word	225
	.word	155
	.word	13
	.word	90
	.word	173
	.word	50
	.word	238
	.word	221
	.word	95
	.word	174
	.word	61
	.word	108
	.word	63
	.word	136
	.word	122
	.word	140
	.word	10
	.word	23
	.word	169
	.word	210
	.word	90
	.word	49
	.word	46
	.word	88
	.word	209
	.word	185
	.word	227
	.word	102
	.word	208
	.word	67
	.word	132
	.word	193
	.word	149
	.word	246
	.word	126
	.word	254
	.word	183
	.word	62
	.word	150
	.word	231
	.word	14
	.word	199
	.word	241
	.word	75
	.word	253
	.word	13
	.word	127
	.word	173
	.word	117
	.word	237
	.word	233
	.word	184
	.word	254
	.word	169
	.word	138
	.word	179
	.word	39
	.word	184
	.word	79
	.word	144
	.word	119
	.word	57
	.word	62
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-2032	#,,
	sw	ra,2028(sp)	#,
	sw	s0,2024(sp)	#,
	addi	s0,sp,2032	#,,
	addi	sp,sp,-48	#,,
# bubblesort.c:25: 	int c = 0;
	sw	zero,-20(s0)	#, c
.L11:
# bubblesort.c:27: 		int arr[] = { 20, 80, 9, 64, 34, 25, 12, 22, 11, 90, 121, 124,  94,  99, 144, 121,  81, 199,  80,  39, 134, 116, 144, 136,
	li	a5,-4096		# tmp75,
	addi	a4,s0,-16	#, tmp95,
	add	a4,a4,a5	# tmp75, tmp76, tmp95
	lui	a5,%hi(.LC0)	# tmp77,
	addi	a4,a4,2044	#, tmp78, tmp76
	addi	a5,a5,%lo(.LC0)	# tmp79, tmp77,
	li	a3,2044		# tmp80,
	mv	a2,a3	#, tmp80
	mv	a1,a5	#, tmp79
	mv	a0,a4	#, tmp78
	call	memcpy		#
# bubblesort.c:66: 		int n = sizeof(arr) / sizeof(arr[0]);
	li	a5,511		# tmp82,
	sw	a5,-24(s0)	# tmp82, n
# bubblesort.c:67: 		bubbleSort(arr, n);
	li	a5,-4096		# tmp85,
	addi	a5,a5,2044	#, tmp84, tmp85
	addi	a4,s0,-16	#, tmp96,
	add	a5,a4,a5	# tmp84, tmp83, tmp96
	lw	a1,-24(s0)		#, n
	mv	a0,a5	#, tmp83
	call	bubbleSort		#
# bubblesort.c:68: 		c++;
	lw	a5,-20(s0)		# tmp87, c
	addi	a5,a5,1	#, tmp86, tmp87
	sw	a5,-20(s0)	# tmp86, c
# bubblesort.c:69: 		if (c==1000){
	lw	a4,-20(s0)		# tmp88, c
	li	a5,1000		# tmp89,
	bne	a4,a5,.L9	#, tmp88, tmp89,
# bubblesort.c:70: 			*gDebugLedsMemoryMappedRegister = 0xFF;
	lui	a5,%hi(gDebugLedsMemoryMappedRegister)	# tmp90,
	lw	a5,%lo(gDebugLedsMemoryMappedRegister)(a5)		# gDebugLedsMemoryMappedRegister.4_1, gDebugLedsMemoryMappedRegister
# bubblesort.c:70: 			*gDebugLedsMemoryMappedRegister = 0xFF;
	li	a4,255		# tmp91,
	sw	a4,0(a5)	# tmp91, *gDebugLedsMemoryMappedRegister.4_1
.L9:
# bubblesort.c:72: 		if (c==2000){
	lw	a4,-20(s0)		# tmp92, c
	li	a5,2000		# tmp93,
	bne	a4,a5,.L11	#, tmp92, tmp93,
# bubblesort.c:73: 			*gDebugLedsMemoryMappedRegister = 0x00;
	lui	a5,%hi(gDebugLedsMemoryMappedRegister)	# tmp94,
	lw	a5,%lo(gDebugLedsMemoryMappedRegister)(a5)		# gDebugLedsMemoryMappedRegister.5_2, gDebugLedsMemoryMappedRegister
# bubblesort.c:73: 			*gDebugLedsMemoryMappedRegister = 0x00;
	sw	zero,0(a5)	#, *gDebugLedsMemoryMappedRegister.5_2
# bubblesort.c:74: 			c = 0;
	sw	zero,-20(s0)	#, c
# bubblesort.c:26: 	while (1){
	j	.L11		#
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
