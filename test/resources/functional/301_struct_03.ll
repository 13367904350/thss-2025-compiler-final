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
  %r = alloca %struct.Rect
  %.v1 = getelementptr %struct.Rect, %struct.Rect* %r, i32 0, i32 0
  %.v2 = getelementptr %struct.Point, %struct.Point* %.v1, i32 0, i32 0
  store i32 1, i32* %.v2
  %.v3 = getelementptr %struct.Rect, %struct.Rect* %r, i32 0, i32 0
  %.v4 = getelementptr %struct.Point, %struct.Point* %.v3, i32 0, i32 1
  store i32 2, i32* %.v4
  %.v5 = getelementptr %struct.Rect, %struct.Rect* %r, i32 0, i32 1
  %.v6 = getelementptr %struct.Point, %struct.Point* %.v5, i32 0, i32 0
  store i32 3, i32* %.v6
  %.v7 = getelementptr %struct.Rect, %struct.Rect* %r, i32 0, i32 1
  %.v8 = getelementptr %struct.Point, %struct.Point* %.v7, i32 0, i32 1
  store i32 4, i32* %.v8
  %.v9 = getelementptr %struct.Rect, %struct.Rect* %r, i32 0, i32 1
  %.v10 = getelementptr %struct.Point, %struct.Point* %.v9, i32 0, i32 0
  %.v11 = load i32, i32* %.v10
  %.v12 = getelementptr %struct.Rect, %struct.Rect* %r, i32 0, i32 0
  %.v13 = getelementptr %struct.Point, %struct.Point* %.v12, i32 0, i32 0
  %.v14 = load i32, i32* %.v13
  %.v15 = sub i32 %.v11, %.v14
  %.v16 = icmp eq i32 %.v15, 2
  %.v17 = zext i1 %.v16 to i32
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %if.then1, label %if.end2
if.then1:
  ret i32 0
if.end2:
  ret i32 1
}

