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
  %a = alloca i32
  store i32 10, i32* %a
  %.v1 = load i32, i32* %a
  %.v2 = mul i32 %.v1, 2
  %.v3 = add i32 %.v2, 1
  ret i32 %.v3
}

