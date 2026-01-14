@a = constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4]
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = sext i32 4 to i64
  %t1 = getelementptr [5 x i32], [5 x i32]* @a, i64 0, i64 %t0
  %.v1 = load i32, i32* %t1
  ret i32 %.v1
}

