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
  %.v21 = load float, float* %sum
  ret float %.v21
while.cond4:
  %.v6 = load i32, i32* %j
  %.v7 = icmp slt i32 %.v6, 3
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %while.body5, label %while.end6
while.body5:
  %.v10 = load float, float* %sum
  %.v11 = load i32, i32* %i
  %.v12 = load [3 x float]*, [3 x float]** %a.addr
  %.v13 = getelementptr [3 x float], [3 x float]* %.v12, i32 %.v11
  %.v14 = load i32, i32* %j
  %t14 = getelementptr [3 x float], [3 x float]* %.v13, i64 0, i32 %.v14
  %.v15 = load float, float* %t14
  %.v16 = fadd float %.v10, %.v15
  store float %.v16, float* %sum
  %.v17 = load i32, i32* %j
  %.v18 = add i32 %.v17, 1
  store i32 %.v18, i32* %j
  br label %while.cond4
while.end6:
  %.v19 = load i32, i32* %i
  %.v20 = add i32 %.v19, 1
  store i32 %.v20, i32* %i
  br label %while.cond1
}

define i32 @main() {
entry:
  %res = alloca float
  %arr = alloca [2 x [3 x float]]
  %t22 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i32 0
  %t23 = getelementptr [3 x float], [3 x float]* %t22, i64 0, i32 0
  store float 0x3FF0000000000000, float* %t23
  %t24 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i32 0
  %t25 = getelementptr [3 x float], [3 x float]* %t24, i64 0, i32 1
  store float 0x4000000000000000, float* %t25
  %t26 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i32 0
  %t27 = getelementptr [3 x float], [3 x float]* %t26, i64 0, i32 2
  store float 0x4008000000000000, float* %t27
  %t28 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i32 1
  %t29 = getelementptr [3 x float], [3 x float]* %t28, i64 0, i32 0
  store float 0x4010000000000000, float* %t29
  %t30 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i32 1
  %t31 = getelementptr [3 x float], [3 x float]* %t30, i64 0, i32 1
  store float 0x4014000000000000, float* %t31
  %t32 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i32 1
  %t33 = getelementptr [3 x float], [3 x float]* %t32, i64 0, i32 2
  store float 0x4018000000000000, float* %t33
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
  %t39 = getelementptr [2 x [3 x float]], [2 x [3 x float]]* %arr, i64 0, i32 1
  %t40 = getelementptr [3 x float], [3 x float]* %t39, i64 0, i32 0
  %.v7 = load float, float* %t40
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

