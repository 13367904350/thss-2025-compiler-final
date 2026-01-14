@TAPE_LEN = constant i32 65536
@BUFFER_LEN = constant i32 32768
@tape = global [65536 x i32] zeroinitializer
@program = global [32768 x i32] zeroinitializer
@ptr = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @read_program() {
entry:
  %len = alloca i32
  %i = alloca i32
  store i32 0, i32* %i
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* %len
  br label %while.cond1
while.cond1:
  %.v2 = load i32, i32* %i
  %.v3 = load i32, i32* %len
  %.v4 = icmp slt i32 %.v2, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %while.body2, label %while.end3
while.body2:
  %.v7 = call i32 @getch()
  %.v8 = load i32, i32* %i
  %t8 = sext i32 %.v8 to i64
  %t9 = getelementptr [32768 x i32], [32768 x i32]* @program, i64 0, i64 %t8
  store i32 %.v7, i32* %t9
  %.v9 = load i32, i32* %i
  %.v10 = add i32 %.v9, 1
  store i32 %.v10, i32* %i
  br label %while.cond1
while.end3:
  %.v11 = load i32, i32* %i
  %t13 = sext i32 %.v11 to i64
  %t14 = getelementptr [32768 x i32], [32768 x i32]* @program, i64 0, i64 %t13
  store i32 0, i32* %t14
  ret void
}

define void @interpret(i32* %input) {
entry:
  %.v46 = alloca i32
  %i = alloca i32
  %loop = alloca i32
  %cur_char = alloca i32
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %t16 = sext i32 %.v1 to i64
  %t17 = getelementptr i32, i32* %input, i64 %t16
  %.v2 = load i32, i32* %t17
  %.v3 = icmp ne i32 %.v2, 0
  br i1 %.v3, label %while.body2, label %while.end3
while.body2:
  %.v4 = load i32, i32* %i
  %t21 = sext i32 %.v4 to i64
  %t22 = getelementptr i32, i32* %input, i64 %t21
  %.v5 = load i32, i32* %t22
  store i32 %.v5, i32* %cur_char
  %.v6 = load i32, i32* %cur_char
  %.v7 = icmp eq i32 %.v6, 62
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %if.then4, label %if.else5
while.end3:
  ret void
if.then4:
  %.v10 = load i32, i32* @ptr
  %.v11 = add i32 %.v10, 1
  store i32 %.v11, i32* @ptr
  br label %if.end6
if.else5:
  %.v12 = load i32, i32* %cur_char
  %.v13 = icmp eq i32 %.v12, 60
  %.v14 = zext i1 %.v13 to i32
  %.v15 = icmp ne i32 %.v14, 0
  br i1 %.v15, label %if.then7, label %if.else8
if.end6:
  %.v77 = load i32, i32* %i
  %.v78 = add i32 %.v77, 1
  store i32 %.v78, i32* %i
  br label %while.cond1
if.then7:
  %.v16 = load i32, i32* @ptr
  %.v17 = sub i32 %.v16, 1
  store i32 %.v17, i32* @ptr
  br label %if.end9
if.else8:
  %.v18 = load i32, i32* %cur_char
  %.v19 = icmp eq i32 %.v18, 43
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  br i1 %.v21, label %if.then10, label %if.else11
if.end9:
  br label %if.end6
if.then10:
  %.v22 = load i32, i32* @ptr
  %t41 = sext i32 %.v22 to i64
  %t42 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %t41
  %.v23 = load i32, i32* %t42
  %.v24 = add i32 %.v23, 1
  %.v25 = load i32, i32* @ptr
  %t46 = sext i32 %.v25 to i64
  %t47 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %t46
  store i32 %.v24, i32* %t47
  br label %if.end12
if.else11:
  %.v26 = load i32, i32* %cur_char
  %.v27 = icmp eq i32 %.v26, 45
  %.v28 = zext i1 %.v27 to i32
  %.v29 = icmp ne i32 %.v28, 0
  br i1 %.v29, label %if.then13, label %if.else14
if.end12:
  br label %if.end9
if.then13:
  %.v30 = load i32, i32* @ptr
  %t53 = sext i32 %.v30 to i64
  %t54 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %t53
  %.v31 = load i32, i32* %t54
  %.v32 = sub i32 %.v31, 1
  %.v33 = load i32, i32* @ptr
  %t58 = sext i32 %.v33 to i64
  %t59 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %t58
  store i32 %.v32, i32* %t59
  br label %if.end15
if.else14:
  %.v34 = load i32, i32* %cur_char
  %.v35 = icmp eq i32 %.v34, 46
  %.v36 = zext i1 %.v35 to i32
  %.v37 = icmp ne i32 %.v36, 0
  br i1 %.v37, label %if.then16, label %if.else17
if.end15:
  br label %if.end12
if.then16:
  %.v38 = load i32, i32* @ptr
  %t65 = sext i32 %.v38 to i64
  %t66 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %t65
  %.v39 = load i32, i32* %t66
  call void @putch(i32 %.v39)
  br label %if.end18
if.else17:
  %.v40 = load i32, i32* %cur_char
  %.v41 = icmp eq i32 %.v40, 44
  %.v42 = zext i1 %.v41 to i32
  %.v43 = icmp ne i32 %.v42, 0
  br i1 %.v43, label %if.then19, label %if.else20
if.end18:
  br label %if.end15
if.then19:
  %.v44 = call i32 @getch()
  %.v45 = load i32, i32* @ptr
  %t74 = sext i32 %.v45 to i64
  %t75 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %t74
  store i32 %.v44, i32* %t75
  br label %if.end21
if.else20:
  store i32 0, i32* %.v46
  %.v47 = load i32, i32* %cur_char
  %.v48 = icmp eq i32 %.v47, 93
  %.v49 = zext i1 %.v48 to i32
  %.v50 = icmp ne i32 %.v49, 0
  br i1 %.v50, label %land.rhs24, label %land.end25
if.end21:
  br label %if.end18
if.then22:
  store i32 1, i32* %loop
  br label %while.cond26
if.end23:
  br label %if.end21
land.rhs24:
  %.v51 = load i32, i32* @ptr
  %t81 = sext i32 %.v51 to i64
  %t82 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %t81
  %.v52 = load i32, i32* %t82
  %.v53 = icmp ne i32 %.v52, 0
  %.v54 = zext i1 %.v53 to i32
  store i32 %.v54, i32* %.v46
  br label %land.end25
land.end25:
  %.v55 = load i32, i32* %.v46
  %.v56 = icmp ne i32 %.v55, 0
  br i1 %.v56, label %if.then22, label %if.end23
while.cond26:
  %.v57 = load i32, i32* %loop
  %.v58 = icmp sgt i32 %.v57, 0
  %.v59 = zext i1 %.v58 to i32
  %.v60 = icmp ne i32 %.v59, 0
  br i1 %.v60, label %while.body27, label %while.end28
while.body27:
  %.v61 = load i32, i32* %i
  %.v62 = sub i32 %.v61, 1
  store i32 %.v62, i32* %i
  %.v63 = load i32, i32* %i
  %t95 = sext i32 %.v63 to i64
  %t96 = getelementptr i32, i32* %input, i64 %t95
  %.v64 = load i32, i32* %t96
  store i32 %.v64, i32* %cur_char
  %.v65 = load i32, i32* %cur_char
  %.v66 = icmp eq i32 %.v65, 91
  %.v67 = zext i1 %.v66 to i32
  %.v68 = icmp ne i32 %.v67, 0
  br i1 %.v68, label %if.then29, label %if.else30
while.end28:
  br label %if.end23
if.then29:
  %.v69 = load i32, i32* %loop
  %.v70 = sub i32 %.v69, 1
  store i32 %.v70, i32* %loop
  br label %if.end31
if.else30:
  %.v71 = load i32, i32* %cur_char
  %.v72 = icmp eq i32 %.v71, 93
  %.v73 = zext i1 %.v72 to i32
  %.v74 = icmp ne i32 %.v73, 0
  br i1 %.v74, label %if.then32, label %if.end33
if.end31:
  br label %while.cond26
if.then32:
  %.v75 = load i32, i32* %loop
  %.v76 = add i32 %.v75, 1
  store i32 %.v76, i32* %loop
  br label %if.end33
if.end33:
  br label %if.end31
}

define i32 @main() {
entry:
  call void @read_program()
  %.v1 = getelementptr [32768 x i32], [32768 x i32]* @program, i64 0, i64 0
  call void @interpret(i32* %.v1)
  ret i32 0
}

