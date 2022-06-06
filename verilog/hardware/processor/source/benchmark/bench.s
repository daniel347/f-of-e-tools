	.file	"bench.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-elf)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultilib rv32i/ilp32
# -iprefix /data/f-of-e-tools/tools/sunflower/sunflower-toolchain/tools/riscv/bin/../lib/gcc/riscv32-elf/8.2.0/
# -D M32 bench.c -march=rv32i -mabi=ilp32 -O0 -Wall -fverbose-asm
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
	.local	mempool
	.comm	mempool,4,4
	.section	.rodata
	.align	2
.LC0:
	.string	"Enter array size (q to quit) [100]:  "
	.align	2
.LC1:
	.string	"Too small."
	.globl	__mulsi3
	.align	2
.LC2:
	.string	"Not enough memory available for given array size."
	.align	2
.LC3:
	.string	"Double"
	.align	2
.LC4:
	.string	"LINPACK benchmark, %s precision.\n"
	.align	2
.LC5:
	.string	"Machine precision:  %d digits.\n"
	.align	2
.LC6:
	.string	"Array size %d X %d.\n"
	.align	2
.LC7:
	.string	"Memory required:  %ldK.\n"
	.align	2
.LC8:
	.string	"Average rolled and unrolled performance:\n"
	.align	2
.LC9:
	.string	"    Reps Time(s) DGEFA   DGESL  OVERHEAD    KFLOPS"
	.align	2
.LC10:
	.string	"----------------------------------------------------"
	.globl	__ltdf2
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-144	#,,
	sw	ra,140(sp)	#,
	sw	s0,136(sp)	#,
	addi	s0,sp,144	#,,
	sw	a0,-132(s0)	# argc, argc
	sw	a1,-136(s0)	# argv, argv
.L16:
# bench.c:58: 	if (argc < 2)
	lw	a4,-132(s0)		# tmp96, argc
	li	a5,1		# tmp97,
	bgt	a4,a5,.L2	#, tmp96, tmp97,
# bench.c:60: 	    printf("Enter array size (q to quit) [100]:  ");
	lui	a5,%hi(.LC0)	# tmp98,
	addi	a0,a5,%lo(.LC0)	#, tmp98,
	call	printf		#
# bench.c:61:             fgets(buf,79,stdin);
	lui	a5,%hi(_impure_ptr)	# tmp99,
	lw	a5,%lo(_impure_ptr)(a5)		# _impure_ptr.0_1, _impure_ptr
	lw	a4,4(a5)		# _2, _impure_ptr.0_1->_stdin
# bench.c:61:             fgets(buf,79,stdin);
	addi	a5,s0,-116	#, tmp100,
	mv	a2,a4	#, _2
	li	a1,79		#,
	mv	a0,a5	#, tmp100
	call	fgets		#
.L2:
# bench.c:63: 	if (buf[0]=='q' || buf[0]=='Q')
	lbu	a4,-116(s0)	# _3, buf
# bench.c:63: 	if (buf[0]=='q' || buf[0]=='Q')
	li	a5,113		# tmp101,
	beq	a4,a5,.L3	#, _3, tmp101,
# bench.c:63: 	if (buf[0]=='q' || buf[0]=='Q')
	lbu	a4,-116(s0)	# _4, buf
# bench.c:63: 	if (buf[0]=='q' || buf[0]=='Q')
	li	a5,81		# tmp102,
	beq	a4,a5,.L3	#, _4, tmp102,
# bench.c:65:         if (buf[0]=='\0' || buf[0]=='\n')
	lbu	a5,-116(s0)	# _5, buf
# bench.c:65:         if (buf[0]=='\0' || buf[0]=='\n')
	beqz	a5,.L4	#, _5,
# bench.c:65:         if (buf[0]=='\0' || buf[0]=='\n')
	lbu	a4,-116(s0)	# _6, buf
# bench.c:65:         if (buf[0]=='\0' || buf[0]=='\n')
	li	a5,10		# tmp103,
	bne	a4,a5,.L5	#, _6, tmp103,
.L4:
# bench.c:66: 	    arsize=100;
	li	a5,100		# tmp104,
	sw	a5,-20(s0)	# tmp104, arsize
	j	.L6		#
.L5:
# bench.c:68:             arsize=atoi(buf);
	addi	a5,s0,-116	#, tmp105,
	mv	a0,a5	#, tmp105
	call	atoi		#
	sw	a0,-20(s0)	#, arsize
.L6:
# bench.c:69:         if (argc > 1)
	lw	a4,-132(s0)		# tmp106, argc
	li	a5,1		# tmp107,
	ble	a4,a5,.L7	#, tmp106, tmp107,
# bench.c:70: 	    arsize=atoi(argv[1]);
	lw	a5,-136(s0)		# tmp108, argv
	addi	a5,a5,4	#, _7, tmp108
# bench.c:70: 	    arsize=atoi(argv[1]);
	lw	a5,0(a5)		# _8, *_7
	mv	a0,a5	#, _8
	call	atoi		#
	sw	a0,-20(s0)	#, arsize
.L7:
# bench.c:71:         arsize/=2;
	lw	a5,-20(s0)		# tmp110, arsize
	srli	a4,a5,31	#, tmp111, tmp110
	add	a5,a4,a5	# tmp110, tmp112, tmp111
	srai	a5,a5,1	#, tmp113, tmp112
	sw	a5,-20(s0)	# tmp113, arsize
# bench.c:72:         arsize*=2;
	lw	a5,-20(s0)		# tmp115, arsize
	slli	a5,a5,1	#, tmp114, tmp115
	sw	a5,-20(s0)	# tmp114, arsize
# bench.c:73:         if (arsize<10)
	lw	a4,-20(s0)		# tmp116, arsize
	li	a5,9		# tmp117,
	bgt	a4,a5,.L8	#, tmp116, tmp117,
# bench.c:75:             printf("Too small.\n");
	lui	a5,%hi(.LC1)	# tmp118,
	addi	a0,a5,%lo(.LC1)	#, tmp118,
	call	puts		#
# bench.c:76: 	    if (argc > 1) break;
	lw	a4,-132(s0)		# tmp119, argc
	li	a5,1		# tmp120,
	ble	a4,a5,.L18	#, tmp119, tmp120,
# bench.c:76: 	    if (argc > 1) break;
	j	.L3		#
.L8:
# bench.c:79:         arsize2d = (long)arsize*(long)arsize;
	lw	a1,-20(s0)		#, arsize
	lw	a0,-20(s0)		#, arsize
	call	__mulsi3		#
	mv	a5,a0	# tmp121,
	sw	a5,-28(s0)	# tmp121, arsize2d
# bench.c:80:         memreq=arsize2d*sizeof(REAL)+(long)arsize*sizeof(REAL)+(long)arsize*sizeof(int);
	lw	a4,-28(s0)		# arsize2d.1_9, arsize2d
# bench.c:80:         memreq=arsize2d*sizeof(REAL)+(long)arsize*sizeof(REAL)+(long)arsize*sizeof(int);
	lw	a5,-20(s0)		# arsize.2_10, arsize
# bench.c:80:         memreq=arsize2d*sizeof(REAL)+(long)arsize*sizeof(REAL)+(long)arsize*sizeof(int);
	add	a5,a4,a5	# arsize.2_10, _11, arsize2d.1_9
# bench.c:80:         memreq=arsize2d*sizeof(REAL)+(long)arsize*sizeof(REAL)+(long)arsize*sizeof(int);
	slli	a4,a5,1	#, _12, _11
# bench.c:80:         memreq=arsize2d*sizeof(REAL)+(long)arsize*sizeof(REAL)+(long)arsize*sizeof(int);
	lw	a5,-20(s0)		# arsize.3_13, arsize
# bench.c:80:         memreq=arsize2d*sizeof(REAL)+(long)arsize*sizeof(REAL)+(long)arsize*sizeof(int);
	add	a5,a4,a5	# arsize.3_13, _14, _12
	slli	a5,a5,2	#, _15, _14
# bench.c:80:         memreq=arsize2d*sizeof(REAL)+(long)arsize*sizeof(REAL)+(long)arsize*sizeof(int);
	sw	a5,-32(s0)	# _15, memreq
# bench.c:81:         malloc_arg=(size_t)memreq;
	lw	a5,-32(s0)		# tmp122, memreq
	sw	a5,-36(s0)	# tmp122, malloc_arg
# bench.c:82:         if (malloc_arg!=memreq || (mempool=malloc(malloc_arg))==NULL)
	lw	a5,-32(s0)		# memreq.4_16, memreq
# bench.c:82:         if (malloc_arg!=memreq || (mempool=malloc(malloc_arg))==NULL)
	lw	a4,-36(s0)		# tmp123, malloc_arg
	bne	a4,a5,.L11	#, tmp123, memreq.4_16,
# bench.c:82:         if (malloc_arg!=memreq || (mempool=malloc(malloc_arg))==NULL)
	lw	a0,-36(s0)		#, malloc_arg
	call	malloc		#
	mv	a5,a0	# tmp124,
	mv	a4,a5	# _17, tmp124
# bench.c:82:         if (malloc_arg!=memreq || (mempool=malloc(malloc_arg))==NULL)
	lui	a5,%hi(mempool)	# tmp125,
	sw	a4,%lo(mempool)(a5)	# _17, mempool
	lui	a5,%hi(mempool)	# tmp126,
	lw	a5,%lo(mempool)(a5)		# mempool.5_18, mempool
# bench.c:82:         if (malloc_arg!=memreq || (mempool=malloc(malloc_arg))==NULL)
	bnez	a5,.L12	#, mempool.5_18,
.L11:
# bench.c:84:             printf("Not enough memory available for given array size.\n");
	lui	a5,%hi(.LC2)	# tmp127,
	addi	a0,a5,%lo(.LC2)	#, tmp127,
	call	puts		#
# bench.c:85: 	    if (argc > 1) break;
	lw	a4,-132(s0)		# tmp128, argc
	li	a5,1		# tmp129,
	ble	a4,a5,.L19	#, tmp128, tmp129,
# bench.c:85: 	    if (argc > 1) break;
	j	.L3		#
.L12:
# bench.c:88:         printf("LINPACK benchmark, %s precision.\n",PREC);
	lui	a5,%hi(.LC3)	# tmp130,
	addi	a1,a5,%lo(.LC3)	#, tmp130,
	lui	a5,%hi(.LC4)	# tmp131,
	addi	a0,a5,%lo(.LC4)	#, tmp131,
	call	printf		#
# bench.c:89:         printf("Machine precision:  %d digits.\n",BASE10DIG);
	li	a1,15		#,
	lui	a5,%hi(.LC5)	# tmp132,
	addi	a0,a5,%lo(.LC5)	#, tmp132,
	call	printf		#
# bench.c:90:         printf("Array size %d X %d.\n",arsize,arsize);
	lw	a2,-20(s0)		#, arsize
	lw	a1,-20(s0)		#, arsize
	lui	a5,%hi(.LC6)	# tmp133,
	addi	a0,a5,%lo(.LC6)	#, tmp133,
	call	printf		#
# bench.c:91:         printf("Memory required:  %ldK.\n",(memreq+512L)>>10);
	lw	a5,-32(s0)		# tmp134, memreq
	addi	a5,a5,512	#, _19, tmp134
# bench.c:91:         printf("Memory required:  %ldK.\n",(memreq+512L)>>10);
	srai	a5,a5,10	#, _20, _19
	mv	a1,a5	#, _20
	lui	a5,%hi(.LC7)	# tmp135,
	addi	a0,a5,%lo(.LC7)	#, tmp135,
	call	printf		#
# bench.c:92:         printf("Average rolled and unrolled performance:\n\n");
	lui	a5,%hi(.LC8)	# tmp136,
	addi	a0,a5,%lo(.LC8)	#, tmp136,
	call	puts		#
# bench.c:93:         printf("    Reps Time(s) DGEFA   DGESL  OVERHEAD    KFLOPS\n");
	lui	a5,%hi(.LC9)	# tmp137,
	addi	a0,a5,%lo(.LC9)	#, tmp137,
	call	puts		#
# bench.c:94:         printf("----------------------------------------------------\n");
	lui	a5,%hi(.LC10)	# tmp138,
	addi	a0,a5,%lo(.LC10)	#, tmp138,
	call	puts		#
# bench.c:95:         nreps=1;
	li	a5,1		# tmp139,
	sw	a5,-24(s0)	# tmp139, nreps
# bench.c:96:         while (linpack(nreps,arsize)<10.)
	j	.L14		#
.L15:
# bench.c:97:             nreps*=2;
	lw	a5,-24(s0)		# tmp141, nreps
	slli	a5,a5,1	#, tmp140, tmp141
	sw	a5,-24(s0)	# tmp140, nreps
.L14:
# bench.c:96:         while (linpack(nreps,arsize)<10.)
	lw	a1,-20(s0)		#, arsize
	lw	a0,-24(s0)		#, nreps
	call	linpack		#
# bench.c:96:         while (linpack(nreps,arsize)<10.)
	lui	a5,%hi(.LC11)	# tmp142,
	lw	a2,%lo(.LC11)(a5)		#,
	lw	a3,%lo(.LC11+4)(a5)		#,
	call	__ltdf2		#
	mv	a5,a0	# tmp143,
	bltz	a5,.L15	#, tmp143,
# bench.c:98:         free(mempool);
	lui	a5,%hi(mempool)	# tmp144,
	lw	a5,%lo(mempool)(a5)		# mempool.6_22, mempool
	mv	a0,a5	#, mempool.6_22
	call	free		#
# bench.c:99:         printf("\n");
	li	a0,10		#,
	call	putchar		#
# bench.c:100: 	if (argc > 1) break;
	lw	a4,-132(s0)		# tmp145, argc
	li	a5,1		# tmp146,
	bgt	a4,a5,.L20	#, tmp145, tmp146,
	j	.L16		#
.L18:
# bench.c:77:             continue;
	nop	
	j	.L16		#
.L19:
# bench.c:86:             continue;
	nop	
# bench.c:58: 	if (argc < 2)
	j	.L16		#
.L20:
# bench.c:100: 	if (argc > 1) break;
	nop	
.L3:
# bench.c:102: 	return 0;
	li	a5,0		# _65,
# bench.c:103:     }
	mv	a0,a5	#, <retval>
	lw	ra,140(sp)		#,
	lw	s0,136(sp)		#,
	addi	sp,sp,144	#,,
	jr	ra		#
	.size	main, .-main
	.globl	__floatsidf
	.globl	__adddf3
	.globl	__muldf3
	.globl	__divdf3
	.globl	__subdf3
	.section	.rodata
	.align	2
.LC17:
	.string	"%8ld %6.2f %6.2f%% %6.2f%% %6.2f%%  %9.3f\n"
	.text
	.align	2
	.type	linpack, @function
linpack:
	addi	sp,sp,-176	#,,
	sw	ra,172(sp)	#,
	sw	s0,168(sp)	#,
	sw	s2,164(sp)	#,
	sw	s3,160(sp)	#,
	sw	s4,156(sp)	#,
	sw	s5,152(sp)	#,
	addi	s0,sp,176	#,,
	sw	a0,-148(s0)	# nreps, nreps
	sw	a1,-152(s0)	# arsize, arsize
# bench.c:114:     lda = arsize;
	lw	a5,-152(s0)		# tmp111, arsize
	sw	a5,-64(s0)	# tmp111, lda
# bench.c:115:     n = arsize/2;
	lw	a5,-152(s0)		# tmp113, arsize
	srli	a4,a5,31	#, tmp114, tmp113
	add	a5,a4,a5	# tmp113, tmp115, tmp114
	srai	a5,a5,1	#, tmp116, tmp115
	sw	a5,-68(s0)	# tmp116, n
# bench.c:116:     arsize2d = (long)arsize*(long)arsize;
	lw	a1,-152(s0)		#, arsize
	lw	a0,-152(s0)		#, arsize
	call	__mulsi3		#
	mv	a5,a0	# tmp117,
	sw	a5,-72(s0)	# tmp117, arsize2d
# bench.c:117:     ops=((2.0*n*n*n)/3.0+2.0*n*n);
	lw	a0,-68(s0)		#, n
	call	__floatsidf		#
	mv	a5,a0	# _1,
	mv	a6,a1	# _1,
	mv	a2,a5	#, _1
	mv	a3,a6	#, _1
	mv	a0,a5	#, _1
	mv	a1,a6	#, _1
	call	__adddf3		#
	mv	a5,a0	# tmp118,
	mv	a6,a1	#,
	mv	s2,a5	# _2, tmp118
	mv	s3,a6	# _2,
# bench.c:117:     ops=((2.0*n*n*n)/3.0+2.0*n*n);
	lw	a0,-68(s0)		#, n
	call	__floatsidf		#
	mv	a5,a0	# _3,
	mv	a6,a1	# _3,
	mv	a2,a5	#, _3
	mv	a3,a6	#, _3
	mv	a0,s2	#, _2
	mv	a1,s3	#, _2
	call	__muldf3		#
	mv	a5,a0	# tmp119,
	mv	a6,a1	#,
	mv	s2,a5	# _4, tmp119
	mv	s3,a6	# _4,
# bench.c:117:     ops=((2.0*n*n*n)/3.0+2.0*n*n);
	lw	a0,-68(s0)		#, n
	call	__floatsidf		#
	mv	a5,a0	# _5,
	mv	a6,a1	# _5,
	mv	a2,a5	#, _5
	mv	a3,a6	#, _5
	mv	a0,s2	#, _4
	mv	a1,s3	#, _4
	call	__muldf3		#
	mv	a5,a0	# tmp120,
	mv	a6,a1	#,
	mv	a0,a5	# _6, tmp120
	mv	a1,a6	# _6,
# bench.c:117:     ops=((2.0*n*n*n)/3.0+2.0*n*n);
	lui	a5,%hi(.LC12)	# tmp121,
	lw	a2,%lo(.LC12)(a5)		#,
	lw	a3,%lo(.LC12+4)(a5)		#,
	call	__divdf3		#
	mv	a5,a0	# tmp122,
	mv	a6,a1	#,
	mv	s2,a5	# _7, tmp122
	mv	s3,a6	# _7,
# bench.c:117:     ops=((2.0*n*n*n)/3.0+2.0*n*n);
	lw	a0,-68(s0)		#, n
	call	__floatsidf		#
	mv	a5,a0	# _8,
	mv	a6,a1	# _8,
	mv	a2,a5	#, _8
	mv	a3,a6	#, _8
	mv	a0,a5	#, _8
	mv	a1,a6	#, _8
	call	__adddf3		#
	mv	a5,a0	# tmp123,
	mv	a6,a1	#,
	mv	s4,a5	# _9, tmp123
	mv	s5,a6	# _9,
# bench.c:117:     ops=((2.0*n*n*n)/3.0+2.0*n*n);
	lw	a0,-68(s0)		#, n
	call	__floatsidf		#
	mv	a5,a0	# _10,
	mv	a6,a1	# _10,
	mv	a2,a5	#, _10
	mv	a3,a6	#, _10
	mv	a0,s4	#, _9
	mv	a1,s5	#, _9
	call	__muldf3		#
	mv	a5,a0	# tmp124,
	mv	a6,a1	#,
# bench.c:117:     ops=((2.0*n*n*n)/3.0+2.0*n*n);
	mv	a2,a5	#, _11
	mv	a3,a6	#, _11
	mv	a0,s2	#, _7
	mv	a1,s3	#, _7
	call	__adddf3		#
	mv	a5,a0	# tmp125,
	mv	a6,a1	#,
	sw	a5,-80(s0)	# tmp125, ops
	sw	a6,-76(s0)	#, ops
# bench.c:118:     a=(REAL *)mempool;
	lui	a5,%hi(mempool)	# tmp126,
	lw	a5,%lo(mempool)(a5)		# tmp127, mempool
	sw	a5,-84(s0)	# tmp127, a
# bench.c:119:     b=a+arsize2d;
	lw	a5,-72(s0)		# arsize2d.7_12, arsize2d
	slli	a5,a5,3	#, _13, arsize2d.7_12
# bench.c:119:     b=a+arsize2d;
	lw	a4,-84(s0)		# tmp129, a
	add	a5,a4,a5	# _13, tmp128, tmp129
	sw	a5,-88(s0)	# tmp128, b
# bench.c:120:     ipvt=(int *)&b[arsize];
	lw	a5,-152(s0)		# arsize.8_14, arsize
	slli	a5,a5,3	#, _15, arsize.8_14
# bench.c:120:     ipvt=(int *)&b[arsize];
	lw	a4,-88(s0)		# tmp131, b
	add	a5,a4,a5	# _15, tmp130, tmp131
	sw	a5,-92(s0)	# tmp130, ipvt
# bench.c:121:     tdgesl=0;
	sw	zero,-40(s0)	#, tdgesl
	sw	zero,-36(s0)	#, tdgesl
# bench.c:122:     tdgefa=0;
	sw	zero,-48(s0)	#, tdgefa
	sw	zero,-44(s0)	#, tdgefa
# bench.c:123:     totalt=second();
	call	second		#
	sw	a0,-104(s0)	#, totalt
	sw	a1,-100(s0)	#, totalt
# bench.c:124:     for (i=0;i<nreps;i++)
	sw	zero,-60(s0)	#, i
# bench.c:124:     for (i=0;i<nreps;i++)
	j	.L22		#
.L23:
# bench.c:126:         matgen(a,lda,n,b,&norma);
	addi	a5,s0,-128	#, tmp132,
	mv	a4,a5	#, tmp132
	lw	a3,-88(s0)		#, b
	lw	a2,-68(s0)		#, n
	lw	a1,-64(s0)		#, lda
	lw	a0,-84(s0)		#, a
	call	matgen		#
# bench.c:127:         t1 = second();
	call	second		#
	sw	a0,-112(s0)	#, t1
	sw	a1,-108(s0)	#, t1
# bench.c:128:         dgefa(a,lda,n,ipvt,&info,1);
	addi	a4,s0,-132	#, tmp133,
	li	a5,1		#,
	lw	a3,-92(s0)		#, ipvt
	lw	a2,-68(s0)		#, n
	lw	a1,-64(s0)		#, lda
	lw	a0,-84(s0)		#, a
	call	dgefa		#
# bench.c:129:         tdgefa += second()-t1;
	call	second		#
	mv	a5,a0	# _16,
	mv	a6,a1	# _16,
# bench.c:129:         tdgefa += second()-t1;
	lw	a2,-112(s0)		#, t1
	lw	a3,-108(s0)		#, t1
	mv	a0,a5	#, _16
	mv	a1,a6	#, _16
	call	__subdf3		#
	mv	a5,a0	# tmp134,
	mv	a6,a1	#,
# bench.c:129:         tdgefa += second()-t1;
	mv	a2,a5	#, _67
	mv	a3,a6	#, _67
	lw	a0,-48(s0)		#, tdgefa
	lw	a1,-44(s0)		#, tdgefa
	call	__adddf3		#
	mv	a5,a0	# tmp135,
	mv	a6,a1	#,
	sw	a5,-48(s0)	# tmp135, tdgefa
	sw	a6,-44(s0)	#, tdgefa
# bench.c:130:         t1 = second();
	call	second		#
	sw	a0,-112(s0)	#, t1
	sw	a1,-108(s0)	#, t1
# bench.c:131:         dgesl(a,lda,n,ipvt,b,0,1);
	li	a6,1		#,
	li	a5,0		#,
	lw	a4,-88(s0)		#, b
	lw	a3,-92(s0)		#, ipvt
	lw	a2,-68(s0)		#, n
	lw	a1,-64(s0)		#, lda
	lw	a0,-84(s0)		#, a
	call	dgesl		#
# bench.c:132:         tdgesl += second()-t1;
	call	second		#
	mv	a5,a0	# _17,
	mv	a6,a1	# _17,
# bench.c:132:         tdgesl += second()-t1;
	lw	a2,-112(s0)		#, t1
	lw	a3,-108(s0)		#, t1
	mv	a0,a5	#, _17
	mv	a1,a6	#, _17
	call	__subdf3		#
	mv	a5,a0	# tmp136,
	mv	a6,a1	#,
# bench.c:132:         tdgesl += second()-t1;
	mv	a2,a5	#, _73
	mv	a3,a6	#, _73
	lw	a0,-40(s0)		#, tdgesl
	lw	a1,-36(s0)		#, tdgesl
	call	__adddf3		#
	mv	a5,a0	# tmp137,
	mv	a6,a1	#,
	sw	a5,-40(s0)	# tmp137, tdgesl
	sw	a6,-36(s0)	#, tdgesl
# bench.c:124:     for (i=0;i<nreps;i++)
	lw	a5,-60(s0)		# tmp139, i
	addi	a5,a5,1	#, tmp138, tmp139
	sw	a5,-60(s0)	# tmp138, i
.L22:
# bench.c:124:     for (i=0;i<nreps;i++)
	lw	a4,-60(s0)		# tmp140, i
	lw	a5,-148(s0)		# tmp141, nreps
	blt	a4,a5,.L23	#, tmp140, tmp141,
# bench.c:134:     for (i=0;i<nreps;i++)
	sw	zero,-60(s0)	#, i
# bench.c:134:     for (i=0;i<nreps;i++)
	j	.L24		#
.L25:
# bench.c:136:         matgen(a,lda,n,b,&norma);
	addi	a5,s0,-128	#, tmp142,
	mv	a4,a5	#, tmp142
	lw	a3,-88(s0)		#, b
	lw	a2,-68(s0)		#, n
	lw	a1,-64(s0)		#, lda
	lw	a0,-84(s0)		#, a
	call	matgen		#
# bench.c:137:         t1 = second();
	call	second		#
	sw	a0,-112(s0)	#, t1
	sw	a1,-108(s0)	#, t1
# bench.c:138:         dgefa(a,lda,n,ipvt,&info,0);
	addi	a4,s0,-132	#, tmp143,
	li	a5,0		#,
	lw	a3,-92(s0)		#, ipvt
	lw	a2,-68(s0)		#, n
	lw	a1,-64(s0)		#, lda
	lw	a0,-84(s0)		#, a
	call	dgefa		#
# bench.c:139:         tdgefa += second()-t1;
	call	second		#
	mv	a5,a0	# _18,
	mv	a6,a1	# _18,
# bench.c:139:         tdgefa += second()-t1;
	lw	a2,-112(s0)		#, t1
	lw	a3,-108(s0)		#, t1
	mv	a0,a5	#, _18
	mv	a1,a6	#, _18
	call	__subdf3		#
	mv	a5,a0	# tmp144,
	mv	a6,a1	#,
# bench.c:139:         tdgefa += second()-t1;
	mv	a2,a5	#, _82
	mv	a3,a6	#, _82
	lw	a0,-48(s0)		#, tdgefa
	lw	a1,-44(s0)		#, tdgefa
	call	__adddf3		#
	mv	a5,a0	# tmp145,
	mv	a6,a1	#,
	sw	a5,-48(s0)	# tmp145, tdgefa
	sw	a6,-44(s0)	#, tdgefa
# bench.c:140:         t1 = second();
	call	second		#
	sw	a0,-112(s0)	#, t1
	sw	a1,-108(s0)	#, t1
# bench.c:141:         dgesl(a,lda,n,ipvt,b,0,0);
	li	a6,0		#,
	li	a5,0		#,
	lw	a4,-88(s0)		#, b
	lw	a3,-92(s0)		#, ipvt
	lw	a2,-68(s0)		#, n
	lw	a1,-64(s0)		#, lda
	lw	a0,-84(s0)		#, a
	call	dgesl		#
# bench.c:142:         tdgesl += second()-t1;
	call	second		#
	mv	a5,a0	# _19,
	mv	a6,a1	# _19,
# bench.c:142:         tdgesl += second()-t1;
	lw	a2,-112(s0)		#, t1
	lw	a3,-108(s0)		#, t1
	mv	a0,a5	#, _19
	mv	a1,a6	#, _19
	call	__subdf3		#
	mv	a5,a0	# tmp146,
	mv	a6,a1	#,
# bench.c:142:         tdgesl += second()-t1;
	mv	a2,a5	#, _88
	mv	a3,a6	#, _88
	lw	a0,-40(s0)		#, tdgesl
	lw	a1,-36(s0)		#, tdgesl
	call	__adddf3		#
	mv	a5,a0	# tmp147,
	mv	a6,a1	#,
	sw	a5,-40(s0)	# tmp147, tdgesl
	sw	a6,-36(s0)	#, tdgesl
# bench.c:134:     for (i=0;i<nreps;i++)
	lw	a5,-60(s0)		# tmp149, i
	addi	a5,a5,1	#, tmp148, tmp149
	sw	a5,-60(s0)	# tmp148, i
.L24:
# bench.c:134:     for (i=0;i<nreps;i++)
	lw	a4,-60(s0)		# tmp150, i
	lw	a5,-148(s0)		# tmp151, nreps
	blt	a4,a5,.L25	#, tmp150, tmp151,
# bench.c:144:     totalt=second()-totalt;
	call	second		#
	mv	a5,a0	# _20,
	mv	a6,a1	# _20,
# bench.c:144:     totalt=second()-totalt;
	lw	a2,-104(s0)		#, totalt
	lw	a3,-100(s0)		#, totalt
	mv	a0,a5	#, _20
	mv	a1,a6	#, _20
	call	__subdf3		#
	mv	a5,a0	# tmp152,
	mv	a6,a1	#,
	sw	a5,-104(s0)	# tmp152, totalt
	sw	a6,-100(s0)	#, totalt
# bench.c:145:     if (totalt<0.5 || tdgefa+tdgesl<0.2)
	lui	a5,%hi(.LC13)	# tmp153,
	lw	a2,%lo(.LC13)(a5)		#,
	lw	a3,%lo(.LC13+4)(a5)		#,
	lw	a0,-104(s0)		#, totalt
	lw	a1,-100(s0)		#, totalt
	call	__ltdf2		#
	mv	a5,a0	# tmp154,
	bltz	a5,.L26	#, tmp154,
# bench.c:145:     if (totalt<0.5 || tdgefa+tdgesl<0.2)
	lw	a2,-40(s0)		#, tdgesl
	lw	a3,-36(s0)		#, tdgesl
	lw	a0,-48(s0)		#, tdgefa
	lw	a1,-44(s0)		#, tdgefa
	call	__adddf3		#
	mv	a5,a0	# tmp155,
	mv	a6,a1	#,
	mv	a0,a5	# _21, tmp155
	mv	a1,a6	# _21,
# bench.c:145:     if (totalt<0.5 || tdgefa+tdgesl<0.2)
	lui	a5,%hi(.LC14)	# tmp156,
	lw	a2,%lo(.LC14)(a5)		#,
	lw	a3,%lo(.LC14+4)(a5)		#,
	call	__ltdf2		#
	mv	a5,a0	# tmp157,
	bgez	a5,.L40	#, tmp157,
.L26:
# bench.c:146:         return(0.);
	li	a5,0		# _43,
	li	a6,0		# _43,
	j	.L36		#
.L40:
# bench.c:147:     kflops=2.*nreps*ops/(1000.*(tdgefa+tdgesl));
	lw	a0,-148(s0)		#, nreps
	call	__floatsidf		#
	mv	a5,a0	# _22,
	mv	a6,a1	# _22,
	mv	a2,a5	#, _22
	mv	a3,a6	#, _22
	mv	a0,a5	#, _22
	mv	a1,a6	#, _22
	call	__adddf3		#
	mv	a5,a0	# tmp158,
	mv	a6,a1	#,
# bench.c:147:     kflops=2.*nreps*ops/(1000.*(tdgefa+tdgesl));
	lw	a2,-80(s0)		#, ops
	lw	a3,-76(s0)		#, ops
	mv	a0,a5	#, _23
	mv	a1,a6	#, _23
	call	__muldf3		#
	mv	a5,a0	# tmp159,
	mv	a6,a1	#,
	mv	s2,a5	# _24, tmp159
	mv	s3,a6	# _24,
# bench.c:147:     kflops=2.*nreps*ops/(1000.*(tdgefa+tdgesl));
	lw	a2,-40(s0)		#, tdgesl
	lw	a3,-36(s0)		#, tdgesl
	lw	a0,-48(s0)		#, tdgefa
	lw	a1,-44(s0)		#, tdgefa
	call	__adddf3		#
	mv	a5,a0	# tmp160,
	mv	a6,a1	#,
	mv	a0,a5	# _25, tmp160
	mv	a1,a6	# _25,
# bench.c:147:     kflops=2.*nreps*ops/(1000.*(tdgefa+tdgesl));
	lui	a5,%hi(.LC15)	# tmp161,
	lw	a2,%lo(.LC15)(a5)		#,
	lw	a3,%lo(.LC15+4)(a5)		#,
	call	__muldf3		#
	mv	a5,a0	# tmp162,
	mv	a6,a1	#,
# bench.c:147:     kflops=2.*nreps*ops/(1000.*(tdgefa+tdgesl));
	mv	a2,a5	#, _26
	mv	a3,a6	#, _26
	mv	a0,s2	#, _24
	mv	a1,s3	#, _24
	call	__divdf3		#
	mv	a5,a0	# tmp163,
	mv	a6,a1	#,
	sw	a5,-120(s0)	# tmp163, kflops
	sw	a6,-116(s0)	#, kflops
# bench.c:148:     toverhead=totalt-tdgefa-tdgesl;
	lw	a2,-48(s0)		#, tdgefa
	lw	a3,-44(s0)		#, tdgefa
	lw	a0,-104(s0)		#, totalt
	lw	a1,-100(s0)		#, totalt
	call	__subdf3		#
	mv	a5,a0	# tmp164,
	mv	a6,a1	#,
# bench.c:148:     toverhead=totalt-tdgefa-tdgesl;
	lw	a2,-40(s0)		#, tdgesl
	lw	a3,-36(s0)		#, tdgesl
	mv	a0,a5	#, _27
	mv	a1,a6	#, _27
	call	__subdf3		#
	mv	a5,a0	# tmp165,
	mv	a6,a1	#,
	sw	a5,-56(s0)	# tmp165, toverhead
	sw	a6,-52(s0)	#, toverhead
# bench.c:149:     if (tdgefa<0.)
	li	a2,0		#,
	li	a3,0		#,
	lw	a0,-48(s0)		#, tdgefa
	lw	a1,-44(s0)		#, tdgefa
	call	__ltdf2		#
	mv	a5,a0	# tmp166,
	bgez	a5,.L30	#, tmp166,
# bench.c:150:         tdgefa=0.;
	sw	zero,-48(s0)	#, tdgefa
	sw	zero,-44(s0)	#, tdgefa
.L30:
# bench.c:151:     if (tdgesl<0.)
	li	a2,0		#,
	li	a3,0		#,
	lw	a0,-40(s0)		#, tdgesl
	lw	a1,-36(s0)		#, tdgesl
	call	__ltdf2		#
	mv	a5,a0	# tmp167,
	bgez	a5,.L32	#, tmp167,
# bench.c:152:         tdgesl=0.;
	sw	zero,-40(s0)	#, tdgesl
	sw	zero,-36(s0)	#, tdgesl
.L32:
# bench.c:153:     if (toverhead<0.)
	li	a2,0		#,
	li	a3,0		#,
	lw	a0,-56(s0)		#, toverhead
	lw	a1,-52(s0)		#, toverhead
	call	__ltdf2		#
	mv	a5,a0	# tmp168,
	bgez	a5,.L34	#, tmp168,
# bench.c:154:         toverhead=0.;
	sw	zero,-56(s0)	#, toverhead
	sw	zero,-52(s0)	#, toverhead
.L34:
# bench.c:156:             nreps,totalt,100.*tdgefa/totalt,
	lui	a5,%hi(.LC16)	# tmp169,
	lw	a2,%lo(.LC16)(a5)		#,
	lw	a3,%lo(.LC16+4)(a5)		#,
	lw	a0,-48(s0)		#, tdgefa
	lw	a1,-44(s0)		#, tdgefa
	call	__muldf3		#
	mv	a5,a0	# tmp170,
	mv	a6,a1	#,
# bench.c:155:     printf("%8ld %6.2f %6.2f%% %6.2f%% %6.2f%%  %9.3f\n",
	lw	a2,-104(s0)		#, totalt
	lw	a3,-100(s0)		#, totalt
	mv	a0,a5	#, _28
	mv	a1,a6	#, _28
	call	__divdf3		#
	mv	a5,a0	# tmp171,
	mv	a6,a1	#,
	mv	s2,a5	# _29, tmp171
	mv	s3,a6	# _29,
# bench.c:157:             100.*tdgesl/totalt,100.*toverhead/totalt,
	lui	a5,%hi(.LC16)	# tmp172,
	lw	a2,%lo(.LC16)(a5)		#,
	lw	a3,%lo(.LC16+4)(a5)		#,
	lw	a0,-40(s0)		#, tdgesl
	lw	a1,-36(s0)		#, tdgesl
	call	__muldf3		#
	mv	a5,a0	# tmp173,
	mv	a6,a1	#,
# bench.c:155:     printf("%8ld %6.2f %6.2f%% %6.2f%% %6.2f%%  %9.3f\n",
	lw	a2,-104(s0)		#, totalt
	lw	a3,-100(s0)		#, totalt
	mv	a0,a5	#, _30
	mv	a1,a6	#, _30
	call	__divdf3		#
	mv	a5,a0	# tmp174,
	mv	a6,a1	#,
	mv	s4,a5	# _31, tmp174
	mv	s5,a6	# _31,
# bench.c:157:             100.*tdgesl/totalt,100.*toverhead/totalt,
	lui	a5,%hi(.LC16)	# tmp175,
	lw	a2,%lo(.LC16)(a5)		#,
	lw	a3,%lo(.LC16+4)(a5)		#,
	lw	a0,-56(s0)		#, toverhead
	lw	a1,-52(s0)		#, toverhead
	call	__muldf3		#
	mv	a5,a0	# tmp176,
	mv	a6,a1	#,
# bench.c:155:     printf("%8ld %6.2f %6.2f%% %6.2f%% %6.2f%%  %9.3f\n",
	lw	a2,-104(s0)		#, totalt
	lw	a3,-100(s0)		#, totalt
	mv	a0,a5	#, _32
	mv	a1,a6	#, _32
	call	__divdf3		#
	mv	a5,a0	# tmp177,
	mv	a6,a1	#,
	mv	a3,a5	# _33, tmp177
	mv	a4,a6	# _33,
	lw	a5,-120(s0)		# tmp178, kflops
	lw	a6,-116(s0)		#, kflops
	sw	a5,8(sp)	# tmp178,
	sw	a6,12(sp)	#,
	sw	a3,0(sp)	# _33,
	sw	a4,4(sp)	# _33,
	mv	a6,s4	#, _31
	mv	a7,s5	#, _31
	mv	a4,s2	#, _29
	mv	a5,s3	#, _29
	lw	a2,-104(s0)		#, totalt
	lw	a3,-100(s0)		#, totalt
	lw	a1,-148(s0)		#, nreps
	lui	a0,%hi(.LC17)	# tmp179,
	addi	a0,a0,%lo(.LC17)	#, tmp179,
	call	printf		#
# bench.c:159:     return(totalt);
	lw	a5,-104(s0)		# _43, totalt
	lw	a6,-100(s0)		# _43, totalt
.L36:
# bench.c:160:     }
	mv	a0,a5	#, <retval>
	mv	a1,a6	#, <retval>
	lw	ra,172(sp)		#,
	lw	s0,168(sp)		#,
	lw	s2,164(sp)		#,
	lw	s3,160(sp)		#,
	lw	s4,156(sp)		#,
	lw	s5,152(sp)		#,
	addi	sp,sp,176	#,,
	jr	ra		#
	.size	linpack, .-linpack
	.section	.rodata
	.align	3
.LC11:
	.word	0
	.word	1076101120
	.align	3
.LC12:
	.word	0
	.word	1074266112
	.align	3
.LC13:
	.word	0
	.word	1071644672
	.align	3
.LC14:
	.word	2576980378
	.word	1070176665
	.align	3
.LC15:
	.word	0
	.word	1083129856
	.align	3
.LC16:
	.word	0
	.word	1079574528
	.ident	"GCC: (GNU) 8.2.0"
