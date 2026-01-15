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
  %d = alloca %struct.Data
  store i32 0, i32* %i
  br label %for_cond1
for_cond1:
  %.v1 = load i32, i32* %i
  %.v2 = icmp slt i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %t3 = icmp ne i32 %.v3, 0
  br i1 %t3, label %for_body2, label %for_end4
for_body2:
  %.v4 = load i32, i32* %i
  %.v5 = load i32, i32* %i
  %.v6 = mul i32 %.v4, %.v5
  %.v7 = getelementptr %struct.Data, %struct.Data* %d, i32 0, i32 0
  %.v8 = load i32, i32* %i
  %t9 = getelementptr [10 x i32], [10 x i32]* %.v7, i64 0, i32 %.v8
  store i32 %.v6, i32* %t9
  br label %for_inc3
for_inc3:
  %.v9 = load i32, i32* %i
  %.v10 = add i32 %.v9, 1
  store i32 %.v10, i32* %i
  br label %for_cond1
for_end4:
  %.v11 = getelementptr %struct.Data, %struct.Data* %d, i32 0, i32 1
  store float 0x40091EB860000000, float* %.v11
  %.v12 = getelementptr %struct.Data, %struct.Data* %d, i32 0, i32 0
  %t14 = getelementptr [10 x i32], [10 x i32]* %.v12, i64 0, i32 5
  %.v13 = load i32, i32* %t14
  %.v14 = icmp eq i32 %.v13, 25
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %if.then5, label %if.end6
if.then5:
  ret i32 0
if.end6:
  ret i32 1
}

