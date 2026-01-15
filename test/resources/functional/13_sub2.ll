@a = constant i32 10
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
  %b = alloca i32
  store i32 2, i32* %b
  %.v1 = load i32, i32* %b
  %.v2 = load i32, i32* @a
  %.v3 = sub i32 %.v1, %.v2
  ret i32 %.v3
}

