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

define void @scale(i32* %p, i32 %n, i32 %k) {
entry:
  %i = alloca i32
  %k.addr = alloca i32
  %n.addr = alloca i32
  %p.addr = alloca i32*
  store i32* %p, i32** %p.addr
  store i32 %n, i32* %n.addr
  store i32 %k, i32* %k.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %n.addr
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32*, i32** %p.addr
  %.v7 = load i32, i32* %i
  %t7 = sext i32 %.v7 to i64
  %.v9 = getelementptr i32, i32* %.v6, i64 %t7
  %.v10 = load i32, i32* %.v9
  %.v11 = load i32, i32* %k.addr
  %.v12 = mul i32 %.v10, %.v11
  %.v13 = load i32*, i32** %p.addr
  %.v14 = load i32, i32* %i
  %t14 = sext i32 %.v14 to i64
  %.v16 = getelementptr i32, i32* %.v13, i64 %t14
  store i32 %.v12, i32* %.v16
  %.v17 = load i32, i32* %i
  %.v18 = add i32 %.v17, 1
  store i32 %.v18, i32* %i
  br label %while.cond1
while.end3:
  ret void
}

define i32 @main() {
entry:
  %k = alloca i32
  %n = alloca i32
  %a = alloca [10 x i32]
  %.v1 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v2 = call i32 @getarray(i32* %.v1)
  store i32 %.v2, i32* %n
  %.v3 = call i32 @getint()
  store i32 %.v3, i32* %k
  %.v4 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v5 = load i32, i32* %n
  %.v6 = load i32, i32* %k
  call void @scale(i32* %.v4, i32 %.v5, i32 %.v6)
  %.v7 = load i32, i32* %n
  %.v8 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  call void @putarray(i32 %.v7, i32* %.v8)
  ret i32 0
}

