	.file	"qsort_main.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-elf)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultilib rv32i/ilp32
# -iprefix /data/f-of-e-tools/tools/sunflower/sunflower-toolchain/tools/riscv/bin/../lib/gcc/riscv32-elf/8.2.0/
# -D M32 qsort_main.c -march=rv32i -mabi=ilp32 -O0 -Wall -fverbose-asm
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
	.align	2
	.type	verify, @function
verify:
	addi	sp,sp,-64	#,,
	sw	s0,60(sp)	#,
	addi	s0,sp,64	#,,
	sw	a0,-52(s0)	# n, n
	sw	a1,-56(s0)	# test, test
	sw	a2,-60(s0)	# verify, verify
# util.h:16:   for (i = 0; i < n/2*2; i+=2)
	sw	zero,-20(s0)	#, i
# util.h:16:   for (i = 0; i < n/2*2; i+=2)
	j	.L2		#
.L6:
# util.h:18:     int t0 = test[i], t1 = test[i+1];
	lw	a5,-20(s0)		# i.0_1, i
	slli	a5,a5,2	#, _2, i.0_1
	lw	a4,-56(s0)		# tmp102, test
	add	a5,a4,a5	# _2, _3, tmp102
# util.h:18:     int t0 = test[i], t1 = test[i+1];
	lw	a5,0(a5)		# tmp103, *_3
	sw	a5,-24(s0)	# tmp103, t0
# util.h:18:     int t0 = test[i], t1 = test[i+1];
	lw	a5,-20(s0)		# i.1_4, i
	addi	a5,a5,1	#, _5, i.1_4
	slli	a5,a5,2	#, _6, _5
	lw	a4,-56(s0)		# tmp104, test
	add	a5,a4,a5	# _6, _7, tmp104
# util.h:18:     int t0 = test[i], t1 = test[i+1];
	lw	a5,0(a5)		# tmp105, *_7
	sw	a5,-28(s0)	# tmp105, t1
# util.h:19:     int v0 = verify[i], v1 = verify[i+1];
	lw	a5,-20(s0)		# i.2_8, i
	slli	a5,a5,2	#, _9, i.2_8
	lw	a4,-60(s0)		# tmp106, verify
	add	a5,a4,a5	# _9, _10, tmp106
# util.h:19:     int v0 = verify[i], v1 = verify[i+1];
	lw	a5,0(a5)		# tmp107, *_10
	sw	a5,-32(s0)	# tmp107, v0
# util.h:19:     int v0 = verify[i], v1 = verify[i+1];
	lw	a5,-20(s0)		# i.3_11, i
	addi	a5,a5,1	#, _12, i.3_11
	slli	a5,a5,2	#, _13, _12
	lw	a4,-60(s0)		# tmp108, verify
	add	a5,a4,a5	# _13, _14, tmp108
# util.h:19:     int v0 = verify[i], v1 = verify[i+1];
	lw	a5,0(a5)		# tmp109, *_14
	sw	a5,-36(s0)	# tmp109, v1
# util.h:20:     if (t0 != v0) return i+1;
	lw	a4,-24(s0)		# tmp110, t0
	lw	a5,-32(s0)		# tmp111, v0
	beq	a4,a5,.L3	#, tmp110, tmp111,
# util.h:20:     if (t0 != v0) return i+1;
	lw	a5,-20(s0)		# tmp112, i
	addi	a5,a5,1	#, _30, tmp112
	j	.L4		#
.L3:
# util.h:21:     if (t1 != v1) return i+2;
	lw	a4,-28(s0)		# tmp113, t1
	lw	a5,-36(s0)		# tmp114, v1
	beq	a4,a5,.L5	#, tmp113, tmp114,
# util.h:21:     if (t1 != v1) return i+2;
	lw	a5,-20(s0)		# tmp115, i
	addi	a5,a5,2	#, _30, tmp115
	j	.L4		#
.L5:
# util.h:16:   for (i = 0; i < n/2*2; i+=2)
	lw	a5,-20(s0)		# tmp117, i
	addi	a5,a5,2	#, tmp116, tmp117
	sw	a5,-20(s0)	# tmp116, i
.L2:
# util.h:16:   for (i = 0; i < n/2*2; i+=2)
	lw	a5,-52(s0)		# tmp118, n
	srli	a4,a5,31	#, tmp119, tmp118
	add	a5,a4,a5	# tmp118, tmp120, tmp119
	srai	a5,a5,1	#, tmp121, tmp120
# util.h:16:   for (i = 0; i < n/2*2; i+=2)
	slli	a5,a5,1	#, _16, _15
# util.h:16:   for (i = 0; i < n/2*2; i+=2)
	lw	a4,-20(s0)		# tmp122, i
	blt	a4,a5,.L6	#, tmp122, _16,
# util.h:23:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	lw	a5,-52(s0)		# n.4_17, n
	andi	a5,a5,1	#, _18, n.4_17
# util.h:23:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	beqz	a5,.L7	#, _18,
# util.h:23:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	lw	a4,-52(s0)		# n.5_19, n
	li	a5,1073741824		# tmp124,
	addi	a5,a5,-1	#, tmp123, tmp124
	add	a5,a4,a5	# tmp123, _20, n.5_19
	slli	a5,a5,2	#, _21, _20
	lw	a4,-56(s0)		# tmp125, test
	add	a5,a4,a5	# _21, _22, tmp125
	lw	a4,0(a5)		# _23, *_22
# util.h:23:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	lw	a3,-52(s0)		# n.6_24, n
	li	a5,1073741824		# tmp127,
	addi	a5,a5,-1	#, tmp126, tmp127
	add	a5,a3,a5	# tmp126, _25, n.6_24
	slli	a5,a5,2	#, _26, _25
	lw	a3,-60(s0)		# tmp128, verify
	add	a5,a3,a5	# _26, _27, tmp128
# util.h:23:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	lw	a5,0(a5)		# _28, *_27
# util.h:23:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	beq	a4,a5,.L7	#, _23, _28,
# util.h:24:     return n;
	lw	a5,-52(s0)		# _30, n
	j	.L4		#
.L7:
# util.h:25:   return 0;
	li	a5,0		# _30,
.L4:
# util.h:26: }
	mv	a0,a5	#, <retval>
	lw	s0,60(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	verify, .-verify
	.globl	__eqdf2
	.globl	__nedf2
	.align	2
	.type	verifyDouble, @function
verifyDouble:
	addi	sp,sp,-80	#,,
	sw	ra,76(sp)	#,
	sw	s0,72(sp)	#,
	sw	s1,68(sp)	#,
	addi	s0,sp,80	#,,
	sw	a0,-68(s0)	# n, n
	sw	a1,-72(s0)	# test, test
	sw	a2,-76(s0)	# verify, verify
# util.h:32:   for (i = 0; i < n/2*2; i+=2)
	sw	zero,-20(s0)	#, i
# util.h:32:   for (i = 0; i < n/2*2; i+=2)
	j	.L9		#
.L14:
# util.h:34:     double t0 = test[i], t1 = test[i+1];
	lw	a5,-20(s0)		# i.7_1, i
	slli	a5,a5,3	#, _2, i.7_1
	lw	a4,-72(s0)		# tmp106, test
	add	a5,a4,a5	# _2, _3, tmp106
# util.h:34:     double t0 = test[i], t1 = test[i+1];
	lw	a6,4(a5)		#, *_3
	lw	a5,0(a5)		# tmp107, *_3
	sw	a5,-32(s0)	# tmp107, t0
	sw	a6,-28(s0)	#, t0
# util.h:34:     double t0 = test[i], t1 = test[i+1];
	lw	a5,-20(s0)		# i.8_4, i
	addi	a5,a5,1	#, _5, i.8_4
	slli	a5,a5,3	#, _6, _5
	lw	a4,-72(s0)		# tmp108, test
	add	a5,a4,a5	# _6, _7, tmp108
# util.h:34:     double t0 = test[i], t1 = test[i+1];
	lw	a6,4(a5)		#, *_7
	lw	a5,0(a5)		# tmp109, *_7
	sw	a5,-40(s0)	# tmp109, t1
	sw	a6,-36(s0)	#, t1
# util.h:35:     double v0 = verify[i], v1 = verify[i+1];
	lw	a5,-20(s0)		# i.9_8, i
	slli	a5,a5,3	#, _9, i.9_8
	lw	a4,-76(s0)		# tmp110, verify
	add	a5,a4,a5	# _9, _10, tmp110
# util.h:35:     double v0 = verify[i], v1 = verify[i+1];
	lw	a6,4(a5)		#, *_10
	lw	a5,0(a5)		# tmp111, *_10
	sw	a5,-48(s0)	# tmp111, v0
	sw	a6,-44(s0)	#, v0
# util.h:35:     double v0 = verify[i], v1 = verify[i+1];
	lw	a5,-20(s0)		# i.10_11, i
	addi	a5,a5,1	#, _12, i.10_11
	slli	a5,a5,3	#, _13, _12
	lw	a4,-76(s0)		# tmp112, verify
	add	a5,a4,a5	# _13, _14, tmp112
# util.h:35:     double v0 = verify[i], v1 = verify[i+1];
	lw	a6,4(a5)		#, *_14
	lw	a5,0(a5)		# tmp113, *_14
	sw	a5,-56(s0)	# tmp113, v1
	sw	a6,-52(s0)	#, v1
# util.h:36:     int eq1 = t0 == v0, eq2 = t1 == v1;
	li	s1,1		# tmp114,
	lw	a2,-48(s0)		#, v0
	lw	a3,-44(s0)		#, v0
	lw	a0,-32(s0)		#, t0
	lw	a1,-28(s0)		#, t0
	call	__eqdf2		#
	mv	a5,a0	# tmp115,
	beqz	a5,.L10	#, tmp115,
	li	s1,0		# tmp114,
.L10:
	andi	a5,s1,0xff	# _15, tmp114
# util.h:36:     int eq1 = t0 == v0, eq2 = t1 == v1;
	sw	a5,-60(s0)	# _15, eq1
# util.h:36:     int eq1 = t0 == v0, eq2 = t1 == v1;
	li	s1,1		# tmp116,
	lw	a2,-56(s0)		#, v1
	lw	a3,-52(s0)		#, v1
	lw	a0,-40(s0)		#, t1
	lw	a1,-36(s0)		#, t1
	call	__eqdf2		#
	mv	a5,a0	# tmp117,
	beqz	a5,.L11	#, tmp117,
	li	s1,0		# tmp116,
.L11:
	andi	a5,s1,0xff	# _16, tmp116
# util.h:36:     int eq1 = t0 == v0, eq2 = t1 == v1;
	sw	a5,-64(s0)	# _16, eq2
# util.h:37:     if (!(eq1 & eq2)) return i+1+eq1;
	lw	a4,-60(s0)		# tmp118, eq1
	lw	a5,-64(s0)		# tmp119, eq2
	and	a5,a4,a5	# tmp119, _17, tmp118
# util.h:37:     if (!(eq1 & eq2)) return i+1+eq1;
	bnez	a5,.L12	#, _17,
# util.h:37:     if (!(eq1 & eq2)) return i+1+eq1;
	lw	a5,-20(s0)		# tmp120, i
	addi	a4,a5,1	#, _18, tmp120
# util.h:37:     if (!(eq1 & eq2)) return i+1+eq1;
	lw	a5,-60(s0)		# tmp121, eq1
	add	a5,a4,a5	# tmp121, _34, _18
	j	.L13		#
.L12:
# util.h:32:   for (i = 0; i < n/2*2; i+=2)
	lw	a5,-20(s0)		# tmp123, i
	addi	a5,a5,2	#, tmp122, tmp123
	sw	a5,-20(s0)	# tmp122, i
.L9:
# util.h:32:   for (i = 0; i < n/2*2; i+=2)
	lw	a5,-68(s0)		# tmp124, n
	srli	a4,a5,31	#, tmp125, tmp124
	add	a5,a4,a5	# tmp124, tmp126, tmp125
	srai	a5,a5,1	#, tmp127, tmp126
# util.h:32:   for (i = 0; i < n/2*2; i+=2)
	slli	a5,a5,1	#, _20, _19
# util.h:32:   for (i = 0; i < n/2*2; i+=2)
	lw	a4,-20(s0)		# tmp128, i
	blt	a4,a5,.L14	#, tmp128, _20,
# util.h:39:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	lw	a5,-68(s0)		# n.11_21, n
	andi	a5,a5,1	#, _22, n.11_21
# util.h:39:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	beqz	a5,.L15	#, _22,
# util.h:39:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	lw	a4,-68(s0)		# n.12_23, n
	li	a5,536870912		# tmp130,
	addi	a5,a5,-1	#, tmp129, tmp130
	add	a5,a4,a5	# tmp129, _24, n.12_23
	slli	a5,a5,3	#, _25, _24
	lw	a4,-72(s0)		# tmp131, test
	add	a5,a4,a5	# _25, _26, tmp131
	lw	a6,4(a5)		# _27, *_26
	lw	a5,0(a5)		# _27, *_26
# util.h:39:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	lw	a3,-68(s0)		# n.13_28, n
	li	a4,536870912		# tmp133,
	addi	a4,a4,-1	#, tmp132, tmp133
	add	a4,a3,a4	# tmp132, _29, n.13_28
	slli	a4,a4,3	#, _30, _29
	lw	a3,-76(s0)		# tmp134, verify
	add	a4,a3,a4	# _30, _31, tmp134
	lw	a3,0(a4)		# _32, *_31
	lw	a4,4(a4)		# _32, *_31
# util.h:39:   if (n % 2 != 0 && test[n-1] != verify[n-1])
	mv	a2,a3	#, _32
	mv	a3,a4	#, _32
	mv	a0,a5	#, _27
	mv	a1,a6	#, _27
	call	__nedf2		#
	mv	a5,a0	# tmp135,
	beqz	a5,.L15	#, tmp135,
# util.h:40:     return n;
	lw	a5,-68(s0)		# _34, n
	j	.L13		#
.L15:
# util.h:41:   return 0;
	li	a5,0		# _34,
.L13:
# util.h:42: }
	mv	a0,a5	#, <retval>
	lw	ra,76(sp)		#,
	lw	s0,72(sp)		#,
	lw	s1,68(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	verifyDouble, .-verifyDouble
	.section	.tbss,"awT",@nobits
	.align	2
	.type	threadsense.1595, @object
	.size	threadsense.1595, 4
threadsense.1595:
	.zero	4
	.text
	.align	2
	.type	barrier, @function
barrier:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# ncores, ncores
# util.h:50:   __sync_synchronize();
	fence	iorw,iorw
# util.h:52:   threadsense = !threadsense;
	lui	a5,%tprel_hi(threadsense.1595)	# tmp81,
	add	a5,a5,tp,%tprel_add(threadsense.1595)	# tmp82, tmp81,,
	lw	a5,%tprel_lo(threadsense.1595)(a5)		# threadsense.14_1, threadsense
	seqz	a5,a5	# tmp84, threadsense.14_1
	andi	a5,a5,0xff	# _2, tmp83
	mv	a4,a5	# _3, _2
# util.h:52:   threadsense = !threadsense;
	lui	a5,%tprel_hi(threadsense.1595)	# tmp85,
	add	a5,a5,tp,%tprel_add(threadsense.1595)	# tmp86, tmp85,,
	sw	a4,%tprel_lo(threadsense.1595)(a5)	# _3, threadsense
# util.h:53:   if (__sync_fetch_and_add(&count, 1) == ncores-1)
	li	a1,1		#,
	lui	a5,%hi(count.1594)	# tmp90,
	addi	a0,a5,%lo(count.1594)	#, tmp90,
	call	__sync_fetch_and_add_4		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# _5, _4
# util.h:53:   if (__sync_fetch_and_add(&count, 1) == ncores-1)
	lw	a5,-20(s0)		# tmp92, ncores
	addi	a5,a5,-1	#, _6, tmp92
# util.h:53:   if (__sync_fetch_and_add(&count, 1) == ncores-1)
	bne	a4,a5,.L22	#, _5, _6,
# util.h:55:     count = 0;
	lui	a5,%hi(count.1594)	# tmp93,
	sw	zero,%lo(count.1594)(a5)	#, count
# util.h:56:     sense = threadsense;
	lui	a5,%tprel_hi(threadsense.1595)	# tmp94,
	add	a5,a5,tp,%tprel_add(threadsense.1595)	# tmp95, tmp94,,
	lw	a4,%tprel_lo(threadsense.1595)(a5)		# threadsense.15_7, threadsense
	lui	a5,%hi(sense.1593)	# tmp96,
	sw	a4,%lo(sense.1593)(a5)	# threadsense.15_7, sense
	j	.L20		#
.L22:
# util.h:58:   else while(sense != threadsense)
	nop	
.L21:
# util.h:58:   else while(sense != threadsense)
	lui	a5,%hi(sense.1593)	# tmp97,
	lw	a4,%lo(sense.1593)(a5)		# sense.16_8, sense
	lui	a5,%tprel_hi(threadsense.1595)	# tmp98,
	add	a5,a5,tp,%tprel_add(threadsense.1595)	# tmp99, tmp98,,
	lw	a5,%tprel_lo(threadsense.1595)(a5)		# threadsense.17_9, threadsense
# util.h:58:   else while(sense != threadsense)
	bne	a4,a5,.L21	#, sense.16_8, threadsense.17_9,
.L20:
# util.h:61:   __sync_synchronize();
	fence	iorw,iorw
# util.h:62: }
	nop	
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	barrier, .-barrier
	.align	2
	.type	lfsr, @function
lfsr:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-40(s0)	# x, x
	sw	a1,-36(s0)	# x, x
# util.h:66:   uint64_t bit = (x ^ (x >> 1)) & 1;
	lw	a2,-36(s0)		# tmp79, x
	slli	a2,a2,31	#, tmp78, tmp79
	lw	a1,-40(s0)		# tmp80, x
	srli	a3,a1,1	#, _1, tmp80
	or	a3,a2,a3	# _1, _1, tmp78
	lw	a2,-36(s0)		# tmp81, x
	srli	a4,a2,1	#, _1, tmp81
# util.h:66:   uint64_t bit = (x ^ (x >> 1)) & 1;
	lw	a2,-40(s0)		# tmp82, x
	xor	t1,a2,a3	# _1, _2, tmp82
	lw	a2,-36(s0)		# tmp83, x
	xor	t2,a2,a4	# _1, _2, tmp83
# util.h:66:   uint64_t bit = (x ^ (x >> 1)) & 1;
	andi	a4,t1,1	#, tmp84, _2
	sw	a4,-24(s0)	# tmp84, bit
	andi	a4,t2,0	#, tmp85, _2
	sw	a4,-20(s0)	# tmp85, bit
# util.h:67:   return (x >> 1) | (bit << 62);
	lw	a4,-36(s0)		# tmp87, x
	slli	a4,a4,31	#, tmp86, tmp87
	lw	a3,-40(s0)		# tmp88, x
	srli	a5,a3,1	#, _3, tmp88
	or	a5,a4,a5	# _3, _3, tmp86
	lw	a4,-36(s0)		# tmp89, x
	srli	a6,a4,1	#, _3, tmp89
# util.h:67:   return (x >> 1) | (bit << 62);
	lw	a4,-24(s0)		# tmp90, bit
	slli	t4,a4,30	#, _4, tmp90
	li	t3,0		# _4,
# util.h:67:   return (x >> 1) | (bit << 62);
	or	t5,a5,t3	# _4, _7, _3
	or	t6,a6,t4	# _4, _7, _3
	mv	a5,t5	# <retval>, _7
	mv	a6,t6	# <retval>, _7
# util.h:68: }
	mv	a0,a5	#, <retval>
	mv	a1,a6	#, <retval>
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	lfsr, .-lfsr
	.align	2
	.type	insn_len, @function
insn_len:
	addi	sp,sp,-32	#,,
	sw	s0,28(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# pc, pc
# util.h:72:   return (*(unsigned short*)pc & 3) ? 4 : 2;
	lw	a5,-20(s0)		# pc.19_1, pc
# util.h:72:   return (*(unsigned short*)pc & 3) ? 4 : 2;
	lhu	a5,0(a5)	# _2, *pc.19_1
# util.h:72:   return (*(unsigned short*)pc & 3) ? 4 : 2;
	andi	a5,a5,3	#, _4, _3
# util.h:72:   return (*(unsigned short*)pc & 3) ? 4 : 2;
	beqz	a5,.L26	#, _4,
# util.h:72:   return (*(unsigned short*)pc & 3) ? 4 : 2;
	li	a5,4		# iftmp.18_5,
	j	.L28		#
.L26:
# util.h:72:   return (*(unsigned short*)pc & 3) ? 4 : 2;
	li	a5,2		# iftmp.18_5,
.L28:
# util.h:73: }
	mv	a0,a5	#, <retval>
	lw	s0,28(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	insn_len, .-insn_len
	.globl	input_data
	.data
	.align	2
	.type	input_data, @object
	.size	input_data, 8192
input_data:
	.word	89400484
	.word	976015092
	.word	1792756324
	.word	721524505
	.word	1214379246
	.word	3794415
	.word	402845420
	.word	2126940990
	.word	1611680320
	.word	786566648
	.word	754215794
	.word	1231249235
	.word	284658041
	.word	137796456
	.word	2041942843
	.word	329767814
	.word	1255524953
	.word	465119445
	.word	1731949250
	.word	301663421
	.word	1335861008
	.word	452888789
	.word	14125900
	.word	1231149357
	.word	2002881120
	.word	730845665
	.word	1913581092
	.word	1275331596
	.word	843738737
	.word	1931282005
	.word	1492488573
	.word	490920543
	.word	2066865713
	.word	25885333
	.word	238278880
	.word	1898582764
	.word	250731366
	.word	1612593993
	.word	637659983
	.word	1388759892
	.word	916073297
	.word	1075762632
	.word	675549432
	.word	937987129
	.word	1417415680
	.word	1508705426
	.word	1663890071
	.word	1746476698
	.word	686797873
	.word	2109530615
	.word	1459500136
	.word	324215873
	.word	1881253854
	.word	1496277718
	.word	810387144
	.word	1212974417
	.word	1020037994
	.word	585169793
	.word	2017191527
	.word	556328195
	.word	1160036198
	.word	1391095995
	.word	1223583276
	.word	1094283114
	.word	436580096
	.word	190215907
	.word	603159718
	.word	1513255537
	.word	1631935240
	.word	1440145706
	.word	1303736105
	.word	806638567
	.word	1100041120
	.word	1185825535
	.word	1414141069
	.word	2014090929
	.word	419476096
	.word	1273955724
	.word	175753599
	.word	1223475486
	.word	574236644
	.word	2046759770
	.word	492507266
	.word	1721767511
	.word	726141970
	.word	1256152080
	.word	2029909894
	.word	1382429941
	.word	1939683211
	.word	791188057
	.word	519699747
	.word	1051184301
	.word	1962689485
	.word	706913763
	.word	1776471922
	.word	672906535
	.word	2005817027
	.word	1274190723
	.word	2119425672
	.word	835063788
	.word	421198539
	.word	1169327477
	.word	2064145552
	.word	1396662140
	.word	1218522465
	.word	2105638337
	.word	754247044
	.word	2143968639
	.word	1395289708
	.word	1750443194
	.word	1412540552
	.word	170281493
	.word	389233190
	.word	448284065
	.word	240618723
	.word	2145930822
	.word	1846605728
	.word	1353999206
	.word	140536987
	.word	1821559709
	.word	619972089
	.word	1514278798
	.word	750919339
	.word	2143343312
	.word	304427548
	.word	545066288
	.word	1946004194
	.word	1538069400
	.word	1904770864
	.word	924541465
	.word	567779677
	.word	893302687
	.word	1239665569
	.word	1157666831
	.word	2105814934
	.word	1505475223
	.word	1636203720
	.word	9736243
	.word	518073650
	.word	1063743848
	.word	1029176122
	.word	215018112
	.word	1073871430
	.word	1858933377
	.word	866478506
	.word	1491477359
	.word	477407584
	.word	895562064
	.word	954441852
	.word	638167485
	.word	1550159640
	.word	614612685
	.word	1453397990
	.word	1334857284
	.word	683536723
	.word	168771888
	.word	481561285
	.word	755798022
	.word	2016161810
	.word	1162679490
	.word	619428858
	.word	1390306889
	.word	256860662
	.word	365275089
	.word	1322281086
	.word	1134185180
	.word	1302724177
	.word	621921213
	.word	837554186
	.word	1711761015
	.word	754896618
	.word	1723143470
	.word	978247260
	.word	1548804416
	.word	598016845
	.word	1631405417
	.word	790929190
	.word	1602517354
	.word	770957259
	.word	198186681
	.word	1256015513
	.word	2126029304
	.word	135012885
	.word	583112200
	.word	2118203528
	.word	1834388383
	.word	866964848
	.word	1695191950
	.word	745183293
	.word	1143511498
	.word	1112731797
	.word	478721193
	.word	1202162389
	.word	991159735
	.word	1952364329
	.word	519344323
	.word	1667102296
	.word	770412991
	.word	548632788
	.word	714042223
	.word	1674045273
	.word	1471598258
	.word	1286989824
	.word	1590771096
	.word	308832070
	.word	959354209
	.word	72802865
	.word	670621648
	.word	269167950
	.word	1598436917
	.word	2023498746
	.word	1198213061
	.word	2006856683
	.word	1029832956
	.word	1719009954
	.word	1198254803
	.word	1188748563
	.word	1989240516
	.word	927524181
	.word	1711765426
	.word	1394929399
	.word	769005536
	.word	2047006719
	.word	1915435344
	.word	618681206
	.word	1431814151
	.word	42021322
	.word	1106678970
	.word	107160610
	.word	1199317660
	.word	185592115
	.word	1870214195
	.word	205008108
	.word	1834318089
	.word	948686793
	.word	946311527
	.word	1262399341
	.word	131405125
	.word	1321897861
	.word	1459138745
	.word	821481684
	.word	852388468
	.word	603907009
	.word	20643769
	.word	1737931879
	.word	37141933
	.word	2088576982
	.word	366700722
	.word	1761289401
	.word	625991894
	.word	741078359
	.word	817417567
	.word	969305448
	.word	1152416171
	.word	1101933540
	.word	399456957
	.word	2074896270
	.word	1971484382
	.word	747592875
	.word	1160333307
	.word	1738353358
	.word	2113434968
	.word	1896952705
	.word	1908093581
	.word	1155544307
	.word	117766047
	.word	2034767768
	.word	1316120929
	.word	1507433029
	.word	2045407567
	.word	765386206
	.word	1031625002
	.word	1220915309
	.word	325667019
	.word	1916602098
	.word	16411608
	.word	47463938
	.word	1379995885
	.word	1221108420
	.word	721046824
	.word	1431492783
	.word	1569479928
	.word	909415369
	.word	204514903
	.word	933673987
	.word	1565700239
	.word	341674967
	.word	602907378
	.word	5309142
	.word	849489374
	.word	180599971
	.word	1480437960
	.word	532467027
	.word	1958396887
	.word	106223060
	.word	1025117441
	.word	935689637
	.word	1752088215
	.word	1704561346
	.word	1568395337
	.word	1868289345
	.word	569949159
	.word	1045658065
	.word	274746405
	.word	890461390
	.word	507848158
	.word	793505636
	.word	460893030
	.word	1179525294
	.word	388855203
	.word	1113693824
	.word	13887419
	.word	1909681194
	.word	1082499152
	.word	1466632447
	.word	1281443423
	.word	612289854
	.word	373305330
	.word	568652142
	.word	1383640563
	.word	1073695485
	.word	745777837
	.word	624939139
	.word	1289308008
	.word	1928550562
	.word	148113917
	.word	462743614
	.word	1826880531
	.word	1571598133
	.word	1415390230
	.word	1480273562
	.word	1331593955
	.word	540006359
	.word	261556590
	.word	1690167792
	.word	283430575
	.word	1194709162
	.word	1781233744
	.word	649754857
	.word	1434046375
	.word	1135793759
	.word	932423857
	.word	1170759710
	.word	1048943084
	.word	692845661
	.word	1620562432
	.word	2036750157
	.word	270410557
	.word	617995659
	.word	1347284277
	.word	1771614266
	.word	30992839
	.word	655445946
	.word	22762734
	.word	1695617313
	.word	867628573
	.word	1577034674
	.word	227870124
	.word	2063408339
	.word	1512163910
	.word	787913688
	.word	1758748737
	.word	1553547892
	.word	2072440819
	.word	632611704
	.word	873623623
	.word	2097057488
	.word	1879635915
	.word	1404727477
	.word	1840896199
	.word	1609955669
	.word	186112992
	.word	196401930
	.word	130001148
	.word	814302898
	.word	1420810050
	.word	226906236
	.word	1435859758
	.word	221330186
	.word	329049266
	.word	820933470
	.word	260792255
	.word	1401058771
	.word	210908782
	.word	1774652096
	.word	886978116
	.word	1807085904
	.word	508041515
	.word	767233910
	.word	26687179
	.word	318750634
	.word	910677024
	.word	117260224
	.word	2074840378
	.word	301350822
	.word	464795711
	.word	2053899162
	.word	1335298265
	.word	737518341
	.word	777433215
	.word	1147341731
	.word	1981481446
	.word	1628389501
	.word	1537459540
	.word	1121432739
	.word	1392162662
	.word	1800522575
	.word	644293952
	.word	1273223611
	.word	1906345724
	.word	28256901
	.word	1467376771
	.word	372465453
	.word	78348530
	.word	135678410
	.word	1061864942
	.word	260267972
	.word	1184561748
	.word	287497702
	.word	1154842325
	.word	1629914848
	.word	2084953915
	.word	799717076
	.word	1382484003
	.word	2045821218
	.word	933603111
	.word	84924801
	.word	892939912
	.word	279252402
	.word	651750790
	.word	238566180
	.word	942977997
	.word	1822612008
	.word	1849675857
	.word	939497524
	.word	436630343
	.word	549253917
	.word	1028937430
	.word	579174666
	.word	2124749673
	.word	880456526
	.word	1451442832
	.word	1350653461
	.word	1546104436
	.word	858045289
	.word	2129513521
	.word	1181191604
	.word	727587915
	.word	1619598456
	.word	969076419
	.word	1212628403
	.word	1361078114
	.word	368541415
	.word	333906659
	.word	41714278
	.word	1390274260
	.word	1563717683
	.word	973769771
	.word	1078197595
	.word	918378387
	.word	1672192305
	.word	1094531762
	.word	92620223
	.word	2125958841
	.word	1620803320
	.word	915948205
	.word	174965839
	.word	27377406
	.word	435236973
	.word	1038830638
	.word	1834161399
	.word	305750851
	.word	330474090
	.word	730422541
	.word	1634445325
	.word	840106059
	.word	767880329
	.word	109526756
	.word	2027814180
	.word	367923081
	.word	1983379601
	.word	1293091635
	.word	705851791
	.word	226723092
	.word	1067775613
	.word	2082760612
	.word	951663731
	.word	260670135
	.word	1111213862
	.word	1891630185
	.word	1379259015
	.word	176024101
	.word	594814862
	.word	1870859970
	.word	1689946986
	.word	1290969161
	.word	244975305
	.word	1296857499
	.word	1811088032
	.word	1873900475
	.word	1949896838
	.word	1907793490
	.word	592006699
	.word	1312471120
	.word	509744705
	.word	869853078
	.word	70894786
	.word	503368137
	.word	1686479103
	.word	1602967659
	.word	1214950832
	.word	1131661227
	.word	768185796
	.word	592234826
	.word	1727583308
	.word	949222447
	.word	1760851607
	.word	487888229
	.word	1614780688
	.word	1618378831
	.word	602368560
	.word	2028116487
	.word	183679578
	.word	1561251584
	.word	986240059
	.word	1525451290
	.word	977907387
	.word	432609664
	.word	1528031307
	.word	116766659
	.word	987761406
	.word	1630293700
	.word	90063199
	.word	114202152
	.word	543952312
	.word	855107605
	.word	812328969
	.word	88823122
	.word	1092881031
	.word	304131252
	.word	1505022272
	.word	894769708
	.word	1849495275
	.word	1607515830
	.word	1032748996
	.word	472872107
	.word	1593359038
	.word	1027760887
	.word	1074205225
	.word	1657001479
	.word	1524491858
	.word	387061281
	.word	107095939
	.word	1038018856
	.word	798445606
	.word	1486594282
	.word	1878434988
	.word	1558695709
	.word	2033003588
	.word	373226849
	.word	2133066804
	.word	399991238
	.word	1132597050
	.word	1965358941
	.word	1551661799
	.word	3522194
	.word	935939763
	.word	2070467093
	.word	500734709
	.word	533101409
	.word	1068798385
	.word	998931662
	.word	1500102591
	.word	779093898
	.word	66579049
	.word	1121960111
	.word	749415493
	.word	502323961
	.word	538932155
	.word	259768753
	.word	753296935
	.word	87897457
	.word	539429964
	.word	1675300017
	.word	1232992084
	.word	420106224
	.word	1685350721
	.word	346598567
	.word	1610244183
	.word	1597506096
	.word	1079859867
	.word	944382193
	.word	1770497338
	.word	764935753
	.word	1776794410
	.word	866854601
	.word	365854486
	.word	304211060
	.word	344860208
	.word	1361012693
	.word	1450892344
	.word	622170346
	.word	70003859
	.word	1681866717
	.word	435288306
	.word	687941098
	.word	308700094
	.word	1367731096
	.word	1834285819
	.word	255226842
	.word	193873940
	.word	1833603743
	.word	848402819
	.word	152273285
	.word	231181585
	.word	1754447491
	.word	1838218199
	.word	834410115
	.word	229905664
	.word	2052321529
	.word	338532526
	.word	77482422
	.word	12937811
	.word	35859252
	.word	1645969422
	.word	1501181424
	.word	438711458
	.word	1496078411
	.word	419109342
	.word	1455756978
	.word	1234944834
	.word	1287171290
	.word	470090505
	.word	1900162831
	.word	1130850177
	.word	1772760484
	.word	381571915
	.word	1605369007
	.word	514914429
	.word	994291574
	.word	1502557594
	.word	1099847920
	.word	1627355806
	.word	1148699143
	.word	1519017268
	.word	946489895
	.word	106595511
	.word	921573402
	.word	181567810
	.word	1575380740
	.word	1719573683
	.word	1561730727
	.word	1920182565
	.word	1510133268
	.word	1102603775
	.word	1175885101
	.word	802730854
	.word	185979744
	.word	1058937717
	.word	1716853034
	.word	31596852
	.word	462857778
	.word	1335652095
	.word	47036070
	.word	178901145
	.word	1399673078
	.word	222529745
	.word	128036841
	.word	1708126014
	.word	923768127
	.word	1980923963
	.word	1413860940
	.word	1382551511
	.word	208160226
	.word	1892370478
	.word	2091626028
	.word	1793190956
	.word	1417601340
	.word	515811664
	.word	2076612603
	.word	993525189
	.word	1127173529
	.word	245334962
	.word	134453363
	.word	1206302514
	.word	1344125357
	.word	1139159604
	.word	651536866
	.word	22136821
	.word	1536213818
	.word	2143324534
	.word	879878312
	.word	1944679691
	.word	119285206
	.word	832081018
	.word	1566878909
	.word	876130333
	.word	656954306
	.word	226726100
	.word	937976428
	.word	1202009920
	.word	1938258683
	.word	2014129292
	.word	1274436639
	.word	1102423908
	.word	1485740112
	.word	879552408
	.word	1712269139
	.word	650513248
	.word	1068587688
	.word	434850545
	.word	382422699
	.word	919736727
	.word	2022291557
	.word	1319798607
	.word	2139976479
	.word	772059719
	.word	1033910502
	.word	1120963974
	.word	340231765
	.word	1471131758
	.word	1767380006
	.word	47452797
	.word	1313871880
	.word	399114073
	.word	1462921857
	.word	671848647
	.word	31574181
	.word	230340298
	.word	239990424
	.word	590690783
	.word	1714295540
	.word	833019845
	.word	398244682
	.word	522160389
	.word	900852
	.word	1045627895
	.word	1545555937
	.word	226986415
	.word	208433088
	.word	1502480836
	.word	1611500622
	.word	1933923245
	.word	1588715179
	.word	1655277291
	.word	1749972876
	.word	1386258142
	.word	935490932
	.word	173822937
	.word	702380578
	.word	348131466
	.word	81402251
	.word	875481479
	.word	72939206
	.word	2033828953
	.word	1302272656
	.word	64795664
	.word	2010549018
	.word	1652108025
	.word	58217952
	.word	1871684562
	.word	190536346
	.word	244709448
	.word	949010757
	.word	320137025
	.word	729474445
	.word	133790520
	.word	740536012
	.word	316479300
	.word	1191513656
	.word	1802197319
	.word	785398708
	.word	1816641611
	.word	2052328978
	.word	930367387
	.word	1374125186
	.word	303845878
	.word	852835634
	.word	454359988
	.word	2131761201
	.word	1757028186
	.word	536063430
	.word	1765354961
	.word	726869128
	.word	1209784819
	.word	1790557628
	.word	783427298
	.word	2094085507
	.word	1323798820
	.word	846127236
	.word	1065481253
	.word	572240371
	.word	1745543275
	.word	1011417836
	.word	1970797151
	.word	748527394
	.word	343119399
	.word	723323690
	.word	925975225
	.word	901789102
	.word	1726987516
	.word	535828217
	.word	387611445
	.word	464171383
	.word	1170510314
	.word	1166227930
	.word	1807172811
	.word	1942089394
	.word	985305323
	.word	1368235387
	.word	1691486500
	.word	1568900638
	.word	1876255297
	.word	1249183285
	.word	1710305778
	.word	1763785295
	.word	1733366374
	.word	1444076976
	.word	1629633514
	.word	2105321510
	.word	225091211
	.word	898893218
	.word	863551327
	.word	1441811554
	.word	546340809
	.word	1977865396
	.word	2116495484
	.word	1221726287
	.word	293109484
	.word	1601617797
	.word	1568176414
	.word	1424797596
	.word	1256372950
	.word	298799048
	.word	1708002892
	.word	829450571
	.word	891710357
	.word	1994402695
	.word	1136264020
	.word	372280769
	.word	1520667645
	.word	983043723
	.word	1191079043
	.word	680172541
	.word	813511681
	.word	395360213
	.word	1648575360
	.word	1026342885
	.word	2100497812
	.word	422047044
	.word	509116230
	.word	859612092
	.word	2037182006
	.word	895080280
	.word	494367164
	.word	1732028080
	.word	355614494
	.word	2141591317
	.word	1087251698
	.word	580692625
	.word	225934851
	.word	1581062145
	.word	1515262458
	.word	1497680539
	.word	1711718534
	.word	1774796872
	.word	301673313
	.word	1136356724
	.word	653050943
	.word	109035776
	.word	1709823304
	.word	1340949553
	.word	1365423458
	.word	1155459206
	.word	1203897636
	.word	188016786
	.word	256210446
	.word	633075975
	.word	19227407
	.word	1864952910
	.word	1143853106
	.word	237020443
	.word	1750197960
	.word	856837002
	.word	80321564
	.word	1679324299
	.word	1257507406
	.word	1390040163
	.word	1590461855
	.word	806384435
	.word	1331383316
	.word	2027828650
	.word	1649392096
	.word	1928309762
	.word	1027758817
	.word	1267173039
	.word	123889599
	.word	95752736
	.word	2060969286
	.word	619461174
	.word	1686215900
	.word	1817156134
	.word	2118821565
	.word	1596821127
	.word	1800186189
	.word	212821393
	.word	661318748
	.word	1123331233
	.word	146002907
	.word	953877041
	.word	1771924274
	.word	929351822
	.word	2142357746
	.word	356638683
	.word	1610539590
	.word	2001056977
	.word	368889391
	.word	62209567
	.word	1775608361
	.word	992410365
	.word	1336108161
	.word	696448050
	.word	333820982
	.word	585804640
	.word	1775805177
	.word	809604334
	.word	93191015
	.word	732444124
	.word	1492071476
	.word	1930662128
	.word	174082258
	.word	340442582
	.word	507936866
	.word	362748128
	.word	1607204293
	.word	953383750
	.word	1599876594
	.word	416457166
	.word	571635069
	.word	1356847855
	.word	267174620
	.word	2011827638
	.word	1572212863
	.word	589049769
	.word	2024853642
	.word	1680251429
	.word	914906004
	.word	398911194
	.word	795915364
	.word	1332467446
	.word	688483428
	.word	628445699
	.word	578787063
	.word	2006320950
	.word	1167207852
	.word	336213879
	.word	1640952769
	.word	1778544166
	.word	1617229086
	.word	190807078
	.word	1968608155
	.word	2122852959
	.word	31153367
	.word	1353144470
	.word	2196420
	.word	1395155215
	.word	1948121717
	.word	69118708
	.word	2140091269
	.word	2530146
	.word	1740778973
	.word	1601247294
	.word	1205895814
	.word	858150908
	.word	1878253960
	.word	1967705762
	.word	2090543533
	.word	1702425249
	.word	622114437
	.word	1192155877
	.word	1095403694
	.word	2115445751
	.word	1201124879
	.word	1140728569
	.word	2085323316
	.word	1291025252
	.word	871908043
	.word	863647665
	.word	1245819051
	.word	1468486929
	.word	631022494
	.word	1161580432
	.word	539942311
	.word	1943137808
	.word	1826628136
	.word	259775677
	.word	277497333
	.word	2140756121
	.word	973493986
	.word	1121800211
	.word	1539560507
	.word	1337406065
	.word	186178768
	.word	482917205
	.word	1459100749
	.word	1924603748
	.word	390743779
	.word	1140008063
	.word	517767440
	.word	1764436465
	.word	722260205
	.word	1400929335
	.word	1706528514
	.word	486165509
	.word	1379460673
	.word	206653795
	.word	3159407
	.word	565150174
	.word	688338919
	.word	1223572435
	.word	2122262571
	.word	513009937
	.word	1390656632
	.word	271906847
	.word	1622692876
	.word	1313115559
	.word	2061144988
	.word	411864717
	.word	437710825
	.word	513582947
	.word	305489695
	.word	1713188647
	.word	387273799
	.word	1901537567
	.word	644842409
	.word	1231932661
	.word	356672421
	.word	232170581
	.word	1636860706
	.word	302219842
	.word	2094591332
	.word	1697686200
	.word	1390477985
	.word	1833543700
	.word	1203377492
	.word	50968578
	.word	1332379148
	.word	1514582723
	.word	909273561
	.word	1914809801
	.word	560663378
	.word	1032914339
	.word	1216475831
	.word	113462155
	.word	1165446977
	.word	800591831
	.word	1058677375
	.word	432102601
	.word	2131797509
	.word	1175004233
	.word	1602827413
	.word	878884686
	.word	446372159
	.word	257728183
	.word	800661980
	.word	1387864976
	.word	2004770236
	.word	999229412
	.word	1428223489
	.word	175843632
	.word	74887898
	.word	630393584
	.word	1147793249
	.word	112648605
	.word	1028529524
	.word	1891904961
	.word	1953919896
	.word	481563348
	.word	436476038
	.word	1601134240
	.word	72319656
	.word	1581118537
	.word	460420451
	.word	1904576737
	.word	786297537
	.word	359735266
	.word	1918354829
	.word	4031164
	.word	1679777458
	.word	1144017176
	.word	1462192184
	.word	690865719
	.word	1515933932
	.word	363508800
	.word	1480324438
	.word	1044088643
	.word	2036061488
	.word	218671081
	.word	830595166
	.word	381933797
	.word	108346070
	.word	92271196
	.word	217762975
	.word	1522316172
	.word	1021014457
	.word	1407094080
	.word	857894203
	.word	1968623233
	.word	1459620801
	.word	1345014111
	.word	709651138
	.word	520511102
	.word	2048560397
	.word	1768795266
	.word	1013901419
	.word	1709697877
	.word	1026380990
	.word	1377995642
	.word	1560142576
	.word	542609105
	.word	1534330971
	.word	528024121
	.word	2015847175
	.word	325324443
	.word	1137511396
	.word	1883999260
	.word	1871060346
	.word	715940689
	.word	167653495
	.word	1292049996
	.word	1172290275
	.word	2018336444
	.word	1951228823
	.word	1666074170
	.word	1834852613
	.word	854475547
	.word	308857120
	.word	502558280
	.word	2105718728
	.word	1624653209
	.word	514214340
	.word	976063110
	.word	227427283
	.word	912381406
	.word	785989696
	.word	451448729
	.word	212046016
	.word	2068743361
	.word	117280545
	.word	1936668087
	.word	210748671
	.word	1984152603
	.word	945948973
	.word	1409001936
	.word	1644353864
	.word	1139018167
	.word	678475375
	.word	1279061703
	.word	723930558
	.word	195379046
	.word	1498554338
	.word	999346398
	.word	1665914525
	.word	1473735214
	.word	1561422777
	.word	151416112
	.word	697817760
	.word	1622758049
	.word	607761482
	.word	69889880
	.word	1152335090
	.word	1063657548
	.word	1338090388
	.word	55461678
	.word	1278053582
	.word	837024327
	.word	1914764659
	.word	1049475248
	.word	161502390
	.word	80404202
	.word	624714335
	.word	879380479
	.word	1066787659
	.word	1375470750
	.word	1561212123
	.word	59384706
	.word	966363087
	.word	2044016080
	.word	1178086274
	.word	1159745061
	.word	291298358
	.word	173062659
	.word	1385675177
	.word	652078020
	.word	1802327778
	.word	1555660285
	.word	623909040
	.word	1579725218
	.word	1649344003
	.word	270814499
	.word	350182379
	.word	1188076819
	.word	893957771
	.word	534384094
	.word	1057003814
	.word	230634042
	.word	2117880007
	.word	778834747
	.word	250859482
	.word	104637677
	.word	1328272543
	.word	1869264274
	.word	1847908587
	.word	311127477
	.word	506466155
	.word	1808237662
	.word	607471900
	.word	1558244592
	.word	1228817775
	.word	720339756
	.word	1963053072
	.word	1011473945
	.word	1204992245
	.word	566166447
	.word	419053054
	.word	737377568
	.word	520329478
	.word	1740099311
	.word	1682700783
	.word	1455316979
	.word	2118805956
	.word	729509794
	.word	1565610678
	.word	722347551
	.word	739596391
	.word	882282387
	.word	926200942
	.word	999899279
	.word	1318032594
	.word	122124863
	.word	1633512617
	.word	1269707634
	.word	380070610
	.word	1043920511
	.word	665601851
	.word	873976891
	.word	717911282
	.word	2135673182
	.word	761851297
	.word	1604330946
	.word	666624765
	.word	513561613
	.word	1504023310
	.word	1128895624
	.word	99511825
	.word	722919148
	.word	1047336724
	.word	550532376
	.word	1082864732
	.word	289686472
	.word	216557804
	.word	1174587016
	.word	845698678
	.word	1554106660
	.word	577410402
	.word	790256415
	.word	675663963
	.word	2029133999
	.word	161450336
	.word	228960529
	.word	743745539
	.word	1352833750
	.word	2123379476
	.word	852338021
	.word	1291070368
	.word	448708980
	.word	1953450944
	.word	923478775
	.word	827496819
	.word	1126017956
	.word	197964832
	.word	281317274
	.word	1171925835
	.word	764902582
	.word	595717488
	.word	2129930580
	.word	1437147036
	.word	1447469119
	.word	755554593
	.word	2130879949
	.word	1835203128
	.word	1547662666
	.word	1855359256
	.word	965490116
	.word	672323245
	.word	182598318
	.word	216435361
	.word	1324723894
	.word	1144669754
	.word	454438520
	.word	1220523503
	.word	1520886946
	.word	1797641070
	.word	1585050246
	.word	797060176
	.word	1821482472
	.word	2128078174
	.word	973367349
	.word	991874801
	.word	679519053
	.word	1961647235
	.word	2094159153
	.word	391321675
	.word	1604357658
	.word	576906032
	.word	1712341869
	.word	344515114
	.word	1122768484
	.word	1659079595
	.word	1328885292
	.word	48775768
	.word	247448424
	.word	1836119534
	.word	1564061243
	.word	1386366954
	.word	485818381
	.word	37017340
	.word	356546370
	.word	1675494182
	.word	430093707
	.word	1959222232
	.word	1784682542
	.word	1839063567
	.word	1596042792
	.word	295666215
	.word	403378386
	.word	2114587535
	.word	1515528736
	.word	1541546082
	.word	1444048519
	.word	1215103809
	.word	1687941280
	.word	1546057655
	.word	1905279500
	.word	544899032
	.word	2069178089
	.word	1688652157
	.word	1414160501
	.word	332201519
	.word	631936923
	.word	423299667
	.word	1332937015
	.word	545602285
	.word	310273032
	.word	960982228
	.word	372501343
	.word	1933532372
	.word	1711569347
	.word	11476473
	.word	155845605
	.word	700725671
	.word	1457464894
	.word	1325083914
	.word	172109594
	.word	664387510
	.word	1705378439
	.word	376781122
	.word	1472567100
	.word	343682568
	.word	1370528050
	.word	265363198
	.word	2079492652
	.word	1803183394
	.word	519194709
	.word	1538391713
	.word	1931493432
	.word	1183464058
	.word	1489699243
	.word	495097609
	.word	801046035
	.word	177100916
	.word	1292413659
	.word	1348373925
	.word	1550525411
	.word	697685269
	.word	856621012
	.word	1992941115
	.word	1189141368
	.word	221661515
	.word	156760399
	.word	38620214
	.word	375863194
	.word	2078528215
	.word	2103236982
	.word	341987235
	.word	698660475
	.word	381094614
	.word	1201152163
	.word	1275500498
	.word	398211404
	.word	801610475
	.word	1087556673
	.word	846650758
	.word	1848681194
	.word	1287830283
	.word	1400070607
	.word	1603428054
	.word	1233022905
	.word	810516965
	.word	690710531
	.word	1860435620
	.word	750631050
	.word	1271370220
	.word	860360715
	.word	1189323192
	.word	1913926325
	.word	946425090
	.word	1815408878
	.word	743572345
	.word	1902501708
	.word	1276205250
	.word	2005653265
	.word	624614472
	.word	2108439398
	.word	1952177514
	.word	964348374
	.word	1171051384
	.word	2126963607
	.word	812288356
	.word	108628319
	.word	980702956
	.word	714456194
	.word	1678967663
	.word	1935271536
	.word	236851791
	.word	1541132933
	.word	1066014062
	.word	1607628402
	.word	1926717418
	.word	954942098
	.word	1733982669
	.word	14239125
	.word	1506716966
	.word	848141854
	.word	1178260876
	.word	614222093
	.word	731606176
	.word	1512135729
	.word	63244522
	.word	968848252
	.word	1783943137
	.word	1402735006
	.word	1355391150
	.word	1659137391
	.word	1173889730
	.word	1042942541
	.word	1318900244
	.word	1149113346
	.word	2090025563
	.word	1201659316
	.word	250022739
	.word	1035075488
	.word	674580901
	.word	1090386021
	.word	1943651015
	.word	934048997
	.word	2087660971
	.word	738682048
	.word	1305071296
	.word	91177380
	.word	1708106609
	.word	1685880008
	.word	364589031
	.word	1860839427
	.word	1927367009
	.word	906899219
	.word	1090443335
	.word	892574149
	.word	1969729134
	.word	1874026715
	.word	927045887
	.word	1159898528
	.word	730296520
	.word	349249331
	.word	317980803
	.word	225908941
	.word	483348027
	.word	1035956563
	.word	241537930
	.word	1279981214
	.word	1247518755
	.word	247447060
	.word	1793747608
	.word	752388169
	.word	288054543
	.word	2073482870
	.word	2039012903
	.word	617768643
	.word	433412593
	.word	499898207
	.word	1050512245
	.word	331284679
	.word	851322111
	.word	1294873695
	.word	1715379173
	.word	1159675637
	.word	1029338154
	.word	2027445678
	.word	1653332243
	.word	1874855959
	.word	1234157881
	.word	260674360
	.word	1042790263
	.word	1401980800
	.word	730090881
	.word	1745393357
	.word	1550721460
	.word	1607677838
	.word	969500483
	.word	778702716
	.word	1765830270
	.word	731763278
	.word	1600023202
	.word	1957728250
	.word	690983
	.word	444361278
	.word	1278777407
	.word	1231639101
	.word	597427397
	.word	1087245613
	.word	258177907
	.word	2093472294
	.word	1462778368
	.word	2067100479
	.word	1628387880
	.word	762564955
	.word	1194041213
	.word	1348361229
	.word	1822279764
	.word	1826590258
	.word	1112056034
	.word	2088786920
	.word	815110420
	.word	1957877704
	.word	1087195269
	.word	881982271
	.word	1945110368
	.word	1656527154
	.word	529233847
	.word	137046551
	.word	522408049
	.word	1880577483
	.word	847255974
	.word	851716534
	.word	925604268
	.word	1037521069
	.word	461527795
	.word	1332620900
	.word	525605961
	.word	1389787451
	.word	1127911377
	.word	1198857033
	.word	859385989
	.word	706825946
	.word	371790550
	.word	145611377
	.word	655200896
	.word	1900613055
	.word	1333790305
	.word	1101722351
	.word	1278794420
	.word	2089981667
	.word	1150780072
	.word	13180701
	.word	1502266386
	.word	1103013140
	.word	343038558
	.word	1897907456
	.word	1612609979
	.word	1209991461
	.word	1740783613
	.word	1643991754
	.word	977454680
	.word	787842886
	.word	163362230
	.word	1087742330
	.word	200253206
	.word	1691676526
	.word	360632817
	.word	1787338655
	.word	35595330
	.word	822635252
	.word	1834254978
	.word	1372169786
	.word	1063768444
	.word	973490494
	.word	697866347
	.word	156498369
	.word	169293723
	.word	180549009
	.word	112035400
	.word	127867199
	.word	241711645
	.word	2004664325
	.word	23288667
	.word	1997381015
	.word	736455241
	.word	1986921372
	.word	1570645300
	.word	2067499753
	.word	1463269859
	.word	148527979
	.word	618168829
	.word	1715279374
	.word	2066440075
	.word	2118433006
	.word	198233440
	.word	1835860030
	.word	1345873587
	.word	1902595458
	.word	1961619988
	.word	1291438802
	.word	1325008187
	.word	836983022
	.word	1849657867
	.word	500376868
	.word	1599565995
	.word	1705905941
	.word	1600493361
	.word	386733714
	.word	1028820236
	.word	1663100626
	.word	1322696419
	.word	1482983072
	.word	1092382563
	.word	1667679197
	.word	1965855212
	.word	1063839036
	.word	1742032331
	.word	300191208
	.word	620497725
	.word	503895325
	.word	2094864173
	.word	928179911
	.word	277942057
	.word	1677449797
	.word	1249086623
	.word	799527371
	.word	1180063064
	.word	48311975
	.word	1866094167
	.word	1405763119
	.word	2109851473
	.word	1594621666
	.word	580464203
	.word	1752598186
	.word	1339293088
	.word	922186026
	.word	1403771494
	.word	299505702
	.word	1345987999
	.word	1298200648
	.word	2128826472
	.word	677220745
	.word	831273447
	.word	741184696
	.word	696188251
	.word	1912065710
	.word	1016469330
	.word	682018288
	.word	353946286
	.word	559509624
	.word	515414188
	.word	1852181952
	.word	407771887
	.word	812094461
	.word	1859683061
	.word	1100089300
	.word	498702377
	.word	653626077
	.word	765701205
	.word	150878039
	.word	328551896
	.word	77104822
	.word	1775331228
	.word	1835977906
	.word	706357381
	.word	1240287664
	.word	839507573
	.word	1054066034
	.word	1823053058
	.word	701959731
	.word	82879528
	.word	652404808
	.word	866097476
	.word	926939064
	.word	1326017288
	.word	1747861289
	.word	1173840088
	.word	1524006589
	.word	443704960
	.word	835506582
	.word	5363460
	.word	2068343250
	.word	1683915700
	.word	2080735477
	.word	1913489530
	.word	951256529
	.word	1752318678
	.word	105384223
	.word	1788389051
	.word	1787391786
	.word	1430821640
	.word	540952308
	.word	882484999
	.word	690806365
	.word	202502890
	.word	1593837351
	.word	530093821
	.word	385878401
	.word	907401151
	.word	378912543
	.word	454746323
	.word	251514112
	.word	1451277631
	.word	1125822965
	.word	21289266
	.word	1642884452
	.word	804368379
	.word	2048205721
	.word	917508270
	.word	1514792012
	.word	139494505
	.word	1143168018
	.word	115016418
	.word	1730333306
	.word	1630776459
	.word	50748643
	.word	1745247524
	.word	1313640711
	.word	1076198976
	.word	1820281480
	.word	941471466
	.word	806673335
	.word	722162727
	.word	1837280287
	.word	705508794
	.word	2088955494
	.word	510497580
	.word	51692325
	.word	893597382
	.word	1373978529
	.word	1007042224
	.word	685006165
	.word	1471461419
	.word	1555325521
	.word	1215063385
	.word	1424859828
	.word	657251271
	.word	1391827090
	.word	965562483
	.word	604275115
	.word	1285258674
	.word	341475746
	.word	294191106
	.word	633240394
	.word	1897691227
	.word	1904243956
	.word	823532901
	.word	1577955754
	.word	2016464961
	.word	1862876260
	.word	577384103
	.word	1012611702
	.word	247243083
	.word	636485510
	.word	1952805989
	.word	1447876480
	.word	108021700
	.word	1016615447
	.word	2047769687
	.word	943871886
	.word	787537653
	.word	12744598
	.word	853545598
	.word	334037304
	.word	553373537
	.word	1089408490
	.word	497867498
	.word	2038925801
	.word	1434633879
	.word	1290629443
	.word	75922980
	.word	957037315
	.word	2130252471
	.word	477317888
	.word	952824381
	.word	1686570783
	.word	459340678
	.word	751885764
	.word	836307572
	.word	2027909489
	.word	28791588
	.word	322748588
	.word	1335236478
	.word	787106123
	.word	113580144
	.word	954915740
	.word	1317077622
	.word	1299667896
	.word	2009244921
	.word	1548588723
	.word	2049698913
	.word	732388681
	.word	1781891230
	.word	2090684129
	.word	993786972
	.word	1959292396
	.word	1336513734
	.word	691093904
	.word	1746904676
	.word	935573751
	.word	1123555638
	.word	108413311
	.word	1445352642
	.word	169726789
	.word	123352211
	.word	1635952299
	.word	673775121
	.word	2042861943
	.word	757787251
	.word	512494446
	.word	119656942
	.word	58159196
	.word	2090570016
	.word	486181025
	.word	1619641914
	.word	432990571
	.word	894937325
	.word	379470588
	.word	1890938638
	.word	1886317932
	.word	1858637614
	.word	969358207
	.word	1230449468
	.word	1890889527
	.word	351741654
	.word	214725897
	.word	1550012286
	.word	308005013
	.word	26292400
	.word	68067591
	.word	1383307838
	.word	1746273091
	.word	1090104632
	.word	1658037573
	.word	2081544705
	.word	1133473813
	.word	1680294422
	.word	1050373352
	.word	1806061681
	.word	1713475126
	.word	520699193
	.word	417568373
	.word	1355086853
	.word	631399565
	.word	1742434188
	.word	2077667592
	.word	1709019727
	.word	594054971
	.word	937081176
	.word	742185643
	.word	1904514273
	.word	887841601
	.word	1288684086
	.word	424587711
	.word	1497926365
	.word	829844031
	.word	1384314543
	.word	250129297
	.word	200083737
	.word	693737559
	.word	1527022962
	.word	1462501905
	.word	1687540458
	.word	1156824624
	.word	241481265
	.word	1190890142
	.word	1250360726
	.word	2064308502
	.word	27563032
	.word	1880483834
	.word	1984143440
	.word	104727360
	.word	1324123626
	.word	1089710430
	.word	1403206383
	.word	1930880552
	.word	773197243
	.word	1160186023
	.word	562994480
	.word	1065136414
	.word	502237764
	.word	1642338733
	.word	1310177444
	.word	1730721241
	.word	1475638246
	.word	615734453
	.word	1160537912
	.word	928836931
	.word	253898558
	.word	1799210492
	.word	1205522527
	.word	413058646
	.word	1589194592
	.word	1774218355
	.word	43955934
	.word	1673314595
	.word	683393460
	.word	1260859787
	.word	2098829619
	.word	772503535
	.word	1232567659
	.word	758174758
	.word	831270563
	.word	1605294199
	.word	1660678300
	.word	24379565
	.word	1426483935
	.word	1611558740
	.word	1085326591
	.word	12849216
	.word	455856722
	.word	878692218
	.word	1910978116
	.word	1382893830
	.word	1950124297
	.word	950009818
	.word	904287249
	.word	791384486
	.word	1584408128
	.word	210098472
	.word	1110387095
	.word	364620240
	.word	53868166
	.word	772251062
	.word	472745168
	.word	1133910514
	.word	1715402379
	.word	1445225855
	.word	1541125975
	.word	149171217
	.word	972058766
	.word	1893095488
	.word	1487620835
	.word	640835502
	.word	1470285405
	.word	646688705
	.word	988431201
	.word	703130341
	.word	1753125385
	.word	1985895474
	.word	696002734
	.word	1783233173
	.word	1317201705
	.word	1755204784
	.word	532132334
	.word	1069450170
	.word	249700039
	.word	524320231
	.word	757959820
	.word	2109052886
	.word	604977130
	.word	1971654864
	.word	1588222158
	.word	1533496974
	.word	623670976
	.word	1405668251
	.word	1955436051
	.word	1082881617
	.word	1387039848
	.word	874153641
	.word	1345378476
	.word	1168465459
	.word	2005021017
	.word	234039217
	.word	473318229
	.word	654912216
	.word	1473166451
	.word	997649666
	.word	801824335
	.word	2052343947
	.word	1883168929
	.word	185658088
	.word	1389954587
	.word	1725541486
	.word	885873448
	.word	958774566
	.word	2054212564
	.word	60536525
	.word	1427504270
	.word	1160285859
	.word	1827651881
	.word	1408805003
	.word	1684018729
	.word	61716770
	.word	844057079
	.word	1011596733
	.word	1521350211
	.word	1581801257
	.word	907554175
	.word	2022973269
	.word	1125104871
	.word	1312064004
	.word	1466679625
	.word	970194422
	.word	80900939
	.word	1445279202
	.word	335456148
	.word	510478312
	.word	92860378
	.word	1646704157
	.word	1650899832
	.word	1533447203
	.word	268087516
	.word	880688023
	.word	1180525723
	.word	1868151949
	.word	1750955971
	.word	401446720
	.word	540093580
	.word	1022861633
	.word	461442838
	.word	1222554291
	.word	456462271
	.word	94760711
	.word	1231111410
	.word	2145073408
	.word	1932108837
	.word	300618464
	.word	2055783490
	.word	980863365
	.word	1308872551
	.word	1010427073
	.word	1399854717
	.word	1217804021
	.word	934700736
	.word	878744414
	.globl	verify_data
	.align	2
	.type	verify_data, @object
	.size	verify_data, 8192
verify_data:
	.word	690983
	.word	900852
	.word	2196420
	.word	2530146
	.word	3159407
	.word	3522194
	.word	3794415
	.word	4031164
	.word	5309142
	.word	5363460
	.word	9736243
	.word	11476473
	.word	12744598
	.word	12849216
	.word	12937811
	.word	13180701
	.word	13887419
	.word	14125900
	.word	14239125
	.word	16411608
	.word	19227407
	.word	20643769
	.word	21289266
	.word	22136821
	.word	22762734
	.word	23288667
	.word	24379565
	.word	25885333
	.word	26292400
	.word	26687179
	.word	27377406
	.word	27563032
	.word	28256901
	.word	28791588
	.word	30992839
	.word	31153367
	.word	31574181
	.word	31596852
	.word	35595330
	.word	35859252
	.word	37017340
	.word	37141933
	.word	38620214
	.word	41714278
	.word	42021322
	.word	43955934
	.word	47036070
	.word	47452797
	.word	47463938
	.word	48311975
	.word	48775768
	.word	50748643
	.word	50968578
	.word	51692325
	.word	53868166
	.word	55461678
	.word	58159196
	.word	58217952
	.word	59384706
	.word	60536525
	.word	61716770
	.word	62209567
	.word	63244522
	.word	64795664
	.word	66579049
	.word	68067591
	.word	69118708
	.word	69889880
	.word	70003859
	.word	70894786
	.word	72319656
	.word	72802865
	.word	72939206
	.word	74887898
	.word	75922980
	.word	77104822
	.word	77482422
	.word	78348530
	.word	80321564
	.word	80404202
	.word	80900939
	.word	81402251
	.word	82879528
	.word	84924801
	.word	87897457
	.word	88823122
	.word	89400484
	.word	90063199
	.word	91177380
	.word	92271196
	.word	92620223
	.word	92860378
	.word	93191015
	.word	94760711
	.word	95752736
	.word	99511825
	.word	104637677
	.word	104727360
	.word	105384223
	.word	106223060
	.word	106595511
	.word	107095939
	.word	107160610
	.word	108021700
	.word	108346070
	.word	108413311
	.word	108628319
	.word	109035776
	.word	109526756
	.word	112035400
	.word	112648605
	.word	113462155
	.word	113580144
	.word	114202152
	.word	115016418
	.word	116766659
	.word	117260224
	.word	117280545
	.word	117766047
	.word	119285206
	.word	119656942
	.word	122124863
	.word	123352211
	.word	123889599
	.word	127867199
	.word	128036841
	.word	130001148
	.word	131405125
	.word	133790520
	.word	134453363
	.word	135012885
	.word	135678410
	.word	137046551
	.word	137796456
	.word	139494505
	.word	140536987
	.word	145611377
	.word	146002907
	.word	148113917
	.word	148527979
	.word	149171217
	.word	150878039
	.word	151416112
	.word	152273285
	.word	155845605
	.word	156498369
	.word	156760399
	.word	161450336
	.word	161502390
	.word	163362230
	.word	167653495
	.word	168771888
	.word	169293723
	.word	169726789
	.word	170281493
	.word	172109594
	.word	173062659
	.word	173822937
	.word	174082258
	.word	174965839
	.word	175753599
	.word	175843632
	.word	176024101
	.word	177100916
	.word	178901145
	.word	180549009
	.word	180599971
	.word	181567810
	.word	182598318
	.word	183679578
	.word	185592115
	.word	185658088
	.word	185979744
	.word	186112992
	.word	186178768
	.word	188016786
	.word	190215907
	.word	190536346
	.word	190807078
	.word	193873940
	.word	195379046
	.word	196401930
	.word	197964832
	.word	198186681
	.word	198233440
	.word	200083737
	.word	200253206
	.word	202502890
	.word	204514903
	.word	205008108
	.word	206653795
	.word	208160226
	.word	208433088
	.word	210098472
	.word	210748671
	.word	210908782
	.word	212046016
	.word	212821393
	.word	214725897
	.word	215018112
	.word	216435361
	.word	216557804
	.word	217762975
	.word	218671081
	.word	221330186
	.word	221661515
	.word	222529745
	.word	225091211
	.word	225908941
	.word	225934851
	.word	226723092
	.word	226726100
	.word	226906236
	.word	226986415
	.word	227427283
	.word	227870124
	.word	228960529
	.word	229905664
	.word	230340298
	.word	230634042
	.word	231181585
	.word	232170581
	.word	234039217
	.word	236851791
	.word	237020443
	.word	238278880
	.word	238566180
	.word	239990424
	.word	240618723
	.word	241481265
	.word	241537930
	.word	241711645
	.word	244709448
	.word	244975305
	.word	245334962
	.word	247243083
	.word	247447060
	.word	247448424
	.word	249700039
	.word	250022739
	.word	250129297
	.word	250731366
	.word	250859482
	.word	251514112
	.word	253898558
	.word	255226842
	.word	256210446
	.word	256860662
	.word	257728183
	.word	258177907
	.word	259768753
	.word	259775677
	.word	260267972
	.word	260670135
	.word	260674360
	.word	260792255
	.word	261556590
	.word	265363198
	.word	267174620
	.word	268087516
	.word	269167950
	.word	270410557
	.word	270814499
	.word	271906847
	.word	274746405
	.word	277497333
	.word	277942057
	.word	279252402
	.word	281317274
	.word	283430575
	.word	284658041
	.word	287497702
	.word	288054543
	.word	289686472
	.word	291298358
	.word	293109484
	.word	294191106
	.word	295666215
	.word	298799048
	.word	299505702
	.word	300191208
	.word	300618464
	.word	301350822
	.word	301663421
	.word	301673313
	.word	302219842
	.word	303845878
	.word	304131252
	.word	304211060
	.word	304427548
	.word	305489695
	.word	305750851
	.word	308005013
	.word	308700094
	.word	308832070
	.word	308857120
	.word	310273032
	.word	311127477
	.word	316479300
	.word	317980803
	.word	318750634
	.word	320137025
	.word	322748588
	.word	324215873
	.word	325324443
	.word	325667019
	.word	328551896
	.word	329049266
	.word	329767814
	.word	330474090
	.word	331284679
	.word	332201519
	.word	333820982
	.word	333906659
	.word	334037304
	.word	335456148
	.word	336213879
	.word	338532526
	.word	340231765
	.word	340442582
	.word	341475746
	.word	341674967
	.word	341987235
	.word	343038558
	.word	343119399
	.word	343682568
	.word	344515114
	.word	344860208
	.word	346598567
	.word	348131466
	.word	349249331
	.word	350182379
	.word	351741654
	.word	353946286
	.word	355614494
	.word	356546370
	.word	356638683
	.word	356672421
	.word	359735266
	.word	360632817
	.word	362748128
	.word	363508800
	.word	364589031
	.word	364620240
	.word	365275089
	.word	365854486
	.word	366700722
	.word	367923081
	.word	368541415
	.word	368889391
	.word	371790550
	.word	372280769
	.word	372465453
	.word	372501343
	.word	373226849
	.word	373305330
	.word	375863194
	.word	376781122
	.word	378912543
	.word	379470588
	.word	380070610
	.word	381094614
	.word	381571915
	.word	381933797
	.word	382422699
	.word	385878401
	.word	386733714
	.word	387061281
	.word	387273799
	.word	387611445
	.word	388855203
	.word	389233190
	.word	390743779
	.word	391321675
	.word	395360213
	.word	398211404
	.word	398244682
	.word	398911194
	.word	399114073
	.word	399456957
	.word	399991238
	.word	401446720
	.word	402845420
	.word	403378386
	.word	407771887
	.word	411864717
	.word	413058646
	.word	416457166
	.word	417568373
	.word	419053054
	.word	419109342
	.word	419476096
	.word	420106224
	.word	421198539
	.word	422047044
	.word	423299667
	.word	424587711
	.word	430093707
	.word	432102601
	.word	432609664
	.word	432990571
	.word	433412593
	.word	434850545
	.word	435236973
	.word	435288306
	.word	436476038
	.word	436580096
	.word	436630343
	.word	437710825
	.word	438711458
	.word	443704960
	.word	444361278
	.word	446372159
	.word	448284065
	.word	448708980
	.word	451448729
	.word	452888789
	.word	454359988
	.word	454438520
	.word	454746323
	.word	455856722
	.word	456462271
	.word	459340678
	.word	460420451
	.word	460893030
	.word	461442838
	.word	461527795
	.word	462743614
	.word	462857778
	.word	464171383
	.word	464795711
	.word	465119445
	.word	470090505
	.word	472745168
	.word	472872107
	.word	473318229
	.word	477317888
	.word	477407584
	.word	478721193
	.word	481561285
	.word	481563348
	.word	482917205
	.word	483348027
	.word	485818381
	.word	486165509
	.word	486181025
	.word	487888229
	.word	490920543
	.word	492507266
	.word	494367164
	.word	495097609
	.word	497867498
	.word	498702377
	.word	499898207
	.word	500376868
	.word	500734709
	.word	502237764
	.word	502323961
	.word	502558280
	.word	503368137
	.word	503895325
	.word	506466155
	.word	507848158
	.word	507936866
	.word	508041515
	.word	509116230
	.word	509744705
	.word	510478312
	.word	510497580
	.word	512494446
	.word	513009937
	.word	513561613
	.word	513582947
	.word	514214340
	.word	514914429
	.word	515414188
	.word	515811664
	.word	517767440
	.word	518073650
	.word	519194709
	.word	519344323
	.word	519699747
	.word	520329478
	.word	520511102
	.word	520699193
	.word	522160389
	.word	522408049
	.word	524320231
	.word	525605961
	.word	528024121
	.word	529233847
	.word	530093821
	.word	532132334
	.word	532467027
	.word	533101409
	.word	534384094
	.word	535828217
	.word	536063430
	.word	538932155
	.word	539429964
	.word	539942311
	.word	540006359
	.word	540093580
	.word	540952308
	.word	542609105
	.word	543952312
	.word	544899032
	.word	545066288
	.word	545602285
	.word	546340809
	.word	548632788
	.word	549253917
	.word	550532376
	.word	553373537
	.word	556328195
	.word	559509624
	.word	560663378
	.word	562994480
	.word	565150174
	.word	566166447
	.word	567779677
	.word	568652142
	.word	569949159
	.word	571635069
	.word	572240371
	.word	574236644
	.word	576906032
	.word	577384103
	.word	577410402
	.word	578787063
	.word	579174666
	.word	580464203
	.word	580692625
	.word	583112200
	.word	585169793
	.word	585804640
	.word	589049769
	.word	590690783
	.word	592006699
	.word	592234826
	.word	594054971
	.word	594814862
	.word	595717488
	.word	597427397
	.word	598016845
	.word	602368560
	.word	602907378
	.word	603159718
	.word	603907009
	.word	604275115
	.word	604977130
	.word	607471900
	.word	607761482
	.word	612289854
	.word	614222093
	.word	614612685
	.word	615734453
	.word	617768643
	.word	617995659
	.word	618168829
	.word	618681206
	.word	619428858
	.word	619461174
	.word	619972089
	.word	620497725
	.word	621921213
	.word	622114437
	.word	622170346
	.word	623670976
	.word	623909040
	.word	624614472
	.word	624714335
	.word	624939139
	.word	625991894
	.word	628445699
	.word	630393584
	.word	631022494
	.word	631399565
	.word	631936923
	.word	632611704
	.word	633075975
	.word	633240394
	.word	636485510
	.word	637659983
	.word	638167485
	.word	640835502
	.word	644293952
	.word	644842409
	.word	646688705
	.word	649754857
	.word	650513248
	.word	651536866
	.word	651750790
	.word	652078020
	.word	652404808
	.word	653050943
	.word	653626077
	.word	654912216
	.word	655200896
	.word	655445946
	.word	656954306
	.word	657251271
	.word	661318748
	.word	664387510
	.word	665601851
	.word	666624765
	.word	670621648
	.word	671848647
	.word	672323245
	.word	672906535
	.word	673775121
	.word	674580901
	.word	675549432
	.word	675663963
	.word	677220745
	.word	678475375
	.word	679519053
	.word	680172541
	.word	682018288
	.word	683393460
	.word	683536723
	.word	685006165
	.word	686797873
	.word	687941098
	.word	688338919
	.word	688483428
	.word	690710531
	.word	690806365
	.word	690865719
	.word	691093904
	.word	692845661
	.word	693737559
	.word	696002734
	.word	696188251
	.word	696448050
	.word	697685269
	.word	697817760
	.word	697866347
	.word	698660475
	.word	700725671
	.word	701959731
	.word	702380578
	.word	703130341
	.word	705508794
	.word	705851791
	.word	706357381
	.word	706825946
	.word	706913763
	.word	709651138
	.word	714042223
	.word	714456194
	.word	715940689
	.word	717911282
	.word	720339756
	.word	721046824
	.word	721524505
	.word	722162727
	.word	722260205
	.word	722347551
	.word	722919148
	.word	723323690
	.word	723930558
	.word	726141970
	.word	726869128
	.word	727587915
	.word	729474445
	.word	729509794
	.word	730090881
	.word	730296520
	.word	730422541
	.word	730845665
	.word	731606176
	.word	731763278
	.word	732388681
	.word	732444124
	.word	736455241
	.word	737377568
	.word	737518341
	.word	738682048
	.word	739596391
	.word	740536012
	.word	741078359
	.word	741184696
	.word	742185643
	.word	743572345
	.word	743745539
	.word	745183293
	.word	745777837
	.word	747592875
	.word	748527394
	.word	749415493
	.word	750631050
	.word	750919339
	.word	751885764
	.word	752388169
	.word	753296935
	.word	754215794
	.word	754247044
	.word	754896618
	.word	755554593
	.word	755798022
	.word	757787251
	.word	757959820
	.word	758174758
	.word	761851297
	.word	762564955
	.word	764902582
	.word	764935753
	.word	765386206
	.word	765701205
	.word	767233910
	.word	767880329
	.word	768185796
	.word	769005536
	.word	770412991
	.word	770957259
	.word	772059719
	.word	772251062
	.word	772503535
	.word	773197243
	.word	777433215
	.word	778702716
	.word	778834747
	.word	779093898
	.word	783427298
	.word	785398708
	.word	785989696
	.word	786297537
	.word	786566648
	.word	787106123
	.word	787537653
	.word	787842886
	.word	787913688
	.word	790256415
	.word	790929190
	.word	791188057
	.word	791384486
	.word	793505636
	.word	795915364
	.word	797060176
	.word	798445606
	.word	799527371
	.word	799717076
	.word	800591831
	.word	800661980
	.word	801046035
	.word	801610475
	.word	801824335
	.word	802730854
	.word	804368379
	.word	806384435
	.word	806638567
	.word	806673335
	.word	809604334
	.word	810387144
	.word	810516965
	.word	812094461
	.word	812288356
	.word	812328969
	.word	813511681
	.word	814302898
	.word	815110420
	.word	817417567
	.word	820933470
	.word	821481684
	.word	822635252
	.word	823532901
	.word	827496819
	.word	829450571
	.word	829844031
	.word	830595166
	.word	831270563
	.word	831273447
	.word	832081018
	.word	833019845
	.word	834410115
	.word	835063788
	.word	835506582
	.word	836307572
	.word	836983022
	.word	837024327
	.word	837554186
	.word	839507573
	.word	840106059
	.word	843738737
	.word	844057079
	.word	845698678
	.word	846127236
	.word	846650758
	.word	847255974
	.word	848141854
	.word	848402819
	.word	849489374
	.word	851322111
	.word	851716534
	.word	852338021
	.word	852388468
	.word	852835634
	.word	853545598
	.word	854475547
	.word	855107605
	.word	856621012
	.word	856837002
	.word	857894203
	.word	858045289
	.word	858150908
	.word	859385989
	.word	859612092
	.word	860360715
	.word	863551327
	.word	863647665
	.word	866097476
	.word	866478506
	.word	866854601
	.word	866964848
	.word	867628573
	.word	869853078
	.word	871908043
	.word	873623623
	.word	873976891
	.word	874153641
	.word	875481479
	.word	876130333
	.word	878692218
	.word	878744414
	.word	878884686
	.word	879380479
	.word	879552408
	.word	879878312
	.word	880456526
	.word	880688023
	.word	881982271
	.word	882282387
	.word	882484999
	.word	885873448
	.word	886978116
	.word	887841601
	.word	890461390
	.word	891710357
	.word	892574149
	.word	892939912
	.word	893302687
	.word	893597382
	.word	893957771
	.word	894769708
	.word	894937325
	.word	895080280
	.word	895562064
	.word	898893218
	.word	901789102
	.word	904287249
	.word	906899219
	.word	907401151
	.word	907554175
	.word	909273561
	.word	909415369
	.word	910677024
	.word	912381406
	.word	914906004
	.word	915948205
	.word	916073297
	.word	917508270
	.word	918378387
	.word	919736727
	.word	921573402
	.word	922186026
	.word	923478775
	.word	923768127
	.word	924541465
	.word	925604268
	.word	925975225
	.word	926200942
	.word	926939064
	.word	927045887
	.word	927524181
	.word	928179911
	.word	928836931
	.word	929351822
	.word	930367387
	.word	932423857
	.word	933603111
	.word	933673987
	.word	934048997
	.word	934700736
	.word	935490932
	.word	935573751
	.word	935689637
	.word	935939763
	.word	937081176
	.word	937976428
	.word	937987129
	.word	939497524
	.word	941471466
	.word	942977997
	.word	943871886
	.word	944382193
	.word	945948973
	.word	946311527
	.word	946425090
	.word	946489895
	.word	948686793
	.word	949010757
	.word	949222447
	.word	950009818
	.word	951256529
	.word	951663731
	.word	952824381
	.word	953383750
	.word	953877041
	.word	954441852
	.word	954915740
	.word	954942098
	.word	957037315
	.word	958774566
	.word	959354209
	.word	960982228
	.word	964348374
	.word	965490116
	.word	965562483
	.word	966363087
	.word	968848252
	.word	969076419
	.word	969305448
	.word	969358207
	.word	969500483
	.word	970194422
	.word	972058766
	.word	973367349
	.word	973490494
	.word	973493986
	.word	973769771
	.word	976015092
	.word	976063110
	.word	977454680
	.word	977907387
	.word	978247260
	.word	980702956
	.word	980863365
	.word	983043723
	.word	985305323
	.word	986240059
	.word	987761406
	.word	988431201
	.word	991159735
	.word	991874801
	.word	992410365
	.word	993525189
	.word	993786972
	.word	994291574
	.word	997649666
	.word	998931662
	.word	999229412
	.word	999346398
	.word	999899279
	.word	1007042224
	.word	1010427073
	.word	1011417836
	.word	1011473945
	.word	1011596733
	.word	1012611702
	.word	1013901419
	.word	1016469330
	.word	1016615447
	.word	1020037994
	.word	1021014457
	.word	1022861633
	.word	1025117441
	.word	1026342885
	.word	1026380990
	.word	1027758817
	.word	1027760887
	.word	1028529524
	.word	1028820236
	.word	1028937430
	.word	1029176122
	.word	1029338154
	.word	1029832956
	.word	1031625002
	.word	1032748996
	.word	1032914339
	.word	1033910502
	.word	1035075488
	.word	1035956563
	.word	1037521069
	.word	1038018856
	.word	1038830638
	.word	1042790263
	.word	1042942541
	.word	1043920511
	.word	1044088643
	.word	1045627895
	.word	1045658065
	.word	1047336724
	.word	1048943084
	.word	1049475248
	.word	1050373352
	.word	1050512245
	.word	1051184301
	.word	1054066034
	.word	1057003814
	.word	1058677375
	.word	1058937717
	.word	1061864942
	.word	1063657548
	.word	1063743848
	.word	1063768444
	.word	1063839036
	.word	1065136414
	.word	1065481253
	.word	1066014062
	.word	1066787659
	.word	1067775613
	.word	1068587688
	.word	1068798385
	.word	1069450170
	.word	1073695485
	.word	1073871430
	.word	1074205225
	.word	1075762632
	.word	1076198976
	.word	1078197595
	.word	1079859867
	.word	1082499152
	.word	1082864732
	.word	1082881617
	.word	1085326591
	.word	1087195269
	.word	1087245613
	.word	1087251698
	.word	1087556673
	.word	1087742330
	.word	1089408490
	.word	1089710430
	.word	1090104632
	.word	1090386021
	.word	1090443335
	.word	1092382563
	.word	1092881031
	.word	1094283114
	.word	1094531762
	.word	1095403694
	.word	1099847920
	.word	1100041120
	.word	1100089300
	.word	1101722351
	.word	1101933540
	.word	1102423908
	.word	1102603775
	.word	1103013140
	.word	1106678970
	.word	1110387095
	.word	1111213862
	.word	1112056034
	.word	1112731797
	.word	1113693824
	.word	1120963974
	.word	1121432739
	.word	1121800211
	.word	1121960111
	.word	1122768484
	.word	1123331233
	.word	1123555638
	.word	1125104871
	.word	1125822965
	.word	1126017956
	.word	1127173529
	.word	1127911377
	.word	1128895624
	.word	1130850177
	.word	1131661227
	.word	1132597050
	.word	1133473813
	.word	1133910514
	.word	1134185180
	.word	1135793759
	.word	1136264020
	.word	1136356724
	.word	1137511396
	.word	1139018167
	.word	1139159604
	.word	1140008063
	.word	1140728569
	.word	1143168018
	.word	1143511498
	.word	1143853106
	.word	1144017176
	.word	1144669754
	.word	1147341731
	.word	1147793249
	.word	1148699143
	.word	1149113346
	.word	1150780072
	.word	1152335090
	.word	1152416171
	.word	1154842325
	.word	1155459206
	.word	1155544307
	.word	1156824624
	.word	1157666831
	.word	1159675637
	.word	1159745061
	.word	1159898528
	.word	1160036198
	.word	1160186023
	.word	1160285859
	.word	1160333307
	.word	1160537912
	.word	1161580432
	.word	1162679490
	.word	1165446977
	.word	1166227930
	.word	1167207852
	.word	1168465459
	.word	1169327477
	.word	1170510314
	.word	1170759710
	.word	1171051384
	.word	1171925835
	.word	1172290275
	.word	1173840088
	.word	1173889730
	.word	1174587016
	.word	1175004233
	.word	1175885101
	.word	1178086274
	.word	1178260876
	.word	1179525294
	.word	1180063064
	.word	1180525723
	.word	1181191604
	.word	1183464058
	.word	1184561748
	.word	1185825535
	.word	1188076819
	.word	1188748563
	.word	1189141368
	.word	1189323192
	.word	1190890142
	.word	1191079043
	.word	1191513656
	.word	1192155877
	.word	1194041213
	.word	1194709162
	.word	1198213061
	.word	1198254803
	.word	1198857033
	.word	1199317660
	.word	1201124879
	.word	1201152163
	.word	1201659316
	.word	1202009920
	.word	1202162389
	.word	1203377492
	.word	1203897636
	.word	1204992245
	.word	1205522527
	.word	1205895814
	.word	1206302514
	.word	1209784819
	.word	1209991461
	.word	1212628403
	.word	1212974417
	.word	1214379246
	.word	1214950832
	.word	1215063385
	.word	1215103809
	.word	1216475831
	.word	1217804021
	.word	1218522465
	.word	1220523503
	.word	1220915309
	.word	1221108420
	.word	1221726287
	.word	1222554291
	.word	1223475486
	.word	1223572435
	.word	1223583276
	.word	1228817775
	.word	1230449468
	.word	1231111410
	.word	1231149357
	.word	1231249235
	.word	1231639101
	.word	1231932661
	.word	1232567659
	.word	1232992084
	.word	1233022905
	.word	1234157881
	.word	1234944834
	.word	1239665569
	.word	1240287664
	.word	1245819051
	.word	1247518755
	.word	1249086623
	.word	1249183285
	.word	1250360726
	.word	1255524953
	.word	1256015513
	.word	1256152080
	.word	1256372950
	.word	1257507406
	.word	1260859787
	.word	1262399341
	.word	1267173039
	.word	1269707634
	.word	1271370220
	.word	1273223611
	.word	1273955724
	.word	1274190723
	.word	1274436639
	.word	1275331596
	.word	1275500498
	.word	1276205250
	.word	1278053582
	.word	1278777407
	.word	1278794420
	.word	1279061703
	.word	1279981214
	.word	1281443423
	.word	1285258674
	.word	1286989824
	.word	1287171290
	.word	1287830283
	.word	1288684086
	.word	1289308008
	.word	1290629443
	.word	1290969161
	.word	1291025252
	.word	1291070368
	.word	1291438802
	.word	1292049996
	.word	1292413659
	.word	1293091635
	.word	1294873695
	.word	1296857499
	.word	1298200648
	.word	1299667896
	.word	1302272656
	.word	1302724177
	.word	1303736105
	.word	1305071296
	.word	1308872551
	.word	1310177444
	.word	1312064004
	.word	1312471120
	.word	1313115559
	.word	1313640711
	.word	1313871880
	.word	1316120929
	.word	1317077622
	.word	1317201705
	.word	1318032594
	.word	1318900244
	.word	1319798607
	.word	1321897861
	.word	1322281086
	.word	1322696419
	.word	1323798820
	.word	1324123626
	.word	1324723894
	.word	1325008187
	.word	1325083914
	.word	1326017288
	.word	1328272543
	.word	1328885292
	.word	1331383316
	.word	1331593955
	.word	1332379148
	.word	1332467446
	.word	1332620900
	.word	1332937015
	.word	1333790305
	.word	1334857284
	.word	1335236478
	.word	1335298265
	.word	1335652095
	.word	1335861008
	.word	1336108161
	.word	1336513734
	.word	1337406065
	.word	1338090388
	.word	1339293088
	.word	1340949553
	.word	1344125357
	.word	1345014111
	.word	1345378476
	.word	1345873587
	.word	1345987999
	.word	1347284277
	.word	1348361229
	.word	1348373925
	.word	1350653461
	.word	1352833750
	.word	1353144470
	.word	1353999206
	.word	1355086853
	.word	1355391150
	.word	1356847855
	.word	1361012693
	.word	1361078114
	.word	1365423458
	.word	1367731096
	.word	1368235387
	.word	1370528050
	.word	1372169786
	.word	1373978529
	.word	1374125186
	.word	1375470750
	.word	1377995642
	.word	1379259015
	.word	1379460673
	.word	1379995885
	.word	1382429941
	.word	1382484003
	.word	1382551511
	.word	1382893830
	.word	1383307838
	.word	1383640563
	.word	1384314543
	.word	1385675177
	.word	1386258142
	.word	1386366954
	.word	1387039848
	.word	1387864976
	.word	1388759892
	.word	1389787451
	.word	1389954587
	.word	1390040163
	.word	1390274260
	.word	1390306889
	.word	1390477985
	.word	1390656632
	.word	1391095995
	.word	1391827090
	.word	1392162662
	.word	1394929399
	.word	1395155215
	.word	1395289708
	.word	1396662140
	.word	1399673078
	.word	1399854717
	.word	1400070607
	.word	1400929335
	.word	1401058771
	.word	1401980800
	.word	1402735006
	.word	1403206383
	.word	1403771494
	.word	1404727477
	.word	1405668251
	.word	1405763119
	.word	1407094080
	.word	1408805003
	.word	1409001936
	.word	1412540552
	.word	1413860940
	.word	1414141069
	.word	1414160501
	.word	1415390230
	.word	1417415680
	.word	1417601340
	.word	1420810050
	.word	1424797596
	.word	1424859828
	.word	1426483935
	.word	1427504270
	.word	1428223489
	.word	1430821640
	.word	1431492783
	.word	1431814151
	.word	1434046375
	.word	1434633879
	.word	1435859758
	.word	1437147036
	.word	1440145706
	.word	1441811554
	.word	1444048519
	.word	1444076976
	.word	1445225855
	.word	1445279202
	.word	1445352642
	.word	1447469119
	.word	1447876480
	.word	1450892344
	.word	1451277631
	.word	1451442832
	.word	1453397990
	.word	1455316979
	.word	1455756978
	.word	1457464894
	.word	1459100749
	.word	1459138745
	.word	1459500136
	.word	1459620801
	.word	1462192184
	.word	1462501905
	.word	1462778368
	.word	1462921857
	.word	1463269859
	.word	1466632447
	.word	1466679625
	.word	1467376771
	.word	1468486929
	.word	1470285405
	.word	1471131758
	.word	1471461419
	.word	1471598258
	.word	1472567100
	.word	1473166451
	.word	1473735214
	.word	1475638246
	.word	1480273562
	.word	1480324438
	.word	1480437960
	.word	1482983072
	.word	1485740112
	.word	1486594282
	.word	1487620835
	.word	1489699243
	.word	1491477359
	.word	1492071476
	.word	1492488573
	.word	1496078411
	.word	1496277718
	.word	1497680539
	.word	1497926365
	.word	1498554338
	.word	1500102591
	.word	1501181424
	.word	1502266386
	.word	1502480836
	.word	1502557594
	.word	1504023310
	.word	1505022272
	.word	1505475223
	.word	1506716966
	.word	1507433029
	.word	1508705426
	.word	1510133268
	.word	1512135729
	.word	1512163910
	.word	1513255537
	.word	1514278798
	.word	1514582723
	.word	1514792012
	.word	1515262458
	.word	1515528736
	.word	1515933932
	.word	1519017268
	.word	1520667645
	.word	1520886946
	.word	1521350211
	.word	1522316172
	.word	1524006589
	.word	1524491858
	.word	1525451290
	.word	1527022962
	.word	1528031307
	.word	1533447203
	.word	1533496974
	.word	1534330971
	.word	1536213818
	.word	1537459540
	.word	1538069400
	.word	1538391713
	.word	1539560507
	.word	1541125975
	.word	1541132933
	.word	1541546082
	.word	1545555937
	.word	1546057655
	.word	1546104436
	.word	1547662666
	.word	1548588723
	.word	1548804416
	.word	1550012286
	.word	1550159640
	.word	1550525411
	.word	1550721460
	.word	1551661799
	.word	1553547892
	.word	1554106660
	.word	1555325521
	.word	1555660285
	.word	1558244592
	.word	1558695709
	.word	1560142576
	.word	1561212123
	.word	1561251584
	.word	1561422777
	.word	1561730727
	.word	1563717683
	.word	1564061243
	.word	1565610678
	.word	1565700239
	.word	1566878909
	.word	1568176414
	.word	1568395337
	.word	1568900638
	.word	1569479928
	.word	1570645300
	.word	1571598133
	.word	1572212863
	.word	1575380740
	.word	1577034674
	.word	1577955754
	.word	1579725218
	.word	1581062145
	.word	1581118537
	.word	1581801257
	.word	1584408128
	.word	1585050246
	.word	1588222158
	.word	1588715179
	.word	1589194592
	.word	1590461855
	.word	1590771096
	.word	1593359038
	.word	1593837351
	.word	1594621666
	.word	1596042792
	.word	1596821127
	.word	1597506096
	.word	1598436917
	.word	1599565995
	.word	1599876594
	.word	1600023202
	.word	1600493361
	.word	1601134240
	.word	1601247294
	.word	1601617797
	.word	1602517354
	.word	1602827413
	.word	1602967659
	.word	1603428054
	.word	1604330946
	.word	1604357658
	.word	1605294199
	.word	1605369007
	.word	1607204293
	.word	1607515830
	.word	1607628402
	.word	1607677838
	.word	1609955669
	.word	1610244183
	.word	1610539590
	.word	1611500622
	.word	1611558740
	.word	1611680320
	.word	1612593993
	.word	1612609979
	.word	1614780688
	.word	1617229086
	.word	1618378831
	.word	1619598456
	.word	1619641914
	.word	1620562432
	.word	1620803320
	.word	1622692876
	.word	1622758049
	.word	1624653209
	.word	1627355806
	.word	1628387880
	.word	1628389501
	.word	1629633514
	.word	1629914848
	.word	1630293700
	.word	1630776459
	.word	1631405417
	.word	1631935240
	.word	1633512617
	.word	1634445325
	.word	1635952299
	.word	1636203720
	.word	1636860706
	.word	1640952769
	.word	1642338733
	.word	1642884452
	.word	1643991754
	.word	1644353864
	.word	1645969422
	.word	1646704157
	.word	1648575360
	.word	1649344003
	.word	1649392096
	.word	1650899832
	.word	1652108025
	.word	1653332243
	.word	1655277291
	.word	1656527154
	.word	1657001479
	.word	1658037573
	.word	1659079595
	.word	1659137391
	.word	1660678300
	.word	1663100626
	.word	1663890071
	.word	1665914525
	.word	1666074170
	.word	1667102296
	.word	1667679197
	.word	1672192305
	.word	1673314595
	.word	1674045273
	.word	1675300017
	.word	1675494182
	.word	1677449797
	.word	1678967663
	.word	1679324299
	.word	1679777458
	.word	1680251429
	.word	1680294422
	.word	1681866717
	.word	1682700783
	.word	1683915700
	.word	1684018729
	.word	1685350721
	.word	1685880008
	.word	1686215900
	.word	1686479103
	.word	1686570783
	.word	1687540458
	.word	1687941280
	.word	1688652157
	.word	1689946986
	.word	1690167792
	.word	1691486500
	.word	1691676526
	.word	1695191950
	.word	1695617313
	.word	1697686200
	.word	1702425249
	.word	1704561346
	.word	1705378439
	.word	1705905941
	.word	1706528514
	.word	1708002892
	.word	1708106609
	.word	1708126014
	.word	1709019727
	.word	1709697877
	.word	1709823304
	.word	1710305778
	.word	1711569347
	.word	1711718534
	.word	1711761015
	.word	1711765426
	.word	1712269139
	.word	1712341869
	.word	1713188647
	.word	1713475126
	.word	1714295540
	.word	1715279374
	.word	1715379173
	.word	1715402379
	.word	1716853034
	.word	1719009954
	.word	1719573683
	.word	1721767511
	.word	1723143470
	.word	1725541486
	.word	1726987516
	.word	1727583308
	.word	1730333306
	.word	1730721241
	.word	1731949250
	.word	1732028080
	.word	1733366374
	.word	1733982669
	.word	1737931879
	.word	1738353358
	.word	1740099311
	.word	1740778973
	.word	1740783613
	.word	1742032331
	.word	1742434188
	.word	1745247524
	.word	1745393357
	.word	1745543275
	.word	1746273091
	.word	1746476698
	.word	1746904676
	.word	1747861289
	.word	1749972876
	.word	1750197960
	.word	1750443194
	.word	1750955971
	.word	1752088215
	.word	1752318678
	.word	1752598186
	.word	1753125385
	.word	1754447491
	.word	1755204784
	.word	1757028186
	.word	1758748737
	.word	1760851607
	.word	1761289401
	.word	1763785295
	.word	1764436465
	.word	1765354961
	.word	1765830270
	.word	1767380006
	.word	1768795266
	.word	1770497338
	.word	1771614266
	.word	1771924274
	.word	1772760484
	.word	1774218355
	.word	1774652096
	.word	1774796872
	.word	1775331228
	.word	1775608361
	.word	1775805177
	.word	1776471922
	.word	1776794410
	.word	1778544166
	.word	1781233744
	.word	1781891230
	.word	1783233173
	.word	1783943137
	.word	1784682542
	.word	1787338655
	.word	1787391786
	.word	1788389051
	.word	1790557628
	.word	1792756324
	.word	1793190956
	.word	1793747608
	.word	1797641070
	.word	1799210492
	.word	1800186189
	.word	1800522575
	.word	1802197319
	.word	1802327778
	.word	1803183394
	.word	1806061681
	.word	1807085904
	.word	1807172811
	.word	1808237662
	.word	1811088032
	.word	1815408878
	.word	1816641611
	.word	1817156134
	.word	1820281480
	.word	1821482472
	.word	1821559709
	.word	1822279764
	.word	1822612008
	.word	1823053058
	.word	1826590258
	.word	1826628136
	.word	1826880531
	.word	1827651881
	.word	1833543700
	.word	1833603743
	.word	1834161399
	.word	1834254978
	.word	1834285819
	.word	1834318089
	.word	1834388383
	.word	1834852613
	.word	1835203128
	.word	1835860030
	.word	1835977906
	.word	1836119534
	.word	1837280287
	.word	1838218199
	.word	1839063567
	.word	1840896199
	.word	1846605728
	.word	1847908587
	.word	1848681194
	.word	1849495275
	.word	1849657867
	.word	1849675857
	.word	1852181952
	.word	1855359256
	.word	1858637614
	.word	1858933377
	.word	1859683061
	.word	1860435620
	.word	1860839427
	.word	1862876260
	.word	1864952910
	.word	1866094167
	.word	1868151949
	.word	1868289345
	.word	1869264274
	.word	1870214195
	.word	1870859970
	.word	1871060346
	.word	1871684562
	.word	1873900475
	.word	1874026715
	.word	1874855959
	.word	1876255297
	.word	1878253960
	.word	1878434988
	.word	1879635915
	.word	1880483834
	.word	1880577483
	.word	1881253854
	.word	1883168929
	.word	1883999260
	.word	1886317932
	.word	1890889527
	.word	1890938638
	.word	1891630185
	.word	1891904961
	.word	1892370478
	.word	1893095488
	.word	1896952705
	.word	1897691227
	.word	1897907456
	.word	1898582764
	.word	1900162831
	.word	1900613055
	.word	1901537567
	.word	1902501708
	.word	1902595458
	.word	1904243956
	.word	1904514273
	.word	1904576737
	.word	1904770864
	.word	1905279500
	.word	1906345724
	.word	1907793490
	.word	1908093581
	.word	1909681194
	.word	1910978116
	.word	1912065710
	.word	1913489530
	.word	1913581092
	.word	1913926325
	.word	1914764659
	.word	1914809801
	.word	1915435344
	.word	1916602098
	.word	1918354829
	.word	1920182565
	.word	1924603748
	.word	1926717418
	.word	1927367009
	.word	1928309762
	.word	1928550562
	.word	1930662128
	.word	1930880552
	.word	1931282005
	.word	1931493432
	.word	1932108837
	.word	1933532372
	.word	1933923245
	.word	1935271536
	.word	1936668087
	.word	1938258683
	.word	1939683211
	.word	1942089394
	.word	1943137808
	.word	1943651015
	.word	1944679691
	.word	1945110368
	.word	1946004194
	.word	1948121717
	.word	1949896838
	.word	1950124297
	.word	1951228823
	.word	1952177514
	.word	1952364329
	.word	1952805989
	.word	1953450944
	.word	1953919896
	.word	1955436051
	.word	1957728250
	.word	1957877704
	.word	1958396887
	.word	1959222232
	.word	1959292396
	.word	1961619988
	.word	1961647235
	.word	1962689485
	.word	1963053072
	.word	1965358941
	.word	1965855212
	.word	1967705762
	.word	1968608155
	.word	1968623233
	.word	1969729134
	.word	1970797151
	.word	1971484382
	.word	1971654864
	.word	1977865396
	.word	1980923963
	.word	1981481446
	.word	1983379601
	.word	1984143440
	.word	1984152603
	.word	1985895474
	.word	1986921372
	.word	1989240516
	.word	1992941115
	.word	1994402695
	.word	1997381015
	.word	2001056977
	.word	2002881120
	.word	2004664325
	.word	2004770236
	.word	2005021017
	.word	2005653265
	.word	2005817027
	.word	2006320950
	.word	2006856683
	.word	2009244921
	.word	2010549018
	.word	2011827638
	.word	2014090929
	.word	2014129292
	.word	2015847175
	.word	2016161810
	.word	2016464961
	.word	2017191527
	.word	2018336444
	.word	2022291557
	.word	2022973269
	.word	2023498746
	.word	2024853642
	.word	2027445678
	.word	2027814180
	.word	2027828650
	.word	2027909489
	.word	2028116487
	.word	2029133999
	.word	2029909894
	.word	2033003588
	.word	2033828953
	.word	2034767768
	.word	2036061488
	.word	2036750157
	.word	2037182006
	.word	2038925801
	.word	2039012903
	.word	2041942843
	.word	2042861943
	.word	2044016080
	.word	2045407567
	.word	2045821218
	.word	2046759770
	.word	2047006719
	.word	2047769687
	.word	2048205721
	.word	2048560397
	.word	2049698913
	.word	2052321529
	.word	2052328978
	.word	2052343947
	.word	2053899162
	.word	2054212564
	.word	2055783490
	.word	2060969286
	.word	2061144988
	.word	2063408339
	.word	2064145552
	.word	2064308502
	.word	2066440075
	.word	2066865713
	.word	2067100479
	.word	2067499753
	.word	2068343250
	.word	2068743361
	.word	2069178089
	.word	2070467093
	.word	2072440819
	.word	2073482870
	.word	2074840378
	.word	2074896270
	.word	2076612603
	.word	2077667592
	.word	2078528215
	.word	2079492652
	.word	2080735477
	.word	2081544705
	.word	2082760612
	.word	2084953915
	.word	2085323316
	.word	2087660971
	.word	2088576982
	.word	2088786920
	.word	2088955494
	.word	2089981667
	.word	2090025563
	.word	2090543533
	.word	2090570016
	.word	2090684129
	.word	2091626028
	.word	2093472294
	.word	2094085507
	.word	2094159153
	.word	2094591332
	.word	2094864173
	.word	2097057488
	.word	2098829619
	.word	2100497812
	.word	2103236982
	.word	2105321510
	.word	2105638337
	.word	2105718728
	.word	2105814934
	.word	2108439398
	.word	2109052886
	.word	2109530615
	.word	2109851473
	.word	2113434968
	.word	2114587535
	.word	2115445751
	.word	2116495484
	.word	2117880007
	.word	2118203528
	.word	2118433006
	.word	2118805956
	.word	2118821565
	.word	2119425672
	.word	2122262571
	.word	2122852959
	.word	2123379476
	.word	2124749673
	.word	2125958841
	.word	2126029304
	.word	2126940990
	.word	2126963607
	.word	2128078174
	.word	2128826472
	.word	2129513521
	.word	2129930580
	.word	2130252471
	.word	2130879949
	.word	2131761201
	.word	2131797509
	.word	2133066804
	.word	2135673182
	.word	2139976479
	.word	2140091269
	.word	2140756121
	.word	2141591317
	.word	2142357746
	.word	2143324534
	.word	2143343312
	.word	2143968639
	.word	2145073408
	.word	2145930822
	.text
	.align	2
	.type	insertion_sort, @function
insertion_sort:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# n, n
	sw	a1,-40(s0)	# arr, arr
# qsort_main.c:46:   for (i = arr+1; i < arr+n; i++)
	lw	a5,-40(s0)		# tmp78, arr
	addi	a5,a5,4	#, tmp77, tmp78
	sw	a5,-20(s0)	# tmp77, i
# qsort_main.c:46:   for (i = arr+1; i < arr+n; i++)
	j	.L30		#
.L34:
# qsort_main.c:48:     value = *i;
	lw	a5,-20(s0)		# tmp79, i
	lw	a5,0(a5)		# tmp80, *i_6
	sw	a5,-28(s0)	# tmp80, value
# qsort_main.c:49:     j = i;
	lw	a5,-20(s0)		# tmp81, i
	sw	a5,-24(s0)	# tmp81, j
# qsort_main.c:50:     while (value < *(j-1))
	j	.L31		#
.L33:
# qsort_main.c:52:       *j = *(j-1);
	lw	a5,-24(s0)		# tmp82, j
	lw	a4,-4(a5)		# _1, MEM[(int *)j_7 + 4294967292B]
	lw	a5,-24(s0)		# tmp83, j
	sw	a4,0(a5)	# _1, *j_7
# qsort_main.c:53:       if (--j == arr)
	lw	a5,-24(s0)		# tmp85, j
	addi	a5,a5,-4	#, tmp84, tmp85
	sw	a5,-24(s0)	# tmp84, j
	lw	a4,-24(s0)		# tmp86, j
	lw	a5,-40(s0)		# tmp87, arr
	beq	a4,a5,.L35	#, tmp86, tmp87,
.L31:
# qsort_main.c:50:     while (value < *(j-1))
	lw	a5,-24(s0)		# tmp88, j
	addi	a5,a5,-4	#, _2, tmp88
# qsort_main.c:50:     while (value < *(j-1))
	lw	a5,0(a5)		# _3, *_2
# qsort_main.c:50:     while (value < *(j-1))
	lw	a4,-28(s0)		# tmp89, value
	blt	a4,a5,.L33	#, tmp89, _3,
	j	.L32		#
.L35:
# qsort_main.c:54:         break;
	nop	
.L32:
# qsort_main.c:56:     *j = value;
	lw	a5,-24(s0)		# tmp90, j
	lw	a4,-28(s0)		# tmp91, value
	sw	a4,0(a5)	# tmp91, *j_8
# qsort_main.c:46:   for (i = arr+1; i < arr+n; i++)
	lw	a5,-20(s0)		# tmp93, i
	addi	a5,a5,4	#, tmp92, tmp93
	sw	a5,-20(s0)	# tmp92, i
.L30:
# qsort_main.c:46:   for (i = arr+1; i < arr+n; i++)
	lw	a5,-36(s0)		# tmp94, n
	slli	a5,a5,2	#, _4, tmp94
	lw	a4,-40(s0)		# tmp95, arr
	add	a5,a4,a5	# _4, _5, tmp95
# qsort_main.c:46:   for (i = arr+1; i < arr+n; i++)
	lw	a4,-20(s0)		# tmp96, i
	bltu	a4,a5,.L34	#, tmp96, _5,
# qsort_main.c:58: }
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	insertion_sort, .-insertion_sort
	.align	2
	.type	selection_sort, @function
selection_sort:
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# n, n
	sw	a1,-40(s0)	# arr, arr
# qsort_main.c:62:   for (type* i = arr; i < arr+n-1; i++)
	lw	a5,-40(s0)		# tmp80, arr
	sw	a5,-20(s0)	# tmp80, i
# qsort_main.c:62:   for (type* i = arr; i < arr+n-1; i++)
	j	.L37		#
.L41:
# qsort_main.c:63:     for (type* j = i+1; j < arr+n; j++)
	lw	a5,-20(s0)		# tmp82, i
	addi	a5,a5,4	#, tmp81, tmp82
	sw	a5,-24(s0)	# tmp81, j
# qsort_main.c:63:     for (type* j = i+1; j < arr+n; j++)
	j	.L38		#
.L40:
# qsort_main.c:64:       SWAP_IF_GREATER(*i, *j);
	lw	a5,-20(s0)		# tmp83, i
	lw	a4,0(a5)		# _1, *i_9
	lw	a5,-24(s0)		# tmp84, j
	lw	a5,0(a5)		# _2, *j_10
	ble	a4,a5,.L39	#, _1, _2,
# qsort_main.c:64:       SWAP_IF_GREATER(*i, *j);
	lw	a5,-20(s0)		# tmp85, i
	lw	a5,0(a5)		# tmp86, *i_9
	sw	a5,-28(s0)	# tmp86, temp
	lw	a5,-24(s0)		# tmp87, j
	lw	a4,0(a5)		# _3, *j_10
	lw	a5,-20(s0)		# tmp88, i
	sw	a4,0(a5)	# _3, *i_9
	lw	a5,-24(s0)		# tmp89, j
	lw	a4,-28(s0)		# tmp90, temp
	sw	a4,0(a5)	# tmp90, *j_10
.L39:
# qsort_main.c:63:     for (type* j = i+1; j < arr+n; j++)
	lw	a5,-24(s0)		# tmp92, j
	addi	a5,a5,4	#, tmp91, tmp92
	sw	a5,-24(s0)	# tmp91, j
.L38:
# qsort_main.c:63:     for (type* j = i+1; j < arr+n; j++)
	lw	a5,-36(s0)		# tmp93, n
	slli	a5,a5,2	#, _4, tmp93
	lw	a4,-40(s0)		# tmp94, arr
	add	a5,a4,a5	# _4, _5, tmp94
# qsort_main.c:63:     for (type* j = i+1; j < arr+n; j++)
	lw	a4,-24(s0)		# tmp95, j
	bltu	a4,a5,.L40	#, tmp95, _5,
# qsort_main.c:62:   for (type* i = arr; i < arr+n-1; i++)
	lw	a5,-20(s0)		# tmp97, i
	addi	a5,a5,4	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L37:
# qsort_main.c:62:   for (type* i = arr; i < arr+n-1; i++)
	lw	a4,-36(s0)		# tmp98, n
	li	a5,1073741824		# tmp100,
	addi	a5,a5,-1	#, tmp99, tmp100
	add	a5,a4,a5	# tmp99, _6, tmp98
	slli	a5,a5,2	#, _7, _6
	lw	a4,-40(s0)		# tmp101, arr
	add	a5,a4,a5	# _7, _8, tmp101
# qsort_main.c:62:   for (type* i = arr; i < arr+n-1; i++)
	lw	a4,-20(s0)		# tmp102, i
	bltu	a4,a5,.L41	#, tmp102, _8,
# qsort_main.c:65: }
	nop	
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	selection_sort, .-selection_sort
	.align	2
	.globl	sort
	.type	sort, @function
sort:
	addi	sp,sp,-288	#,,
	sw	ra,284(sp)	#,
	sw	s0,280(sp)	#,
	addi	s0,sp,288	#,,
	sw	a0,-276(s0)	# n, n
	sw	a1,-280(s0)	# arr, arr
# qsort_main.c:69:   type* ir = arr+n;
	lw	a5,-276(s0)		# tmp137, n
	slli	a5,a5,2	#, _1, tmp137
# qsort_main.c:69:   type* ir = arr+n;
	lw	a4,-280(s0)		# tmp139, arr
	add	a5,a4,a5	# _1, tmp138, tmp139
	sw	a5,-20(s0)	# tmp138, ir
# qsort_main.c:70:   type* l = arr+1;
	lw	a5,-280(s0)		# tmp141, arr
	addi	a5,a5,4	#, tmp140, tmp141
	sw	a5,-24(s0)	# tmp140, l
# qsort_main.c:72:   type** stackp = stack;
	addi	a5,s0,-260	#, tmp142,
	sw	a5,-28(s0)	# tmp142, stackp
.L56:
# qsort_main.c:77:     if ( ir-l < INSERTION_THRESHOLD )
	lw	a4,-20(s0)		# tmp143, ir
	lw	a5,-24(s0)		# tmp144, l
	sub	a4,a4,a5	# _2, tmp143, tmp144
# qsort_main.c:77:     if ( ir-l < INSERTION_THRESHOLD )
	li	a5,36		# tmp145,
	bgt	a4,a5,.L43	#, _2, tmp145,
# qsort_main.c:79:       insertion_sort(ir - l + 1, l - 1);
	lw	a4,-20(s0)		# tmp146, ir
	lw	a5,-24(s0)		# tmp147, l
	sub	a5,a4,a5	# _3, tmp146, tmp147
	srai	a5,a5,2	#, tmp148, _3
# qsort_main.c:79:       insertion_sort(ir - l + 1, l - 1);
	addi	a5,a5,1	#, _5, _4
# qsort_main.c:79:       insertion_sort(ir - l + 1, l - 1);
	mv	a4,a5	# _6, _5
	lw	a5,-24(s0)		# tmp149, l
	addi	a5,a5,-4	#, _7, tmp149
	mv	a1,a5	#, _7
	mv	a0,a4	#, _6
	call	insertion_sort		#
# qsort_main.c:81:       if ( stackp == stack ) break;
	addi	a5,s0,-260	#, tmp150,
	lw	a4,-28(s0)		# tmp151, stackp
	beq	a4,a5,.L59	#, tmp151, tmp150,
# qsort_main.c:84:       ir = *stackp--;
	lw	a5,-28(s0)		# stackp.20_8, stackp
	addi	a4,a5,-4	#, tmp152, stackp.20_8
	sw	a4,-28(s0)	# tmp152, stackp
# qsort_main.c:84:       ir = *stackp--;
	lw	a5,0(a5)		# tmp153, *stackp.20_8
	sw	a5,-20(s0)	# tmp153, ir
# qsort_main.c:85:       l = *stackp--;
	lw	a5,-28(s0)		# stackp.21_9, stackp
	addi	a4,a5,-4	#, tmp154, stackp.21_9
	sw	a4,-28(s0)	# tmp154, stackp
# qsort_main.c:85:       l = *stackp--;
	lw	a5,0(a5)		# tmp155, *stackp.21_9
	sw	a5,-24(s0)	# tmp155, l
	j	.L56		#
.L43:
# qsort_main.c:91:       SWAP(arr[((l-arr) + (ir-arr))/2-1], l[0]);
	lw	a4,-24(s0)		# tmp156, l
	lw	a5,-280(s0)		# tmp157, arr
	sub	a5,a4,a5	# _10, tmp156, tmp157
	srai	a5,a5,2	#, tmp158, _10
	mv	a3,a5	# _11, tmp158
	lw	a4,-20(s0)		# tmp159, ir
	lw	a5,-280(s0)		# tmp160, arr
	sub	a5,a4,a5	# _12, tmp159, tmp160
	srai	a5,a5,2	#, tmp161, _12
	add	a5,a3,a5	# _13, _14, _11
	srli	a4,a5,31	#, tmp162, _14
	add	a5,a4,a5	# _14, tmp163, tmp162
	srai	a5,a5,1	#, tmp164, tmp163
	mv	a4,a5	# _16, _15
	li	a5,1073741824		# tmp166,
	addi	a5,a5,-1	#, tmp165, tmp166
	add	a5,a4,a5	# tmp165, _17, _16
	slli	a5,a5,2	#, _18, _17
	lw	a4,-280(s0)		# tmp167, arr
	add	a5,a4,a5	# _18, _19, tmp167
	lw	a5,0(a5)		# tmp168, *_19
	sw	a5,-40(s0)	# tmp168, temp
	lw	a4,-24(s0)		# tmp169, l
	lw	a5,-280(s0)		# tmp170, arr
	sub	a5,a4,a5	# _20, tmp169, tmp170
	srai	a5,a5,2	#, tmp171, _20
	mv	a3,a5	# _21, tmp171
	lw	a4,-20(s0)		# tmp172, ir
	lw	a5,-280(s0)		# tmp173, arr
	sub	a5,a4,a5	# _22, tmp172, tmp173
	srai	a5,a5,2	#, tmp174, _22
	add	a5,a3,a5	# _23, _24, _21
	srli	a4,a5,31	#, tmp175, _24
	add	a5,a4,a5	# _24, tmp176, tmp175
	srai	a5,a5,1	#, tmp177, tmp176
	mv	a4,a5	# _26, _25
	li	a5,1073741824		# tmp179,
	addi	a5,a5,-1	#, tmp178, tmp179
	add	a5,a4,a5	# tmp178, _27, _26
	slli	a5,a5,2	#, _28, _27
	lw	a4,-280(s0)		# tmp180, arr
	add	a5,a4,a5	# _28, _29, tmp180
	lw	a4,-24(s0)		# tmp181, l
	lw	a4,0(a4)		# _30, *l_68
	sw	a4,0(a5)	# _30, *_29
	lw	a5,-24(s0)		# tmp182, l
	lw	a4,-40(s0)		# tmp183, temp
	sw	a4,0(a5)	# tmp183, *l_68
# qsort_main.c:92:       SWAP_IF_GREATER(l[-1], ir[-1]);
	lw	a5,-24(s0)		# tmp184, l
	addi	a5,a5,-4	#, _31, tmp184
	lw	a4,0(a5)		# _32, *_31
	lw	a5,-20(s0)		# tmp185, ir
	addi	a5,a5,-4	#, _33, tmp185
	lw	a5,0(a5)		# _34, *_33
	ble	a4,a5,.L47	#, _32, _34,
# qsort_main.c:92:       SWAP_IF_GREATER(l[-1], ir[-1]);
	lw	a5,-24(s0)		# tmp186, l
	lw	a5,-4(a5)		# tmp187, MEM[(int *)l_68 + 4294967292B]
	sw	a5,-44(s0)	# tmp187, temp
	lw	a5,-24(s0)		# tmp188, l
	addi	a5,a5,-4	#, _35, tmp188
	lw	a4,-20(s0)		# tmp189, ir
	lw	a4,-4(a4)		# _36, MEM[(int *)ir_66 + 4294967292B]
	sw	a4,0(a5)	# _36, *_35
	lw	a5,-20(s0)		# tmp190, ir
	addi	a5,a5,-4	#, _37, tmp190
	lw	a4,-44(s0)		# tmp191, temp
	sw	a4,0(a5)	# tmp191, *_37
.L47:
# qsort_main.c:93:       SWAP_IF_GREATER(l[0], ir[-1]);
	lw	a5,-24(s0)		# tmp192, l
	lw	a4,0(a5)		# _38, *l_68
	lw	a5,-20(s0)		# tmp193, ir
	addi	a5,a5,-4	#, _39, tmp193
	lw	a5,0(a5)		# _40, *_39
	ble	a4,a5,.L48	#, _38, _40,
# qsort_main.c:93:       SWAP_IF_GREATER(l[0], ir[-1]);
	lw	a5,-24(s0)		# tmp194, l
	lw	a5,0(a5)		# tmp195, *l_68
	sw	a5,-48(s0)	# tmp195, temp
	lw	a5,-20(s0)		# tmp196, ir
	lw	a4,-4(a5)		# _41, MEM[(int *)ir_66 + 4294967292B]
	lw	a5,-24(s0)		# tmp197, l
	sw	a4,0(a5)	# _41, *l_68
	lw	a5,-20(s0)		# tmp198, ir
	addi	a5,a5,-4	#, _42, tmp198
	lw	a4,-48(s0)		# tmp199, temp
	sw	a4,0(a5)	# tmp199, *_42
.L48:
# qsort_main.c:94:       SWAP_IF_GREATER(l[-1], l[0]);
	lw	a5,-24(s0)		# tmp200, l
	addi	a5,a5,-4	#, _43, tmp200
	lw	a4,0(a5)		# _44, *_43
	lw	a5,-24(s0)		# tmp201, l
	lw	a5,0(a5)		# _45, *l_68
	ble	a4,a5,.L49	#, _44, _45,
# qsort_main.c:94:       SWAP_IF_GREATER(l[-1], l[0]);
	lw	a5,-24(s0)		# tmp202, l
	lw	a5,-4(a5)		# tmp203, MEM[(int *)l_68 + 4294967292B]
	sw	a5,-52(s0)	# tmp203, temp
	lw	a5,-24(s0)		# tmp204, l
	addi	a5,a5,-4	#, _46, tmp204
	lw	a4,-24(s0)		# tmp205, l
	lw	a4,0(a4)		# _47, *l_68
	sw	a4,0(a5)	# _47, *_46
	lw	a5,-24(s0)		# tmp206, l
	lw	a4,-52(s0)		# tmp207, temp
	sw	a4,0(a5)	# tmp207, *l_68
.L49:
# qsort_main.c:97:       type* i = l+1;
	lw	a5,-24(s0)		# tmp209, l
	addi	a5,a5,4	#, tmp208, tmp209
	sw	a5,-32(s0)	# tmp208, i
# qsort_main.c:98:       type* j = ir;
	lw	a5,-20(s0)		# tmp210, ir
	sw	a5,-36(s0)	# tmp210, j
# qsort_main.c:101:       type a = l[0];
	lw	a5,-24(s0)		# tmp211, l
	lw	a5,0(a5)		# tmp212, *l_68
	sw	a5,-56(s0)	# tmp212, a
.L54:
# qsort_main.c:104:         while (*i++ < a);           // Scan up to find element > a.
	nop	
.L50:
# qsort_main.c:104:         while (*i++ < a);           // Scan up to find element > a.
	lw	a5,-32(s0)		# i.22_48, i
	addi	a4,a5,4	#, tmp213, i.22_48
	sw	a4,-32(s0)	# tmp213, i
# qsort_main.c:104:         while (*i++ < a);           // Scan up to find element > a.
	lw	a5,0(a5)		# _49, *i.22_48
# qsort_main.c:104:         while (*i++ < a);           // Scan up to find element > a.
	lw	a4,-56(s0)		# tmp214, a
	bgt	a4,a5,.L50	#, tmp214, _49,
# qsort_main.c:105:         while (*(j-- - 2) > a);     // Scan down to find element < a.
	nop	
.L51:
# qsort_main.c:105:         while (*(j-- - 2) > a);     // Scan down to find element < a.
	lw	a5,-36(s0)		# j.23_50, j
	addi	a4,a5,-4	#, tmp215, j.23_50
	sw	a4,-36(s0)	# tmp215, j
# qsort_main.c:105:         while (*(j-- - 2) > a);     // Scan down to find element < a.
	addi	a5,a5,-8	#, _51, j.23_50
# qsort_main.c:105:         while (*(j-- - 2) > a);     // Scan down to find element < a.
	lw	a5,0(a5)		# _52, *_51
# qsort_main.c:105:         while (*(j-- - 2) > a);     // Scan down to find element < a.
	lw	a4,-56(s0)		# tmp216, a
	blt	a4,a5,.L51	#, tmp216, _52,
# qsort_main.c:106:         if (j < i) break;           // Pointers crossed. Partitioning complete.
	lw	a4,-36(s0)		# tmp217, j
	lw	a5,-32(s0)		# tmp218, i
	bltu	a4,a5,.L60	#, tmp217, tmp218,
# qsort_main.c:107:         SWAP(i[-1], j[-1]);         // Exchange elements.
	lw	a5,-32(s0)		# tmp219, i
	lw	a5,-4(a5)		# tmp220, MEM[(int *)i_109 + 4294967292B]
	sw	a5,-60(s0)	# tmp220, temp
	lw	a5,-32(s0)		# tmp221, i
	addi	a5,a5,-4	#, _53, tmp221
	lw	a4,-36(s0)		# tmp222, j
	lw	a4,-4(a4)		# _54, MEM[(int *)j_110 + 4294967292B]
	sw	a4,0(a5)	# _54, *_53
	lw	a5,-36(s0)		# tmp223, j
	addi	a5,a5,-4	#, _55, tmp223
	lw	a4,-60(s0)		# tmp224, temp
	sw	a4,0(a5)	# tmp224, *_55
# qsort_main.c:104:         while (*i++ < a);           // Scan up to find element > a.
	j	.L54		#
.L60:
# qsort_main.c:106:         if (j < i) break;           // Pointers crossed. Partitioning complete.
	nop	
# qsort_main.c:111:       l[0] = j[-1];
	lw	a5,-36(s0)		# tmp225, j
	lw	a4,-4(a5)		# _56, MEM[(int *)j_110 + 4294967292B]
	lw	a5,-24(s0)		# tmp226, l
	sw	a4,0(a5)	# _56, *l_68
# qsort_main.c:112:       j[-1] = a;
	lw	a5,-36(s0)		# tmp227, j
	addi	a5,a5,-4	#, _57, tmp227
# qsort_main.c:112:       j[-1] = a;
	lw	a4,-56(s0)		# tmp228, a
	sw	a4,0(a5)	# tmp228, *_57
# qsort_main.c:113:       stackp += 2;
	lw	a5,-28(s0)		# tmp230, stackp
	addi	a5,a5,8	#, tmp229, tmp230
	sw	a5,-28(s0)	# tmp229, stackp
# qsort_main.c:118:       if ( ir-i+1 >= j-l )
	lw	a4,-20(s0)		# tmp231, ir
	lw	a5,-32(s0)		# tmp232, i
	sub	a5,a4,a5	# _58, tmp231, tmp232
	srai	a5,a5,2	#, tmp233, _58
# qsort_main.c:118:       if ( ir-i+1 >= j-l )
	addi	a5,a5,1	#, _60, _59
# qsort_main.c:118:       if ( ir-i+1 >= j-l )
	lw	a3,-36(s0)		# tmp234, j
	lw	a4,-24(s0)		# tmp235, l
	sub	a4,a3,a4	# _61, tmp234, tmp235
	srai	a4,a4,2	#, tmp236, _61
# qsort_main.c:118:       if ( ir-i+1 >= j-l )
	blt	a5,a4,.L55	#, _60, _62,
# qsort_main.c:120:         stackp[0] = ir;
	lw	a5,-28(s0)		# tmp237, stackp
	lw	a4,-20(s0)		# tmp238, ir
	sw	a4,0(a5)	# tmp238, *stackp_113
# qsort_main.c:121:         stackp[-1] = i;
	lw	a5,-28(s0)		# tmp239, stackp
	addi	a5,a5,-4	#, _63, tmp239
# qsort_main.c:121:         stackp[-1] = i;
	lw	a4,-32(s0)		# tmp240, i
	sw	a4,0(a5)	# tmp240, *_63
# qsort_main.c:122:         ir = j-1;
	lw	a5,-36(s0)		# tmp242, j
	addi	a5,a5,-4	#, tmp241, tmp242
	sw	a5,-20(s0)	# tmp241, ir
	j	.L56		#
.L55:
# qsort_main.c:126:         stackp[0] = j-1;
	lw	a5,-36(s0)		# tmp243, j
	addi	a4,a5,-4	#, _64, tmp243
# qsort_main.c:126:         stackp[0] = j-1;
	lw	a5,-28(s0)		# tmp244, stackp
	sw	a4,0(a5)	# _64, *stackp_113
# qsort_main.c:127:         stackp[-1] = l;
	lw	a5,-28(s0)		# tmp245, stackp
	addi	a5,a5,-4	#, _65, tmp245
# qsort_main.c:127:         stackp[-1] = l;
	lw	a4,-24(s0)		# tmp246, l
	sw	a4,0(a5)	# tmp246, *_65
# qsort_main.c:128:         l = i;
	lw	a5,-32(s0)		# tmp247, i
	sw	a5,-24(s0)	# tmp247, l
# qsort_main.c:77:     if ( ir-l < INSERTION_THRESHOLD )
	j	.L56		#
.L59:
# qsort_main.c:81:       if ( stackp == stack ) break;
	nop	
# qsort_main.c:132: }
	nop	
	lw	ra,284(sp)		#,
	lw	s0,280(sp)		#,
	addi	sp,sp,288	#,,
	jr	ra		#
	.size	sort, .-sort
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sw	a0,-20(s0)	# argc, argc
	sw	a1,-24(s0)	# argv, argv
# qsort_main.c:147:   setStats(1);
	li	a0,1		#,
	call	setStats		#
# qsort_main.c:148:   sort( DATA_SIZE, input_data );
	lui	a5,%hi(input_data)	# tmp74,
	addi	a1,a5,%lo(input_data)	#, tmp74,
	li	a5,4096		# tmp75,
	addi	a0,a5,-2048	#,, tmp75
	call	sort		#
# qsort_main.c:149:   setStats(0);
	li	a0,0		#,
	call	setStats		#
# qsort_main.c:152:   return verify( DATA_SIZE, input_data, verify_data );
	lui	a5,%hi(verify_data)	# tmp76,
	addi	a2,a5,%lo(verify_data)	#, tmp76,
	lui	a5,%hi(input_data)	# tmp77,
	addi	a1,a5,%lo(input_data)	#, tmp77,
	li	a5,4096		# tmp78,
	addi	a0,a5,-2048	#,, tmp78
	call	verify		#
	mv	a5,a0	# _6,
# qsort_main.c:153: }
	mv	a0,a5	#, <retval>
	lw	ra,28(sp)		#,
	lw	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.local	count.1594
	.comm	count.1594,4,4
	.local	sense.1593
	.comm	sense.1593,4,4
	.ident	"GCC: (GNU) 8.2.0"
