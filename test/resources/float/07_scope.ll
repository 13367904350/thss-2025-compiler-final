@x = global float 0x3FF19999A0000000
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

define void @check_val(float %val, float %expected) {
entry:
  %expected.addr = alloca float
  %val.addr = alloca float
  store float %val, float* %val.addr
  store float %expected, float* %expected.addr
  %.v1 = load float, float* %val.addr
  %.v2 = load float, float* %expected.addr
  %.v3 = fcmp oeq float %.v1, %.v2
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
  ret void
}

define i32 @main() {
entry:
  %x.2 = alloca float
  %x.1 = alloca i32
  %x = alloca float
  store float 0x40019999A0000000, float* %x
  %.v1 = load float, float* %x
  call void @check_val(float %.v1, float 0x40019999A0000000)
  %.v2 = icmp sgt i32 1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.end2
if.then1:
  store i32 3, i32* %x.1
  %.v5 = load i32, i32* %x.1
  %.v6 = icmp eq i32 %.v5, 3
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %if.then3, label %if.else4
if.end2:
  %.v17 = load float, float* %x
  call void @check_val(float %.v17, float 0x40019999A0000000)
  call void @putch(i32 10)
  ret i32 0
if.then3:
  call void @putint(i32 1)
  br label %if.end5
if.else4:
  call void @putint(i32 0)
  br label %if.end5
if.end5:
  call void @putch(i32 32)
  %.v9 = icmp sgt i32 1, 0
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %if.then6, label %if.end7
if.then6:
  store float 0x40119999A0000000, float* %x.2
  %.v12 = load float, float* %x.2
  call void @check_val(float %.v12, float 0x40119999A0000000)
  br label %if.end7
if.end7:
  %.v13 = load i32, i32* %x.1
  %.v14 = icmp eq i32 %.v13, 3
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %if.then8, label %if.else9
if.then8:
  call void @putint(i32 1)
  br label %if.end10
if.else9:
  call void @putint(i32 0)
  br label %if.end10
if.end10:
  call void @putch(i32 32)
  br label %if.end2
}

