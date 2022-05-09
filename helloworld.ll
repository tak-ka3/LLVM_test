; ModuleID = 'helloworld.c'
source_filename = "helloworld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; 3. 文字列定義
; サイズ13のi8の配列
@str = private unnamed_addr constant [13 x i8] c"Hello, world\00", align 1

; Function Attrs: nofree nounwind uwtable
; 1. 関数定義
; LLVMIRでは真偽値や文字は整数型を使って表現する
; @, %はそれぞれグローバル、ローカルというのを意味する
; getelementptrは配列や構造体などのsubelementのアドレスを計算する
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  ; 3. 関数呼び出し
  %3 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str, i64 0, i64 0))
  ; 3. 関数から値を返す
  ret i32 0
}

; Function Attrs: nofree nounwind
; 外部関数の宣言
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
