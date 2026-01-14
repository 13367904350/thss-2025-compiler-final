declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %d = alloca i32
  %c = alloca i32
  %b = alloca i32
  %a = alloca i32
  store i32 10, i32* %a
  store i32 4, i32* %b
  store i32 2, i32* %c
  store i32 2, i32* %d
  %.v1 = load i32, i32* %c
  %.v2 = load i32, i32* %a
  %.v3 = load i32, i32* %b
  %.v4 = mul i32 %.v2, %.v3
  %.v5 = add i32 %.v1, %.v4
  %.v6 = load i32, i32* %d
  %.v7 = sub i32 %.v5, %.v6
  ret i32 %.v7
}

