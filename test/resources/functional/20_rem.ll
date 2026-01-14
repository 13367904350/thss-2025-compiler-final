declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %a = alloca i32
  store i32 10, i32* %a
  %.v1 = load i32, i32* %a
  %.v2 = srem i32 %.v1, 3
  ret i32 %.v2
}

