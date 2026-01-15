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
  %.v1 = alloca i32
  %p = alloca %struct.Point
  %t0 = getelementptr %struct.Point, %struct.Point* %p, i64 0, i32 0
  store i32 30, i32* %t0
  %t1 = getelementptr %struct.Point, %struct.Point* %p, i64 0, i32 1
  store i32 40, i32* %t1
  store i32 0, i32* %.v1
  %.v2 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 0
  %.v3 = load i32, i32* %.v2
  %.v4 = icmp eq i32 %.v3, 30
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %land.rhs3, label %land.end4
if.then1:
  ret i32 0
if.end2:
  ret i32 1
land.rhs3:
  %.v7 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 1
  %.v8 = load i32, i32* %.v7
  %.v9 = icmp eq i32 %.v8, 40
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  %.v12 = zext i1 %.v11 to i32
  store i32 %.v12, i32* %.v1
  br label %land.end4
land.end4:
  %.v13 = load i32, i32* %.v1
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %if.then1, label %if.end2
}

