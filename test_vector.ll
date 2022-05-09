; ModuleID = 'test_vector.c'
source_filename = "test_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind readnone uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca [10000 x i32], align 16
  %4 = bitcast [10000 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* nonnull %4) #2
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %24, %5 ]
  %7 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %2 ], [ %25, %5 ]
  %8 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %6
  %9 = shl <4 x i32> %7, <i32 1, i32 1, i32 1, i32 1>
  %10 = shl <4 x i32> %7, <i32 1, i32 1, i32 1, i32 1>
  %11 = add <4 x i32> %10, <i32 8, i32 8, i32 8, i32 8>
  %12 = bitcast i32* %8 to <4 x i32>*
  store <4 x i32> %9, <4 x i32>* %12, align 16, !tbaa !2
  %13 = getelementptr inbounds i32, i32* %8, i64 4
  %14 = bitcast i32* %13 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %14, align 16, !tbaa !2
  %15 = or i64 %6, 8
  %16 = add <4 x i32> %7, <i32 8, i32 8, i32 8, i32 8>
  %17 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %15
  %18 = shl <4 x i32> %16, <i32 1, i32 1, i32 1, i32 1>
  %19 = shl <4 x i32> %16, <i32 1, i32 1, i32 1, i32 1>
  %20 = add <4 x i32> %19, <i32 8, i32 8, i32 8, i32 8>
  %21 = bitcast i32* %17 to <4 x i32>*
  store <4 x i32> %18, <4 x i32>* %21, align 16, !tbaa !2
  %22 = getelementptr inbounds i32, i32* %17, i64 4
  %23 = bitcast i32* %22 to <4 x i32>*
  store <4 x i32> %20, <4 x i32>* %23, align 16, !tbaa !2
  %24 = add nuw nsw i64 %6, 16
  %25 = add <4 x i32> %7, <i32 16, i32 16, i32 16, i32 16>
  %26 = icmp eq i64 %24, 10000
  br i1 %26, label %27, label %5, !llvm.loop !6

27:                                               ; preds = %5, %27
  %28 = phi i64 [ %60, %27 ], [ 0, %5 ]
  %29 = phi <4 x i32> [ %58, %27 ], [ zeroinitializer, %5 ]
  %30 = phi <4 x i32> [ %59, %27 ], [ zeroinitializer, %5 ]
  %31 = phi <4 x i32> [ %61, %27 ], [ <i32 0, i32 1, i32 2, i32 3>, %5 ]
  %32 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %28
  %33 = bitcast i32* %32 to <4 x i32>*
  %34 = load <4 x i32>, <4 x i32>* %33, align 16, !tbaa !2
  %35 = getelementptr inbounds i32, i32* %32, i64 4
  %36 = bitcast i32* %35 to <4 x i32>*
  %37 = load <4 x i32>, <4 x i32>* %36, align 16, !tbaa !2
  %38 = add <4 x i32> %31, <i32 4, i32 4, i32 4, i32 4>
  %39 = mul nsw <4 x i32> %34, %31
  %40 = mul nsw <4 x i32> %37, %38
  %41 = add <4 x i32> %29, <i32 5, i32 5, i32 5, i32 5>
  %42 = add <4 x i32> %30, <i32 5, i32 5, i32 5, i32 5>
  %43 = add <4 x i32> %41, %39
  %44 = add <4 x i32> %42, %40
  %45 = or i64 %28, 8
  %46 = add <4 x i32> %31, <i32 8, i32 8, i32 8, i32 8>
  %47 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %45
  %48 = bitcast i32* %47 to <4 x i32>*
  %49 = load <4 x i32>, <4 x i32>* %48, align 16, !tbaa !2
  %50 = getelementptr inbounds i32, i32* %47, i64 4
  %51 = bitcast i32* %50 to <4 x i32>*
  %52 = load <4 x i32>, <4 x i32>* %51, align 16, !tbaa !2
  %53 = add <4 x i32> %31, <i32 12, i32 12, i32 12, i32 12>
  %54 = mul nsw <4 x i32> %49, %46
  %55 = mul nsw <4 x i32> %52, %53
  %56 = add <4 x i32> %43, <i32 5, i32 5, i32 5, i32 5>
  %57 = add <4 x i32> %44, <i32 5, i32 5, i32 5, i32 5>
  %58 = add <4 x i32> %56, %54
  %59 = add <4 x i32> %57, %55
  %60 = add nuw nsw i64 %28, 16
  %61 = add <4 x i32> %31, <i32 16, i32 16, i32 16, i32 16>
  %62 = icmp eq i64 %60, 10000
  br i1 %62, label %63, label %27, !llvm.loop !8

63:                                               ; preds = %27
  %64 = add <4 x i32> %59, %58
  %65 = shufflevector <4 x i32> %64, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %66 = add <4 x i32> %64, %65
  %67 = shufflevector <4 x i32> %66, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %68 = add <4 x i32> %66, %67
  %69 = extractelement <4 x i32> %68, i32 0
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* nonnull %4) #2
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = distinct !{!8, !7}
