@a = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @func(i32 %p) {
entry:
  %t0 = alloca i32
  store i32 %p, i32* %t0
  %v1 = load i32, i32* %t0
  %v2 = sub i32 %v1, 1
  store i32 %v2, i32* %t0
  %v3 = load i32, i32* %t0
  ret i32 %v3
}

define i32 @main() {
entry:
  %t4 = alloca i32
  store i32 10, i32* @a
  %v1 = load i32, i32* @a
  %v2 = call i32 @func(i32 %v1)
  store i32 %v2, i32* %t4
  %v3 = load i32, i32* %t4
  ret i32 %v3
}

