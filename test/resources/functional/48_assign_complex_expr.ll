declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %result = alloca i32
  %d = alloca i32
  %c = alloca i32
  %b = alloca i32
  %a = alloca i32
  store i32 5, i32* %a
  store i32 5, i32* %b
  store i32 1, i32* %c
  %.v1 = sub i32 0, 2
  store i32 %.v1, i32* %d
  %.v2 = load i32, i32* %d
  %.v3 = mul i32 %.v2, 1
  %.v4 = sdiv i32 %.v3, 2
  %.v5 = load i32, i32* %a
  %.v6 = load i32, i32* %b
  %.v7 = sub i32 %.v5, %.v6
  %.v8 = add i32 %.v4, %.v7
  %.v9 = load i32, i32* %c
  %.v10 = add i32 %.v9, 3
  %.v11 = sub i32 0, %.v10
  %.v12 = srem i32 %.v11, 2
  %.v13 = sub i32 %.v8, %.v12
  store i32 %.v13, i32* %result
  %.v14 = load i32, i32* %result
  call void @putint(i32 %.v14)
  %.v15 = load i32, i32* %d
  %.v16 = srem i32 %.v15, 2
  %.v17 = add i32 %.v16, 67
  %.v18 = load i32, i32* %a
  %.v19 = load i32, i32* %b
  %.v20 = sub i32 %.v18, %.v19
  %.v21 = sub i32 0, %.v20
  %.v22 = add i32 %.v17, %.v21
  %.v23 = load i32, i32* %c
  %.v24 = add i32 %.v23, 2
  %.v25 = srem i32 %.v24, 2
  %.v26 = sub i32 0, %.v25
  %.v27 = sub i32 %.v22, %.v26
  store i32 %.v27, i32* %result
  %.v28 = load i32, i32* %result
  %.v29 = add i32 %.v28, 3
  store i32 %.v29, i32* %result
  %.v30 = load i32, i32* %result
  call void @putint(i32 %.v30)
  ret i32 0
}

