declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @func1(i32 %x, i32 %y, i32 %z) {
entry:
  %z.addr = alloca i32
  %y.addr = alloca i32
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  store i32 %y, i32* %y.addr
  store i32 %z, i32* %z.addr
  %.v1 = load i32, i32* %z.addr
  %.v2 = icmp eq i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.else2
if.then1:
  %.v5 = load i32, i32* %x.addr
  %.v6 = load i32, i32* %y.addr
  %.v7 = mul i32 %.v5, %.v6
  ret i32 %.v7
if.else2:
  %.v8 = load i32, i32* %x.addr
  %.v9 = load i32, i32* %y.addr
  %.v10 = load i32, i32* %z.addr
  %.v11 = sub i32 %.v9, %.v10
  %.v12 = call i32 @func1(i32 %.v8, i32 %.v11, i32 0)
  ret i32 %.v12
if.end3:
  ret i32 0
}

define i32 @func2(i32 %x, i32 %y) {
entry:
  %y.addr = alloca i32
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  store i32 %y, i32* %y.addr
  %.v1 = load i32, i32* %y.addr
  %.v2 = icmp ne i32 %.v1, 0
  br i1 %.v2, label %if.then1, label %if.else2
if.then1:
  %.v3 = load i32, i32* %x.addr
  %.v4 = load i32, i32* %y.addr
  %.v5 = srem i32 %.v3, %.v4
  %.v6 = call i32 @func2(i32 %.v5, i32 0)
  ret i32 %.v6
if.else2:
  %.v7 = load i32, i32* %x.addr
  ret i32 %.v7
if.end3:
  ret i32 0
}

define i32 @func3(i32 %x, i32 %y) {
entry:
  %y.addr = alloca i32
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  store i32 %y, i32* %y.addr
  %.v1 = load i32, i32* %y.addr
  %.v2 = icmp eq i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.else2
if.then1:
  %.v5 = load i32, i32* %x.addr
  %.v6 = add i32 %.v5, 1
  ret i32 %.v6
if.else2:
  %.v7 = load i32, i32* %x.addr
  %.v8 = load i32, i32* %y.addr
  %.v9 = add i32 %.v7, %.v8
  %.v10 = call i32 @func3(i32 %.v9, i32 0)
  ret i32 %.v10
if.end3:
  ret i32 0
}

define i32 @func4(i32 %x, i32 %y, i32 %z) {
entry:
  %z.addr = alloca i32
  %y.addr = alloca i32
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  store i32 %y, i32* %y.addr
  store i32 %z, i32* %z.addr
  %.v1 = load i32, i32* %x.addr
  %.v2 = icmp ne i32 %.v1, 0
  br i1 %.v2, label %if.then1, label %if.else2
if.then1:
  %.v3 = load i32, i32* %y.addr
  ret i32 %.v3
if.else2:
  %.v4 = load i32, i32* %z.addr
  ret i32 %.v4
if.end3:
  ret i32 0
}

define i32 @func5(i32 %x) {
entry:
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  %.v1 = load i32, i32* %x.addr
  %.v2 = sub i32 0, %.v1
  ret i32 %.v2
}

define i32 @func6(i32 %x, i32 %y) {
entry:
  %.v1 = alloca i32
  %y.addr = alloca i32
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  store i32 %y, i32* %y.addr
  store i32 0, i32* %.v1
  %.v2 = load i32, i32* %x.addr
  %.v3 = icmp ne i32 %.v2, 0
  br i1 %.v3, label %land.rhs4, label %land.end5
if.then1:
  ret i32 1
if.else2:
  ret i32 0
if.end3:
  ret i32 0
land.rhs4:
  %.v4 = load i32, i32* %y.addr
  %.v5 = icmp ne i32 %.v4, 0
  %.v6 = zext i1 %.v5 to i32
  store i32 %.v6, i32* %.v1
  br label %land.end5
land.end5:
  %.v7 = load i32, i32* %.v1
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %if.then1, label %if.else2
}

define i32 @func7(i32 %x) {
entry:
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  %.v1 = load i32, i32* %x.addr
  %.v2 = icmp eq i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.else2
if.then1:
  ret i32 1
if.else2:
  ret i32 0
if.end3:
  ret i32 0
}

define i32 @main() {
entry:
  %a = alloca i32
  %i = alloca i32
  %arr = alloca [10 x i32]
  %i4 = alloca i32
  %i3 = alloca i32
  %i2 = alloca i32
  %i1 = alloca i32
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* %i1
  %.v2 = call i32 @getint()
  store i32 %.v2, i32* %i2
  %.v3 = call i32 @getint()
  store i32 %.v3, i32* %i3
  %.v4 = call i32 @getint()
  store i32 %.v4, i32* %i4
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v5 = load i32, i32* %i
  %.v6 = icmp slt i32 %.v5, 10
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %while.body2, label %while.end3
while.body2:
  %.v9 = call i32 @getint()
  %.v10 = load i32, i32* %i
  %t56 = sext i32 %.v10 to i64
  %t57 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t56
  store i32 %.v9, i32* %t57
  %.v11 = load i32, i32* %i
  %.v12 = add i32 %.v11, 1
  store i32 %.v12, i32* %i
  br label %while.cond1
while.end3:
  %.v13 = load i32, i32* %i1
  %.v14 = call i32 @func7(i32 %.v13)
  %.v15 = load i32, i32* %i2
  %.v16 = call i32 @func5(i32 %.v15)
  %.v17 = call i32 @func6(i32 %.v14, i32 %.v16)
  %.v18 = load i32, i32* %i3
  %.v19 = call i32 @func2(i32 %.v17, i32 %.v18)
  %.v20 = load i32, i32* %i4
  %.v21 = call i32 @func3(i32 %.v19, i32 %.v20)
  %.v22 = call i32 @func5(i32 %.v21)
  %t70 = sext i32 0 to i64
  %t71 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t70
  %.v23 = load i32, i32* %t71
  %t73 = sext i32 1 to i64
  %t74 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t73
  %.v24 = load i32, i32* %t74
  %.v25 = call i32 @func5(i32 %.v24)
  %t77 = sext i32 2 to i64
  %t78 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t77
  %.v26 = load i32, i32* %t78
  %t80 = sext i32 3 to i64
  %t81 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t80
  %.v27 = load i32, i32* %t81
  %.v28 = call i32 @func7(i32 %.v27)
  %.v29 = call i32 @func6(i32 %.v26, i32 %.v28)
  %t85 = sext i32 4 to i64
  %t86 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t85
  %.v30 = load i32, i32* %t86
  %t88 = sext i32 5 to i64
  %t89 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t88
  %.v31 = load i32, i32* %t89
  %.v32 = call i32 @func7(i32 %.v31)
  %.v33 = call i32 @func2(i32 %.v30, i32 %.v32)
  %.v34 = call i32 @func4(i32 %.v25, i32 %.v29, i32 %.v33)
  %t94 = sext i32 6 to i64
  %t95 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t94
  %.v35 = load i32, i32* %t95
  %.v36 = call i32 @func3(i32 %.v34, i32 %.v35)
  %t98 = sext i32 7 to i64
  %t99 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t98
  %.v37 = load i32, i32* %t99
  %.v38 = call i32 @func2(i32 %.v36, i32 %.v37)
  %t102 = sext i32 8 to i64
  %t103 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t102
  %.v39 = load i32, i32* %t103
  %t105 = sext i32 9 to i64
  %t106 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t105
  %.v40 = load i32, i32* %t106
  %.v41 = call i32 @func7(i32 %.v40)
  %.v42 = call i32 @func3(i32 %.v39, i32 %.v41)
  %.v43 = load i32, i32* %i1
  %.v44 = call i32 @func1(i32 %.v38, i32 %.v42, i32 %.v43)
  %.v45 = call i32 @func4(i32 %.v22, i32 %.v23, i32 %.v44)
  %.v46 = load i32, i32* %i2
  %.v47 = load i32, i32* %i3
  %.v48 = call i32 @func7(i32 %.v47)
  %.v49 = load i32, i32* %i4
  %.v50 = call i32 @func3(i32 %.v48, i32 %.v49)
  %.v51 = call i32 @func2(i32 %.v46, i32 %.v50)
  %.v52 = call i32 @func3(i32 %.v45, i32 %.v51)
  %t120 = sext i32 0 to i64
  %t121 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t120
  %.v53 = load i32, i32* %t121
  %t123 = sext i32 1 to i64
  %t124 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t123
  %.v54 = load i32, i32* %t124
  %.v55 = call i32 @func1(i32 %.v52, i32 %.v53, i32 %.v54)
  %t127 = sext i32 2 to i64
  %t128 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t127
  %.v56 = load i32, i32* %t128
  %.v57 = call i32 @func2(i32 %.v55, i32 %.v56)
  %t131 = sext i32 3 to i64
  %t132 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t131
  %.v58 = load i32, i32* %t132
  %t134 = sext i32 4 to i64
  %t135 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t134
  %.v59 = load i32, i32* %t135
  %t137 = sext i32 5 to i64
  %t138 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t137
  %.v60 = load i32, i32* %t138
  %.v61 = call i32 @func5(i32 %.v60)
  %.v62 = call i32 @func3(i32 %.v59, i32 %.v61)
  %t142 = sext i32 6 to i64
  %t143 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t142
  %.v63 = load i32, i32* %t143
  %.v64 = call i32 @func5(i32 %.v63)
  %.v65 = call i32 @func2(i32 %.v62, i32 %.v64)
  %t147 = sext i32 7 to i64
  %t148 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t147
  %.v66 = load i32, i32* %t148
  %t150 = sext i32 8 to i64
  %t151 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t150
  %.v67 = load i32, i32* %t151
  %.v68 = call i32 @func7(i32 %.v67)
  %.v69 = call i32 @func1(i32 %.v65, i32 %.v66, i32 %.v68)
  %t155 = sext i32 9 to i64
  %t156 = getelementptr [10 x i32], [10 x i32]* %arr, i64 0, i64 %t155
  %.v70 = load i32, i32* %t156
  %.v71 = call i32 @func5(i32 %.v70)
  %.v72 = call i32 @func2(i32 %.v69, i32 %.v71)
  %.v73 = load i32, i32* %i1
  %.v74 = call i32 @func3(i32 %.v72, i32 %.v73)
  %.v75 = call i32 @func1(i32 %.v57, i32 %.v58, i32 %.v74)
  store i32 %.v75, i32* %a
  %.v76 = load i32, i32* %a
  ret i32 %.v76
}

