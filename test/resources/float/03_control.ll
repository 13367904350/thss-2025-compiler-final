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

define float @add_floats(float %a, float %b) {
entry:
  %b.addr = alloca float
  %a.addr = alloca float
  store float %a, float* %a.addr
  store float %b, float* %b.addr
  %.v1 = load float, float* %a.addr
  %.v2 = load float, float* %b.addr
  %.v3 = fadd float %.v1, %.v2
  ret float %.v3
}

define i32 @check_positive(float %x) {
entry:
  %x.addr = alloca float
  store float %x, float* %x.addr
  %.v1 = load float, float* %x.addr
  %.v2 = fcmp ogt float %.v1, 0x0000000000000000
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.end2
if.then1:
  ret i32 1
if.end2:
  ret i32 0
}

define i32 @main() {
entry:
  %.v22 = alloca i32
  %loops = alloca i32
  %counter = alloca float
  %sum = alloca float
  %in2 = alloca float
  %in1 = alloca float
  %.v1 = call float @getfloat()
  store float %.v1, float* %in1
  %.v2 = call float @getfloat()
  store float %.v2, float* %in2
  %.v3 = load float, float* %in1
  %.v4 = load float, float* %in2
  %.v5 = call float @add_floats(float %.v3, float %.v4)
  store float %.v5, float* %sum
  %.v6 = load float, float* %sum
  %.v7 = fcmp oeq float %.v6, 0x400E000000000000
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %if.then1, label %if.else2
if.then1:
  call void @putint(i32 1)
  br label %if.end3
if.else2:
  call void @putint(i32 0)
  br label %if.end3
if.end3:
  call void @putch(i32 10)
  store float 0x0000000000000000, float* %counter
  store i32 0, i32* %loops
  br label %while.cond4
while.cond4:
  %.v10 = load float, float* %counter
  %.v11 = fcmp olt float %.v10, 0x4010000000000000
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %while.body5, label %while.end6
while.body5:
  %.v14 = load float, float* %counter
  %.v15 = fadd float %.v14, 0x3FF0000000000000
  store float %.v15, float* %counter
  %.v16 = load i32, i32* %loops
  %.v17 = add i32 %.v16, 1
  store i32 %.v17, i32* %loops
  br label %while.cond4
while.end6:
  %.v18 = load i32, i32* %loops
  %.v19 = icmp eq i32 %.v18, 4
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  br i1 %.v21, label %if.then7, label %if.else8
if.then7:
  call void @putint(i32 1)
  br label %if.end9
if.else8:
  call void @putint(i32 0)
  br label %if.end9
if.end9:
  call void @putch(i32 10)
  store i32 0, i32* %.v22
  %.v23 = call i32 @check_positive(float 0x3FF0000000000000)
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %land.rhs13, label %land.end14
if.then10:
  call void @putint(i32 1)
  br label %if.end12
if.else11:
  call void @putint(i32 0)
  br label %if.end12
if.end12:
  call void @putch(i32 10)
  ret i32 0
land.rhs13:
  %.v25 = fsub float 0x0000000000000000, 0x3FF0000000000000
  %.v26 = call i32 @check_positive(float %.v25)
  %.v27 = icmp eq i32 %.v26, 0
  %.v28 = zext i1 %.v27 to i32
  %.v29 = icmp ne i32 %.v28, 0
  %.v30 = zext i1 %.v29 to i32
  store i32 %.v30, i32* %.v22
  br label %land.end14
land.end14:
  %.v31 = load i32, i32* %.v22
  %.v32 = icmp ne i32 %.v31, 0
  br i1 %.v32, label %if.then10, label %if.else11
}

