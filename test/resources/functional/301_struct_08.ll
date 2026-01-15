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
  %.v3 = alloca i32
  %p2 = alloca %struct.Point
  %p1 = alloca %struct.Point
  %t0 = getelementptr %struct.Point, %struct.Point* %p1, i64 0, i32 0
  store i32 1, i32* %t0
  %t1 = getelementptr %struct.Point, %struct.Point* %p1, i64 0, i32 1
  store i32 2, i32* %t1
  %.v1 = load %struct.Point, %struct.Point* %p1
  store %struct.Point %.v1, %struct.Point* %p2
  %.v2 = getelementptr %struct.Point, %struct.Point* %p2, i32 0, i32 0
  store i32 3, i32* %.v2
  store i32 0, i32* %.v3
  %.v4 = getelementptr %struct.Point, %struct.Point* %p2, i32 0, i32 1
  %.v5 = load i32, i32* %.v4
  %.v6 = icmp eq i32 %.v5, 2
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %land.rhs3, label %land.end4
if.then1:
  ret i32 0
if.end2:
  ret i32 1
land.rhs3:
  %.v9 = getelementptr %struct.Point, %struct.Point* %p1, i32 0, i32 0
  %.v10 = load i32, i32* %.v9
  %.v11 = icmp eq i32 %.v10, 1
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  %.v14 = zext i1 %.v13 to i32
  store i32 %.v14, i32* %.v3
  br label %land.end4
land.end4:
  %.v15 = load i32, i32* %.v3
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %if.then1, label %if.end2
}

