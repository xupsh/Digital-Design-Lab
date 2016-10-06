; ModuleID = 'E:/Basys3/Tcl_Project/FIR_HLS/FIR/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@shift_reg = internal unnamed_addr global [11 x i32] zeroinitializer, align 16 ; [#uses=3 type=[11 x i32]*]
@fir.str = internal unnamed_addr constant [4 x i8] c"fir\00" ; [#uses=1 type=[4 x i8]*]
@.str = private unnamed_addr constant [17 x i8] c"Shift_Accum_Loop\00", align 1 ; [#uses=1 type=[17 x i8]*]

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fir(i32* %y, i32* %c, i32 %x) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fir.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !22), !dbg !23 ; [debug line = 49:11] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32* %c}, i64 0, metadata !24), !dbg !25 ; [debug line = 50:10] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !26), !dbg !27 ; [debug line = 51:10] [debug variable = x]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %c, i32 11), !dbg !28 ; [debug line = 52:6]
  br label %1, !dbg !30                           ; [debug line = 60:26]

; <label>:1                                       ; preds = %5, %0
  %acc = phi i32 [ 0, %0 ], [ %acc.1, %5 ]        ; [#uses=2 type=i32]
  %i = phi i32 [ 10, %0 ], [ %i.1, %5 ]           ; [#uses=6 type=i32]
  %tmp = icmp sgt i32 %i, -1, !dbg !30            ; [#uses=1 type=i1] [debug line = 60:26]
  br i1 %tmp, label %2, label %6, !dbg !30        ; [debug line = 60:26]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)), !dbg !32 ; [debug line = 60:45]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !32 ; [#uses=1 type=i32] [debug line = 60:45]
  %tmp.1 = icmp eq i32 %i, 0, !dbg !34            ; [#uses=1 type=i1] [debug line = 61:3]
  br i1 %tmp.1, label %3, label %4, !dbg !34      ; [debug line = 61:3]

; <label>:3                                       ; preds = %2
  store i32 %x, i32* getelementptr inbounds ([11 x i32]* @shift_reg, i64 0, i64 0), align 16, !dbg !35 ; [debug line = 62:4]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !37), !dbg !38 ; [debug line = 63:4] [debug variable = data]
  br label %5, !dbg !39                           ; [debug line = 64:5]

; <label>:4                                       ; preds = %2
  %tmp.2 = add nsw i32 %i, -1, !dbg !40           ; [#uses=1 type=i32] [debug line = 65:4]
  %tmp.3 = sext i32 %tmp.2 to i64, !dbg !40       ; [#uses=1 type=i64] [debug line = 65:4]
  %shift_reg.addr = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp.3, !dbg !40 ; [#uses=1 type=i32*] [debug line = 65:4]
  %data = load i32* %shift_reg.addr, align 4, !dbg !40 ; [#uses=4 type=i32] [debug line = 65:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %data) nounwind
  %tmp.4 = sext i32 %i to i64, !dbg !40           ; [#uses=1 type=i64] [debug line = 65:4]
  %shift_reg.addr.1 = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp.4, !dbg !40 ; [#uses=1 type=i32*] [debug line = 65:4]
  store i32 %data, i32* %shift_reg.addr.1, align 4, !dbg !40 ; [debug line = 65:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %data) nounwind
  call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !37), !dbg !42 ; [debug line = 66:4] [debug variable = data]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %data1 = phi i32 [ %x, %3 ], [ %data, %4 ]      ; [#uses=1 type=i32]
  %tmp.5 = sext i32 %i to i64, !dbg !43           ; [#uses=1 type=i64] [debug line = 68:5]
  %c.addr = getelementptr inbounds i32* %c, i64 %tmp.5, !dbg !43 ; [#uses=1 type=i32*] [debug line = 68:5]
  %c.load = load i32* %c.addr, align 4, !dbg !43  ; [#uses=2 type=i32] [debug line = 68:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %c.load) nounwind
  %tmp.6 = mul nsw i32 %c.load, %data1, !dbg !43  ; [#uses=1 type=i32] [debug line = 68:5]
  %acc.1 = add nsw i32 %tmp.6, %acc, !dbg !43     ; [#uses=1 type=i32] [debug line = 68:5]
  call void @llvm.dbg.value(metadata !{i32 %acc.1}, i64 0, metadata !44), !dbg !43 ; [debug line = 68:5] [debug variable = acc]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !46 ; [#uses=0 type=i32] [debug line = 69:3]
  %i.1 = add nsw i32 %i, -1, !dbg !47             ; [#uses=1 type=i32] [debug line = 60:39]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !48), !dbg !47 ; [debug line = 60:39] [debug variable = i]
  br label %1, !dbg !47                           ; [debug line = 60:39]

; <label>:6                                       ; preds = %1
  %acc.0.lcssa = phi i32 [ %acc, %1 ]             ; [#uses=1 type=i32]
  store i32 %acc.0.lcssa, i32* %y, align 4, !dbg !49 ; [debug line = 70:3]
  ret void, !dbg !50                              ; [debug line = 71:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"E:/Basys3/Tcl_Project/FIR_HLS/FIR/solution1/.autopilot/db/fir.pragma.2.c", metadata !"e:/Basys3/Tcl_Project/FIR_HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !16} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fir", metadata !"fir", metadata !"", metadata !6, i32 48, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32)* @fir, null, null, metadata !14, i32 52} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"fir.c", metadata !"e:/Basys3/Tcl_Project/FIR_HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !12, metadata !10}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"data_t", metadata !6, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786454, null, metadata !"coef_t", metadata !6, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786484, i32 0, metadata !5, metadata !"shift_reg", metadata !"shift_reg", metadata !"", metadata !6, i32 54, metadata !19, i32 1, i32 1, [11 x i32]* @shift_reg} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !10, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 16777265, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 49, i32 11, metadata !5, null}
!24 = metadata !{i32 786689, metadata !5, metadata !"c", metadata !6, i32 33554482, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 50, i32 10, metadata !5, null}
!26 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 50331699, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 51, i32 10, metadata !5, null}
!28 = metadata !{i32 52, i32 6, metadata !29, null}
!29 = metadata !{i32 786443, metadata !5, i32 52, i32 5, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 60, i32 26, metadata !31, null}
!31 = metadata !{i32 786443, metadata !29, i32 60, i32 21, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 60, i32 45, metadata !33, null}
!33 = metadata !{i32 786443, metadata !31, i32 60, i32 44, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 61, i32 3, metadata !33, null}
!35 = metadata !{i32 62, i32 4, metadata !36, null}
!36 = metadata !{i32 786443, metadata !33, i32 61, i32 13, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786688, metadata !29, metadata !"data", metadata !6, i32 56, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 63, i32 4, metadata !36, null}
!39 = metadata !{i32 64, i32 5, metadata !36, null}
!40 = metadata !{i32 65, i32 4, metadata !41, null}
!41 = metadata !{i32 786443, metadata !33, i32 64, i32 12, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 66, i32 4, metadata !41, null}
!43 = metadata !{i32 68, i32 5, metadata !33, null}
!44 = metadata !{i32 786688, metadata !29, metadata !"acc", metadata !6, i32 55, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 786454, null, metadata !"acc_t", metadata !6, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!46 = metadata !{i32 69, i32 3, metadata !33, null}
!47 = metadata !{i32 60, i32 39, metadata !31, null}
!48 = metadata !{i32 786688, metadata !29, metadata !"i", metadata !6, i32 57, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 70, i32 3, metadata !29, null}
!50 = metadata !{i32 71, i32 1, metadata !29, null}
