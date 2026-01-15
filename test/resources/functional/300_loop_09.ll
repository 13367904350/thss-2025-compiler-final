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
  %.v9 = alloca i32
  %i.1 = alloca i32
  %sum = alloca i32
  %i = alloca i32
  store i32 100, i32* %i
  store i32 0, i32* %sum
  store i32 0, i32* %i.1
  br label %for_cond1
for_cond1:
  %.v1 = load i32, i32* %i.1
  %.v2 = icmp slt i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %t3 = icmp ne i32 %.v3, 0
  br i1 %t3, label %for_body2, label %for_end4
for_body2:
  %.v4 = load i32, i32* %sum
  %.v5 = load i32, i32* %i.1
  %.v6 = add i32 %.v4, %.v5
  store i32 %.v6, i32* %sum
  br label %for_inc3
for_inc3:
  %.v7 = load i32, i32* %i.1
  %.v8 = add i32 %.v7, 1
  store i32 %.v8, i32* %i.1
  br label %for_cond1
for_end4:
  store i32 0, i32* %.v9
  %.v10 = load i32, i32* %i
  %.v11 = icmp eq i32 %.v10, 100
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %land.rhs7, label %land.end8
if.then5:
  ret i32 0
if.end6:
  ret i32 1
land.rhs7:
  %.v14 = load i32, i32* %sum
  %.v15 = icmp eq i32 %.v14, 45
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  %.v18 = zext i1 %.v17 to i32
  store i32 %.v18, i32* %.v9
  br label %land.end8
land.end8:
  %.v19 = load i32, i32* %.v9
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %if.then5, label %if.end6
}

