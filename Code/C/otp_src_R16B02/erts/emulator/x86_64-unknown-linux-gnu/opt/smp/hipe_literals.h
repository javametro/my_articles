/* File: hipe_literals.h, generated by /root/otp_src_R16B02/bin/x86_64-unknown-linux-gnu/hipe_mkliterals.smp */
#ifndef __HIPE_LITERALS_H__
#define __HIPE_LITERALS_H__

#define F_TIMO 4
#define FREASON_TRAP 256
#define THE_NON_VALUE 0
#define EFE_NATIVE_ADDRESS 56
#define EFE_REFC 80
#define EFT_THING 0
#define BSF_ALIGNED 1
#define PB_ACTIVE_WRITER 2
#define PB_IS_WRITABLE 1
#define MB_ORIG 0
#define MB_BASE 8
#define MB_OFFSET 16
#define MB_SIZE 24
#define PROC_BIN_THING_WORD 0
#define PROC_BIN_BINSIZE 8
#define PROC_BIN_NEXT 16
#define PROC_BIN_VAL 24
#define PROC_BIN_BYTES 32
#define PROC_BIN_FLAGS 40
#define PROC_BIN_WORDSIZE 6
#define SUB_BIN_THING_WORD 0
#define SUB_BIN_BINSIZE 8
#define SUB_BIN_BITSIZE 24
#define SUB_BIN_OFFS 16
#define SUB_BIN_BITOFFS 25
#define SUB_BIN_WRITABLE 26
#define SUB_BIN_ORIG 32
#define SUB_BIN_WORDSIZE 5
#define HEAP_BIN_THING_WORD 0
#define HEAP_BIN_SIZE 8
#define HEAP_BIN_DATA 16
#define BINARY_ORIG_SIZE 16
#define BINARY_ORIG_BYTES 24
#define MAX_HEAP_BIN_SIZE 64
#define MS_THING_WORD 0
#define MS_MATCHBUFFER 8
#define MS_SAVEOFFSET 40
#define MS_MIN_SIZE 6
#define MB_ORIG_SIZE 8
#define MB_BASE_SIZE 8
#define MB_OFFSET_SIZE 8
#define MB_SIZE_SIZE 8
#define PROC_BIN_THING_WORD_SIZE 8
#define PROC_BIN_BINSIZE_SIZE 8
#define PROC_BIN_NEXT_SIZE 8
#define PROC_BIN_VAL_SIZE 8
#define PROC_BIN_BYTES_SIZE 8
#define PROC_BIN_FLAGS_SIZE 8
#define SUB_BIN_THING_WORD_SIZE 8
#define SUB_BIN_BINSIZE_SIZE 8
#define SUB_BIN_BITSIZE_SIZE 1
#define SUB_BIN_OFFS_SIZE 8
#define SUB_BIN_BITOFFS_SIZE 1
#define SUB_BIN_WRITABLE_SIZE 1
#define SUB_BIN_ORIG_SIZE 8
#define HEAP_BIN_THING_WORD_SIZE 8
#define HEAP_BIN_SIZE_SIZE 8
#define HEAP_BIN_DATA_SIZE 8
#define BINARY_ORIG_SIZE_SIZE 8
#define BINARY_ORIG_BYTES_SIZE 1
#define MS_THING_WORD_SIZE 8
#define MS_SAVEOFFSET_SIZE 8
#define MSG_NEXT 0
#define ARM_LEAF_WORDS 16
#define ARM_NR_ARG_REGS 3
#define ARM_IS_BIG_ENDIAN 0
#define PPC_LEAF_WORDS 16
#define PPC_NR_ARG_REGS 4
#define AMD64_LEAF_WORDS 24
#define AMD64_NR_ARG_REGS 4
#define AMD64_HP_IN_REGISTER 1
#define AMD64_HEAP_POINTER 15
#define X86_LEAF_WORDS 24
#define X86_NR_ARG_REGS 3
#define X86_NR_RET_REGS 3
#define X86_HP_IN_ESI 1
#define SPARC_LEAF_WORDS 16
#define SPARC_NR_ARG_REGS 4
#define P_OFF_HEAP_FUNS 584
#define EFT_NEXT 16
#define EFT_CREATOR 48
#define EFT_FE 8
#define EFT_NATIVE_ADDRESS 24
#define EFT_ARITY 32
#define EFT_NUM_FREE 40
#define EFT_ENV 56
#define ERL_FUN_SIZE 7
#define P_SCHED_DATA 752
#define P_FP_EXCEPTION 128
#define ERTS_IS_SMP 1
#define ERTS_NO_FPE_SIGNALS 0
#define MSG_MESSAGE 16
#define P_HP 72
#define P_HP_LIMIT 80
#define P_OFF_HEAP_FIRST 584
#define P_MBUF 600
#define P_ID 0
#define P_FLAGS 344
#define P_FVALUE 352
#define P_FREASON 360
#define P_FTRACE 368
#define P_FCALLS 312
#define P_BEAM_IP 296
#define P_ARITY 216
#define P_ARG0 240
#define P_ARG1 248
#define P_ARG2 256
#define P_ARG3 264
#define P_ARG4 272
#define P_ARG5 280
#define P_NSP 136
#define P_NCALLEE 160
#define P_CLOSURE 168
#define P_NSP_LIMIT 144
#define P_CSP 200
#define P_NARITY 208
#define P_MSG_FIRST 400
#define P_MSG_SAVE 416
#define HIPE_LITERALS_CRC 13615612U
#define HIPE_SYSTEM_CRC 95433827U

#define RTS_PARAMS_CASES \
	case 1: value = 584; break; \
	case 4: value = 16; break; \
	case 5: value = 48; break; \
	case 6: value = 8; break; \
	case 7: value = 24; break; \
	case 8: value = 32; break; \
	case 9: value = 40; break; \
	case 10: value = 56; break; \
	case 11: value = 7; break; \
	case 12: value = 752; break; \
	case 14: value = 128; break; \
	case 15: value = 1; break; \
	case 16: value = 0; break; \
	case 19: value = 16; break; \
	case 22: value = 72; break; \
	case 23: value = 80; break; \
	case 24: value = 584; break; \
	case 25: value = 600; break; \
	case 26: value = 0; break; \
	case 27: value = 344; break; \
	case 28: value = 352; break; \
	case 29: value = 360; break; \
	case 30: value = 368; break; \
	case 31: value = 312; break; \
	case 32: value = 296; break; \
	case 33: value = 216; break; \
	case 34: value = 240; break; \
	case 35: value = 248; break; \
	case 36: value = 256; break; \
	case 37: value = 264; break; \
	case 38: value = 272; break; \
	case 39: value = 280; break; \
	case 40: value = 136; break; \
	case 41: value = 160; break; \
	case 42: value = 168; break; \
	case 43: value = 144; break; \
	case 44: value = 200; break; \
	case 45: is_defined = 0; break; \
	case 46: value = 208; break; \
	case 47: is_defined = 0; break; \
	case 48: is_defined = 0; break; \
	case 49: value = 400; break; \
	case 50: value = 416; break;
#endif
