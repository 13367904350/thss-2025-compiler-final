%struct.Point = type { i32, i32 }
%struct.Rect = type { %struct.Point, %struct.Point }
%struct.Node = type { i32, i32 }
%struct.Data = type { [10 x i32], float }
%struct.Mixed = type { i32, float, i32 }
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
  %points = alloca [5 x %struct.Point]
  store i32 0, i32* %i
  br label %for_cond1
for_cond1:
  %.v1 = load i32, i32* %i
  %.v2 = icmp slt i32 %.v1, 5
  %.v3 = zext i1 %.v2 to i32
  %t3 = icmp ne i32 %.v3, 0
  br i1 %t3, label %for_body2, label %for_end4
for_body2:
  %.v4 = load i32, i32* %i
  %.v5 = load i32, i32* %i
  %t6 = getelementptr [5 x %struct.Point], [5 x %struct.Point]* %points, i64 0, i32 %.v5
  %.v6 = getelementptr %struct.Point, %struct.Point* %t6, i32 0, i32 0
  store i32 %.v4, i32* %.v6
  %.v7 = load i32, i32* %i
  %.v8 = mul i32 %.v7, 2
  %.v9 = load i32, i32* %i
  %t11 = getelementptr [5 x %struct.Point], [5 x %struct.Point]* %points, i64 0, i32 %.v9
  %.v10 = getelementptr %struct.Point, %struct.Point* %t11, i32 0, i32 1
  store i32 %.v8, i32* %.v10
  br label %for_inc3
for_inc3:
  %.v11 = load i32, i32* %i
  %.v12 = add i32 %.v11, 1
  store i32 %.v12, i32* %i
  br label %for_cond1
for_end4:
  %t15 = getelementptr [5 x %struct.Point], [5 x %struct.Point]* %points, i64 0, i32 3
  %.v13 = getelementptr %struct.Point, %struct.Point* %t15, i32 0, i32 1
  %.v14 = load i32, i32* %.v13
  %.v15 = icmp eq i32 %.v14, 6
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %if.then5, label %if.end6
if.then5:
  ret i32 0
if.end6:
  ret i32 1
}

