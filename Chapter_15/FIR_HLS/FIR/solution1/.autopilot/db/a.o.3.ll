; ModuleID = 'E:/Basys3/Tcl_Project/FIR_HLS/FIR/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@shift_reg = internal unnamed_addr global [11 x i32] zeroinitializer, align 16 ; [#uses=3 type=[11 x i32]*]
@fir_str = internal unnamed_addr constant [4 x i8] c"fir\00" ; [#uses=1 type=[4 x i8]*]
@p_str = private unnamed_addr constant [17 x i8] c"Shift_Accum_Loop\00", align 1 ; [#uses=1 type=[17 x i8]*]

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fir(i32* %y, [11 x i32]* %c, i32 %x) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %y) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([11 x i32]* %c) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %x) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fir_str) nounwind
  %x_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x) nounwind ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %x_read}, i64 0, metadata !18), !dbg !30 ; [debug line = 51:10] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !31), !dbg !32 ; [debug line = 49:11] [debug variable = y]
  call void @llvm.dbg.value(metadata !{[11 x i32]* %c}, i64 0, metadata !33), !dbg !37 ; [debug line = 50:10] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !18), !dbg !30 ; [debug line = 51:10] [debug variable = x]
  br label %1, !dbg !38                           ; [debug line = 60:26]

; <label>:1                                       ; preds = %5, %0
  %acc = phi i32 [ 0, %0 ], [ %acc_1, %5 ]        ; [#uses=2 type=i32]
  %i = phi i5 [ 10, %0 ], [ %i_1, %5 ]            ; [#uses=5 type=i5]
  %i_cast = sext i5 %i to i32, !dbg !38           ; [#uses=2 type=i32] [debug line = 60:26]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !38 ; [#uses=1 type=i1] [debug line = 60:26]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 11, i64 11, i64 11) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %6, label %2, !dbg !38        ; [debug line = 60:26]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str) nounwind, !dbg !41 ; [debug line = 60:45]
  %tmp_1 = icmp eq i5 %i, 0, !dbg !43             ; [#uses=1 type=i1] [debug line = 61:3]
  br i1 %tmp_1, label %3, label %4, !dbg !43      ; [debug line = 61:3]

; <label>:3                                       ; preds = %2
  store i32 %x_read, i32* getelementptr inbounds ([11 x i32]* @shift_reg, i64 0, i64 0), align 16, !dbg !44 ; [debug line = 62:4]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !46), !dbg !47 ; [debug line = 63:4] [debug variable = data]
  br label %5, !dbg !48                           ; [debug line = 64:5]

; <label>:4                                       ; preds = %2
  %tmp_2 = add i5 %i, -1, !dbg !49                ; [#uses=1 type=i5] [debug line = 65:4]
  %tmp_3 = zext i5 %tmp_2 to i64, !dbg !49        ; [#uses=1 type=i64] [debug line = 65:4]
  %shift_reg_addr = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp_3, !dbg !49 ; [#uses=1 type=i32*] [debug line = 65:4]
  %data = load i32* %shift_reg_addr, align 4, !dbg !49 ; [#uses=2 type=i32] [debug line = 65:4]
  %tmp_4 = zext i32 %i_cast to i64, !dbg !49      ; [#uses=1 type=i64] [debug line = 65:4]
  %shift_reg_addr_1 = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp_4, !dbg !49 ; [#uses=1 type=i32*] [debug line = 65:4]
  store i32 %data, i32* %shift_reg_addr_1, align 4, !dbg !49 ; [debug line = 65:4]
  call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !46), !dbg !51 ; [debug line = 66:4] [debug variable = data]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %data1 = phi i32 [ %x_read, %3 ], [ %data, %4 ] ; [#uses=1 type=i32]
  %tmp_5 = zext i32 %i_cast to i64, !dbg !52      ; [#uses=1 type=i64] [debug line = 68:5]
  %c_addr = getelementptr [11 x i32]* %c, i64 0, i64 %tmp_5, !dbg !52 ; [#uses=1 type=i32*] [debug line = 68:5]
  %c_load = load i32* %c_addr, align 4, !dbg !52  ; [#uses=1 type=i32] [debug line = 68:5]
  %tmp_6 = mul nsw i32 %c_load, %data1, !dbg !52  ; [#uses=1 type=i32] [debug line = 68:5]
  %acc_1 = add nsw i32 %tmp_6, %acc, !dbg !52     ; [#uses=1 type=i32] [debug line = 68:5]
  call void @llvm.dbg.value(metadata !{i32 %acc_1}, i64 0, metadata !53), !dbg !52 ; [debug line = 68:5] [debug variable = acc]
  %i_1 = add i5 %i, -1, !dbg !55                  ; [#uses=1 type=i5] [debug line = 60:39]
  call void @llvm.dbg.value(metadata !{i5 %i_1}, i64 0, metadata !56), !dbg !55 ; [debug line = 60:39] [debug variable = i]
  br label %1, !dbg !55                           ; [debug line = 60:39]

; <label>:6                                       ; preds = %1
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %y, i32 %acc) nounwind, !dbg !57 ; [debug line = 70:3]
  ret void, !dbg !58                              ; [debug line = 71:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5                     ; [#uses=1 type=i5]
  %empty_2 = shl i5 1, %empty                     ; [#uses=1 type=i5]
  %empty_3 = and i5 %0, %empty_2                  ; [#uses=1 type=i5]
  %empty_4 = icmp ne i5 %empty_3, 0               ; [#uses=1 type=i1]
  ret i1 %empty_4
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"y", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"c", metadata !10, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 10, i32 1}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 31, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"x", metadata !16, metadata !"int", i32 0, i32 31}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 0, i32 0}
!18 = metadata !{i32 786689, metadata !19, metadata !"x", metadata !20, i32 50331699, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!19 = metadata !{i32 786478, i32 0, metadata !20, metadata !"fir", metadata !"fir", metadata !"", metadata !20, i32 48, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !28, i32 52} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786473, metadata !"fir.c", metadata !"e:/Basys3/Tcl_Project/FIR_HLS", null} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{null, metadata !23, metadata !26, metadata !24}
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!24 = metadata !{i32 786454, null, metadata !"data_t", metadata !20, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 786454, null, metadata !"coef_t", metadata !20, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!30 = metadata !{i32 51, i32 10, metadata !19, null}
!31 = metadata !{i32 786689, metadata !19, metadata !"y", metadata !20, i32 16777265, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 49, i32 11, metadata !19, null}
!33 = metadata !{i32 786689, metadata !19, metadata !"c", null, i32 50, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !27, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 50, i32 10, metadata !19, null}
!38 = metadata !{i32 60, i32 26, metadata !39, null}
!39 = metadata !{i32 786443, metadata !40, i32 60, i32 21, metadata !20, i32 1} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 786443, metadata !19, i32 52, i32 5, metadata !20, i32 0} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 60, i32 45, metadata !42, null}
!42 = metadata !{i32 786443, metadata !39, i32 60, i32 44, metadata !20, i32 2} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 61, i32 3, metadata !42, null}
!44 = metadata !{i32 62, i32 4, metadata !45, null}
!45 = metadata !{i32 786443, metadata !42, i32 61, i32 13, metadata !20, i32 3} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786688, metadata !40, metadata !"data", metadata !20, i32 56, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 63, i32 4, metadata !45, null}
!48 = metadata !{i32 64, i32 5, metadata !45, null}
!49 = metadata !{i32 65, i32 4, metadata !50, null}
!50 = metadata !{i32 786443, metadata !42, i32 64, i32 12, metadata !20, i32 4} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 66, i32 4, metadata !50, null}
!52 = metadata !{i32 68, i32 5, metadata !42, null}
!53 = metadata !{i32 786688, metadata !40, metadata !"acc", metadata !20, i32 55, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786454, null, metadata !"acc_t", metadata !20, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!55 = metadata !{i32 60, i32 39, metadata !39, null}
!56 = metadata !{i32 786688, metadata !40, metadata !"i", metadata !20, i32 57, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 70, i32 3, metadata !40, null}
!58 = metadata !{i32 71, i32 1, metadata !40, null}
