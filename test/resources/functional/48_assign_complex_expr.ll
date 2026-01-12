declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca i32
  %t1 = alloca i32
  %t2 = alloca i32
  %t3 = alloca i32
  %t4 = alloca i32
  store i32 5, i32* %t0
  store i32 5, i32* %t1
  store i32 1, i32* %t2
  %v1 = sub i32 0, 2
  store i32 %v1, i32* %t3
  %v2 = load i32, i32* %t3
  %v3 = mul i32 %v2, 1
  %v4 = sdiv i32 %v3, 2
  %v5 = load i32, i32* %t0
  %v6 = load i32, i32* %t1
  %v7 = sub i32 %v5, %v6
  %v8 = add i32 %v4, %v7
  %v9 = load i32, i32* %t2
  %v10 = add i32 %v9, 3
  %v11 = sub i32 0, %v10
  %v12 = srem i32 %v11, 2
  %v13 = sub i32 %v8, %v12
  store i32 %v13, i32* %t4
  %v14 = load i32, i32* %t4
  call void @putint(i32 %v14)
  %v15 = load i32, i32* %t3
  %v16 = srem i32 %v15, 2
  %v17 = add i32 %v16, 67
  %v18 = load i32, i32* %t0
  %v19 = load i32, i32* %t1
  %v20 = sub i32 %v18, %v19
  %v21 = sub i32 0, %v20
  %v22 = add i32 %v17, %v21
  %v23 = load i32, i32* %t2
  %v24 = add i32 %v23, 2
  %v25 = srem i32 %v24, 2
  %v26 = sub i32 0, %v25
  %v27 = sub i32 %v22, %v26
  store i32 %v27, i32* %t4
  %v28 = load i32, i32* %t4
  %v29 = add i32 %v28, 3
  store i32 %v29, i32* %t4
  %v30 = load i32, i32* %t4
  call void @putint(i32 %v30)
  ret i32 0
}

