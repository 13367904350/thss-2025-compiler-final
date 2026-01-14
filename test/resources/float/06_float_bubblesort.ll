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

define void @swap(float* %arr, i32 %i, i32 %j) {
entry:
  %temp = alloca float
  %j.addr = alloca i32
  %i.addr = alloca i32
  %arr.addr = alloca float*
  store float* %arr, float** %arr.addr
  store i32 %i, i32* %i.addr
  store i32 %j, i32* %j.addr
  %t0 = load float*, float** %arr.addr
  %.v1 = load i32, i32* %i.addr
  %t2 = sext i32 %.v1 to i64
  %t3 = getelementptr float, float* %t0, i64 %t2
  %.v2 = load float, float* %t3
  store float %.v2, float* %temp
  %t5 = load float*, float** %arr.addr
  %.v3 = load i32, i32* %j.addr
  %t7 = sext i32 %.v3 to i64
  %t8 = getelementptr float, float* %t5, i64 %t7
  %.v4 = load float, float* %t8
  %t10 = load float*, float** %arr.addr
  %.v5 = load i32, i32* %i.addr
  %t12 = sext i32 %.v5 to i64
  %t13 = getelementptr float, float* %t10, i64 %t12
  store float %.v4, float* %t13
  %.v6 = load float, float* %temp
  %t15 = load float*, float** %arr.addr
  %.v7 = load i32, i32* %j.addr
  %t17 = sext i32 %.v7 to i64
  %t18 = getelementptr float, float* %t15, i64 %t17
  store float %.v6, float* %t18
  ret void
}

define void @bubble_sort(float* %arr, i32 %n) {
entry:
  %j = alloca i32
  %i = alloca i32
  %n.addr = alloca i32
  %arr.addr = alloca float*
  store float* %arr, float** %arr.addr
  store i32 %n, i32* %n.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %n.addr
  %.v3 = sub i32 %.v2, 1
  %.v4 = icmp slt i32 %.v1, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %j
  br label %while.cond4
while.end3:
  ret void
while.cond4:
  %.v7 = load i32, i32* %j
  %.v8 = load i32, i32* %n.addr
  %.v9 = sub i32 %.v8, 1
  %.v10 = load i32, i32* %i
  %.v11 = sub i32 %.v9, %.v10
  %.v12 = icmp slt i32 %.v7, %.v11
  %.v13 = zext i1 %.v12 to i32
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %while.body5, label %while.end6
while.body5:
  %t33 = load float*, float** %arr.addr
  %.v15 = load i32, i32* %j
  %t35 = sext i32 %.v15 to i64
  %t36 = getelementptr float, float* %t33, i64 %t35
  %.v16 = load float, float* %t36
  %t38 = load float*, float** %arr.addr
  %.v17 = load i32, i32* %j
  %.v18 = add i32 %.v17, 1
  %t41 = sext i32 %.v18 to i64
  %t42 = getelementptr float, float* %t38, i64 %t41
  %.v19 = load float, float* %t42
  %.v20 = fcmp ogt float %.v16, %.v19
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  br i1 %.v22, label %if.then7, label %if.end8
while.end6:
  %.v29 = load i32, i32* %i
  %.v30 = add i32 %.v29, 1
  store i32 %.v30, i32* %i
  br label %while.cond1
if.then7:
  %.v23 = load float*, float** %arr.addr
  %.v24 = load i32, i32* %j
  %.v25 = load i32, i32* %j
  %.v26 = add i32 %.v25, 1
  call void @swap(float* %.v23, i32 %.v24, i32 %.v26)
  br label %if.end8
if.end8:
  %.v27 = load i32, i32* %j
  %.v28 = add i32 %.v27, 1
  store i32 %.v28, i32* %j
  br label %while.cond4
}

define i32 @main() {
entry:
  %arr = alloca [5 x float]
  %t54 = sext i32 0 to i64
  %t55 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 %t54
  store float 0x4016000000000000, float* %t55
  %t56 = sext i32 1 to i64
  %t57 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 %t56
  store float 0x40019999A0000000, float* %t57
  %t58 = sext i32 2 to i64
  %t59 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 %t58
  store float 0x4023CCCCC0000000, float* %t59
  %t60 = sext i32 3 to i64
  %t61 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 %t60
  store float 0x3FF19999A0000000, float* %t61
  %t62 = sext i32 4 to i64
  %t63 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 %t62
  store float 0x40019999A0000000, float* %t63
  %.v1 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 0
  call void @bubble_sort(float* %.v1, i32 5)
  %t65 = sext i32 0 to i64
  %t66 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 %t65
  %.v2 = load float, float* %t66
  %.v3 = fcmp oeq float %.v2, 0x3FF19999A0000000
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %if.then1, label %if.else2
if.then1:
  call void @putint(i32 1)
  br label %if.end3
if.else2:
  call void @putint(i32 0)
  br label %if.end3
if.end3:
  call void @putch(i32 32)
  %t70 = sext i32 1 to i64
  %t71 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 %t70
  %.v6 = load float, float* %t71
  %.v7 = fcmp oeq float %.v6, 0x40019999A0000000
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %if.then4, label %if.else5
if.then4:
  call void @putint(i32 1)
  br label %if.end6
if.else5:
  call void @putint(i32 0)
  br label %if.end6
if.end6:
  call void @putch(i32 32)
  %t75 = sext i32 2 to i64
  %t76 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 %t75
  %.v10 = load float, float* %t76
  %.v11 = fcmp oeq float %.v10, 0x40019999A0000000
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %if.then7, label %if.else8
if.then7:
  call void @putint(i32 1)
  br label %if.end9
if.else8:
  call void @putint(i32 0)
  br label %if.end9
if.end9:
  call void @putch(i32 32)
  %t80 = sext i32 3 to i64
  %t81 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 %t80
  %.v14 = load float, float* %t81
  %.v15 = fcmp oeq float %.v14, 0x4016000000000000
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %if.then10, label %if.else11
if.then10:
  call void @putint(i32 1)
  br label %if.end12
if.else11:
  call void @putint(i32 0)
  br label %if.end12
if.end12:
  call void @putch(i32 32)
  %t85 = sext i32 4 to i64
  %t86 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 %t85
  %.v18 = load float, float* %t86
  %.v19 = fcmp oeq float %.v18, 0x4023CCCCC0000000
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  br i1 %.v21, label %if.then13, label %if.else14
if.then13:
  call void @putint(i32 1)
  br label %if.end15
if.else14:
  call void @putint(i32 0)
  br label %if.end15
if.end15:
  call void @putch(i32 10)
  ret i32 0
}

