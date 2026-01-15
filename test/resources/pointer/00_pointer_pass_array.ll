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

define void @swap(i32* %a, i32* %b) {
entry:
  %t = alloca i32
  %b.addr = alloca i32*
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  store i32* %b, i32** %b.addr
  %.v1 = load i32*, i32** %a.addr
  %.v2 = load i32, i32* %.v1
  store i32 %.v2, i32* %t
  %.v3 = load i32*, i32** %b.addr
  %.v4 = load i32, i32* %.v3
  %.v5 = load i32*, i32** %a.addr
  store i32 %.v4, i32* %.v5
  %.v6 = load i32, i32* %t
  %.v7 = load i32*, i32** %b.addr
  store i32 %.v6, i32* %.v7
  ret void
}

define i32 @main() {
entry:
  %y = alloca i32
  %x = alloca i32
  store i32 3, i32* %x
  store i32 7, i32* %y
  %.v1 = load i32, i32* %x
  %.v2 = load i32, i32* %y
  call void @swap(i32* %x, i32* %y)
  %.v3 = load i32, i32* %x
  call void @putint(i32 %.v3)
  call void @putch(i32 10)
  %.v4 = load i32, i32* %y
  call void @putint(i32 %.v4)
  call void @putch(i32 10)
  ret i32 0
}

