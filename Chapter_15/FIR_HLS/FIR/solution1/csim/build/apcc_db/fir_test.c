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
/* Structure forward decls */
typedef struct l_struct_OC__iobuf l_struct_OC__iobuf;

/* Structure contents */
struct l_struct_OC__iobuf {
   char *field0;
  unsigned int field1;
   char *field2;
  unsigned int field3;
  unsigned int field4;
  unsigned int field5;
  unsigned int field6;
   char *field7;
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
signed int main(void);
void fir(signed int *, signed int *, signed int );


/* Global Variable Definitions and Initialization */
static signed int aesl_internal_main_OC_taps[11] = { 0u, 4294967286u, 4294967287u, 23u, 56u, 63u, 56u, 23u, 4294967287u, 4294967286u, 0u };
static  char aesl_internal__OC_str[8] = "out.dat";
static  char aesl_internal__OC_str1[2] = "w";
static  char aesl_internal__OC_str2[10] = "%i %d %d\n";
static  char aesl_internal__OC_str4[29] = "diff -w out.dat out.gold.dat";
static  char aesl_internal__OC_str5[45] = "*******************************************\n";
static  char aesl_internal__OC_str6[47] = "FAIL: Output DOES NOT match the golden output\n";
static  char aesl_internal__OC_str7[45] = "PASS: The output matches the golden output!\n";
static  char aesl_internal_str[31] = "Comparing against output data ";


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

signed int main(void) {
  static  unsigned long long aesl_llvm_cbe_output_count = 0;
  signed int llvm_cbe_output;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_taps_count = 0;
  signed int llvm_cbe_taps[11];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
   char *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
   char *llvm_cbe_tmp__2;
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
  l_struct_OC__iobuf *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  signed int *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_count = 0;
  unsigned int llvm_cbe_storemerge10;
  unsigned int llvm_cbe_storemerge10__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge239_count = 0;
  unsigned int llvm_cbe_storemerge239;
  unsigned int llvm_cbe_storemerge239__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  unsigned int llvm_cbe_tmp__5;
  unsigned int llvm_cbe_tmp__5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__count = 0;
  unsigned int llvm_cbe__2e_;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_8_count = 0;
  unsigned int llvm_cbe__2e_8;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge24_count = 0;
  unsigned int llvm_cbe_storemerge24;
  unsigned int llvm_cbe_storemerge24__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  unsigned int llvm_cbe_tmp__8;
  unsigned int llvm_cbe_tmp__8__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  unsigned int llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_puts_count = 0;
  unsigned int llvm_cbe_puts;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  unsigned int llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned long long llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  unsigned long long llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  unsigned long long llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  unsigned long long llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  unsigned long long llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  unsigned long long llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;

  CODE_FOR_MAIN();
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @main\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast [11 x i32]* %%taps to i8*, !dbg !2 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_4_count);
  llvm_cbe_tmp__1 = ( char *)(( char *)(&llvm_cbe_taps));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = call i8* @memcpy(i8* %%1, i8* bitcast ([11 x i32]* @aesl_internal_main.taps to i8*), i64 44 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_5_count);
  ( char *)memcpy(( char *)llvm_cbe_tmp__1, ( char *)(( char *)(&aesl_internal_main_OC_taps)), 44ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__2);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = call %%struct._iobuf* @fopen(i8* getelementptr inbounds ([8 x i8]* @aesl_internal_.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @aesl_internal_.str1, i64 0, i64 0)) nounwind, !dbg !4 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_17_count);
  llvm_cbe_tmp__3 = (l_struct_OC__iobuf *)aesl_fopen(( char *)((&aesl_internal__OC_str[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 8
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 2
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__3);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds [11 x i32]* %%taps, i64 0, i64 0, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_25_count);
  llvm_cbe_tmp__4 = (signed int *)(&llvm_cbe_taps[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 11
#endif
]);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge10__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_storemerge239__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__5__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__32;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__32:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10 = phi i32 [ 0, %%0 ], [ %%19, %%.thread  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge10_count);
  llvm_cbe_storemerge10 = (unsigned int )llvm_cbe_storemerge10__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge10 = 0x%X",llvm_cbe_storemerge10);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__11);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge239 = phi i32 [ 0, %%0 ], [ %%storemerge24, %%.thread  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge239_count);
  llvm_cbe_storemerge239 = (unsigned int )llvm_cbe_storemerge239__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge239 = 0x%X",llvm_cbe_storemerge239);
printf("\n = 0x%X",0u);
printf("\nstoremerge24 = 0x%X",llvm_cbe_storemerge24);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = phi i32 [ 1, %%0 ], [ %%16, %%.thread  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__5 = (unsigned int )llvm_cbe_tmp__5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__5);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",llvm_cbe_tmp__8);
}
  if (((llvm_cbe_tmp__5&4294967295U) == (1u&4294967295U))) {
    goto llvm_cbe_tmp__33;
  } else {
    goto llvm_cbe_tmp__34;
  }

llvm_cbe__2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge24 = phi i32 [ %%12, %%11 ], [ %%9, %%8 ], [ %%12, %%14  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge24_count);
  llvm_cbe_storemerge24 = (unsigned int )llvm_cbe_storemerge24__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge24 = 0x%X",llvm_cbe_storemerge24);
printf("\n = 0x%X",llvm_cbe_tmp__7);
printf("\n = 0x%X",llvm_cbe_tmp__6);
printf("\n = 0x%X",llvm_cbe_tmp__7);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = phi i32 [ %%6, %%11 ], [ %%., %%8 ], [ %%.8, %%14  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__8 = (unsigned int )llvm_cbe_tmp__8__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__8);
printf("\n = 0x%X",llvm_cbe_tmp__5);
printf("\n. = 0x%X",llvm_cbe__2e_);
printf("\n.8 = 0x%X",llvm_cbe__2e_8);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = load i32* %%output, align 4, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_48_count);
  llvm_cbe_tmp__9 = (unsigned int )*(&llvm_cbe_output);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%3, i8* getelementptr inbounds ([10 x i8]* @aesl_internal_.str2, i64 0, i64 0), i32 %%storemerge10, i32 %%storemerge24, i32 %%17) nounwind, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_49_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__3, ( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 10
#endif
])), llvm_cbe_storemerge10, llvm_cbe_storemerge24, llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge10 = 0x%X",llvm_cbe_storemerge10);
printf("\nArgument storemerge24 = 0x%X",llvm_cbe_storemerge24);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__9);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = add nsw i32 %%storemerge10, 1, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_storemerge10&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
  if (((llvm_cbe_tmp__11&4294967295U) == (601u&4294967295U))) {
    goto llvm_cbe_tmp__35;
  } else {
    llvm_cbe_storemerge10__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__11;   /* for PHI node */
    llvm_cbe_storemerge239__PHI_TEMPORARY = (unsigned int )llvm_cbe_storemerge24;   /* for PHI node */
    llvm_cbe_tmp__5__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__8;   /* for PHI node */
    goto llvm_cbe_tmp__32;
  }

llvm_cbe_tmp__33:
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = add nsw i32 %%storemerge239, 1, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__6 = (unsigned int )((unsigned int )(llvm_cbe_storemerge239&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__6&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  call void @fir(i32* %%output, i32* %%4, i32 %%9) nounwind, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_32_count);
  fir((signed int *)(&llvm_cbe_output), (signed int *)llvm_cbe_tmp__4, llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__6);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%. = select i1 %%10, i32 0, i32 1, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe__2e__count);
  llvm_cbe__2e_ = (unsigned int )(((((signed int )llvm_cbe_tmp__6) > ((signed int )74u))) ? ((unsigned int )0u) : ((unsigned int )1u));
if (AESL_DEBUG_TRACE)
printf("\n. = 0x%X\n", llvm_cbe__2e_);
  llvm_cbe_storemerge24__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__6;   /* for PHI node */
  llvm_cbe_tmp__8__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_;   /* for PHI node */
  goto llvm_cbe__2e_thread;

llvm_cbe_tmp__34:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = add nsw i32 %%storemerge239, -1, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__7 = (unsigned int )((unsigned int )(llvm_cbe_storemerge239&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__7&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  call void @fir(i32* %%output, i32* %%4, i32 %%12) nounwind, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_36_count);
  fir((signed int *)(&llvm_cbe_output), (signed int *)llvm_cbe_tmp__4, llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__7);
}
  if (((llvm_cbe_tmp__5&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__36;
  } else {
    llvm_cbe_storemerge24__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__7;   /* for PHI node */
    llvm_cbe_tmp__8__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__5;   /* for PHI node */
    goto llvm_cbe__2e_thread;
  }

llvm_cbe_tmp__36:
if (AESL_DEBUG_TRACE)
printf("\n  %%.8 = zext i1 %%15 to i32, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe__2e_8_count);
  llvm_cbe__2e_8 = (unsigned int )((unsigned int )(bool )(((signed int )llvm_cbe_tmp__7) < ((signed int )4294967222u))&1U);
if (AESL_DEBUG_TRACE)
printf("\n.8 = 0x%X\n", llvm_cbe__2e_8);
  llvm_cbe_storemerge24__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__7;   /* for PHI node */
  llvm_cbe_tmp__8__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_8;   /* for PHI node */
  goto llvm_cbe__2e_thread;

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__35:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = call i32 @fclose(%%struct._iobuf* %%3) nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_56_count);
  fclose((l_struct_OC__iobuf *)llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__12);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%puts = call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @aesl_internal_str, i64 0, i64 0)), !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_puts_count);
  puts(( char *)((&aesl_internal_str[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 31
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts = 0x%X",llvm_cbe_puts);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = call i32 bitcast (i32 (...)* @system to i32 (i8*)*)(i8* getelementptr inbounds ([29 x i8]* @aesl_internal_.str4, i64 0, i64 0)) nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_57_count);
  llvm_cbe_tmp__13 = (unsigned int )system(( char *)((&aesl_internal__OC_str4[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 29
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__13);
}
  if (((llvm_cbe_tmp__13&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__37;
  } else {
    goto llvm_cbe_tmp__38;
  }

llvm_cbe_tmp__38:
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__14 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__14);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds %%struct._iobuf* %%25, i64 1, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__15 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__14[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str5, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* %%26), !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_62_count);
  fwrite(( char *)((&aesl_internal__OC_str5[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__16);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__17 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__17);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds %%struct._iobuf* %%28, i64 1, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__18 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__17[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @aesl_internal_.str6, i64 0, i64 0), i64 46, i64 1, %%struct._iobuf* %%29), !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_65_count);
  fwrite(( char *)((&aesl_internal__OC_str6[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 47
#endif
])), 46ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",46ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__19);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_66_count);
  llvm_cbe_tmp__20 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__20);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds %%struct._iobuf* %%31, i64 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__21 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__20[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str5, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* %%32), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_68_count);
  fwrite(( char *)((&aesl_internal__OC_str5[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__22);
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__39;

llvm_cbe_tmp__37:
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_70_count);
  llvm_cbe_tmp__23 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__23);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = getelementptr inbounds %%struct._iobuf* %%35, i64 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__24 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__23[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str5, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* %%36), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_72_count);
  fwrite(( char *)((&aesl_internal__OC_str5[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__25);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__26 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__26);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = getelementptr inbounds %%struct._iobuf* %%38, i64 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__27 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__26[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str7, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* %%39), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_75_count);
  fwrite(( char *)((&aesl_internal__OC_str7[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__28);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__29 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__29);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = getelementptr inbounds %%struct._iobuf* %%41, i64 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__30 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__29[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str5, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* %%42), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_78_count);
  fwrite(( char *)((&aesl_internal__OC_str5[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__31);
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__39;

llvm_cbe_tmp__39:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 1, %%24 ], [ 0, %%34  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",0u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @main}\n");
  return llvm_cbe_storemerge1;
}

