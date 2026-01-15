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
  %pp = alloca i32**
  %p = alloca i32*
  %a = alloca i32
  store i32 5, i32* %a
  %.v1 = load i32, i32* %a
  store i32* %a, i32** %p
  %.v2 = load i32*, i32** %p
  store i32** %p, i32*** %pp
  %.v3 = load i32**, i32*** %pp
  %.v4 = load i32*, i32** %.v3
  store i32 12, i32* %.v4
  %.v5 = load i32, i32* %a
  call void @putint(i32 %.v5)
  call void @putch(i32 10)
  ret i32 0
}

