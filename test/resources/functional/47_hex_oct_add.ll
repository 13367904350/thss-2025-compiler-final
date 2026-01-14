declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %b = alloca i32
  %a = alloca i32
  store i32 15, i32* %a
  store i32 12, i32* %b
  %.v1 = load i32, i32* %a
  %.v2 = load i32, i32* %b
  %.v3 = add i32 %.v1, %.v2
  %.v4 = add i32 %.v3, 61
  ret i32 %.v4
}

