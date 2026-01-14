@arr1 = global [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]] zeroinitializer
@arr2 = global [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]] zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @loop1(i32 %x, i32 %y) {
entry:
  %.v1 = alloca i32
  %g = alloca i32
  %f = alloca i32
  %e = alloca i32
  %d = alloca i32
  %c = alloca i32
  %b = alloca i32
  %a = alloca i32
  %y.addr = alloca i32
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  store i32 %y, i32* %y.addr
  store i32 0, i32* %a
  br label %while.cond1
while.cond1:
  store i32 0, i32* %.v1
  %.v2 = load i32, i32* %a
  %.v3 = load i32, i32* %x.addr
  %.v4 = icmp slt i32 %.v2, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %land.rhs4, label %land.end5
while.body2:
  store i32 0, i32* %b
  br label %while.cond6
while.end3:
  ret void
land.rhs4:
  %.v7 = load i32, i32* %a
  %.v8 = load i32, i32* %y.addr
  %.v9 = icmp slt i32 %.v7, %.v8
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  %.v12 = zext i1 %.v11 to i32
  store i32 %.v12, i32* %.v1
  br label %land.end5
land.end5:
  %.v13 = load i32, i32* %.v1
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %while.body2, label %while.end3
while.cond6:
  %.v15 = load i32, i32* %b
  %.v16 = icmp slt i32 %.v15, 2
  %.v17 = zext i1 %.v16 to i32
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %while.body7, label %while.end8
while.body7:
  store i32 0, i32* %c
  br label %while.cond9
while.end8:
  %.v75 = load i32, i32* %a
  %.v76 = add i32 %.v75, 1
  store i32 %.v76, i32* %a
  br label %while.cond1
while.cond9:
  %.v19 = load i32, i32* %c
  %.v20 = icmp slt i32 %.v19, 3
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  br i1 %.v22, label %while.body10, label %while.end11
while.body10:
  store i32 0, i32* %d
  br label %while.cond12
while.end11:
  %.v73 = load i32, i32* %b
  %.v74 = add i32 %.v73, 1
  store i32 %.v74, i32* %b
  br label %while.cond6
while.cond12:
  %.v23 = load i32, i32* %d
  %.v24 = icmp slt i32 %.v23, 4
  %.v25 = zext i1 %.v24 to i32
  %.v26 = icmp ne i32 %.v25, 0
  br i1 %.v26, label %while.body13, label %while.end14
while.body13:
  store i32 0, i32* %e
  br label %while.cond15
while.end14:
  %.v71 = load i32, i32* %c
  %.v72 = add i32 %.v71, 1
  store i32 %.v72, i32* %c
  br label %while.cond9
while.cond15:
  %.v27 = load i32, i32* %e
  %.v28 = icmp slt i32 %.v27, 5
  %.v29 = zext i1 %.v28 to i32
  %.v30 = icmp ne i32 %.v29, 0
  br i1 %.v30, label %while.body16, label %while.end17
while.body16:
  store i32 0, i32* %f
  br label %while.cond18
while.end17:
  %.v69 = load i32, i32* %d
  %.v70 = add i32 %.v69, 1
  store i32 %.v70, i32* %d
  br label %while.cond12
while.cond18:
  %.v31 = load i32, i32* %f
  %.v32 = icmp slt i32 %.v31, 6
  %.v33 = zext i1 %.v32 to i32
  %.v34 = icmp ne i32 %.v33, 0
  br i1 %.v34, label %while.body19, label %while.end20
while.body19:
  store i32 0, i32* %g
  br label %while.cond21
while.end20:
  %.v67 = load i32, i32* %e
  %.v68 = add i32 %.v67, 1
  store i32 %.v68, i32* %e
  br label %while.cond15
while.cond21:
  %.v35 = load i32, i32* %g
  %.v36 = icmp slt i32 %.v35, 2
  %.v37 = zext i1 %.v36 to i32
  %.v38 = icmp ne i32 %.v37, 0
  br i1 %.v38, label %while.body22, label %while.end23
while.body22:
  %.v39 = load i32, i32* %a
  %.v40 = load i32, i32* %b
  %.v41 = add i32 %.v39, %.v40
  %.v42 = load i32, i32* %c
  %.v43 = add i32 %.v41, %.v42
  %.v44 = load i32, i32* %d
  %.v45 = add i32 %.v43, %.v44
  %.v46 = load i32, i32* %e
  %.v47 = add i32 %.v45, %.v46
  %.v48 = load i32, i32* %f
  %.v49 = add i32 %.v47, %.v48
  %.v50 = load i32, i32* %g
  %.v51 = add i32 %.v49, %.v50
  %.v52 = load i32, i32* %x.addr
  %.v53 = add i32 %.v51, %.v52
  %.v54 = load i32, i32* %y.addr
  %.v55 = add i32 %.v53, %.v54
  %.v56 = load i32, i32* %a
  %t55 = sext i32 %.v56 to i64
  %.v57 = load i32, i32* %b
  %t57 = sext i32 %.v57 to i64
  %.v58 = load i32, i32* %c
  %t59 = sext i32 %.v58 to i64
  %.v59 = load i32, i32* %d
  %t61 = sext i32 %.v59 to i64
  %.v60 = load i32, i32* %e
  %t63 = sext i32 %.v60 to i64
  %.v61 = load i32, i32* %f
  %t65 = sext i32 %.v61 to i64
  %.v62 = load i32, i32* %g
  %t67 = sext i32 %.v62 to i64
  %t68 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %t55, i64 %t57, i64 %t59, i64 %t61, i64 %t63, i64 %t65, i64 %t67
  store i32 %.v55, i32* %t68
  %.v63 = load i32, i32* %g
  %.v64 = add i32 %.v63, 1
  store i32 %.v64, i32* %g
  br label %while.cond21
while.end23:
  %.v65 = load i32, i32* %f
  %.v66 = add i32 %.v65, 1
  store i32 %.v66, i32* %f
  br label %while.cond18
}

define void @loop2() {
entry:
  %g = alloca i32
  %f = alloca i32
  %e = alloca i32
  %d = alloca i32
  %c = alloca i32
  %b = alloca i32
  %a = alloca i32
  store i32 0, i32* %a
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %a
  %.v2 = icmp slt i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %b
  br label %while.cond4
while.end3:
  ret void
while.cond4:
  %.v5 = load i32, i32* %b
  %.v6 = icmp slt i32 %.v5, 2
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %while.body5, label %while.end6
while.body5:
  store i32 0, i32* %c
  br label %while.cond7
while.end6:
  %.v55 = load i32, i32* %a
  %.v56 = add i32 %.v55, 1
  store i32 %.v56, i32* %a
  br label %while.cond1
while.cond7:
  %.v9 = load i32, i32* %c
  %.v10 = icmp slt i32 %.v9, 3
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %while.body8, label %while.end9
while.body8:
  store i32 0, i32* %d
  br label %while.cond10
while.end9:
  %.v53 = load i32, i32* %b
  %.v54 = add i32 %.v53, 1
  store i32 %.v54, i32* %b
  br label %while.cond4
while.cond10:
  %.v13 = load i32, i32* %d
  %.v14 = icmp slt i32 %.v13, 2
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %while.body11, label %while.end12
while.body11:
  store i32 0, i32* %e
  br label %while.cond13
while.end12:
  %.v51 = load i32, i32* %c
  %.v52 = add i32 %.v51, 1
  store i32 %.v52, i32* %c
  br label %while.cond7
while.cond13:
  %.v17 = load i32, i32* %e
  %.v18 = icmp slt i32 %.v17, 4
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %while.body14, label %while.end15
while.body14:
  store i32 0, i32* %f
  br label %while.cond16
while.end15:
  %.v49 = load i32, i32* %d
  %.v50 = add i32 %.v49, 1
  store i32 %.v50, i32* %d
  br label %while.cond10
while.cond16:
  %.v21 = load i32, i32* %f
  %.v22 = icmp slt i32 %.v21, 8
  %.v23 = zext i1 %.v22 to i32
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %while.body17, label %while.end18
while.body17:
  store i32 0, i32* %g
  br label %while.cond19
while.end18:
  %.v47 = load i32, i32* %e
  %.v48 = add i32 %.v47, 1
  store i32 %.v48, i32* %e
  br label %while.cond13
while.cond19:
  %.v25 = load i32, i32* %g
  %.v26 = icmp slt i32 %.v25, 7
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  br i1 %.v28, label %while.body20, label %while.end21
while.body20:
  %.v29 = load i32, i32* %a
  %.v30 = load i32, i32* %b
  %.v31 = add i32 %.v29, %.v30
  %.v32 = load i32, i32* %d
  %.v33 = add i32 %.v31, %.v32
  %.v34 = load i32, i32* %g
  %.v35 = add i32 %.v33, %.v34
  %.v36 = load i32, i32* %a
  %t119 = sext i32 %.v36 to i64
  %.v37 = load i32, i32* %b
  %t121 = sext i32 %.v37 to i64
  %.v38 = load i32, i32* %c
  %t123 = sext i32 %.v38 to i64
  %.v39 = load i32, i32* %d
  %t125 = sext i32 %.v39 to i64
  %.v40 = load i32, i32* %e
  %t127 = sext i32 %.v40 to i64
  %.v41 = load i32, i32* %f
  %t129 = sext i32 %.v41 to i64
  %.v42 = load i32, i32* %g
  %t131 = sext i32 %.v42 to i64
  %t132 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %t119, i64 %t121, i64 %t123, i64 %t125, i64 %t127, i64 %t129, i64 %t131
  store i32 %.v35, i32* %t132
  %.v43 = load i32, i32* %g
  %.v44 = add i32 %.v43, 1
  store i32 %.v44, i32* %g
  br label %while.cond19
while.end21:
  %.v45 = load i32, i32* %f
  %.v46 = add i32 %.v45, 1
  store i32 %.v46, i32* %f
  br label %while.cond16
}

define i32 @loop3(i32 %h, i32 %i, i32 %j, i32 %k, i32 %l, i32 %m, i32 %n) {
entry:
  %ans = alloca i32
  %g = alloca i32
  %f = alloca i32
  %e = alloca i32
  %d = alloca i32
  %c = alloca i32
  %b = alloca i32
  %a = alloca i32
  %n.addr = alloca i32
  %m.addr = alloca i32
  %l.addr = alloca i32
  %k.addr = alloca i32
  %j.addr = alloca i32
  %i.addr = alloca i32
  %h.addr = alloca i32
  store i32 %h, i32* %h.addr
  store i32 %i, i32* %i.addr
  store i32 %j, i32* %j.addr
  store i32 %k, i32* %k.addr
  store i32 %l, i32* %l.addr
  store i32 %m, i32* %m.addr
  store i32 %n, i32* %n.addr
  store i32 0, i32* %ans
  store i32 0, i32* %a
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %a
  %.v2 = icmp slt i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %b
  br label %while.cond4
while.end3:
  %.v98 = load i32, i32* %ans
  ret i32 %.v98
while.cond4:
  %.v5 = load i32, i32* %b
  %.v6 = icmp slt i32 %.v5, 100
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %while.body5, label %while.end6
while.body5:
  store i32 0, i32* %c
  br label %while.cond7
while.end6:
  %.v91 = load i32, i32* %a
  %.v92 = add i32 %.v91, 1
  store i32 %.v92, i32* %a
  %.v93 = load i32, i32* %a
  %.v94 = load i32, i32* %h.addr
  %.v95 = icmp sge i32 %.v93, %.v94
  %.v96 = zext i1 %.v95 to i32
  %.v97 = icmp ne i32 %.v96, 0
  br i1 %.v97, label %if.then34, label %if.end35
while.cond7:
  %.v9 = load i32, i32* %c
  %.v10 = icmp slt i32 %.v9, 1000
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %while.body8, label %while.end9
while.body8:
  store i32 0, i32* %d
  br label %while.cond10
while.end9:
  %.v84 = load i32, i32* %b
  %.v85 = add i32 %.v84, 1
  store i32 %.v85, i32* %b
  %.v86 = load i32, i32* %b
  %.v87 = load i32, i32* %i.addr
  %.v88 = icmp sge i32 %.v86, %.v87
  %.v89 = zext i1 %.v88 to i32
  %.v90 = icmp ne i32 %.v89, 0
  br i1 %.v90, label %if.then32, label %if.end33
while.cond10:
  %.v13 = load i32, i32* %d
  %.v14 = icmp slt i32 %.v13, 10000
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %while.body11, label %while.end12
while.body11:
  store i32 0, i32* %e
  br label %while.cond13
while.end12:
  %.v77 = load i32, i32* %c
  %.v78 = add i32 %.v77, 1
  store i32 %.v78, i32* %c
  %.v79 = load i32, i32* %c
  %.v80 = load i32, i32* %j.addr
  %.v81 = icmp sge i32 %.v79, %.v80
  %.v82 = zext i1 %.v81 to i32
  %.v83 = icmp ne i32 %.v82, 0
  br i1 %.v83, label %if.then30, label %if.end31
while.cond13:
  %.v17 = load i32, i32* %e
  %.v18 = icmp slt i32 %.v17, 100000
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %while.body14, label %while.end15
while.body14:
  store i32 0, i32* %f
  br label %while.cond16
while.end15:
  %.v70 = load i32, i32* %d
  %.v71 = add i32 %.v70, 1
  store i32 %.v71, i32* %d
  %.v72 = load i32, i32* %d
  %.v73 = load i32, i32* %k.addr
  %.v74 = icmp sge i32 %.v72, %.v73
  %.v75 = zext i1 %.v74 to i32
  %.v76 = icmp ne i32 %.v75, 0
  br i1 %.v76, label %if.then28, label %if.end29
while.cond16:
  %.v21 = load i32, i32* %f
  %.v22 = icmp slt i32 %.v21, 1000000
  %.v23 = zext i1 %.v22 to i32
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %while.body17, label %while.end18
while.body17:
  store i32 0, i32* %g
  br label %while.cond19
while.end18:
  %.v63 = load i32, i32* %e
  %.v64 = add i32 %.v63, 1
  store i32 %.v64, i32* %e
  %.v65 = load i32, i32* %e
  %.v66 = load i32, i32* %l.addr
  %.v67 = icmp sge i32 %.v65, %.v66
  %.v68 = zext i1 %.v67 to i32
  %.v69 = icmp ne i32 %.v68, 0
  br i1 %.v69, label %if.then26, label %if.end27
while.cond19:
  %.v25 = load i32, i32* %g
  %.v26 = icmp slt i32 %.v25, 10000000
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  br i1 %.v28, label %while.body20, label %while.end21
while.body20:
  %.v29 = load i32, i32* %ans
  %.v30 = srem i32 %.v29, 817
  %.v31 = load i32, i32* %a
  %t178 = sext i32 %.v31 to i64
  %.v32 = load i32, i32* %b
  %t180 = sext i32 %.v32 to i64
  %.v33 = load i32, i32* %c
  %t182 = sext i32 %.v33 to i64
  %.v34 = load i32, i32* %d
  %t184 = sext i32 %.v34 to i64
  %.v35 = load i32, i32* %e
  %t186 = sext i32 %.v35 to i64
  %.v36 = load i32, i32* %f
  %t188 = sext i32 %.v36 to i64
  %.v37 = load i32, i32* %g
  %t190 = sext i32 %.v37 to i64
  %t191 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %t178, i64 %t180, i64 %t182, i64 %t184, i64 %t186, i64 %t188, i64 %t190
  %.v38 = load i32, i32* %t191
  %.v39 = add i32 %.v30, %.v38
  %.v40 = load i32, i32* %a
  %t195 = sext i32 %.v40 to i64
  %.v41 = load i32, i32* %b
  %t197 = sext i32 %.v41 to i64
  %.v42 = load i32, i32* %c
  %t199 = sext i32 %.v42 to i64
  %.v43 = load i32, i32* %d
  %t201 = sext i32 %.v43 to i64
  %.v44 = load i32, i32* %e
  %t203 = sext i32 %.v44 to i64
  %.v45 = load i32, i32* %f
  %t205 = sext i32 %.v45 to i64
  %.v46 = load i32, i32* %g
  %t207 = sext i32 %.v46 to i64
  %t208 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %t195, i64 %t197, i64 %t199, i64 %t201, i64 %t203, i64 %t205, i64 %t207
  %.v47 = load i32, i32* %t208
  %.v48 = add i32 %.v39, %.v47
  store i32 %.v48, i32* %ans
  %.v49 = load i32, i32* %g
  %.v50 = add i32 %.v49, 1
  store i32 %.v50, i32* %g
  %.v51 = load i32, i32* %g
  %.v52 = load i32, i32* %n.addr
  %.v53 = icmp sge i32 %.v51, %.v52
  %.v54 = zext i1 %.v53 to i32
  %.v55 = icmp ne i32 %.v54, 0
  br i1 %.v55, label %if.then22, label %if.end23
while.end21:
  %.v56 = load i32, i32* %f
  %.v57 = add i32 %.v56, 1
  store i32 %.v57, i32* %f
  %.v58 = load i32, i32* %f
  %.v59 = load i32, i32* %m.addr
  %.v60 = icmp sge i32 %.v58, %.v59
  %.v61 = zext i1 %.v60 to i32
  %.v62 = icmp ne i32 %.v61, 0
  br i1 %.v62, label %if.then24, label %if.end25
if.then22:
  br label %while.end21
if.end23:
  br label %while.cond19
if.then24:
  br label %while.end18
if.end25:
  br label %while.cond16
if.then26:
  br label %while.end15
if.end27:
  br label %while.cond13
if.then28:
  br label %while.end12
if.end29:
  br label %while.cond10
if.then30:
  br label %while.end9
if.end31:
  br label %while.cond7
if.then32:
  br label %while.end6
if.end33:
  br label %while.cond4
if.then34:
  br label %while.end3
if.end35:
  br label %while.cond1
}

define i32 @main() {
entry:
  %n = alloca i32
  %m = alloca i32
  %l = alloca i32
  %k = alloca i32
  %j = alloca i32
  %i = alloca i32
  %h = alloca i32
  %y = alloca i32
  %x = alloca i32
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* %x
  %.v2 = call i32 @getint()
  store i32 %.v2, i32* %y
  %.v3 = call i32 @getint()
  store i32 %.v3, i32* %h
  %.v4 = call i32 @getint()
  store i32 %.v4, i32* %i
  %.v5 = call i32 @getint()
  store i32 %.v5, i32* %j
  %.v6 = call i32 @getint()
  store i32 %.v6, i32* %k
  %.v7 = call i32 @getint()
  store i32 %.v7, i32* %l
  %.v8 = call i32 @getint()
  store i32 %.v8, i32* %m
  %.v9 = call i32 @getint()
  store i32 %.v9, i32* %n
  %.v10 = load i32, i32* %x
  %.v11 = load i32, i32* %y
  call void @loop1(i32 %.v10, i32 %.v11)
  call void @loop2()
  %.v12 = load i32, i32* %h
  %.v13 = load i32, i32* %i
  %.v14 = load i32, i32* %j
  %.v15 = load i32, i32* %k
  %.v16 = load i32, i32* %l
  %.v17 = load i32, i32* %m
  %.v18 = load i32, i32* %n
  %.v19 = call i32 @loop3(i32 %.v12, i32 %.v13, i32 %.v14, i32 %.v15, i32 %.v16, i32 %.v17, i32 %.v18)
  ret i32 %.v19
}

