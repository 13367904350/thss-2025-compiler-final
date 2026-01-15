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

define float @dot_product(float* %a, float* %b, i32 %n) {
entry:
  %i = alloca i32
  %sum = alloca float
  %n.addr = alloca i32
  %b.addr = alloca float*
  %a.addr = alloca float*
  store float* %a, float** %a.addr
  store float* %b, float** %b.addr
  store i32 %n, i32* %n.addr
  store float 0x0000000000000000, float* %sum
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
  %.v6 = load float, float* %sum
  %.v7 = load i32, i32* %i
  %.v8 = load float*, float** %a.addr
  %.v9 = getelementptr float, float* %.v8, i32 %.v7
  %.v10 = load float, float* %.v9
  %.v11 = load i32, i32* %i
  %.v12 = load float*, float** %b.addr
  %.v13 = getelementptr float, float* %.v12, i32 %.v11
  %.v14 = load float, float* %.v13
  %.v15 = fmul float %.v10, %.v14
  %.v16 = fadd float %.v6, %.v15
  store float %.v16, float* %sum
  %.v17 = load i32, i32* %i
  %.v18 = add i32 %.v17, 1
  store i32 %.v18, i32* %i
  br label %while.cond1
while.end3:
  %.v19 = load float, float* %sum
  ret float %.v19
}

define i32 @main() {
entry:
  %result = alloca float
  %vec2 = alloca [4 x float]
  %vec1 = alloca [4 x float]
  %t19 = getelementptr [4 x float], [4 x float]* %vec1, i64 0, i32 0
  store float 0x3FF0000000000000, float* %t19
  %t20 = getelementptr [4 x float], [4 x float]* %vec1, i64 0, i32 1
  store float 0x4000000000000000, float* %t20
  %t21 = getelementptr [4 x float], [4 x float]* %vec1, i64 0, i32 2
  store float 0x4008000000000000, float* %t21
  %t22 = getelementptr [4 x float], [4 x float]* %vec1, i64 0, i32 3
  store float 0x4010000000000000, float* %t22
  %t23 = getelementptr [4 x float], [4 x float]* %vec2, i64 0, i32 0
  store float 0x4010000000000000, float* %t23
  %t24 = getelementptr [4 x float], [4 x float]* %vec2, i64 0, i32 1
  store float 0x4008000000000000, float* %t24
  %t25 = getelementptr [4 x float], [4 x float]* %vec2, i64 0, i32 2
  store float 0x4000000000000000, float* %t25
  %t26 = getelementptr [4 x float], [4 x float]* %vec2, i64 0, i32 3
  store float 0x3FF0000000000000, float* %t26
  %.v1 = getelementptr [4 x float], [4 x float]* %vec1, i64 0, i64 0
  %.v2 = getelementptr [4 x float], [4 x float]* %vec2, i64 0, i64 0
  %.v3 = call float @dot_product(float* %.v1, float* %.v2, i32 4)
  store float %.v3, float* %result
  %.v4 = load float, float* %result
  %.v5 = fcmp oeq float %.v4, 0x4034000000000000
  %.v6 = zext i1 %.v5 to i32
  %.v7 = icmp ne i32 %.v6, 0
  br i1 %.v7, label %if.then1, label %if.else2
if.then1:
  call void @putint(i32 1)
  br label %if.end3
if.else2:
  call void @putint(i32 0)
  br label %if.end3
if.end3:
  call void @putch(i32 10)
  %t33 = getelementptr [4 x float], [4 x float]* %vec1, i64 0, i32 0
  store float 0x3FE0000000000000, float* %t33
  %t34 = getelementptr [4 x float], [4 x float]* %vec2, i64 0, i32 0
  store float 0x4034000000000000, float* %t34
  %.v8 = getelementptr [4 x float], [4 x float]* %vec1, i64 0, i64 0
  %.v9 = getelementptr [4 x float], [4 x float]* %vec2, i64 0, i64 0
  %.v10 = call float @dot_product(float* %.v8, float* %.v9, i32 4)
  store float %.v10, float* %result
  %.v11 = load float, float* %result
  %.v12 = fcmp oeq float %.v11, 0x403A000000000000
  %.v13 = zext i1 %.v12 to i32
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %if.then4, label %if.else5
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

