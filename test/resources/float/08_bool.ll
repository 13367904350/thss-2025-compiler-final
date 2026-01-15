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
  %.v18 = alloca i32
  %.v10 = alloca i32
  %neg = alloca float
  %zero = alloca float
  %small = alloca float
  store float 0x3FE0000000000000, float* %small
  store float 0x0000000000000000, float* %zero
  %.v1 = fsub float 0x0000000000000000, 0x3FF8000000000000
  store float %.v1, float* %neg
  %.v2 = load float, float* %small
  %.v3 = fcmp une float %.v2, 0x0000000000000000
  br i1 %.v3, label %if.then1, label %if.else2
if.then1:
  call void @putint(i32 1)
  br label %if.end3
if.else2:
  call void @putint(i32 0)
  br label %if.end3
if.end3:
  call void @putch(i32 10)
  %.v4 = load float, float* %zero
  %.v5 = fcmp oeq float %.v4, 0x0000000000000000
  %.v6 = zext i1 %.v5 to i32
  %.v7 = icmp ne i32 %.v6, 0
  br i1 %.v7, label %if.then4, label %if.else5
if.then4:
  call void @putint(i32 1)
  br label %if.end6
if.else5:
  call void @putint(i32 0)
  br label %if.end6
if.end6:
  call void @putch(i32 10)
  %.v8 = load float, float* %neg
  %.v9 = fcmp une float %.v8, 0x0000000000000000
  br i1 %.v9, label %if.then7, label %if.else8
if.then7:
  call void @putint(i32 1)
  br label %if.end9
if.else8:
  call void @putint(i32 0)
  br label %if.end9
if.end9:
  call void @putch(i32 10)
  store i32 0, i32* %.v10
  %.v11 = load float, float* %small
  %.v12 = fcmp une float %.v11, 0x0000000000000000
  br i1 %.v12, label %land.rhs13, label %land.end14
if.then10:
  call void @putint(i32 0)
  br label %if.end12
if.else11:
  call void @putint(i32 1)
  br label %if.end12
if.end12:
  call void @putch(i32 10)
  store i32 1, i32* %.v18
  %.v19 = load float, float* %zero
  %.v20 = fcmp une float %.v19, 0x0000000000000000
  br i1 %.v20, label %lor.end19, label %lor.rhs18
land.rhs13:
  %.v13 = load float, float* %zero
  %.v14 = fcmp une float %.v13, 0x0000000000000000
  %.v15 = zext i1 %.v14 to i32
  store i32 %.v15, i32* %.v10
  br label %land.end14
land.end14:
  %.v16 = load i32, i32* %.v10
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %if.then10, label %if.else11
if.then15:
  call void @putint(i32 1)
  br label %if.end17
if.else16:
  call void @putint(i32 0)
  br label %if.end17
if.end17:
  call void @putch(i32 10)
  ret i32 0
lor.rhs18:
  %.v21 = load float, float* %small
  %.v22 = fcmp une float %.v21, 0x0000000000000000
  %.v23 = zext i1 %.v22 to i32
  store i32 %.v23, i32* %.v18
  br label %lor.end19
lor.end19:
  %.v24 = load i32, i32* %.v18
  %.v25 = icmp ne i32 %.v24, 0
  br i1 %.v25, label %if.then15, label %if.else16
}

