@n = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @counting_sort(i32* %ini_arr, i32* %sorted_arr, i32 %n) {
entry:
  %k = alloca i32
  %j = alloca i32
  %i = alloca i32
  %count_arr = alloca [10 x i32]
  %n.addr = alloca i32
  store i32 %n, i32* %n.addr
  store i32 0, i32* %k
  store i32 0, i32* %i
  store i32 0, i32* %j
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %k
  %.v2 = icmp slt i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %k
  %t5 = sext i32 %.v5 to i64
  %t6 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %t5
  store i32 0, i32* %t6
  %.v6 = load i32, i32* %k
  %.v7 = add i32 %.v6, 1
  store i32 %.v7, i32* %k
  br label %while.cond1
while.end3:
  br label %while.cond4
while.cond4:
  %.v8 = load i32, i32* %i
  %.v9 = load i32, i32* %n.addr
  %.v10 = icmp slt i32 %.v8, %.v9
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %while.body5, label %while.end6
while.body5:
  %.v13 = load i32, i32* %i
  %t15 = sext i32 %.v13 to i64
  %t16 = getelementptr i32, i32* %ini_arr, i64 %t15
  %.v14 = load i32, i32* %t16
  %t18 = sext i32 %.v14 to i64
  %t19 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %t18
  %.v15 = load i32, i32* %t19
  %.v16 = add i32 %.v15, 1
  %.v17 = load i32, i32* %i
  %t23 = sext i32 %.v17 to i64
  %t24 = getelementptr i32, i32* %ini_arr, i64 %t23
  %.v18 = load i32, i32* %t24
  %t26 = sext i32 %.v18 to i64
  %t27 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %t26
  store i32 %.v16, i32* %t27
  %.v19 = load i32, i32* %i
  %.v20 = add i32 %.v19, 1
  store i32 %.v20, i32* %i
  br label %while.cond4
while.end6:
  store i32 1, i32* %k
  br label %while.cond7
while.cond7:
  %.v21 = load i32, i32* %k
  %.v22 = icmp slt i32 %.v21, 10
  %.v23 = zext i1 %.v22 to i32
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %while.body8, label %while.end9
while.body8:
  %.v25 = load i32, i32* %k
  %t35 = sext i32 %.v25 to i64
  %t36 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %t35
  %.v26 = load i32, i32* %t36
  %.v27 = load i32, i32* %k
  %.v28 = sub i32 %.v27, 1
  %t40 = sext i32 %.v28 to i64
  %t41 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %t40
  %.v29 = load i32, i32* %t41
  %.v30 = add i32 %.v26, %.v29
  %.v31 = load i32, i32* %k
  %t45 = sext i32 %.v31 to i64
  %t46 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %t45
  store i32 %.v30, i32* %t46
  %.v32 = load i32, i32* %k
  %.v33 = add i32 %.v32, 1
  store i32 %.v33, i32* %k
  br label %while.cond7
while.end9:
  %.v34 = load i32, i32* %n.addr
  store i32 %.v34, i32* %j
  br label %while.cond10
while.cond10:
  %.v35 = load i32, i32* %j
  %.v36 = icmp sgt i32 %.v35, 0
  %.v37 = zext i1 %.v36 to i32
  %.v38 = icmp ne i32 %.v37, 0
  br i1 %.v38, label %while.body11, label %while.end12
while.body11:
  %.v39 = load i32, i32* %j
  %.v40 = sub i32 %.v39, 1
  %t56 = sext i32 %.v40 to i64
  %t57 = getelementptr i32, i32* %ini_arr, i64 %t56
  %.v41 = load i32, i32* %t57
  %t59 = sext i32 %.v41 to i64
  %t60 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %t59
  %.v42 = load i32, i32* %t60
  %.v43 = sub i32 %.v42, 1
  %.v44 = load i32, i32* %j
  %.v45 = sub i32 %.v44, 1
  %t65 = sext i32 %.v45 to i64
  %t66 = getelementptr i32, i32* %ini_arr, i64 %t65
  %.v46 = load i32, i32* %t66
  %t68 = sext i32 %.v46 to i64
  %t69 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %t68
  store i32 %.v43, i32* %t69
  %.v47 = load i32, i32* %j
  %.v48 = sub i32 %.v47, 1
  %t72 = sext i32 %.v48 to i64
  %t73 = getelementptr i32, i32* %ini_arr, i64 %t72
  %.v49 = load i32, i32* %t73
  %.v50 = load i32, i32* %j
  %.v51 = sub i32 %.v50, 1
  %t77 = sext i32 %.v51 to i64
  %t78 = getelementptr i32, i32* %ini_arr, i64 %t77
  %.v52 = load i32, i32* %t78
  %t80 = sext i32 %.v52 to i64
  %t81 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i64 %t80
  %.v53 = load i32, i32* %t81
  %t83 = sext i32 %.v53 to i64
  %t84 = getelementptr i32, i32* %sorted_arr, i64 %t83
  store i32 %.v49, i32* %t84
  %.v54 = load i32, i32* %j
  %.v55 = sub i32 %.v54, 1
  store i32 %.v55, i32* %j
  br label %while.cond10
while.end12:
  ret i32 0
}

define i32 @main() {
entry:
  %tmp = alloca i32
  %b = alloca [10 x i32]
  %i = alloca i32
  %a = alloca [10 x i32]
  store i32 10, i32* @n
  %t87 = sext i32 0 to i64
  %t88 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t87
  store i32 4, i32* %t88
  %t89 = sext i32 1 to i64
  %t90 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t89
  store i32 3, i32* %t90
  %t91 = sext i32 2 to i64
  %t92 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t91
  store i32 9, i32* %t92
  %t93 = sext i32 3 to i64
  %t94 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t93
  store i32 2, i32* %t94
  %t95 = sext i32 4 to i64
  %t96 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t95
  store i32 0, i32* %t96
  %t97 = sext i32 5 to i64
  %t98 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t97
  store i32 1, i32* %t98
  %t99 = sext i32 6 to i64
  %t100 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t99
  store i32 6, i32* %t100
  %t101 = sext i32 7 to i64
  %t102 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t101
  store i32 5, i32* %t102
  %t103 = sext i32 8 to i64
  %t104 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t103
  store i32 7, i32* %t104
  %t105 = sext i32 9 to i64
  %t106 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t105
  store i32 8, i32* %t106
  store i32 0, i32* %i
  %.v1 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v2 = getelementptr [10 x i32], [10 x i32]* %b, i64 0, i64 0
  %.v3 = load i32, i32* @n
  %.v4 = call i32 @counting_sort(i32* %.v1, i32* %.v2, i32 %.v3)
  store i32 %.v4, i32* %i
  br label %while.cond1
while.cond1:
  %.v5 = load i32, i32* %i
  %.v6 = load i32, i32* @n
  %.v7 = icmp slt i32 %.v5, %.v6
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %while.body2, label %while.end3
while.body2:
  %.v10 = load i32, i32* %i
  %t117 = sext i32 %.v10 to i64
  %t118 = getelementptr [10 x i32], [10 x i32]* %b, i64 0, i64 %t117
  %.v11 = load i32, i32* %t118
  store i32 %.v11, i32* %tmp
  %.v12 = load i32, i32* %tmp
  call void @putint(i32 %.v12)
  store i32 10, i32* %tmp
  %.v13 = load i32, i32* %tmp
  call void @putch(i32 %.v13)
  %.v14 = load i32, i32* %i
  %.v15 = add i32 %.v14, 1
  store i32 %.v15, i32* %i
  br label %while.cond1
while.end3:
  ret i32 0
}

