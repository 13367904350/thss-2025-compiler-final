@a = constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4]
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

declare float @getfloat()

declare void @putfloat(float)

declare i32 @getfarray(float*)

declare void @putfarray(i32, float*)

define i32 @main() {
entry:
  %t0 = getelementptr [5 x i32], [5 x i32]* @a, i64 0, i32 4
  %.v1 = load i32, i32* %t0
  ret i32 %.v1
}

