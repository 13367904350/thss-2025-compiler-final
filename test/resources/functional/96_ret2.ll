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
  %.v1 = add i32 3, 5
  %.v2 = mul i32 %.v1, 7
  %.v3 = srem i32 5, 3
  %.v4 = mul i32 %.v3, 7
  %.v5 = sdiv i32 %.v4, 2
  %.v6 = add i32 %.v2, %.v5
  ret i32 %.v6
}

