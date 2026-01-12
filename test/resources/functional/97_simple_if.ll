declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca i32
  store i32 2, i32* %t0
  %t1 = alloca i32
  store i32 10, i32* %t1
  %t2 = alloca i32
  %v1 = load i32, i32* %t0
  %v2 = load i32, i32* %t1
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %if.then1, label %if.else2
if.then1:
  store i32 30, i32* %t2
  br label %if.end3
if.else2:
  %v6 = load i32, i32* %t0
  %v7 = load i32, i32* %t1
  %v8 = sub i32 %v6, %v7
  %v9 = mul i32 %v8, 10
  %v10 = add i32 %v9, 30
  store i32 %v10, i32* %t2
  br label %if.end3
if.end3:
  %v11 = load i32, i32* %t2
  %v12 = icmp sgt i32 %v11, 1000
  %v13 = zext i1 %v12 to i32
  %v14 = icmp ne i32 %v13, 0
  br i1 %v14, label %if.then4, label %if.end5
if.then4:
  store i32 1000, i32* %t2
  br label %if.end5
if.end5:
  %v15 = load i32, i32* %t2
  ret i32 %v15
}

