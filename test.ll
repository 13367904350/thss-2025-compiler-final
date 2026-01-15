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
  %t0 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 0
  store i32 0, i32* %t0
  %t1 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 1
  store i32 1, i32* %t1
  store i32 0, i32* %sum
  store i32 0, i32* %i
  br label %for_cond1
for_cond1:
  %.v1 = load i32, i32* %i
  %.v2 = icmp slt i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %t5 = icmp ne i32 %.v3, 0
  br i1 %t5, label %for_body2, label %for_end4
for_body2:
  %.v4 = load i32, i32* %sum
  %t7 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 1
  %.v5 = load i32, i32* %t7
  %.v6 = add i32 %.v4, %.v5
  store i32 %.v6, i32* %sum
  br label %for_inc3
for_inc3:
  %.v7 = load i32, i32* %i
  %.v8 = add i32 %.v7, 1
  store i32 %.v8, i32* %i
  br label %for_cond1
for_end4:
  store i32 0, i32* %i
  br label %for_cond5
for_cond5:
  %.v9 = load i32, i32* %i
  %.v10 = icmp slt i32 %.v9, 5
  %.v11 = zext i1 %.v10 to i32
  %t15 = icmp ne i32 %.v11, 0
  br i1 %t15, label %for_body6, label %for_end8
for_body6:
  %t16 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 0
  %.v12 = load i32, i32* %t16
  %.v13 = add i32 %.v12, 2
  %t19 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 0
  store i32 %.v13, i32* %t19
  br label %for_inc7
for_inc7:
  %.v14 = load i32, i32* %i
  %.v15 = add i32 %.v14, 1
  store i32 %.v15, i32* %i
  br label %for_cond5
for_end8:
  %.v16 = load i32, i32* %sum
  %t23 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 0
  %.v17 = load i32, i32* %t23
  %.v18 = add i32 %.v16, %.v17
  ret i32 %.v18
}

