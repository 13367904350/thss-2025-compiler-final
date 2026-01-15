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
  %j = alloca i32
  %i = alloca i32
  %count = alloca i32
  store i32 0, i32* %count
  store i32 0, i32* %i
  br label %for_cond1
for_cond1:
  %.v1 = load i32, i32* %i
  %.v2 = icmp slt i32 %.v1, 5
  %.v3 = zext i1 %.v2 to i32
  %t3 = icmp ne i32 %.v3, 0
  br i1 %t3, label %for_body2, label %for_end4
for_body2:
  store i32 0, i32* %j
  br label %for_cond5
for_inc3:
  %.v11 = load i32, i32* %i
  %.v12 = add i32 %.v11, 1
  store i32 %.v12, i32* %i
  br label %for_cond1
for_end4:
  %.v13 = load i32, i32* %count
  %.v14 = icmp eq i32 %.v13, 25
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %if.then9, label %if.end10
for_cond5:
  %.v4 = load i32, i32* %j
  %.v5 = icmp slt i32 %.v4, 5
  %.v6 = zext i1 %.v5 to i32
  %t7 = icmp ne i32 %.v6, 0
  br i1 %t7, label %for_body6, label %for_end8
for_body6:
  %.v7 = load i32, i32* %count
  %.v8 = add i32 %.v7, 1
  store i32 %.v8, i32* %count
  br label %for_inc7
for_inc7:
  %.v9 = load i32, i32* %j
  %.v10 = add i32 %.v9, 1
  store i32 %.v10, i32* %j
  br label %for_cond5
for_end8:
  br label %for_inc3
if.then9:
  ret i32 0
if.end10:
  ret i32 1
}

