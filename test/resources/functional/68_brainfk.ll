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

declare float @getfloat()

declare void @putfloat(float)

declare i32 @getfarray(float*)

declare void @putfarray(i32, float*)

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
  %t8 = getelementptr [32768 x i32], [32768 x i32]* @program, i64 0, i32 %.v8
  store i32 %.v7, i32* %t8
  %.v9 = load i32, i32* %i
  %.v10 = add i32 %.v9, 1
  store i32 %.v10, i32* %i
  br label %while.cond1
while.end3:
  %.v11 = load i32, i32* %i
  %t12 = getelementptr [32768 x i32], [32768 x i32]* @program, i64 0, i32 %.v11
  store i32 0, i32* %t12
  ret void
}

define void @interpret(i32* %input) {
entry:
  %.v50 = alloca i32
  %i = alloca i32
  %loop = alloca i32
  %cur_char = alloca i32
  %input.addr = alloca i32*
  store i32* %input, i32** %input.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32*, i32** %input.addr
  %.v3 = getelementptr i32, i32* %.v2, i32 %.v1
  %.v4 = load i32, i32* %.v3
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %i
  %.v7 = load i32*, i32** %input.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 %.v6
  %.v9 = load i32, i32* %.v8
  store i32 %.v9, i32* %cur_char
  %.v10 = load i32, i32* %cur_char
  %.v11 = icmp eq i32 %.v10, 62
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %if.then4, label %if.else5
while.end3:
  ret void
if.then4:
  %.v14 = load i32, i32* @ptr
  %.v15 = add i32 %.v14, 1
  store i32 %.v15, i32* @ptr
  br label %if.end6
if.else5:
  %.v16 = load i32, i32* %cur_char
  %.v17 = icmp eq i32 %.v16, 60
  %.v18 = zext i1 %.v17 to i32
  %.v19 = icmp ne i32 %.v18, 0
  br i1 %.v19, label %if.then7, label %if.else8
if.end6:
  %.v83 = load i32, i32* %i
  %.v84 = add i32 %.v83, 1
  store i32 %.v84, i32* %i
  br label %while.cond1
if.then7:
  %.v20 = load i32, i32* @ptr
  %.v21 = sub i32 %.v20, 1
  store i32 %.v21, i32* @ptr
  br label %if.end9
if.else8:
  %.v22 = load i32, i32* %cur_char
  %.v23 = icmp eq i32 %.v22, 43
  %.v24 = zext i1 %.v23 to i32
  %.v25 = icmp ne i32 %.v24, 0
  br i1 %.v25, label %if.then10, label %if.else11
if.end9:
  br label %if.end6
if.then10:
  %.v26 = load i32, i32* @ptr
  %t39 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i32 %.v26
  %.v27 = load i32, i32* %t39
  %.v28 = add i32 %.v27, 1
  %.v29 = load i32, i32* @ptr
  %t43 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i32 %.v29
  store i32 %.v28, i32* %t43
  br label %if.end12
if.else11:
  %.v30 = load i32, i32* %cur_char
  %.v31 = icmp eq i32 %.v30, 45
  %.v32 = zext i1 %.v31 to i32
  %.v33 = icmp ne i32 %.v32, 0
  br i1 %.v33, label %if.then13, label %if.else14
if.end12:
  br label %if.end9
if.then13:
  %.v34 = load i32, i32* @ptr
  %t49 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i32 %.v34
  %.v35 = load i32, i32* %t49
  %.v36 = sub i32 %.v35, 1
  %.v37 = load i32, i32* @ptr
  %t53 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i32 %.v37
  store i32 %.v36, i32* %t53
  br label %if.end15
if.else14:
  %.v38 = load i32, i32* %cur_char
  %.v39 = icmp eq i32 %.v38, 46
  %.v40 = zext i1 %.v39 to i32
  %.v41 = icmp ne i32 %.v40, 0
  br i1 %.v41, label %if.then16, label %if.else17
if.end15:
  br label %if.end12
if.then16:
  %.v42 = load i32, i32* @ptr
  %t59 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i32 %.v42
  %.v43 = load i32, i32* %t59
  call void @putch(i32 %.v43)
  br label %if.end18
if.else17:
  %.v44 = load i32, i32* %cur_char
  %.v45 = icmp eq i32 %.v44, 44
  %.v46 = zext i1 %.v45 to i32
  %.v47 = icmp ne i32 %.v46, 0
  br i1 %.v47, label %if.then19, label %if.else20
if.end18:
  br label %if.end15
if.then19:
  %.v48 = call i32 @getch()
  %.v49 = load i32, i32* @ptr
  %t67 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i32 %.v49
  store i32 %.v48, i32* %t67
  br label %if.end21
if.else20:
  store i32 0, i32* %.v50
  %.v51 = load i32, i32* %cur_char
  %.v52 = icmp eq i32 %.v51, 93
  %.v53 = zext i1 %.v52 to i32
  %.v54 = icmp ne i32 %.v53, 0
  br i1 %.v54, label %land.rhs24, label %land.end25
if.end21:
  br label %if.end18
if.then22:
  store i32 1, i32* %loop
  br label %while.cond26
if.end23:
  br label %if.end21
land.rhs24:
  %.v55 = load i32, i32* @ptr
  %t73 = getelementptr [65536 x i32], [65536 x i32]* @tape, i64 0, i32 %.v55
  %.v56 = load i32, i32* %t73
  %.v57 = icmp ne i32 %.v56, 0
  %.v58 = zext i1 %.v57 to i32
  store i32 %.v58, i32* %.v50
  br label %land.end25
land.end25:
  %.v59 = load i32, i32* %.v50
  %.v60 = icmp ne i32 %.v59, 0
  br i1 %.v60, label %if.then22, label %if.end23
while.cond26:
  %.v61 = load i32, i32* %loop
  %.v62 = icmp sgt i32 %.v61, 0
  %.v63 = zext i1 %.v62 to i32
  %.v64 = icmp ne i32 %.v63, 0
  br i1 %.v64, label %while.body27, label %while.end28
while.body27:
  %.v65 = load i32, i32* %i
  %.v66 = sub i32 %.v65, 1
  store i32 %.v66, i32* %i
  %.v67 = load i32, i32* %i
  %.v68 = load i32*, i32** %input.addr
  %.v69 = getelementptr i32, i32* %.v68, i32 %.v67
  %.v70 = load i32, i32* %.v69
  store i32 %.v70, i32* %cur_char
  %.v71 = load i32, i32* %cur_char
  %.v72 = icmp eq i32 %.v71, 91
  %.v73 = zext i1 %.v72 to i32
  %.v74 = icmp ne i32 %.v73, 0
  br i1 %.v74, label %if.then29, label %if.else30
while.end28:
  br label %if.end23
if.then29:
  %.v75 = load i32, i32* %loop
  %.v76 = sub i32 %.v75, 1
  store i32 %.v76, i32* %loop
  br label %if.end31
if.else30:
  %.v77 = load i32, i32* %cur_char
  %.v78 = icmp eq i32 %.v77, 93
  %.v79 = zext i1 %.v78 to i32
  %.v80 = icmp ne i32 %.v79, 0
  br i1 %.v80, label %if.then32, label %if.end33
if.end31:
  br label %while.cond26
if.then32:
  %.v81 = load i32, i32* %loop
  %.v82 = add i32 %.v81, 1
  store i32 %.v82, i32* %loop
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

