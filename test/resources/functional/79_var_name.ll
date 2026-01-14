declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %V62vtYqjKr7vUHagX8crbD1Pj3RQqU188LgQk6im7Spz55lXZs = alloca i32
  %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6 = alloca [20 x i32]
  %Cy92k8jOyGwpymrp_aZeu_vYwQPeRGHYo0nKXgxMsU3ALykomj = alloca i32
  %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY = alloca i32
  store i32 2, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY
  store i32 20, i32* %Cy92k8jOyGwpymrp_aZeu_vYwQPeRGHYo0nKXgxMsU3ALykomj
  %t0 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 0
  store i32 1, i32* %t0
  %t1 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 1
  store i32 2, i32* %t1
  %t2 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 2
  store i32 0, i32* %t2
  %t3 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 3
  store i32 0, i32* %t3
  %t4 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 4
  store i32 0, i32* %t4
  %t5 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 5
  store i32 0, i32* %t5
  %t6 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 6
  store i32 0, i32* %t6
  %t7 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 7
  store i32 0, i32* %t7
  %t8 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 8
  store i32 0, i32* %t8
  %t9 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 9
  store i32 0, i32* %t9
  %t10 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 10
  store i32 0, i32* %t10
  %t11 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 11
  store i32 0, i32* %t11
  %t12 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 12
  store i32 0, i32* %t12
  %t13 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 13
  store i32 0, i32* %t13
  %t14 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 14
  store i32 0, i32* %t14
  %t15 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 15
  store i32 0, i32* %t15
  %t16 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 16
  store i32 0, i32* %t16
  %t17 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 17
  store i32 0, i32* %t17
  %t18 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 18
  store i32 0, i32* %t18
  %t19 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 19
  store i32 0, i32* %t19
  store i32 0, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU188LgQk6im7Spz55lXZs
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY
  %.v2 = icmp slt i32 %.v1, 20
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY
  %t25 = sext i32 %.v5 to i64
  %t26 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 %t25
  %.v6 = load i32, i32* %t26
  %.v7 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY
  %.v8 = sub i32 %.v7, 1
  %t30 = sext i32 %.v8 to i64
  %t31 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 %t30
  %.v9 = load i32, i32* %t31
  %.v10 = add i32 %.v6, %.v9
  %.v11 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY
  %.v12 = sub i32 %.v11, 2
  %t36 = sext i32 %.v12 to i64
  %t37 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 %t36
  %.v13 = load i32, i32* %t37
  %.v14 = add i32 %.v10, %.v13
  %.v15 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY
  %t41 = sext i32 %.v15 to i64
  %t42 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 %t41
  store i32 %.v14, i32* %t42
  %.v16 = load i32, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU188LgQk6im7Spz55lXZs
  %.v17 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY
  %t45 = sext i32 %.v17 to i64
  %t46 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 %t45
  %.v18 = load i32, i32* %t46
  %.v19 = add i32 %.v16, %.v18
  store i32 %.v19, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU188LgQk6im7Spz55lXZs
  %.v20 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY
  %t50 = sext i32 %.v20 to i64
  %t51 = getelementptr [20 x i32], [20 x i32]* %VLDTJUr0eYj3UiHhVWtQqVrqunxn8GIY2SPSCOKZw1azce1XN6, i64 0, i64 %t50
  %.v21 = load i32, i32* %t51
  call void @putint(i32 %.v21)
  call void @putch(i32 10)
  %.v22 = load i32, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY
  %.v23 = add i32 %.v22, 1
  store i32 %.v23, i32* %xU4UVdo6fPho5bRhUTjrlIMjqIY_evCyLJf0suh6fNNJ_3DxUY
  br label %while.cond1
while.end3:
  %.v24 = load i32, i32* %V62vtYqjKr7vUHagX8crbD1Pj3RQqU188LgQk6im7Spz55lXZs
  ret i32 %.v24
}

