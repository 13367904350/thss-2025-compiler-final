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
  %fsum = alloca float
  store float 0x0000000000000000, float* %fsum
  store float 0x0000000000000000, float* %f
  br label %for_cond1
for_cond1:
  %.v1 = load float, float* %f
  %.v2 = fcmp olt float %.v1, 0x4014000000000000
  %.v3 = zext i1 %.v2 to i32
  %t2 = icmp ne i32 %.v3, 0
  br i1 %t2, label %for_body2, label %for_end4
for_body2:
  %.v4 = load float, float* %fsum
  %.v5 = load float, float* %f
  %.v6 = fadd float %.v4, %.v5
  store float %.v6, float* %fsum
  br label %for_inc3
for_inc3:
  %.v7 = load float, float* %f
  %.v8 = fadd float %.v7, 0x3FF0000000000000
  store float %.v8, float* %f
  br label %for_cond1
for_end4:
  %.v9 = load float, float* %fsum
  %.v10 = fcmp oeq float %.v9, 0x4024000000000000
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %if.then5, label %if.end6
if.then5:
  ret i32 0
if.end6:
  ret i32 1
}

