@a = global i32 zeroinitializer
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

define i32 @func(i32 %p) {
entry:
  %p.addr = alloca i32
  store i32 %p, i32* %p.addr
  %.v1 = load i32, i32* %p.addr
  %.v2 = sub i32 %.v1, 1
  store i32 %.v2, i32* %p.addr
  %.v3 = load i32, i32* %p.addr
  ret i32 %.v3
}

define i32 @main() {
entry:
  %b = alloca i32
  store i32 10, i32* @a
  %.v1 = load i32, i32* @a
  %.v2 = call i32 @func(i32 %.v1)
  store i32 %.v2, i32* %b
  %.v3 = load i32, i32* %b
  ret i32 %.v3
}

