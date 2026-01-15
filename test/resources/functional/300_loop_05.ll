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
  %.v1 = alloca i32
  %i = alloca i32
  %sum = alloca i32
  store i32 0, i32* %sum
  store i32 0, i32* %i
  br label %for_cond1
for_cond1:
  store i32 0, i32* %.v1
  %.v2 = load i32, i32* %i
  %.v3 = icmp slt i32 %.v2, 20
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %land.rhs5, label %land.end6
for_body2:
  %.v12 = load i32, i32* %sum
  %.v13 = load i32, i32* %i
  %.v14 = add i32 %.v12, %.v13
  store i32 %.v14, i32* %sum
  br label %for_inc3
for_inc3:
  %.v15 = load i32, i32* %i
  %.v16 = add i32 %.v15, 1
  store i32 %.v16, i32* %i
  br label %for_cond1
for_end4:
  %.v17 = load i32, i32* %sum
  %.v18 = icmp eq i32 %.v17, 105
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %if.then7, label %if.end8
land.rhs5:
  %.v6 = load i32, i32* %sum
  %.v7 = icmp slt i32 %.v6, 100
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  %.v10 = zext i1 %.v9 to i32
  store i32 %.v10, i32* %.v1
  br label %land.end6
land.end6:
  %.v11 = load i32, i32* %.v1
  %t10 = icmp ne i32 %.v11, 0
  br i1 %t10, label %for_body2, label %for_end4
if.then7:
  ret i32 0
if.end8:
  ret i32 1
}

