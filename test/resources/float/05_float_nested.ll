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

define float @add(float %a, float %b) {
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

define float @sub(float %a, float %b) {
entry:
  %b.addr = alloca float
  %a.addr = alloca float
  store float %a, float* %a.addr
  store float %b, float* %b.addr
  %.v1 = load float, float* %a.addr
  %.v2 = load float, float* %b.addr
  %.v3 = fsub float %.v1, %.v2
  ret float %.v3
}

define float @mul(float %a, float %b) {
entry:
  %b.addr = alloca float
  %a.addr = alloca float
  store float %a, float* %a.addr
  store float %b, float* %b.addr
  %.v1 = load float, float* %a.addr
  %.v2 = load float, float* %b.addr
  %.v3 = fmul float %.v1, %.v2
  ret float %.v3
}

define float @combine(float %a, float %b, float %c, float %d) {
entry:
  %d.addr = alloca float
  %c.addr = alloca float
  %b.addr = alloca float
  %a.addr = alloca float
  store float %a, float* %a.addr
  store float %b, float* %b.addr
  store float %c, float* %c.addr
  store float %d, float* %d.addr
  %.v1 = load float, float* %a.addr
  %.v2 = load float, float* %b.addr
  %.v3 = call float @mul(float %.v1, float %.v2)
  %.v4 = load float, float* %c.addr
  %.v5 = load float, float* %d.addr
  %.v6 = call float @sub(float %.v4, float %.v5)
  %.v7 = call float @add(float %.v3, float %.v6)
  ret float %.v7
}

define float @deep_nest(float %val) {
entry:
  %val.addr = alloca float
  store float %val, float* %val.addr
  %.v1 = load float, float* %val.addr
  %.v2 = call float @add(float %.v1, float 0x3FF0000000000000)
  %.v3 = call float @mul(float %.v2, float 0x4000000000000000)
  %.v4 = call float @sub(float %.v3, float 0x4008000000000000)
  ret float %.v4
}

define i32 @main() {
entry:
  %res2 = alloca float
  %res1 = alloca float
  %d = alloca float
  %c = alloca float
  %b = alloca float
  %a = alloca float
  store float 0x3FF8000000000000, float* %a
  store float 0x4000000000000000, float* %b
  store float 0x4016000000000000, float* %c
  store float 0x3FF8000000000000, float* %d
  %.v1 = load float, float* %a
  %.v2 = load float, float* %b
  %.v3 = load float, float* %c
  %.v4 = load float, float* %d
  %.v5 = call float @combine(float %.v1, float %.v2, float %.v3, float %.v4)
  store float %.v5, float* %res1
  %.v6 = load float, float* %res1
  %.v7 = fcmp oeq float %.v6, 0x401C000000000000
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
  %.v10 = load float, float* %a
  %.v11 = load float, float* %b
  %.v12 = call float @mul(float %.v10, float %.v11)
  %.v13 = load float, float* %c
  %.v14 = load float, float* %d
  %.v15 = call float @sub(float %.v13, float %.v14)
  %.v16 = call float @add(float %.v12, float %.v15)
  store float %.v16, float* %res2
  %.v17 = load float, float* %res2
  %.v18 = fcmp oeq float %.v17, 0x401C000000000000
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %if.then4, label %if.else5
if.then4:
  call void @putint(i32 1)
  br label %if.end6
if.else5:
  call void @putint(i32 0)
  br label %if.end6
if.end6:
  call void @putch(i32 10)
  %.v21 = call float @deep_nest(float 0x3FF0000000000000)
  %.v22 = fcmp oeq float %.v21, 0x3FF0000000000000
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
  ret i32 0
}

