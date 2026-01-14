declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %.v1 = mul i32 9, 3
  %.v2 = add i32 4, %.v1
  ret i32 %.v2
}

