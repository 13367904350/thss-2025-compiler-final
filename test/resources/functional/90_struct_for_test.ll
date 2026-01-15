%struct.Point = type { i32, i32 }
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
  %p = alloca %struct.Point
  %.v1 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 0
  store i32 0, i32* %.v1
  %.v2 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 1
  store i32 1, i32* %.v2
  store i32 0, i32* %sum
  store i32 0, i32* %i
  br label %for_cond1
for_cond1:
  %.v3 = load i32, i32* %i
  %.v4 = icmp slt i32 %.v3, 10
  %.v5 = zext i1 %.v4 to i32
  %t5 = icmp ne i32 %.v5, 0
  br i1 %t5, label %for_body2, label %for_end4
for_body2:
  %.v6 = load i32, i32* %sum
  %.v7 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 1
  %.v8 = load i32, i32* %.v7
  %.v9 = add i32 %.v6, %.v8
  store i32 %.v9, i32* %sum
  br label %for_inc3
for_inc3:
  %.v10 = load i32, i32* %i
  %.v11 = add i32 %.v10, 1
  store i32 %.v11, i32* %i
  br label %for_cond1
for_end4:
  store i32 0, i32* %i
  br label %for_cond5
for_cond5:
  %.v12 = load i32, i32* %i
  %.v13 = icmp slt i32 %.v12, 5
  %.v14 = zext i1 %.v13 to i32
  %t15 = icmp ne i32 %.v14, 0
  br i1 %t15, label %for_body6, label %for_end8
for_body6:
  %.v15 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 0
  %.v16 = load i32, i32* %.v15
  %.v17 = add i32 %.v16, 2
  %.v18 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 0
  store i32 %.v17, i32* %.v18
  br label %for_inc7
for_inc7:
  %.v19 = load i32, i32* %i
  %.v20 = add i32 %.v19, 1
  store i32 %.v20, i32* %i
  br label %for_cond5
for_end8:
  %.v21 = load i32, i32* %sum
  %.v22 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 0
  %.v23 = load i32, i32* %.v22
  %.v24 = add i32 %.v21, %.v23
  ret i32 %.v24
}

