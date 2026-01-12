@a = constant i32 10
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %v1 = load i32, i32* @a
  %v2 = sdiv i32 %v1, 5
  ret i32 %v2
}

