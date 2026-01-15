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

define i32 @add(i32 %a, i32 %b) {
entry:
  %b.addr = alloca i32
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  store i32 %b, i32* %b.addr
  %.v1 = load i32, i32* %a.addr
  %.v2 = load i32, i32* %b.addr
  %.v3 = add i32 %.v1, %.v2
  ret i32 %.v3
}

define i32 @main() {
entry:
  %res = alloca i32
  %p = alloca %struct.Point
  %t3 = getelementptr %struct.Point, %struct.Point* %p, i64 0, i32 0
  store i32 10, i32* %t3
  %t4 = getelementptr %struct.Point, %struct.Point* %p, i64 0, i32 1
  store i32 20, i32* %t4
  %.v1 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 0
  %.v2 = load i32, i32* %.v1
  %.v3 = getelementptr %struct.Point, %struct.Point* %p, i32 0, i32 1
  %.v4 = load i32, i32* %.v3
  %.v5 = call i32 @add(i32 %.v2, i32 %.v4)
  store i32 %.v5, i32* %res
  %.v6 = load i32, i32* %res
  %.v7 = icmp eq i32 %.v6, 30
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %if.then1, label %if.end2
if.then1:
  ret i32 0
if.end2:
  ret i32 1
}

