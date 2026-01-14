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
  %z = alloca float
  %y = alloca float
  %x = alloca float
  %c = alloca float
  %b = alloca float
  %a = alloca float
  store float 0x4000000000000000, float* %a
  store float 0x4008000000000000, float* %b
  store float 0x4010000000000000, float* %c
  %.v1 = load float, float* %a
  %.v2 = load float, float* %b
  %.v3 = load float, float* %c
  %.v4 = fmul float %.v2, %.v3
  %.v5 = fadd float %.v1, %.v4
  %.v6 = fcmp oeq float %.v5, 0x402C000000000000
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %if.then1, label %if.else2
if.then1:
  call void @putint(i32 1)
  br label %if.end3
if.else2:
  call void @putint(i32 0)
  br label %if.end3
if.end3:
  call void @putch(i32 10)
  %.v9 = load float, float* %a
  %.v10 = load float, float* %b
  %.v11 = fadd float %.v9, %.v10
  %.v12 = load float, float* %c
  %.v13 = fmul float %.v11, %.v12
  %.v14 = fcmp oeq float %.v13, 0x4034000000000000
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %if.then4, label %if.else5
if.then4:
  call void @putint(i32 1)
  br label %if.end6
if.else5:
  call void @putint(i32 0)
  br label %if.end6
if.end6:
  call void @putch(i32 10)
  %.v17 = load float, float* %a
  %.v18 = fsub float 0x0000000000000000, %.v17
  %.v19 = load float, float* %b
  %.v20 = fsub float %.v18, %.v19
  %.v21 = fsub float 0x0000000000000000, 0x4014000000000000
  %.v22 = fcmp oeq float %.v20, %.v21
  %.v23 = zext i1 %.v22 to i32
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %if.then7, label %if.else8
if.then7:
  call void @putint(i32 1)
  br label %if.end9
if.else8:
  call void @putint(i32 0)
  br label %if.end9
if.end9:
  call void @putch(i32 10)
  store float 0x3FF8000000000000, float* %x
  store float 0x3FF8000000000000, float* %y
  store float 0x4004000000000000, float* %z
  %.v25 = load float, float* %x
  %.v26 = load float, float* %y
  %.v27 = fcmp oeq float %.v25, %.v26
  %.v28 = zext i1 %.v27 to i32
  %.v29 = icmp ne i32 %.v28, 0
  br i1 %.v29, label %if.then10, label %if.else11
if.then10:
  call void @putint(i32 1)
  br label %if.end12
if.else11:
  call void @putint(i32 0)
  br label %if.end12
if.end12:
  %.v30 = load float, float* %x
  %.v31 = load float, float* %z
  %.v32 = fcmp one float %.v30, %.v31
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
  %.v35 = load float, float* %x
  %.v36 = load float, float* %z
  %.v37 = fcmp olt float %.v35, %.v36
  %.v38 = zext i1 %.v37 to i32
  %.v39 = icmp ne i32 %.v38, 0
  br i1 %.v39, label %if.then16, label %if.else17
if.then16:
  call void @putint(i32 1)
  br label %if.end18
if.else17:
  call void @putint(i32 0)
  br label %if.end18
if.end18:
  %.v40 = load float, float* %z
  %.v41 = load float, float* %x
  %.v42 = fcmp ogt float %.v40, %.v41
  %.v43 = zext i1 %.v42 to i32
  %.v44 = icmp ne i32 %.v43, 0
  br i1 %.v44, label %if.then19, label %if.else20
if.then19:
  call void @putint(i32 1)
  br label %if.end21
if.else20:
  call void @putint(i32 0)
  br label %if.end21
if.end21:
  %.v45 = load float, float* %x
  %.v46 = load float, float* %y
  %.v47 = fcmp ole float %.v45, %.v46
  %.v48 = zext i1 %.v47 to i32
  %.v49 = icmp ne i32 %.v48, 0
  br i1 %.v49, label %if.then22, label %if.else23
if.then22:
  call void @putint(i32 1)
  br label %if.end24
if.else23:
  call void @putint(i32 0)
  br label %if.end24
if.end24:
  %.v50 = load float, float* %x
  %.v51 = load float, float* %y
  %.v52 = fcmp oge float %.v50, %.v51
  %.v53 = zext i1 %.v52 to i32
  %.v54 = icmp ne i32 %.v53, 0
  br i1 %.v54, label %if.then25, label %if.else26
if.then25:
  call void @putint(i32 1)
  br label %if.end27
if.else26:
  call void @putint(i32 0)
  br label %if.end27
if.end27:
  call void @putch(i32 10)
  ret i32 0
}

