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

define i32 @main() {
entry:
  %V62vtYqjKr7vUHagX8crbD1Pj3RQqU18_14626105800645059095 = alloca i32
  %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264 = alloca [20 x i32]
  %Cy92k8jOyGwpymrp_aZeu_vYwQPeRGHY_327376861479829478 = alloca i32
  %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452 = alloca i32
  store i32 2, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452
  store i32 20, i32* %Cy92k8jOyGwpymrp_aZeu_vYwQPeRGHY_327376861479829478
  %t0 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 0
  store i32 1, i32* %t0
  %t1 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 1
  store i32 2, i32* %t1
  %t2 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 2
  store i32 0, i32* %t2
  %t3 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 3
  store i32 0, i32* %t3
  %t4 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 4
  store i32 0, i32* %t4
  %t5 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 5
  store i32 0, i32* %t5
  %t6 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 6
  store i32 0, i32* %t6
  %t7 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 7
  store i32 0, i32* %t7
  %t8 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 8
  store i32 0, i32* %t8
  %t9 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 9
  store i32 0, i32* %t9
  %t10 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 10
  store i32 0, i32* %t10
  %t11 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 11
  store i32 0, i32* %t11
  %t12 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 12
  store i32 0, i32* %t12
  %t13 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 13
  store i32 0, i32* %t13
  %t14 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 14
  store i32 0, i32* %t14
  %t15 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 15
  store i32 0, i32* %t15
  %t16 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 16
  store i32 0, i32* %t16
  %t17 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 17
  store i32 0, i32* %t17
  %t18 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 18
  store i32 0, i32* %t18
  %t19 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i64 19
  store i32 0, i32* %t19
  store i32 0, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU18_14626105800645059095
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452
  %.v2 = load i32, i32* %Cy92k8jOyGwpymrp_aZeu_vYwQPeRGHY_327376861479829478
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452
  %t26 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i32 %.v6
  %.v7 = load i32, i32* %t26
  %.v8 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452
  %.v9 = sub i32 %.v8, 1
  %t30 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i32 %.v9
  %.v10 = load i32, i32* %t30
  %.v11 = add i32 %.v7, %.v10
  %.v12 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452
  %.v13 = sub i32 %.v12, 2
  %t35 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i32 %.v13
  %.v14 = load i32, i32* %t35
  %.v15 = add i32 %.v11, %.v14
  %.v16 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452
  %t39 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i32 %.v16
  store i32 %.v15, i32* %t39
  %.v17 = load i32, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU18_14626105800645059095
  %.v18 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452
  %t42 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i32 %.v18
  %.v19 = load i32, i32* %t42
  %.v20 = add i32 %.v17, %.v19
  store i32 %.v20, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU18_14626105800645059095
  %.v21 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452
  %t46 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY_9499099983205850264, i64 0, i32 %.v21
  %.v22 = load i32, i32* %t46
  call void @putint(i32 %.v22)
  call void @putch(i32 10)
  %.v23 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452
  %.v24 = add i32 %.v23, 1
  store i32 %.v24, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCy_3543864943722225452
  br label %while.cond1
while.end3:
  %.v25 = load i32, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU18_14626105800645059095
  ret i32 %.v25
}

