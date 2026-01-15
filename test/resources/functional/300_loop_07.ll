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
  %i = alloca i32
  %sum = alloca i32
  store i32 0, i32* %sum
  store i32 0, i32* %i
  br label %for_cond1
for_cond1:
  %.v1 = load i32, i32* %i
  %.v2 = icmp slt i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %t3 = icmp ne i32 %.v3, 0
  br i1 %t3, label %for_body2, label %for_end4
for_body2:
  %.v4 = load i32, i32* %i
  %.v5 = srem i32 %.v4, 2
  %.v6 = icmp eq i32 %.v5, 0
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %if.then5, label %if.end6
for_inc3:
  %.v12 = load i32, i32* %i
  %.v13 = add i32 %.v12, 1
  store i32 %.v13, i32* %i
  br label %for_cond1
for_end4:
  %.v14 = load i32, i32* %sum
  %.v15 = icmp eq i32 %.v14, 25
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %if.then7, label %if.end8
if.then5:
  br label %for_inc3
if.end6:
  %.v9 = load i32, i32* %sum
  %.v10 = load i32, i32* %i
  %.v11 = add i32 %.v9, %.v10
  store i32 %.v11, i32* %sum
  br label %for_inc3
if.then7:
  ret i32 0
if.end8:
  ret i32 1
}

