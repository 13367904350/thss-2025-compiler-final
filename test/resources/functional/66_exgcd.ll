declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @exgcd(i32 %a, i32 %b, i32* %x, i32* %y) {
entry:
  %t = alloca i32
  %r = alloca i32
  %b.addr = alloca i32
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  store i32 %b, i32* %b.addr
  %.v1 = load i32, i32* %b.addr
  %.v2 = icmp eq i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.else2
if.then1:
  %t4 = sext i32 0 to i64
  %t5 = getelementptr i32, i32* %x, i64 %t4
  store i32 1, i32* %t5
  %t6 = sext i32 0 to i64
  %t7 = getelementptr i32, i32* %y, i64 %t6
  store i32 0, i32* %t7
  %.v5 = load i32, i32* %a.addr
  ret i32 %.v5
if.else2:
  %.v6 = load i32, i32* %b.addr
  %.v7 = load i32, i32* %a.addr
  %.v8 = load i32, i32* %b.addr
  %.v9 = srem i32 %.v7, %.v8
  %.v10 = call i32 @exgcd(i32 %.v6, i32 %.v9, i32* %x, i32* %y)
  store i32 %.v10, i32* %r
  %t14 = sext i32 0 to i64
  %t15 = getelementptr i32, i32* %x, i64 %t14
  %.v11 = load i32, i32* %t15
  store i32 %.v11, i32* %t
  %t17 = sext i32 0 to i64
  %t18 = getelementptr i32, i32* %y, i64 %t17
  %.v12 = load i32, i32* %t18
  %t20 = sext i32 0 to i64
  %t21 = getelementptr i32, i32* %x, i64 %t20
  store i32 %.v12, i32* %t21
  %.v13 = load i32, i32* %t
  %.v14 = load i32, i32* %a.addr
  %.v15 = load i32, i32* %b.addr
  %.v16 = sdiv i32 %.v14, %.v15
  %t26 = sext i32 0 to i64
  %t27 = getelementptr i32, i32* %y, i64 %t26
  %.v17 = load i32, i32* %t27
  %.v18 = mul i32 %.v16, %.v17
  %.v19 = sub i32 %.v13, %.v18
  %t31 = sext i32 0 to i64
  %t32 = getelementptr i32, i32* %y, i64 %t31
  store i32 %.v19, i32* %t32
  %.v20 = load i32, i32* %r
  ret i32 %.v20
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
  %t34 = getelementptr [1 x i32], [1 x i32]* %x, i64 0, i64 0
  store i32 1, i32* %t34
  %t35 = getelementptr [1 x i32], [1 x i32]* %y, i64 0, i64 0
  store i32 1, i32* %t35
  %.v1 = load i32, i32* %a
  %.v2 = load i32, i32* %b
  %.v3 = getelementptr [1 x i32], [1 x i32]* %x, i64 0, i64 0
  %.v4 = getelementptr [1 x i32], [1 x i32]* %y, i64 0, i64 0
  %.v5 = call i32 @exgcd(i32 %.v1, i32 %.v2, i32* %.v3, i32* %.v4)
  %t41 = sext i32 0 to i64
  %t42 = getelementptr [1 x i32], [1 x i32]* %x, i64 0, i64 %t41
  %.v6 = load i32, i32* %t42
  %.v7 = load i32, i32* %b
  %.v8 = srem i32 %.v6, %.v7
  %.v9 = load i32, i32* %b
  %.v10 = add i32 %.v8, %.v9
  %.v11 = load i32, i32* %b
  %.v12 = srem i32 %.v10, %.v11
  %t50 = sext i32 0 to i64
  %t51 = getelementptr [1 x i32], [1 x i32]* %x, i64 0, i64 %t50
  store i32 %.v12, i32* %t51
  %t52 = sext i32 0 to i64
  %t53 = getelementptr [1 x i32], [1 x i32]* %x, i64 0, i64 %t52
  %.v13 = load i32, i32* %t53
  call void @putint(i32 %.v13)
  ret i32 0
}

