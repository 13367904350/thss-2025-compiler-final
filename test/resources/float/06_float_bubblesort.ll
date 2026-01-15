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
  %.v1 = load i32, i32* %i.addr
  %.v2 = load float*, float** %arr.addr
  %.v3 = getelementptr float, float* %.v2, i32 %.v1
  %.v4 = load float, float* %.v3
  store float %.v4, float* %temp
  %.v5 = load i32, i32* %j.addr
  %.v6 = load float*, float** %arr.addr
  %.v7 = getelementptr float, float* %.v6, i32 %.v5
  %.v8 = load float, float* %.v7
  %.v9 = load i32, i32* %i.addr
  %.v10 = load float*, float** %arr.addr
  %.v11 = getelementptr float, float* %.v10, i32 %.v9
  store float %.v8, float* %.v11
  %.v12 = load float, float* %temp
  %.v13 = load i32, i32* %j.addr
  %.v14 = load float*, float** %arr.addr
  %.v15 = getelementptr float, float* %.v14, i32 %.v13
  store float %.v12, float* %.v15
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
  %.v15 = load i32, i32* %j
  %.v16 = load float*, float** %arr.addr
  %.v17 = getelementptr float, float* %.v16, i32 %.v15
  %.v18 = load float, float* %.v17
  %.v19 = load i32, i32* %j
  %.v20 = add i32 %.v19, 1
  %.v21 = load float*, float** %arr.addr
  %.v22 = getelementptr float, float* %.v21, i32 %.v20
  %.v23 = load float, float* %.v22
  %.v24 = fcmp ogt float %.v18, %.v23
  %.v25 = zext i1 %.v24 to i32
  %.v26 = icmp ne i32 %.v25, 0
  br i1 %.v26, label %if.then7, label %if.end8
while.end6:
  %.v33 = load i32, i32* %i
  %.v34 = add i32 %.v33, 1
  store i32 %.v34, i32* %i
  br label %while.cond1
if.then7:
  %.v27 = load float*, float** %arr.addr
  %.v28 = load i32, i32* %j
  %.v29 = load i32, i32* %j
  %.v30 = add i32 %.v29, 1
  call void @swap(float* %.v27, i32 %.v28, i32 %.v30)
  br label %if.end8
if.end8:
  %.v31 = load i32, i32* %j
  %.v32 = add i32 %.v31, 1
  store i32 %.v32, i32* %j
  br label %while.cond4
}

define i32 @main() {
entry:
  %arr = alloca [5 x float]
  %t48 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i32 0
  store float 0x4016000000000000, float* %t48
  %t49 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i32 1
  store float 0x40019999A0000000, float* %t49
  %t50 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i32 2
  store float 0x4023CCCCC0000000, float* %t50
  %t51 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i32 3
  store float 0x3FF19999A0000000, float* %t51
  %t52 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i32 4
  store float 0x40019999A0000000, float* %t52
  %.v1 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i64 0
  call void @bubble_sort(float* %.v1, i32 5)
  %t54 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i32 0
  %.v2 = load float, float* %t54
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
  %t58 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i32 1
  %.v6 = load float, float* %t58
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
  %t62 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i32 2
  %.v10 = load float, float* %t62
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
  %t66 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i32 3
  %.v14 = load float, float* %t66
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
  %t70 = getelementptr [5 x float], [5 x float]* %arr, i64 0, i32 4
  %.v18 = load float, float* %t70
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

