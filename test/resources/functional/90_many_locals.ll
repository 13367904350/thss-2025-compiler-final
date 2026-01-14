declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @foo() {
entry:
  %sum2 = alloca i32
  %sum1 = alloca i32
  %p = alloca i32
  %o = alloca i32
  %n = alloca i32
  %m = alloca i32
  %l = alloca i32
  %k = alloca i32
  %j = alloca i32
  %i = alloca i32
  %h = alloca i32
  %g = alloca i32
  %f = alloca i32
  %e = alloca i32
  %d = alloca i32
  %c = alloca i32
  %b = alloca i32
  %a = alloca i32
  %arr = alloca [16 x i32]
  %t0 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 0
  store i32 0, i32* %t0
  %t1 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 1
  store i32 1, i32* %t1
  %t2 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 2
  store i32 2, i32* %t2
  %t3 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 3
  store i32 3, i32* %t3
  %t4 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 4
  store i32 0, i32* %t4
  %t5 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 5
  store i32 1, i32* %t5
  %t6 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 6
  store i32 2, i32* %t6
  %t7 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 7
  store i32 3, i32* %t7
  %t8 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 8
  store i32 0, i32* %t8
  %t9 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 9
  store i32 1, i32* %t9
  %t10 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 10
  store i32 2, i32* %t10
  %t11 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 11
  store i32 3, i32* %t11
  %t12 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 12
  store i32 0, i32* %t12
  %t13 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 13
  store i32 1, i32* %t13
  %t14 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 14
  store i32 2, i32* %t14
  %t15 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 15
  store i32 3, i32* %t15
  store i32 3, i32* %a
  store i32 7, i32* %b
  store i32 5, i32* %c
  store i32 6, i32* %d
  store i32 1, i32* %e
  store i32 0, i32* %f
  store i32 3, i32* %g
  store i32 5, i32* %h
  store i32 4, i32* %i
  store i32 2, i32* %j
  store i32 7, i32* %k
  store i32 9, i32* %l
  store i32 8, i32* %m
  store i32 1, i32* %n
  store i32 4, i32* %o
  store i32 6, i32* %p
  %.v1 = load i32, i32* %a
  %.v2 = load i32, i32* %b
  %.v3 = add i32 %.v1, %.v2
  %.v4 = load i32, i32* %c
  %.v5 = add i32 %.v3, %.v4
  %.v6 = load i32, i32* %d
  %.v7 = add i32 %.v5, %.v6
  %.v8 = load i32, i32* %e
  %.v9 = add i32 %.v7, %.v8
  %.v10 = load i32, i32* %f
  %.v11 = add i32 %.v9, %.v10
  %.v12 = load i32, i32* %g
  %.v13 = add i32 %.v11, %.v12
  %.v14 = load i32, i32* %h
  %.v15 = add i32 %.v13, %.v14
  store i32 %.v15, i32* %sum1
  %.v16 = load i32, i32* %i
  %.v17 = load i32, i32* %j
  %.v18 = add i32 %.v16, %.v17
  %.v19 = load i32, i32* %k
  %.v20 = add i32 %.v18, %.v19
  %.v21 = load i32, i32* %l
  %.v22 = add i32 %.v20, %.v21
  %.v23 = load i32, i32* %m
  %.v24 = add i32 %.v22, %.v23
  %.v25 = load i32, i32* %n
  %.v26 = add i32 %.v24, %.v25
  %.v27 = load i32, i32* %o
  %.v28 = add i32 %.v26, %.v27
  %.v29 = load i32, i32* %p
  %.v30 = add i32 %.v28, %.v29
  store i32 %.v30, i32* %sum2
  %.v31 = load i32, i32* %sum1
  %.v32 = load i32, i32* %sum2
  %.v33 = add i32 %.v31, %.v32
  %.v34 = load i32, i32* %a
  %t50 = sext i32 %.v34 to i64
  %t51 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t50
  %.v35 = load i32, i32* %t51
  %.v36 = add i32 %.v33, %.v35
  ret i32 %.v36
}

define i32 @main() {
entry:
  %sum = alloca i32
  %sum3 = alloca i32
  %x = alloca i32
  %w = alloca i32
  %v = alloca i32
  %u = alloca i32
  %t = alloca i32
  %s = alloca i32
  %r = alloca i32
  %q = alloca i32
  %sum2 = alloca i32
  %sum1 = alloca i32
  %p = alloca i32
  %o = alloca i32
  %n = alloca i32
  %m = alloca i32
  %l = alloca i32
  %k = alloca i32
  %j = alloca i32
  %i = alloca i32
  %h = alloca i32
  %g = alloca i32
  %f = alloca i32
  %e = alloca i32
  %d = alloca i32
  %c = alloca i32
  %b = alloca i32
  %a = alloca i32
  store i32 3, i32* %a
  store i32 7, i32* %b
  store i32 5, i32* %c
  store i32 6, i32* %d
  store i32 1, i32* %e
  store i32 0, i32* %f
  store i32 3, i32* %g
  store i32 5, i32* %h
  store i32 4, i32* %i
  store i32 2, i32* %j
  store i32 7, i32* %k
  store i32 9, i32* %l
  store i32 8, i32* %m
  store i32 1, i32* %n
  store i32 4, i32* %o
  store i32 6, i32* %p
  %.v1 = load i32, i32* %a
  %.v2 = load i32, i32* %b
  %.v3 = add i32 %.v1, %.v2
  %.v4 = load i32, i32* %c
  %.v5 = add i32 %.v3, %.v4
  %.v6 = load i32, i32* %d
  %.v7 = add i32 %.v5, %.v6
  %.v8 = load i32, i32* %e
  %.v9 = add i32 %.v7, %.v8
  %.v10 = load i32, i32* %f
  %.v11 = add i32 %.v9, %.v10
  %.v12 = load i32, i32* %g
  %.v13 = add i32 %.v11, %.v12
  %.v14 = load i32, i32* %h
  %.v15 = add i32 %.v13, %.v14
  store i32 %.v15, i32* %sum1
  %.v16 = load i32, i32* %i
  %.v17 = load i32, i32* %j
  %.v18 = add i32 %.v16, %.v17
  %.v19 = load i32, i32* %k
  %.v20 = add i32 %.v18, %.v19
  %.v21 = load i32, i32* %l
  %.v22 = add i32 %.v20, %.v21
  %.v23 = load i32, i32* %m
  %.v24 = add i32 %.v22, %.v23
  %.v25 = load i32, i32* %n
  %.v26 = add i32 %.v24, %.v25
  %.v27 = load i32, i32* %o
  %.v28 = add i32 %.v26, %.v27
  %.v29 = load i32, i32* %p
  %.v30 = add i32 %.v28, %.v29
  store i32 %.v30, i32* %sum2
  %.v31 = load i32, i32* %sum1
  %.v32 = call i32 @foo()
  %.v33 = add i32 %.v31, %.v32
  store i32 %.v33, i32* %sum1
  store i32 4, i32* %q
  store i32 7, i32* %r
  store i32 2, i32* %s
  store i32 5, i32* %t
  store i32 8, i32* %u
  store i32 0, i32* %v
  store i32 6, i32* %w
  store i32 3, i32* %x
  %.v34 = load i32, i32* %sum2
  %.v35 = call i32 @foo()
  %.v36 = add i32 %.v34, %.v35
  store i32 %.v36, i32* %sum2
  %.v37 = load i32, i32* %i
  store i32 %.v37, i32* %a
  %.v38 = load i32, i32* %j
  store i32 %.v38, i32* %b
  %.v39 = load i32, i32* %k
  store i32 %.v39, i32* %c
  %.v40 = load i32, i32* %l
  store i32 %.v40, i32* %d
  %.v41 = load i32, i32* %m
  store i32 %.v41, i32* %e
  %.v42 = load i32, i32* %n
  store i32 %.v42, i32* %f
  %.v43 = load i32, i32* %o
  store i32 %.v43, i32* %g
  %.v44 = load i32, i32* %p
  store i32 %.v44, i32* %h
  %.v45 = load i32, i32* %q
  %.v46 = load i32, i32* %r
  %.v47 = add i32 %.v45, %.v46
  %.v48 = load i32, i32* %s
  %.v49 = add i32 %.v47, %.v48
  %.v50 = load i32, i32* %t
  %.v51 = add i32 %.v49, %.v50
  %.v52 = load i32, i32* %u
  %.v53 = add i32 %.v51, %.v52
  %.v54 = load i32, i32* %v
  %.v55 = add i32 %.v53, %.v54
  %.v56 = load i32, i32* %w
  %.v57 = add i32 %.v55, %.v56
  %.v58 = load i32, i32* %x
  %.v59 = add i32 %.v57, %.v58
  store i32 %.v59, i32* %sum3
  %.v60 = load i32, i32* %sum1
  %.v61 = load i32, i32* %sum2
  %.v62 = add i32 %.v60, %.v61
  %.v63 = load i32, i32* %sum3
  %.v64 = add i32 %.v62, %.v63
  store i32 %.v64, i32* %sum
  %.v65 = load i32, i32* %sum
  call void @putint(i32 %.v65)
  call void @putch(i32 10)
  ret i32 0
}

