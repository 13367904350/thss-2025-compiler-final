@a0 = global i32 zeroinitializer
@a1 = global i32 zeroinitializer
@a2 = global i32 zeroinitializer
@a3 = global i32 zeroinitializer
@a4 = global i32 zeroinitializer
@a5 = global i32 zeroinitializer
@a6 = global i32 zeroinitializer
@a7 = global i32 zeroinitializer
@a8 = global i32 zeroinitializer
@a9 = global i32 zeroinitializer
@a10 = global i32 zeroinitializer
@a11 = global i32 zeroinitializer
@a12 = global i32 zeroinitializer
@a13 = global i32 zeroinitializer
@a14 = global i32 zeroinitializer
@a15 = global i32 zeroinitializer
@a16 = global i32 zeroinitializer
@a17 = global i32 zeroinitializer
@a18 = global i32 zeroinitializer
@a19 = global i32 zeroinitializer
@a20 = global i32 zeroinitializer
@a21 = global i32 zeroinitializer
@a22 = global i32 zeroinitializer
@a23 = global i32 zeroinitializer
@a24 = global i32 zeroinitializer
@a25 = global i32 zeroinitializer
@a26 = global i32 zeroinitializer
@a27 = global i32 zeroinitializer
@a28 = global i32 zeroinitializer
@a29 = global i32 zeroinitializer
@a30 = global i32 zeroinitializer
@a31 = global i32 zeroinitializer
@a32 = global i32 zeroinitializer
@a33 = global i32 zeroinitializer
@a34 = global i32 zeroinitializer
@a35 = global i32 zeroinitializer
@a36 = global i32 zeroinitializer
@a37 = global i32 zeroinitializer
@a38 = global i32 zeroinitializer
@a39 = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @testParam8(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7) {
entry:
  %a7.addr = alloca i32
  %a6.addr = alloca i32
  %a5.addr = alloca i32
  %a4.addr = alloca i32
  %a3.addr = alloca i32
  %a2.addr = alloca i32
  %a1.addr = alloca i32
  %a0.addr = alloca i32
  store i32 %a0, i32* %a0.addr
  store i32 %a1, i32* %a1.addr
  store i32 %a2, i32* %a2.addr
  store i32 %a3, i32* %a3.addr
  store i32 %a4, i32* %a4.addr
  store i32 %a5, i32* %a5.addr
  store i32 %a6, i32* %a6.addr
  store i32 %a7, i32* %a7.addr
  %.v1 = load i32, i32* %a0.addr
  %.v2 = load i32, i32* %a1.addr
  %.v3 = add i32 %.v1, %.v2
  %.v4 = load i32, i32* %a2.addr
  %.v5 = add i32 %.v3, %.v4
  %.v6 = load i32, i32* %a3.addr
  %.v7 = add i32 %.v5, %.v6
  %.v8 = load i32, i32* %a4.addr
  %.v9 = add i32 %.v7, %.v8
  %.v10 = load i32, i32* %a5.addr
  %.v11 = add i32 %.v9, %.v10
  %.v12 = load i32, i32* %a6.addr
  %.v13 = add i32 %.v11, %.v12
  %.v14 = load i32, i32* %a7.addr
  %.v15 = add i32 %.v13, %.v14
  ret i32 %.v15
}

define i32 @testParam16(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15) {
entry:
  %a15.addr = alloca i32
  %a14.addr = alloca i32
  %a13.addr = alloca i32
  %a12.addr = alloca i32
  %a11.addr = alloca i32
  %a10.addr = alloca i32
  %a9.addr = alloca i32
  %a8.addr = alloca i32
  %a7.addr = alloca i32
  %a6.addr = alloca i32
  %a5.addr = alloca i32
  %a4.addr = alloca i32
  %a3.addr = alloca i32
  %a2.addr = alloca i32
  %a1.addr = alloca i32
  %a0.addr = alloca i32
  store i32 %a0, i32* %a0.addr
  store i32 %a1, i32* %a1.addr
  store i32 %a2, i32* %a2.addr
  store i32 %a3, i32* %a3.addr
  store i32 %a4, i32* %a4.addr
  store i32 %a5, i32* %a5.addr
  store i32 %a6, i32* %a6.addr
  store i32 %a7, i32* %a7.addr
  store i32 %a8, i32* %a8.addr
  store i32 %a9, i32* %a9.addr
  store i32 %a10, i32* %a10.addr
  store i32 %a11, i32* %a11.addr
  store i32 %a12, i32* %a12.addr
  store i32 %a13, i32* %a13.addr
  store i32 %a14, i32* %a14.addr
  store i32 %a15, i32* %a15.addr
  %.v1 = load i32, i32* %a0.addr
  %.v2 = load i32, i32* %a1.addr
  %.v3 = add i32 %.v1, %.v2
  %.v4 = load i32, i32* %a2.addr
  %.v5 = add i32 %.v3, %.v4
  %.v6 = load i32, i32* %a3.addr
  %.v7 = sub i32 %.v5, %.v6
  %.v8 = load i32, i32* %a4.addr
  %.v9 = sub i32 %.v7, %.v8
  %.v10 = load i32, i32* %a5.addr
  %.v11 = sub i32 %.v9, %.v10
  %.v12 = load i32, i32* %a6.addr
  %.v13 = sub i32 %.v11, %.v12
  %.v14 = load i32, i32* %a7.addr
  %.v15 = sub i32 %.v13, %.v14
  %.v16 = load i32, i32* %a8.addr
  %.v17 = add i32 %.v15, %.v16
  %.v18 = load i32, i32* %a9.addr
  %.v19 = add i32 %.v17, %.v18
  %.v20 = load i32, i32* %a10.addr
  %.v21 = add i32 %.v19, %.v20
  %.v22 = load i32, i32* %a11.addr
  %.v23 = add i32 %.v21, %.v22
  %.v24 = load i32, i32* %a12.addr
  %.v25 = add i32 %.v23, %.v24
  %.v26 = load i32, i32* %a13.addr
  %.v27 = add i32 %.v25, %.v26
  %.v28 = load i32, i32* %a14.addr
  %.v29 = add i32 %.v27, %.v28
  %.v30 = load i32, i32* %a15.addr
  %.v31 = add i32 %.v29, %.v30
  ret i32 %.v31
}

define i32 @testParam32(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15, i32 %a16, i32 %a17, i32 %a18, i32 %a19, i32 %a20, i32 %a21, i32 %a22, i32 %a23, i32 %a24, i32 %a25, i32 %a26, i32 %a27, i32 %a28, i32 %a29, i32 %a30, i32 %a31) {
entry:
  %a31.addr = alloca i32
  %a30.addr = alloca i32
  %a29.addr = alloca i32
  %a28.addr = alloca i32
  %a27.addr = alloca i32
  %a26.addr = alloca i32
  %a25.addr = alloca i32
  %a24.addr = alloca i32
  %a23.addr = alloca i32
  %a22.addr = alloca i32
  %a21.addr = alloca i32
  %a20.addr = alloca i32
  %a19.addr = alloca i32
  %a18.addr = alloca i32
  %a17.addr = alloca i32
  %a16.addr = alloca i32
  %a15.addr = alloca i32
  %a14.addr = alloca i32
  %a13.addr = alloca i32
  %a12.addr = alloca i32
  %a11.addr = alloca i32
  %a10.addr = alloca i32
  %a9.addr = alloca i32
  %a8.addr = alloca i32
  %a7.addr = alloca i32
  %a6.addr = alloca i32
  %a5.addr = alloca i32
  %a4.addr = alloca i32
  %a3.addr = alloca i32
  %a2.addr = alloca i32
  %a1.addr = alloca i32
  %a0.addr = alloca i32
  store i32 %a0, i32* %a0.addr
  store i32 %a1, i32* %a1.addr
  store i32 %a2, i32* %a2.addr
  store i32 %a3, i32* %a3.addr
  store i32 %a4, i32* %a4.addr
  store i32 %a5, i32* %a5.addr
  store i32 %a6, i32* %a6.addr
  store i32 %a7, i32* %a7.addr
  store i32 %a8, i32* %a8.addr
  store i32 %a9, i32* %a9.addr
  store i32 %a10, i32* %a10.addr
  store i32 %a11, i32* %a11.addr
  store i32 %a12, i32* %a12.addr
  store i32 %a13, i32* %a13.addr
  store i32 %a14, i32* %a14.addr
  store i32 %a15, i32* %a15.addr
  store i32 %a16, i32* %a16.addr
  store i32 %a17, i32* %a17.addr
  store i32 %a18, i32* %a18.addr
  store i32 %a19, i32* %a19.addr
  store i32 %a20, i32* %a20.addr
  store i32 %a21, i32* %a21.addr
  store i32 %a22, i32* %a22.addr
  store i32 %a23, i32* %a23.addr
  store i32 %a24, i32* %a24.addr
  store i32 %a25, i32* %a25.addr
  store i32 %a26, i32* %a26.addr
  store i32 %a27, i32* %a27.addr
  store i32 %a28, i32* %a28.addr
  store i32 %a29, i32* %a29.addr
  store i32 %a30, i32* %a30.addr
  store i32 %a31, i32* %a31.addr
  %.v1 = load i32, i32* %a0.addr
  %.v2 = load i32, i32* %a1.addr
  %.v3 = add i32 %.v1, %.v2
  %.v4 = load i32, i32* %a2.addr
  %.v5 = add i32 %.v3, %.v4
  %.v6 = load i32, i32* %a3.addr
  %.v7 = add i32 %.v5, %.v6
  %.v8 = load i32, i32* %a4.addr
  %.v9 = add i32 %.v7, %.v8
  %.v10 = load i32, i32* %a5.addr
  %.v11 = add i32 %.v9, %.v10
  %.v12 = load i32, i32* %a6.addr
  %.v13 = add i32 %.v11, %.v12
  %.v14 = load i32, i32* %a7.addr
  %.v15 = add i32 %.v13, %.v14
  %.v16 = load i32, i32* %a8.addr
  %.v17 = add i32 %.v15, %.v16
  %.v18 = load i32, i32* %a9.addr
  %.v19 = add i32 %.v17, %.v18
  %.v20 = load i32, i32* %a10.addr
  %.v21 = add i32 %.v19, %.v20
  %.v22 = load i32, i32* %a11.addr
  %.v23 = add i32 %.v21, %.v22
  %.v24 = load i32, i32* %a12.addr
  %.v25 = add i32 %.v23, %.v24
  %.v26 = load i32, i32* %a13.addr
  %.v27 = add i32 %.v25, %.v26
  %.v28 = load i32, i32* %a14.addr
  %.v29 = add i32 %.v27, %.v28
  %.v30 = load i32, i32* %a15.addr
  %.v31 = add i32 %.v29, %.v30
  %.v32 = load i32, i32* %a16.addr
  %.v33 = add i32 %.v31, %.v32
  %.v34 = load i32, i32* %a17.addr
  %.v35 = add i32 %.v33, %.v34
  %.v36 = load i32, i32* %a18.addr
  %.v37 = sub i32 %.v35, %.v36
  %.v38 = load i32, i32* %a19.addr
  %.v39 = sub i32 %.v37, %.v38
  %.v40 = load i32, i32* %a20.addr
  %.v41 = sub i32 %.v39, %.v40
  %.v42 = load i32, i32* %a21.addr
  %.v43 = sub i32 %.v41, %.v42
  %.v44 = load i32, i32* %a22.addr
  %.v45 = sub i32 %.v43, %.v44
  %.v46 = load i32, i32* %a23.addr
  %.v47 = add i32 %.v45, %.v46
  %.v48 = load i32, i32* %a24.addr
  %.v49 = add i32 %.v47, %.v48
  %.v50 = load i32, i32* %a25.addr
  %.v51 = add i32 %.v49, %.v50
  %.v52 = load i32, i32* %a26.addr
  %.v53 = add i32 %.v51, %.v52
  %.v54 = load i32, i32* %a27.addr
  %.v55 = add i32 %.v53, %.v54
  %.v56 = load i32, i32* %a28.addr
  %.v57 = add i32 %.v55, %.v56
  %.v58 = load i32, i32* %a29.addr
  %.v59 = add i32 %.v57, %.v58
  %.v60 = load i32, i32* %a30.addr
  %.v61 = add i32 %.v59, %.v60
  %.v62 = load i32, i32* %a31.addr
  %.v63 = add i32 %.v61, %.v62
  ret i32 %.v63
}

define i32 @main() {
entry:
  store i32 0, i32* @a0
  store i32 1, i32* @a1
  store i32 2, i32* @a2
  store i32 3, i32* @a3
  store i32 4, i32* @a4
  store i32 5, i32* @a5
  store i32 6, i32* @a6
  store i32 7, i32* @a7
  store i32 8, i32* @a8
  store i32 9, i32* @a9
  store i32 0, i32* @a10
  store i32 1, i32* @a11
  store i32 2, i32* @a12
  store i32 3, i32* @a13
  store i32 4, i32* @a14
  store i32 5, i32* @a15
  store i32 6, i32* @a16
  store i32 7, i32* @a17
  store i32 8, i32* @a18
  store i32 9, i32* @a19
  store i32 0, i32* @a20
  store i32 1, i32* @a21
  store i32 2, i32* @a22
  store i32 3, i32* @a23
  store i32 4, i32* @a24
  store i32 5, i32* @a25
  store i32 6, i32* @a26
  store i32 7, i32* @a27
  store i32 8, i32* @a28
  store i32 9, i32* @a29
  store i32 0, i32* @a30
  store i32 1, i32* @a31
  store i32 4, i32* @a32
  store i32 5, i32* @a33
  store i32 6, i32* @a34
  store i32 7, i32* @a35
  store i32 8, i32* @a36
  store i32 9, i32* @a37
  store i32 0, i32* @a38
  store i32 1, i32* @a39
  %.v1 = load i32, i32* @a0
  %.v2 = load i32, i32* @a1
  %.v3 = load i32, i32* @a2
  %.v4 = load i32, i32* @a3
  %.v5 = load i32, i32* @a4
  %.v6 = load i32, i32* @a5
  %.v7 = load i32, i32* @a6
  %.v8 = load i32, i32* @a7
  %.v9 = call i32 @testParam8(i32 %.v1, i32 %.v2, i32 %.v3, i32 %.v4, i32 %.v5, i32 %.v6, i32 %.v7, i32 %.v8)
  store i32 %.v9, i32* @a0
  %.v10 = load i32, i32* @a0
  call void @putint(i32 %.v10)
  %.v11 = load i32, i32* @a32
  %.v12 = load i32, i32* @a33
  %.v13 = load i32, i32* @a34
  %.v14 = load i32, i32* @a35
  %.v15 = load i32, i32* @a36
  %.v16 = load i32, i32* @a37
  %.v17 = load i32, i32* @a38
  %.v18 = load i32, i32* @a39
  %.v19 = load i32, i32* @a8
  %.v20 = load i32, i32* @a9
  %.v21 = load i32, i32* @a10
  %.v22 = load i32, i32* @a11
  %.v23 = load i32, i32* @a12
  %.v24 = load i32, i32* @a13
  %.v25 = load i32, i32* @a14
  %.v26 = load i32, i32* @a15
  %.v27 = call i32 @testParam16(i32 %.v11, i32 %.v12, i32 %.v13, i32 %.v14, i32 %.v15, i32 %.v16, i32 %.v17, i32 %.v18, i32 %.v19, i32 %.v20, i32 %.v21, i32 %.v22, i32 %.v23, i32 %.v24, i32 %.v25, i32 %.v26)
  store i32 %.v27, i32* @a0
  %.v28 = load i32, i32* @a0
  call void @putint(i32 %.v28)
  %.v29 = load i32, i32* @a0
  %.v30 = load i32, i32* @a1
  %.v31 = load i32, i32* @a2
  %.v32 = load i32, i32* @a3
  %.v33 = load i32, i32* @a4
  %.v34 = load i32, i32* @a5
  %.v35 = load i32, i32* @a6
  %.v36 = load i32, i32* @a7
  %.v37 = load i32, i32* @a8
  %.v38 = load i32, i32* @a9
  %.v39 = load i32, i32* @a10
  %.v40 = load i32, i32* @a11
  %.v41 = load i32, i32* @a12
  %.v42 = load i32, i32* @a13
  %.v43 = load i32, i32* @a14
  %.v44 = load i32, i32* @a15
  %.v45 = load i32, i32* @a16
  %.v46 = load i32, i32* @a17
  %.v47 = load i32, i32* @a18
  %.v48 = load i32, i32* @a19
  %.v49 = load i32, i32* @a20
  %.v50 = load i32, i32* @a21
  %.v51 = load i32, i32* @a22
  %.v52 = load i32, i32* @a23
  %.v53 = load i32, i32* @a24
  %.v54 = load i32, i32* @a25
  %.v55 = load i32, i32* @a26
  %.v56 = load i32, i32* @a27
  %.v57 = load i32, i32* @a28
  %.v58 = load i32, i32* @a29
  %.v59 = load i32, i32* @a30
  %.v60 = load i32, i32* @a31
  %.v61 = call i32 @testParam32(i32 %.v29, i32 %.v30, i32 %.v31, i32 %.v32, i32 %.v33, i32 %.v34, i32 %.v35, i32 %.v36, i32 %.v37, i32 %.v38, i32 %.v39, i32 %.v40, i32 %.v41, i32 %.v42, i32 %.v43, i32 %.v44, i32 %.v45, i32 %.v46, i32 %.v47, i32 %.v48, i32 %.v49, i32 %.v50, i32 %.v51, i32 %.v52, i32 %.v53, i32 %.v54, i32 %.v55, i32 %.v56, i32 %.v57, i32 %.v58, i32 %.v59, i32 %.v60)
  store i32 %.v61, i32* @a0
  %.v62 = load i32, i32* @a0
  call void @putint(i32 %.v62)
  ret i32 0
}

