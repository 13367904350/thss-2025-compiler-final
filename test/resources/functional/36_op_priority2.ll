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
  %v3 = add i32 %v1, %v2
  %v4 = load i32, i32* %t1
  %v5 = load i32, i32* %t3
  %v6 = sub i32 %v4, %v5
  %v7 = mul i32 %v3, %v6
  ret i32 %v7
}

