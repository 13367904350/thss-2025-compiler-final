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
  %m = alloca %struct.Mixed
  %t0 = getelementptr %struct.Mixed, %struct.Mixed* %m, i64 0, i32 0
  store i32 1, i32* %t0
  %t1 = getelementptr %struct.Mixed, %struct.Mixed* %m, i64 0, i32 1
  store float 0x4004000000000000, float* %t1
  %t2 = getelementptr %struct.Mixed, %struct.Mixed* %m, i64 0, i32 2
  store i32 3, i32* %t2
  %.v1 = getelementptr %struct.Mixed, %struct.Mixed* %m, i32 0, i32 2
  %.v2 = load i32, i32* %.v1
  %.v3 = icmp eq i32 %.v2, 3
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %if.then1, label %if.end2
if.then1:
  ret i32 0
if.end2:
  ret i32 1
}

