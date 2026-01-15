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
  store i32 0, i32* %i
  br label %for_cond1
for_cond1:
  %.v1 = load i32, i32* %i
  %.v2 = icmp slt i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %t3 = icmp ne i32 %.v3, 0
  br i1 %t3, label %for_body2, label %for_end4
for_body2:
  br label %for_inc3
for_inc3:
  %.v4 = load i32, i32* %i
  %.v5 = add i32 %.v4, 1
  store i32 %.v5, i32* %i
  br label %for_cond1
for_end4:
  %.v6 = load i32, i32* %i
  %.v7 = icmp eq i32 %.v6, 10
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %if.then5, label %if.end6
if.then5:
  ret i32 0
if.end6:
  ret i32 1
}

