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
  %p = alloca i32*
  %a = alloca i32
  store i32 1, i32* %a
  %.v1 = load i32, i32* %a
  store i32* %a, i32** %p
  %.v2 = load i32*, i32** %p
  store i32 9, i32* %.v2
  %.v3 = load i32, i32* %a
  call void @putint(i32 %.v3)
  call void @putch(i32 10)
  ret i32 0
}

