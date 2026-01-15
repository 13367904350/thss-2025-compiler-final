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

define i32 @defn() {
entry:
  ret i32 4
}

define i32 @main() {
entry:
  %a = alloca i32
  %.v1 = call i32 @defn()
  store i32 %.v1, i32* %a
  %.v2 = load i32, i32* %a
  ret i32 %.v2
}

