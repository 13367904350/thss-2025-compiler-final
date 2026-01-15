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
  %sum = alloca i32
  %i = alloca i32
  store i32 0, i32* %i
  store i32 0, i32* %sum
  store i32 0, i32* %i
  br label %for_cond1
for_cond1:
  br label %for_body2
for_body2:
  %.v1 = load i32, i32* %i
  %.v2 = icmp sge i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then5, label %if.end6
for_inc3:
  %.v8 = load i32, i32* %i
  %.v9 = add i32 %.v8, 1
  store i32 %.v9, i32* %i
  br label %for_cond1
for_end4:
  %.v10 = load i32, i32* %sum
  %.v11 = icmp eq i32 %.v10, 45
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %if.then7, label %if.end8
if.then5:
  br label %for_end4
if.end6:
  %.v5 = load i32, i32* %sum
  %.v6 = load i32, i32* %i
  %.v7 = add i32 %.v5, %.v6
  store i32 %.v7, i32* %sum
  br label %for_inc3
if.then7:
  ret i32 0
if.end8:
  ret i32 1
}

