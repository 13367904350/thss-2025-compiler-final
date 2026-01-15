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

define i32 @get_elem(i32* %a, i32 %i) {
entry:
  %i.addr = alloca i32
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  store i32 %i, i32* %i.addr
  %.v1 = load i32, i32* %i.addr
  %.v2 = load i32*, i32** %a.addr
  %.v3 = getelementptr i32, i32* %.v2, i32 %.v1
  %.v4 = load i32, i32* %.v3
  ret i32 %.v4
}

define i32 @main() {
entry:
  %a = alloca [5 x i32]
  %t4 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i32 0
  store i32 9, i32* %t4
  %t5 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i32 1
  store i32 8, i32* %t5
  %t6 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i32 2
  store i32 7, i32* %t6
  %t7 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i32 3
  store i32 6, i32* %t7
  %t8 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i32 4
  store i32 5, i32* %t8
  %.v1 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i64 0
  %.v2 = call i32 @get_elem(i32* %.v1, i32 2)
  call void @putint(i32 %.v2)
  call void @putch(i32 10)
  ret i32 0
}

