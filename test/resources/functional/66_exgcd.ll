declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @exgcd(i32 %a, i32 %b, i32* %x, i32* %y) {
entry:
  %t0 = alloca i32
  store i32 %a, i32* %t0
  %t1 = alloca i32
  store i32 %b, i32* %t1
  %v1 = load i32, i32* %t1
  %v2 = icmp eq i32 %v1, 0
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %if.then1, label %if.else2
if.then1:
  %t6 = getelementptr i32, i32* %x, i32 0
  store i32 1, i32* %t6
  %t7 = getelementptr i32, i32* %y, i32 0
  store i32 0, i32* %t7
  %v5 = load i32, i32* %t0
  ret i32 %v5
if.else2:
  %t9 = alloca i32
  %v6 = load i32, i32* %t1
  %v7 = load i32, i32* %t0
  %v8 = load i32, i32* %t1
  %v9 = srem i32 %v7, %v8
  %v10 = call i32 @exgcd(i32 %v6, i32 %v9, i32* %x, i32* %y)
  store i32 %v10, i32* %t9
  %t15 = alloca i32
  %t16 = getelementptr i32, i32* %x, i32 0
  %v11 = load i32, i32* %t16
  store i32 %v11, i32* %t15
  %t18 = getelementptr i32, i32* %y, i32 0
  %v12 = load i32, i32* %t18
  %t20 = getelementptr i32, i32* %x, i32 0
  store i32 %v12, i32* %t20
  %v13 = load i32, i32* %t15
  %v14 = load i32, i32* %t0
  %v15 = load i32, i32* %t1
  %v16 = sdiv i32 %v14, %v15
  %t25 = getelementptr i32, i32* %y, i32 0
  %v17 = load i32, i32* %t25
  %v18 = mul i32 %v16, %v17
  %v19 = sub i32 %v13, %v18
  %t29 = getelementptr i32, i32* %y, i32 0
  store i32 %v19, i32* %t29
  %v20 = load i32, i32* %t9
  ret i32 %v20
if.end3:
  ret i32 0
}

define i32 @main() {
entry:
  %t31 = alloca i32
  store i32 7, i32* %t31
  %t32 = alloca i32
  store i32 15, i32* %t32
  %t33 = alloca [1 x i32]
  %t34 = getelementptr [1 x i32], [1 x i32]* %t33, i32 0, i32 0
  store i32 1, i32* %t34
  %t35 = alloca [1 x i32]
  %t36 = getelementptr [1 x i32], [1 x i32]* %t35, i32 0, i32 0
  store i32 1, i32* %t36
  %v1 = load i32, i32* %t31
  %v2 = load i32, i32* %t32
  %v3 = getelementptr [1 x i32], [1 x i32]* %t33, i32 0, i32 0
  %v4 = getelementptr [1 x i32], [1 x i32]* %t35, i32 0, i32 0
  %v5 = call i32 @exgcd(i32 %v1, i32 %v2, i32* %v3, i32* %v4)
  %t42 = getelementptr [1 x i32], [1 x i32]* %t33, i32 0, i32 0
  %v6 = load i32, i32* %t42
  %v7 = load i32, i32* %t32
  %v8 = srem i32 %v6, %v7
  %v9 = load i32, i32* %t32
  %v10 = add i32 %v8, %v9
  %v11 = load i32, i32* %t32
  %v12 = srem i32 %v10, %v11
  %t50 = getelementptr [1 x i32], [1 x i32]* %t33, i32 0, i32 0
  store i32 %v12, i32* %t50
  %t51 = getelementptr [1 x i32], [1 x i32]* %t33, i32 0, i32 0
  %v13 = load i32, i32* %t51
  call void @putint(i32 %v13)
  ret i32 0
}

