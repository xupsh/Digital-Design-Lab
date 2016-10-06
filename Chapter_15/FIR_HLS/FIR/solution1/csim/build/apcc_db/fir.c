/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void fir(signed int *llvm_cbe_y, signed int *llvm_cbe_c, signed int llvm_cbe_x);


/* Global Variable Definitions and Initialization */
static signed int aesl_internal_fir_OC_shift_reg[11];


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void fir(signed int *llvm_cbe_y, signed int *llvm_cbe_c, signed int llvm_cbe_x) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  unsigned int llvm_cbe_storemerge2;
  unsigned int llvm_cbe_storemerge2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  unsigned int llvm_cbe_tmp__1;
  unsigned int llvm_cbe_tmp__1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  unsigned long long llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  signed int *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned long long llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  signed int *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  unsigned long long llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  signed int *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  unsigned int llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  unsigned int llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @fir\n");
  llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )10u;   /* for PHI node */
  llvm_cbe_tmp__1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__14;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__14:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = phi i32 [ 10, %%0 ], [ %%18, %%12  for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (unsigned int )llvm_cbe_storemerge2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\n = 0x%X",10u);
printf("\n = 0x%X",llvm_cbe_tmp__13);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = phi i32 [ 0, %%0 ], [ %%17, %%12  for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__1 = (unsigned int )llvm_cbe_tmp__1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__12);
}
  if (((llvm_cbe_storemerge2&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__15;
  } else {
    goto llvm_cbe_tmp__16;
  }

llvm_cbe_tmp__17:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ %%9, %%5 ], [ %%x, %%4  for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",llvm_cbe_tmp__5);
printf("\nx = 0x%X",llvm_cbe_x);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = sext i32 %%storemerge2 to i64, !dbg !2 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__8 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge2);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds i32* %%c, i64 %%13, !dbg !2 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__9 = (signed int *)(&llvm_cbe_c[(((signed long long )llvm_cbe_tmp__8))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__8));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i32* %%14, align 4, !dbg !2 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__10 = (unsigned int )*llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = mul nsw i32 %%15, %%storemerge1, !dbg !2 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_tmp__10&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge1&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = add nsw i32 %%16, %%2, !dbg !2 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__12 = (unsigned int )((unsigned int )(llvm_cbe_tmp__11&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__1&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__12&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = add nsw i32 %%storemerge2, -1, !dbg !4 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__13 = (unsigned int )((unsigned int )(llvm_cbe_storemerge2&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__13&4294967295ull)));
  if ((((signed int )llvm_cbe_storemerge2) > ((signed int )0u))) {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__13;   /* for PHI node */
    llvm_cbe_tmp__1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__12;   /* for PHI node */
    goto llvm_cbe_tmp__14;
  } else {
    goto llvm_cbe_tmp__18;
  }

llvm_cbe_tmp__15:
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%x, i32* getelementptr inbounds ([11 x i32]* @aesl_internal_fir.shift_reg, i64 0, i64 0), align 16, !dbg !3 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_23_count);
  *((&aesl_internal_fir_OC_shift_reg[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 11
#endif
])) = llvm_cbe_x;
if (AESL_DEBUG_TRACE)
printf("\nx = 0x%X\n", llvm_cbe_x);
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_x;   /* for PHI node */
  goto llvm_cbe_tmp__17;

llvm_cbe_tmp__16:
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = add nsw i32 %%storemerge2, -1, !dbg !4 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__2 = (unsigned int )((unsigned int )(llvm_cbe_storemerge2&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__2&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = sext i32 %%6 to i64, !dbg !4 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__3 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds [11 x i32]* @aesl_internal_fir.shift_reg, i64 0, i64 %%7, !dbg !4 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_28_count);
  llvm_cbe_tmp__4 = (signed int *)(&aesl_internal_fir_OC_shift_reg[(((signed long long )llvm_cbe_tmp__3))
#ifdef AESL_BC_SIM
 % 11
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__3));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__3) < 11)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_fir.shift_reg' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i32* %%8, align 4, !dbg !4 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__5 = (unsigned int )*llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = sext i32 %%storemerge2 to i64, !dbg !4 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__6 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge2);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds [11 x i32]* @aesl_internal_fir.shift_reg, i64 0, i64 %%10, !dbg !4 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__7 = (signed int *)(&aesl_internal_fir_OC_shift_reg[(((signed long long )llvm_cbe_tmp__6))
#ifdef AESL_BC_SIM
 % 11
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__6));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__6) < 11 && "Write access out of array 'aesl_internal_fir.shift_reg' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%9, i32* %%11, align 4, !dbg !4 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_32_count);
  *llvm_cbe_tmp__7 = llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__5;   /* for PHI node */
  goto llvm_cbe_tmp__17;

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__18:
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%17, i32* %%y, align 4, !dbg !2 for 0x%I64xth hint within @fir  --> \n", ++aesl_llvm_cbe_55_count);
  *llvm_cbe_y = llvm_cbe_tmp__12;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__12);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @fir}\n");
  return;
}

