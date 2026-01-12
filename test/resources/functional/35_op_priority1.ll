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
  %t3 = alloca i32
  store i32 10, i32* %t0
  store i32 4, i32* %t1
  store i32 2, i32* %t2
  store i32 2, i32* %t3
  %v1 = load i32, i32* %t2
  %v2 = load i32, i32* %t0
  %v3 = load i32, i32* %t1
  %v4 = mul i32 %v2, %v3
  %v5 = add i32 %v1, %v4
  %v6 = load i32, i32* %t3
  %v7 = sub i32 %v5, %v6
  ret i32 %v7
}

