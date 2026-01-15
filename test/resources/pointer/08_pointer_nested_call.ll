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

define i32 @inc(i32* %a) {
entry:
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  %.v1 = load i32*, i32** %a.addr
  %.v2 = getelementptr i32, i32* %.v1, i32 0
  %.v3 = load i32, i32* %.v2
  %.v4 = add i32 %.v3, 1
  %.v5 = load i32*, i32** %a.addr
  %.v6 = getelementptr i32, i32* %.v5, i32 0
  store i32 %.v4, i32* %.v6
  %.v7 = load i32*, i32** %a.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 0
  %.v9 = load i32, i32* %.v8
  ret i32 %.v9
}

define i32 @main() {
entry:
  %a = alloca [2 x i32]
  %t9 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 0
  store i32 10, i32* %t9
  %t10 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 1
  store i32 20, i32* %t10
  %.v1 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i64 0
  %.v2 = call i32 @inc(i32* %.v1)
  call void @putint(i32 %.v2)
  call void @putch(i32 10)
  %.v3 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i64 0
  call void @putarray(i32 2, i32* %.v3)
  ret i32 0
}

