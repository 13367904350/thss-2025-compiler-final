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
  %_c = alloca i32
  %b0 = alloca i32
  %a = alloca i32
  store i32 1, i32* %a
  store i32 2, i32* %b0
  store i32 3, i32* %_c
  %.v1 = load i32, i32* %b0
  %.v2 = load i32, i32* %_c
  %.v3 = add i32 %.v1, %.v2
  ret i32 %.v3
}

