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

define float @sum_2d([3 x float]* %a, i32 %rows) {
entry:
  %j = alloca i32
  %i = alloca i32
  %sum = alloca float
  %rows.addr = alloca i32
  %a.addr = alloca [3 x float]*
  store [3 x float]* %a, [3 x float]** %a.addr
  store i32 %rows, i32* %rows.addr
  store float 0x0000000000000000, float* %sum
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %rows.addr
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %j
  br label %while.cond4
while.end3:
  %.v19 = load float, float* %sum
  ret float %.v19
while.cond4:
  %.v6 = load i32, i32* %j
  %.v7 = icmp slt i32 %.v6, 3
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %while.body5, label %while.end6
while.body5:
  %.v10 = load float, float* %sum
  %t10 = load [3 x float]*, [3 x float]** %a.addr
  %.v11 = load i32, i32* %i
  %t12 = sext i32 %.v11 to i64
  %.v12 = load i32, i32* %j
  %t14 = sext i32 %.v12 to i64
  %t15 = getelementptr [3 x float], [3 x float]* %t10, i64 %t12, i64 %t14
  %.v13 = load float, float* %t15
  %.v14 = fadd float %.v10, %.v13
  store float %.v14, float* %sum
  %.v15 = load i32, i32* %j
  %.v16 = add i32 %.v15, 1
  store i32 %.v16, i32* %j
  br label %while.cond4
while.end6:
  %.v17 = load i32, i32* %i
  %.v18 = add i32 %.v17, 1
  store i32 %.v18, i32* %i
  br label %while.cond1
}

define i32 @main() {
entry:
  %res = alloca float
  %arr = alloca [2 x [3 x float]]
  %t23 = sext i32 0 to i64
  %t24 = sext i32 0 to i64
  %t25 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i64 %t23, i64 %t24
  store float 0x3FF0000000000000, float* %t25
  %t26 = sext i32 0 to i64
  %t27 = sext i32 1 to i64
  %t28 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i64 %t26, i64 %t27
  store float 0x4000000000000000, float* %t28
  %t29 = sext i32 0 to i64
  %t30 = sext i32 2 to i64
  %t31 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i64 %t29, i64 %t30
  store float 0x4008000000000000, float* %t31
  %t32 = sext i32 1 to i64
  %t33 = sext i32 0 to i64
  %t34 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i64 %t32, i64 %t33
  store float 0x4010000000000000, float* %t34
  %t35 = sext i32 1 to i64
  %t36 = sext i32 1 to i64
  %t37 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i64 %t35, i64 %t36
  store float 0x4014000000000000, float* %t37
  %t38 = sext i32 1 to i64
  %t39 = sext i32 2 to i64
  %t40 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i64 %t38, i64 %t39
  store float 0x4018000000000000, float* %t40
  %.v1 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i64 0
  %.v2 = call float @sum_2d([3 x float]* %.v1, i32 2)
  store float %.v2, float* %res
  %.v3 = load float, float* %res
  %.v4 = fcmp oeq float %.v3, 0x4035000000000000
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %if.then1, label %if.else2
if.then1:
  call void @putint(i32 1)
  br label %if.end3
if.else2:
  call void @putint(i32 0)
  br label %if.end3
if.end3:
  call void @putch(i32 10)
  %t46 = sext i32 1 to i64
  %t47 = sext i32 0 to i64
  %t48 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i64 %t46, i64 %t47
  %.v7 = load float, float* %t48
  %.v8 = fcmp oeq float %.v7, 0x4010000000000000
  %.v9 = zext i1 %.v8 to i32
  %.v10 = icmp ne i32 %.v9, 0
  br i1 %.v10, label %if.then4, label %if.else5
if.then4:
  call void @putint(i32 1)
  br label %if.end6
if.else5:
  call void @putint(i32 0)
  br label %if.end6
if.end6:
  call void @putch(i32 10)
  ret i32 0
}

