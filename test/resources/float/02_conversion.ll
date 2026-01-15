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

define i32 @main() {
entry:
  %cast_i = alloca i32
  %f = alloca float
  %res = alloca float
  %half = alloca float
  %two = alloca i32
  %f_big = alloca float
  %big = alloca i32
  %i_neg = alloca i32
  %neg = alloca float
  %i_pi = alloca i32
  %pi = alloca float
  store float 0x400921FA00000000, float* %pi
  %.v1 = load float, float* %pi
  %.v2 = fptosi float %.v1 to i32
  store i32 %.v2, i32* %i_pi
  %.v3 = load i32, i32* %i_pi
  %.v4 = icmp eq i32 %.v3, 3
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
  %.v7 = fsub float 0x0000000000000000, 0x400FEB8520000000
  store float %.v7, float* %neg
  %.v8 = load float, float* %neg
  %.v9 = fptosi float %.v8 to i32
  store i32 %.v9, i32* %i_neg
  %.v10 = load i32, i32* %i_neg
  %.v11 = sub i32 0, 3
  %.v12 = icmp eq i32 %.v10, %.v11
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
  store i32 100, i32* %big
  %.v15 = load i32, i32* %big
  %.v16 = sitofp i32 %.v15 to float
  store float %.v16, float* %f_big
  %.v17 = load float, float* %f_big
  %.v18 = fcmp oeq float %.v17, 0x4059000000000000
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %if.then7, label %if.else8
if.then7:
  call void @putint(i32 1)
  br label %if.end9
if.else8:
  call void @putint(i32 0)
  br label %if.end9
if.end9:
  call void @putch(i32 10)
  store i32 2, i32* %two
  store float 0x3FE0000000000000, float* %half
  %.v21 = load i32, i32* %two
  %.v22 = load float, float* %half
  %.v23 = sitofp i32 %.v21 to float
  %.v24 = fmul float %.v23, %.v22
  store float %.v24, float* %res
  %.v25 = load float, float* %res
  %.v26 = fcmp oeq float %.v25, 0x3FF0000000000000
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  br i1 %.v28, label %if.then10, label %if.else11
if.then10:
  call void @putint(i32 1)
  br label %if.end12
if.else11:
  call void @putint(i32 0)
  br label %if.end12
if.end12:
  call void @putch(i32 10)
  store float 0x4016000000000000, float* %f
  %.v29 = load float, float* %f
  %.v30 = fptosi float %.v29 to i32
  store i32 %.v30, i32* %cast_i
  %.v31 = load i32, i32* %cast_i
  %.v32 = icmp eq i32 %.v31, 5
  %.v33 = zext i1 %.v32 to i32
  %.v34 = icmp ne i32 %.v33, 0
  br i1 %.v34, label %if.then13, label %if.else14
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

