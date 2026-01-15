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
  %f = alloca float
  %i = alloca i32
  %d = alloca float
  %c = alloca float
  %b = alloca float
  %a = alloca float
  store float 0x3FF8000000000000, float* %a
  store float 0x4004000000000000, float* %b
  %.v1 = load float, float* %a
  %.v2 = load float, float* %b
  %.v3 = fadd float %.v1, %.v2
  store float %.v3, float* %c
  %.v4 = load float, float* %c
  %.v5 = fcmp oeq float %.v4, 0x4010000000000000
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
  %.v8 = load float, float* %b
  %.v9 = load float, float* %a
  %.v10 = fsub float %.v8, %.v9
  %.v11 = fcmp oeq float %.v10, 0x3FF0000000000000
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %if.then4, label %if.else5
if.then4:
  call void @putint(i32 1)
  br label %if.end6
if.else5:
  call void @putint(i32 0)
  br label %if.end6
if.end6:
  call void @putch(i32 10)
  %.v14 = load float, float* %a
  %.v15 = fmul float %.v14, 0x4000000000000000
  %.v16 = fcmp oeq float %.v15, 0x4008000000000000
  %.v17 = zext i1 %.v16 to i32
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %if.then7, label %if.else8
if.then7:
  call void @putint(i32 1)
  br label %if.end9
if.else8:
  call void @putint(i32 0)
  br label %if.end9
if.end9:
  call void @putch(i32 10)
  %.v19 = load float, float* %b
  %.v20 = fdiv float %.v19, 0x3FE0000000000000
  %.v21 = fcmp oeq float %.v20, 0x4014000000000000
  %.v22 = zext i1 %.v21 to i32
  %.v23 = icmp ne i32 %.v22, 0
  br i1 %.v23, label %if.then10, label %if.else11
if.then10:
  call void @putint(i32 1)
  br label %if.end12
if.else11:
  call void @putint(i32 0)
  br label %if.end12
if.end12:
  call void @putch(i32 10)
  %.v24 = fsub float 0x0000000000000000, 0x3FF8000000000000
  store float %.v24, float* %d
  %.v25 = load float, float* %d
  %.v26 = fsub float 0x0000000000000000, 0x3FF8000000000000
  %.v27 = fcmp oeq float %.v25, %.v26
  %.v28 = zext i1 %.v27 to i32
  %.v29 = icmp ne i32 %.v28, 0
  br i1 %.v29, label %if.then13, label %if.else14
if.then13:
  call void @putint(i32 1)
  br label %if.end15
if.else14:
  call void @putint(i32 0)
  br label %if.end15
if.end15:
  call void @putch(i32 10)
  store i32 2, i32* %i
  %.v30 = load i32, i32* %i
  %.v31 = sitofp i32 %.v30 to float
  store float %.v31, float* %f
  %.v32 = load float, float* %f
  %.v33 = fcmp oeq float %.v32, 0x4000000000000000
  %.v34 = zext i1 %.v33 to i32
  %.v35 = icmp ne i32 %.v34, 0
  br i1 %.v35, label %if.then16, label %if.else17
if.then16:
  call void @putint(i32 1)
  br label %if.end18
if.else17:
  call void @putint(i32 0)
  br label %if.end18
if.end18:
  call void @putch(i32 10)
  ret i32 0
}

