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
  store i32 10, i32* %a
  store i32 30, i32* %b
  %.v1 = load i32, i32* %a
  %.v2 = sub i32 0, 5
  %.v3 = sub i32 %.v1, %.v2
  %.v4 = load i32, i32* %b
  %.v5 = add i32 %.v3, %.v4
  %.v6 = sub i32 0, 5
  %.v7 = add i32 %.v5, %.v6
  ret i32 %.v7
}

