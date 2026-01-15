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

define i32 @exgcd(i32 %a, i32 %b, i32* %x, i32* %y) {
entry:
  %t = alloca i32
  %r = alloca i32
  %y.addr = alloca i32*
  %x.addr = alloca i32*
  %b.addr = alloca i32
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  store i32 %b, i32* %b.addr
  store i32* %x, i32** %x.addr
  store i32* %y, i32** %y.addr
  %.v1 = load i32, i32* %b.addr
  %.v2 = icmp eq i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.else2
if.then1:
  %.v5 = load i32*, i32** %x.addr
  %.v6 = getelementptr i32, i32* %.v5, i32 0
  store i32 1, i32* %.v6
  %.v7 = load i32*, i32** %y.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 0
  store i32 0, i32* %.v8
  %.v9 = load i32, i32* %a.addr
  ret i32 %.v9
if.else2:
  %.v10 = load i32, i32* %b.addr
  %.v11 = load i32, i32* %a.addr
  %.v12 = load i32, i32* %b.addr
  %.v13 = srem i32 %.v11, %.v12
  %.v14 = load i32*, i32** %x.addr
  %.v15 = load i32*, i32** %y.addr
  %.v16 = call i32 @exgcd(i32 %.v10, i32 %.v13, i32* %.v14, i32* %.v15)
  store i32 %.v16, i32* %r
  %.v17 = load i32*, i32** %x.addr
  %.v18 = getelementptr i32, i32* %.v17, i32 0
  %.v19 = load i32, i32* %.v18
  store i32 %.v19, i32* %t
  %.v20 = load i32*, i32** %y.addr
  %.v21 = getelementptr i32, i32* %.v20, i32 0
  %.v22 = load i32, i32* %.v21
  %.v23 = load i32*, i32** %x.addr
  %.v24 = getelementptr i32, i32* %.v23, i32 0
  store i32 %.v22, i32* %.v24
  %.v25 = load i32, i32* %t
  %.v26 = load i32, i32* %a.addr
  %.v27 = load i32, i32* %b.addr
  %.v28 = sdiv i32 %.v26, %.v27
  %.v29 = load i32*, i32** %y.addr
  %.v30 = getelementptr i32, i32* %.v29, i32 0
  %.v31 = load i32, i32* %.v30
  %.v32 = mul i32 %.v28, %.v31
  %.v33 = sub i32 %.v25, %.v32
  %.v34 = load i32*, i32** %y.addr
  %.v35 = getelementptr i32, i32* %.v34, i32 0
  store i32 %.v33, i32* %.v35
  %.v36 = load i32, i32* %r
  ret i32 %.v36
if.end3:
  ret i32 0
}

define i32 @main() {
entry:
  %y = alloca [1 x i32]
  %x = alloca [1 x i32]
  %b = alloca i32
  %a = alloca i32
  store i32 7, i32* %a
  store i32 15, i32* %b
  %t36 = getelementptr [1 x i32], [1 x i32]* %x, i64 0, i64 0
  store i32 1, i32* %t36
  %t37 = getelementptr [1 x i32], [1 x i32]* %y, i64 0, i64 0
  store i32 1, i32* %t37
  %.v1 = load i32, i32* %a
  %.v2 = load i32, i32* %b
  %.v3 = getelementptr [1 x i32], [1 x i32]* %x, i64 0, i64 0
  %.v4 = getelementptr [1 x i32], [1 x i32]* %y, i64 0, i64 0
  %.v5 = call i32 @exgcd(i32 %.v1, i32 %.v2, i32* %.v3, i32* %.v4)
  %t43 = getelementptr [1 x i32], [1 x i32]* %x, i64 0, i32 0
  %.v6 = load i32, i32* %t43
  %.v7 = load i32, i32* %b
  %.v8 = srem i32 %.v6, %.v7
  %.v9 = load i32, i32* %b
  %.v10 = add i32 %.v8, %.v9
  %.v11 = load i32, i32* %b
  %.v12 = srem i32 %.v10, %.v11
  %t51 = getelementptr [1 x i32], [1 x i32]* %x, i64 0, i32 0
  store i32 %.v12, i32* %t51
  %t52 = getelementptr [1 x i32], [1 x i32]* %x, i64 0, i32 0
  %.v13 = load i32, i32* %t52
  call void @putint(i32 %.v13)
  ret i32 0
}

