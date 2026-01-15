@a = global i32 zeroinitializer
@b = global i32 zeroinitializer
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
  %c = alloca i32
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* @a
  %.v2 = call i32 @getint()
  store i32 %.v2, i32* @b
  store i32 0, i32* %.v3
  %.v4 = load i32, i32* @a
  %.v5 = load i32, i32* @b
  %.v6 = icmp eq i32 %.v4, %.v5
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %land.rhs4, label %land.end5
if.then1:
  store i32 1, i32* %c
  br label %if.end3
if.else2:
  store i32 0, i32* %c
  br label %if.end3
if.end3:
  %.v16 = load i32, i32* %c
  ret i32 %.v16
land.rhs4:
  %.v9 = load i32, i32* @a
  %.v10 = icmp ne i32 %.v9, 3
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  %.v13 = zext i1 %.v12 to i32
  store i32 %.v13, i32* %.v3
  br label %land.end5
land.end5:
  %.v14 = load i32, i32* %.v3
  %.v15 = icmp ne i32 %.v14, 0
  br i1 %.v15, label %if.then1, label %if.else2
}

