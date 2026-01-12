declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca i32
  %t1 = alloca i32
  %t2 = alloca i32
  store i32 1, i32* %t0
  store i32 2, i32* %t1
  store i32 3, i32* %t2
  %v1 = load i32, i32* %t1
  %v2 = load i32, i32* %t2
  %v3 = add i32 %v1, %v2
  ret i32 %v3
}

