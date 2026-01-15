@TOKEN_NUM = constant i32 zeroinitializer
@TOKEN_OTHER = constant i32 1
@last_char = global i32 32
@num = global i32 zeroinitializer
@other = global i32 zeroinitializer
@cur_token = global i32 zeroinitializer
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

define i32 @next_char() {
entry:
  %.v1 = call i32 @getch()
  store i32 %.v1, i32* @last_char
  %.v2 = load i32, i32* @last_char
  ret i32 %.v2
}

define i32 @is_space(i32 %c) {
entry:
  %.v1 = alloca i32
  %c.addr = alloca i32
  store i32 %c, i32* %c.addr
  store i32 1, i32* %.v1
  %.v2 = load i32, i32* %c.addr
  %.v3 = icmp eq i32 %.v2, 32
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %lor.end5, label %lor.rhs4
if.then1:
  ret i32 1
if.else2:
  ret i32 0
if.end3:
  ret i32 0
lor.rhs4:
  %.v6 = load i32, i32* %c.addr
  %.v7 = icmp eq i32 %.v6, 10
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  %.v10 = zext i1 %.v9 to i32
  store i32 %.v10, i32* %.v1
  br label %lor.end5
lor.end5:
  %.v11 = load i32, i32* %.v1
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %if.then1, label %if.else2
}

define i32 @is_num(i32 %c) {
entry:
  %.v1 = alloca i32
  %c.addr = alloca i32
  store i32 %c, i32* %c.addr
  store i32 0, i32* %.v1
  %.v2 = load i32, i32* %c.addr
  %.v3 = icmp sge i32 %.v2, 48
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %land.rhs4, label %land.end5
if.then1:
  ret i32 1
if.else2:
  ret i32 0
if.end3:
  ret i32 0
land.rhs4:
  %.v6 = load i32, i32* %c.addr
  %.v7 = icmp sle i32 %.v6, 57
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  %.v10 = zext i1 %.v9 to i32
  store i32 %.v10, i32* %.v1
  br label %land.end5
land.end5:
  %.v11 = load i32, i32* %.v1
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %if.then1, label %if.else2
}

define i32 @next_token() {
entry:
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* @last_char
  %.v2 = call i32 @is_space(i32 %.v1)
  %.v3 = icmp ne i32 %.v2, 0
  br i1 %.v3, label %while.body2, label %while.end3
while.body2:
  %.v4 = call i32 @next_char()
  br label %while.cond1
while.end3:
  %.v5 = load i32, i32* @last_char
  %.v6 = call i32 @is_num(i32 %.v5)
  %.v7 = icmp ne i32 %.v6, 0
  br i1 %.v7, label %if.then4, label %if.else5
if.then4:
  %.v8 = load i32, i32* @last_char
  %.v9 = sub i32 %.v8, 48
  store i32 %.v9, i32* @num
  br label %while.cond7
if.else5:
  %.v19 = load i32, i32* @last_char
  store i32 %.v19, i32* @other
  %.v20 = call i32 @next_char()
  %.v21 = load i32, i32* @TOKEN_OTHER
  store i32 %.v21, i32* @cur_token
  br label %if.end6
if.end6:
  %.v22 = load i32, i32* @cur_token
  ret i32 %.v22
while.cond7:
  %.v10 = call i32 @next_char()
  %.v11 = call i32 @is_num(i32 %.v10)
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %while.body8, label %while.end9
while.body8:
  %.v13 = load i32, i32* @num
  %.v14 = mul i32 %.v13, 10
  %.v15 = load i32, i32* @last_char
  %.v16 = add i32 %.v14, %.v15
  %.v17 = sub i32 %.v16, 48
  store i32 %.v17, i32* @num
  br label %while.cond7
while.end9:
  %.v18 = load i32, i32* @TOKEN_NUM
  store i32 %.v18, i32* @cur_token
  br label %if.end6
}

define i32 @panic() {
entry:
  call void @putch(i32 112)
  call void @putch(i32 97)
  call void @putch(i32 110)
  call void @putch(i32 105)
  call void @putch(i32 99)
  call void @putch(i32 33)
  call void @putch(i32 10)
  %.v1 = sub i32 0, 1
  ret i32 %.v1
}

define i32 @get_op_prec(i32 %op) {
entry:
  %.v14 = alloca i32
  %.v13 = alloca i32
  %.v1 = alloca i32
  %op.addr = alloca i32
  store i32 %op, i32* %op.addr
  store i32 1, i32* %.v1
  %.v2 = load i32, i32* %op.addr
  %.v3 = icmp eq i32 %.v2, 43
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %lor.end4, label %lor.rhs3
if.then1:
  ret i32 10
if.end2:
  store i32 1, i32* %.v13
  store i32 1, i32* %.v14
  %.v15 = load i32, i32* %op.addr
  %.v16 = icmp eq i32 %.v15, 42
  %.v17 = zext i1 %.v16 to i32
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %lor.end8, label %lor.rhs7
lor.rhs3:
  %.v6 = load i32, i32* %op.addr
  %.v7 = icmp eq i32 %.v6, 45
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  %.v10 = zext i1 %.v9 to i32
  store i32 %.v10, i32* %.v1
  br label %lor.end4
lor.end4:
  %.v11 = load i32, i32* %.v1
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %if.then1, label %if.end2
if.then5:
  ret i32 20
if.end6:
  ret i32 0
lor.rhs7:
  %.v19 = load i32, i32* %op.addr
  %.v20 = icmp eq i32 %.v19, 47
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  %.v23 = zext i1 %.v22 to i32
  store i32 %.v23, i32* %.v14
  br label %lor.end8
lor.end8:
  %.v24 = load i32, i32* %.v14
  %.v25 = icmp ne i32 %.v24, 0
  br i1 %.v25, label %lor.end10, label %lor.rhs9
lor.rhs9:
  %.v26 = load i32, i32* %op.addr
  %.v27 = icmp eq i32 %.v26, 37
  %.v28 = zext i1 %.v27 to i32
  %.v29 = icmp ne i32 %.v28, 0
  %.v30 = zext i1 %.v29 to i32
  store i32 %.v30, i32* %.v13
  br label %lor.end10
lor.end10:
  %.v31 = load i32, i32* %.v13
  %.v32 = icmp ne i32 %.v31, 0
  br i1 %.v32, label %if.then5, label %if.end6
}

define void @stack_push(i32* %s, i32 %v) {
entry:
  %v.addr = alloca i32
  %s.addr = alloca i32*
  store i32* %s, i32** %s.addr
  store i32 %v, i32* %v.addr
  %.v1 = load i32*, i32** %s.addr
  %.v2 = getelementptr i32, i32* %.v1, i32 0
  %.v3 = load i32, i32* %.v2
  %.v4 = add i32 %.v3, 1
  %.v5 = load i32*, i32** %s.addr
  %.v6 = getelementptr i32, i32* %.v5, i32 0
  store i32 %.v4, i32* %.v6
  %.v7 = load i32, i32* %v.addr
  %.v8 = load i32*, i32** %s.addr
  %.v9 = getelementptr i32, i32* %.v8, i32 0
  %.v10 = load i32, i32* %.v9
  %.v11 = load i32*, i32** %s.addr
  %.v12 = getelementptr i32, i32* %.v11, i32 %.v10
  store i32 %.v7, i32* %.v12
  ret void
}

define i32 @stack_pop(i32* %s) {
entry:
  %last = alloca i32
  %s.addr = alloca i32*
  store i32* %s, i32** %s.addr
  %.v1 = load i32*, i32** %s.addr
  %.v2 = getelementptr i32, i32* %.v1, i32 0
  %.v3 = load i32, i32* %.v2
  %.v4 = load i32*, i32** %s.addr
  %.v5 = getelementptr i32, i32* %.v4, i32 %.v3
  %.v6 = load i32, i32* %.v5
  store i32 %.v6, i32* %last
  %.v7 = load i32*, i32** %s.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 0
  %.v9 = load i32, i32* %.v8
  %.v10 = sub i32 %.v9, 1
  %.v11 = load i32*, i32** %s.addr
  %.v12 = getelementptr i32, i32* %.v11, i32 0
  store i32 %.v10, i32* %.v12
  %.v13 = load i32, i32* %last
  ret i32 %.v13
}

define i32 @stack_peek(i32* %s) {
entry:
  %s.addr = alloca i32*
  store i32* %s, i32** %s.addr
  %.v1 = load i32*, i32** %s.addr
  %.v2 = getelementptr i32, i32* %.v1, i32 0
  %.v3 = load i32, i32* %.v2
  %.v4 = load i32*, i32** %s.addr
  %.v5 = getelementptr i32, i32* %.v4, i32 %.v3
  %.v6 = load i32, i32* %.v5
  ret i32 %.v6
}

define i32 @stack_size(i32* %s) {
entry:
  %s.addr = alloca i32*
  store i32* %s, i32** %s.addr
  %.v1 = load i32*, i32** %s.addr
  %.v2 = getelementptr i32, i32* %.v1, i32 0
  %.v3 = load i32, i32* %.v2
  ret i32 %.v3
}

define i32 @eval_op(i32 %op, i32 %lhs, i32 %rhs) {
entry:
  %rhs.addr = alloca i32
  %lhs.addr = alloca i32
  %op.addr = alloca i32
  store i32 %op, i32* %op.addr
  store i32 %lhs, i32* %lhs.addr
  store i32 %rhs, i32* %rhs.addr
  %.v1 = load i32, i32* %op.addr
  %.v2 = icmp eq i32 %.v1, 43
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.end2
if.then1:
  %.v5 = load i32, i32* %lhs.addr
  %.v6 = load i32, i32* %rhs.addr
  %.v7 = add i32 %.v5, %.v6
  ret i32 %.v7
if.end2:
  %.v8 = load i32, i32* %op.addr
  %.v9 = icmp eq i32 %.v8, 45
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %if.then3, label %if.end4
if.then3:
  %.v12 = load i32, i32* %lhs.addr
  %.v13 = load i32, i32* %rhs.addr
  %.v14 = sub i32 %.v12, %.v13
  ret i32 %.v14
if.end4:
  %.v15 = load i32, i32* %op.addr
  %.v16 = icmp eq i32 %.v15, 42
  %.v17 = zext i1 %.v16 to i32
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %if.then5, label %if.end6
if.then5:
  %.v19 = load i32, i32* %lhs.addr
  %.v20 = load i32, i32* %rhs.addr
  %.v21 = mul i32 %.v19, %.v20
  ret i32 %.v21
if.end6:
  %.v22 = load i32, i32* %op.addr
  %.v23 = icmp eq i32 %.v22, 47
  %.v24 = zext i1 %.v23 to i32
  %.v25 = icmp ne i32 %.v24, 0
  br i1 %.v25, label %if.then7, label %if.end8
if.then7:
  %.v26 = load i32, i32* %lhs.addr
  %.v27 = load i32, i32* %rhs.addr
  %.v28 = sdiv i32 %.v26, %.v27
  ret i32 %.v28
if.end8:
  %.v29 = load i32, i32* %op.addr
  %.v30 = icmp eq i32 %.v29, 37
  %.v31 = zext i1 %.v30 to i32
  %.v32 = icmp ne i32 %.v31, 0
  br i1 %.v32, label %if.then9, label %if.end10
if.then9:
  %.v33 = load i32, i32* %lhs.addr
  %.v34 = load i32, i32* %rhs.addr
  %.v35 = srem i32 %.v33, %.v34
  ret i32 %.v35
if.end10:
  ret i32 0
}

define i32 @eval() {
entry:
  %lhs.1 = alloca i32
  %rhs.1 = alloca i32
  %cur_op.1 = alloca i32
  %lhs = alloca i32
  %rhs = alloca i32
  %cur_op = alloca i32
  %.v22 = alloca i32
  %op = alloca i32
  %ops = alloca [256 x i32]
  %oprs = alloca [256 x i32]
  %t145 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 0
  store i32 0, i32* %t145
  %t146 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 1
  store i32 0, i32* %t146
  %t147 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 2
  store i32 0, i32* %t147
  %t148 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 3
  store i32 0, i32* %t148
  %t149 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 4
  store i32 0, i32* %t149
  %t150 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 5
  store i32 0, i32* %t150
  %t151 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 6
  store i32 0, i32* %t151
  %t152 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 7
  store i32 0, i32* %t152
  %t153 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 8
  store i32 0, i32* %t153
  %t154 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 9
  store i32 0, i32* %t154
  %t155 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 10
  store i32 0, i32* %t155
  %t156 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 11
  store i32 0, i32* %t156
  %t157 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 12
  store i32 0, i32* %t157
  %t158 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 13
  store i32 0, i32* %t158
  %t159 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 14
  store i32 0, i32* %t159
  %t160 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 15
  store i32 0, i32* %t160
  %t161 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 16
  store i32 0, i32* %t161
  %t162 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 17
  store i32 0, i32* %t162
  %t163 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 18
  store i32 0, i32* %t163
  %t164 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 19
  store i32 0, i32* %t164
  %t165 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 20
  store i32 0, i32* %t165
  %t166 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 21
  store i32 0, i32* %t166
  %t167 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 22
  store i32 0, i32* %t167
  %t168 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 23
  store i32 0, i32* %t168
  %t169 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 24
  store i32 0, i32* %t169
  %t170 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 25
  store i32 0, i32* %t170
  %t171 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 26
  store i32 0, i32* %t171
  %t172 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 27
  store i32 0, i32* %t172
  %t173 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 28
  store i32 0, i32* %t173
  %t174 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 29
  store i32 0, i32* %t174
  %t175 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 30
  store i32 0, i32* %t175
  %t176 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 31
  store i32 0, i32* %t176
  %t177 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 32
  store i32 0, i32* %t177
  %t178 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 33
  store i32 0, i32* %t178
  %t179 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 34
  store i32 0, i32* %t179
  %t180 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 35
  store i32 0, i32* %t180
  %t181 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 36
  store i32 0, i32* %t181
  %t182 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 37
  store i32 0, i32* %t182
  %t183 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 38
  store i32 0, i32* %t183
  %t184 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 39
  store i32 0, i32* %t184
  %t185 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 40
  store i32 0, i32* %t185
  %t186 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 41
  store i32 0, i32* %t186
  %t187 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 42
  store i32 0, i32* %t187
  %t188 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 43
  store i32 0, i32* %t188
  %t189 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 44
  store i32 0, i32* %t189
  %t190 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 45
  store i32 0, i32* %t190
  %t191 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 46
  store i32 0, i32* %t191
  %t192 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 47
  store i32 0, i32* %t192
  %t193 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 48
  store i32 0, i32* %t193
  %t194 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 49
  store i32 0, i32* %t194
  %t195 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 50
  store i32 0, i32* %t195
  %t196 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 51
  store i32 0, i32* %t196
  %t197 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 52
  store i32 0, i32* %t197
  %t198 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 53
  store i32 0, i32* %t198
  %t199 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 54
  store i32 0, i32* %t199
  %t200 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 55
  store i32 0, i32* %t200
  %t201 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 56
  store i32 0, i32* %t201
  %t202 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 57
  store i32 0, i32* %t202
  %t203 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 58
  store i32 0, i32* %t203
  %t204 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 59
  store i32 0, i32* %t204
  %t205 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 60
  store i32 0, i32* %t205
  %t206 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 61
  store i32 0, i32* %t206
  %t207 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 62
  store i32 0, i32* %t207
  %t208 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 63
  store i32 0, i32* %t208
  %t209 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 64
  store i32 0, i32* %t209
  %t210 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 65
  store i32 0, i32* %t210
  %t211 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 66
  store i32 0, i32* %t211
  %t212 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 67
  store i32 0, i32* %t212
  %t213 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 68
  store i32 0, i32* %t213
  %t214 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 69
  store i32 0, i32* %t214
  %t215 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 70
  store i32 0, i32* %t215
  %t216 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 71
  store i32 0, i32* %t216
  %t217 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 72
  store i32 0, i32* %t217
  %t218 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 73
  store i32 0, i32* %t218
  %t219 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 74
  store i32 0, i32* %t219
  %t220 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 75
  store i32 0, i32* %t220
  %t221 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 76
  store i32 0, i32* %t221
  %t222 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 77
  store i32 0, i32* %t222
  %t223 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 78
  store i32 0, i32* %t223
  %t224 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 79
  store i32 0, i32* %t224
  %t225 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 80
  store i32 0, i32* %t225
  %t226 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 81
  store i32 0, i32* %t226
  %t227 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 82
  store i32 0, i32* %t227
  %t228 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 83
  store i32 0, i32* %t228
  %t229 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 84
  store i32 0, i32* %t229
  %t230 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 85
  store i32 0, i32* %t230
  %t231 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 86
  store i32 0, i32* %t231
  %t232 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 87
  store i32 0, i32* %t232
  %t233 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 88
  store i32 0, i32* %t233
  %t234 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 89
  store i32 0, i32* %t234
  %t235 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 90
  store i32 0, i32* %t235
  %t236 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 91
  store i32 0, i32* %t236
  %t237 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 92
  store i32 0, i32* %t237
  %t238 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 93
  store i32 0, i32* %t238
  %t239 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 94
  store i32 0, i32* %t239
  %t240 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 95
  store i32 0, i32* %t240
  %t241 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 96
  store i32 0, i32* %t241
  %t242 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 97
  store i32 0, i32* %t242
  %t243 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 98
  store i32 0, i32* %t243
  %t244 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 99
  store i32 0, i32* %t244
  %t245 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 100
  store i32 0, i32* %t245
  %t246 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 101
  store i32 0, i32* %t246
  %t247 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 102
  store i32 0, i32* %t247
  %t248 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 103
  store i32 0, i32* %t248
  %t249 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 104
  store i32 0, i32* %t249
  %t250 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 105
  store i32 0, i32* %t250
  %t251 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 106
  store i32 0, i32* %t251
  %t252 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 107
  store i32 0, i32* %t252
  %t253 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 108
  store i32 0, i32* %t253
  %t254 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 109
  store i32 0, i32* %t254
  %t255 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 110
  store i32 0, i32* %t255
  %t256 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 111
  store i32 0, i32* %t256
  %t257 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 112
  store i32 0, i32* %t257
  %t258 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 113
  store i32 0, i32* %t258
  %t259 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 114
  store i32 0, i32* %t259
  %t260 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 115
  store i32 0, i32* %t260
  %t261 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 116
  store i32 0, i32* %t261
  %t262 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 117
  store i32 0, i32* %t262
  %t263 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 118
  store i32 0, i32* %t263
  %t264 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 119
  store i32 0, i32* %t264
  %t265 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 120
  store i32 0, i32* %t265
  %t266 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 121
  store i32 0, i32* %t266
  %t267 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 122
  store i32 0, i32* %t267
  %t268 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 123
  store i32 0, i32* %t268
  %t269 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 124
  store i32 0, i32* %t269
  %t270 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 125
  store i32 0, i32* %t270
  %t271 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 126
  store i32 0, i32* %t271
  %t272 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 127
  store i32 0, i32* %t272
  %t273 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 128
  store i32 0, i32* %t273
  %t274 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 129
  store i32 0, i32* %t274
  %t275 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 130
  store i32 0, i32* %t275
  %t276 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 131
  store i32 0, i32* %t276
  %t277 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 132
  store i32 0, i32* %t277
  %t278 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 133
  store i32 0, i32* %t278
  %t279 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 134
  store i32 0, i32* %t279
  %t280 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 135
  store i32 0, i32* %t280
  %t281 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 136
  store i32 0, i32* %t281
  %t282 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 137
  store i32 0, i32* %t282
  %t283 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 138
  store i32 0, i32* %t283
  %t284 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 139
  store i32 0, i32* %t284
  %t285 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 140
  store i32 0, i32* %t285
  %t286 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 141
  store i32 0, i32* %t286
  %t287 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 142
  store i32 0, i32* %t287
  %t288 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 143
  store i32 0, i32* %t288
  %t289 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 144
  store i32 0, i32* %t289
  %t290 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 145
  store i32 0, i32* %t290
  %t291 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 146
  store i32 0, i32* %t291
  %t292 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 147
  store i32 0, i32* %t292
  %t293 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 148
  store i32 0, i32* %t293
  %t294 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 149
  store i32 0, i32* %t294
  %t295 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 150
  store i32 0, i32* %t295
  %t296 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 151
  store i32 0, i32* %t296
  %t297 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 152
  store i32 0, i32* %t297
  %t298 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 153
  store i32 0, i32* %t298
  %t299 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 154
  store i32 0, i32* %t299
  %t300 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 155
  store i32 0, i32* %t300
  %t301 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 156
  store i32 0, i32* %t301
  %t302 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 157
  store i32 0, i32* %t302
  %t303 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 158
  store i32 0, i32* %t303
  %t304 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 159
  store i32 0, i32* %t304
  %t305 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 160
  store i32 0, i32* %t305
  %t306 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 161
  store i32 0, i32* %t306
  %t307 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 162
  store i32 0, i32* %t307
  %t308 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 163
  store i32 0, i32* %t308
  %t309 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 164
  store i32 0, i32* %t309
  %t310 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 165
  store i32 0, i32* %t310
  %t311 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 166
  store i32 0, i32* %t311
  %t312 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 167
  store i32 0, i32* %t312
  %t313 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 168
  store i32 0, i32* %t313
  %t314 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 169
  store i32 0, i32* %t314
  %t315 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 170
  store i32 0, i32* %t315
  %t316 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 171
  store i32 0, i32* %t316
  %t317 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 172
  store i32 0, i32* %t317
  %t318 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 173
  store i32 0, i32* %t318
  %t319 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 174
  store i32 0, i32* %t319
  %t320 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 175
  store i32 0, i32* %t320
  %t321 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 176
  store i32 0, i32* %t321
  %t322 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 177
  store i32 0, i32* %t322
  %t323 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 178
  store i32 0, i32* %t323
  %t324 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 179
  store i32 0, i32* %t324
  %t325 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 180
  store i32 0, i32* %t325
  %t326 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 181
  store i32 0, i32* %t326
  %t327 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 182
  store i32 0, i32* %t327
  %t328 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 183
  store i32 0, i32* %t328
  %t329 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 184
  store i32 0, i32* %t329
  %t330 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 185
  store i32 0, i32* %t330
  %t331 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 186
  store i32 0, i32* %t331
  %t332 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 187
  store i32 0, i32* %t332
  %t333 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 188
  store i32 0, i32* %t333
  %t334 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 189
  store i32 0, i32* %t334
  %t335 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 190
  store i32 0, i32* %t335
  %t336 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 191
  store i32 0, i32* %t336
  %t337 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 192
  store i32 0, i32* %t337
  %t338 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 193
  store i32 0, i32* %t338
  %t339 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 194
  store i32 0, i32* %t339
  %t340 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 195
  store i32 0, i32* %t340
  %t341 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 196
  store i32 0, i32* %t341
  %t342 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 197
  store i32 0, i32* %t342
  %t343 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 198
  store i32 0, i32* %t343
  %t344 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 199
  store i32 0, i32* %t344
  %t345 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 200
  store i32 0, i32* %t345
  %t346 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 201
  store i32 0, i32* %t346
  %t347 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 202
  store i32 0, i32* %t347
  %t348 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 203
  store i32 0, i32* %t348
  %t349 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 204
  store i32 0, i32* %t349
  %t350 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 205
  store i32 0, i32* %t350
  %t351 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 206
  store i32 0, i32* %t351
  %t352 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 207
  store i32 0, i32* %t352
  %t353 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 208
  store i32 0, i32* %t353
  %t354 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 209
  store i32 0, i32* %t354
  %t355 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 210
  store i32 0, i32* %t355
  %t356 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 211
  store i32 0, i32* %t356
  %t357 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 212
  store i32 0, i32* %t357
  %t358 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 213
  store i32 0, i32* %t358
  %t359 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 214
  store i32 0, i32* %t359
  %t360 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 215
  store i32 0, i32* %t360
  %t361 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 216
  store i32 0, i32* %t361
  %t362 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 217
  store i32 0, i32* %t362
  %t363 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 218
  store i32 0, i32* %t363
  %t364 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 219
  store i32 0, i32* %t364
  %t365 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 220
  store i32 0, i32* %t365
  %t366 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 221
  store i32 0, i32* %t366
  %t367 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 222
  store i32 0, i32* %t367
  %t368 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 223
  store i32 0, i32* %t368
  %t369 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 224
  store i32 0, i32* %t369
  %t370 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 225
  store i32 0, i32* %t370
  %t371 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 226
  store i32 0, i32* %t371
  %t372 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 227
  store i32 0, i32* %t372
  %t373 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 228
  store i32 0, i32* %t373
  %t374 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 229
  store i32 0, i32* %t374
  %t375 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 230
  store i32 0, i32* %t375
  %t376 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 231
  store i32 0, i32* %t376
  %t377 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 232
  store i32 0, i32* %t377
  %t378 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 233
  store i32 0, i32* %t378
  %t379 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 234
  store i32 0, i32* %t379
  %t380 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 235
  store i32 0, i32* %t380
  %t381 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 236
  store i32 0, i32* %t381
  %t382 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 237
  store i32 0, i32* %t382
  %t383 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 238
  store i32 0, i32* %t383
  %t384 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 239
  store i32 0, i32* %t384
  %t385 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 240
  store i32 0, i32* %t385
  %t386 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 241
  store i32 0, i32* %t386
  %t387 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 242
  store i32 0, i32* %t387
  %t388 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 243
  store i32 0, i32* %t388
  %t389 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 244
  store i32 0, i32* %t389
  %t390 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 245
  store i32 0, i32* %t390
  %t391 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 246
  store i32 0, i32* %t391
  %t392 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 247
  store i32 0, i32* %t392
  %t393 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 248
  store i32 0, i32* %t393
  %t394 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 249
  store i32 0, i32* %t394
  %t395 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 250
  store i32 0, i32* %t395
  %t396 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 251
  store i32 0, i32* %t396
  %t397 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 252
  store i32 0, i32* %t397
  %t398 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 253
  store i32 0, i32* %t398
  %t399 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 254
  store i32 0, i32* %t399
  %t400 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 255
  store i32 0, i32* %t400
  %t401 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 0
  store i32 0, i32* %t401
  %t402 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 1
  store i32 0, i32* %t402
  %t403 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 2
  store i32 0, i32* %t403
  %t404 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 3
  store i32 0, i32* %t404
  %t405 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 4
  store i32 0, i32* %t405
  %t406 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 5
  store i32 0, i32* %t406
  %t407 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 6
  store i32 0, i32* %t407
  %t408 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 7
  store i32 0, i32* %t408
  %t409 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 8
  store i32 0, i32* %t409
  %t410 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 9
  store i32 0, i32* %t410
  %t411 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 10
  store i32 0, i32* %t411
  %t412 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 11
  store i32 0, i32* %t412
  %t413 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 12
  store i32 0, i32* %t413
  %t414 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 13
  store i32 0, i32* %t414
  %t415 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 14
  store i32 0, i32* %t415
  %t416 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 15
  store i32 0, i32* %t416
  %t417 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 16
  store i32 0, i32* %t417
  %t418 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 17
  store i32 0, i32* %t418
  %t419 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 18
  store i32 0, i32* %t419
  %t420 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 19
  store i32 0, i32* %t420
  %t421 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 20
  store i32 0, i32* %t421
  %t422 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 21
  store i32 0, i32* %t422
  %t423 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 22
  store i32 0, i32* %t423
  %t424 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 23
  store i32 0, i32* %t424
  %t425 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 24
  store i32 0, i32* %t425
  %t426 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 25
  store i32 0, i32* %t426
  %t427 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 26
  store i32 0, i32* %t427
  %t428 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 27
  store i32 0, i32* %t428
  %t429 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 28
  store i32 0, i32* %t429
  %t430 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 29
  store i32 0, i32* %t430
  %t431 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 30
  store i32 0, i32* %t431
  %t432 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 31
  store i32 0, i32* %t432
  %t433 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 32
  store i32 0, i32* %t433
  %t434 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 33
  store i32 0, i32* %t434
  %t435 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 34
  store i32 0, i32* %t435
  %t436 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 35
  store i32 0, i32* %t436
  %t437 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 36
  store i32 0, i32* %t437
  %t438 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 37
  store i32 0, i32* %t438
  %t439 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 38
  store i32 0, i32* %t439
  %t440 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 39
  store i32 0, i32* %t440
  %t441 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 40
  store i32 0, i32* %t441
  %t442 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 41
  store i32 0, i32* %t442
  %t443 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 42
  store i32 0, i32* %t443
  %t444 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 43
  store i32 0, i32* %t444
  %t445 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 44
  store i32 0, i32* %t445
  %t446 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 45
  store i32 0, i32* %t446
  %t447 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 46
  store i32 0, i32* %t447
  %t448 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 47
  store i32 0, i32* %t448
  %t449 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 48
  store i32 0, i32* %t449
  %t450 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 49
  store i32 0, i32* %t450
  %t451 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 50
  store i32 0, i32* %t451
  %t452 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 51
  store i32 0, i32* %t452
  %t453 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 52
  store i32 0, i32* %t453
  %t454 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 53
  store i32 0, i32* %t454
  %t455 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 54
  store i32 0, i32* %t455
  %t456 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 55
  store i32 0, i32* %t456
  %t457 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 56
  store i32 0, i32* %t457
  %t458 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 57
  store i32 0, i32* %t458
  %t459 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 58
  store i32 0, i32* %t459
  %t460 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 59
  store i32 0, i32* %t460
  %t461 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 60
  store i32 0, i32* %t461
  %t462 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 61
  store i32 0, i32* %t462
  %t463 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 62
  store i32 0, i32* %t463
  %t464 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 63
  store i32 0, i32* %t464
  %t465 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 64
  store i32 0, i32* %t465
  %t466 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 65
  store i32 0, i32* %t466
  %t467 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 66
  store i32 0, i32* %t467
  %t468 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 67
  store i32 0, i32* %t468
  %t469 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 68
  store i32 0, i32* %t469
  %t470 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 69
  store i32 0, i32* %t470
  %t471 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 70
  store i32 0, i32* %t471
  %t472 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 71
  store i32 0, i32* %t472
  %t473 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 72
  store i32 0, i32* %t473
  %t474 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 73
  store i32 0, i32* %t474
  %t475 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 74
  store i32 0, i32* %t475
  %t476 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 75
  store i32 0, i32* %t476
  %t477 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 76
  store i32 0, i32* %t477
  %t478 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 77
  store i32 0, i32* %t478
  %t479 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 78
  store i32 0, i32* %t479
  %t480 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 79
  store i32 0, i32* %t480
  %t481 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 80
  store i32 0, i32* %t481
  %t482 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 81
  store i32 0, i32* %t482
  %t483 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 82
  store i32 0, i32* %t483
  %t484 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 83
  store i32 0, i32* %t484
  %t485 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 84
  store i32 0, i32* %t485
  %t486 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 85
  store i32 0, i32* %t486
  %t487 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 86
  store i32 0, i32* %t487
  %t488 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 87
  store i32 0, i32* %t488
  %t489 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 88
  store i32 0, i32* %t489
  %t490 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 89
  store i32 0, i32* %t490
  %t491 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 90
  store i32 0, i32* %t491
  %t492 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 91
  store i32 0, i32* %t492
  %t493 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 92
  store i32 0, i32* %t493
  %t494 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 93
  store i32 0, i32* %t494
  %t495 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 94
  store i32 0, i32* %t495
  %t496 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 95
  store i32 0, i32* %t496
  %t497 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 96
  store i32 0, i32* %t497
  %t498 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 97
  store i32 0, i32* %t498
  %t499 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 98
  store i32 0, i32* %t499
  %t500 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 99
  store i32 0, i32* %t500
  %t501 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 100
  store i32 0, i32* %t501
  %t502 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 101
  store i32 0, i32* %t502
  %t503 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 102
  store i32 0, i32* %t503
  %t504 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 103
  store i32 0, i32* %t504
  %t505 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 104
  store i32 0, i32* %t505
  %t506 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 105
  store i32 0, i32* %t506
  %t507 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 106
  store i32 0, i32* %t507
  %t508 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 107
  store i32 0, i32* %t508
  %t509 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 108
  store i32 0, i32* %t509
  %t510 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 109
  store i32 0, i32* %t510
  %t511 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 110
  store i32 0, i32* %t511
  %t512 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 111
  store i32 0, i32* %t512
  %t513 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 112
  store i32 0, i32* %t513
  %t514 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 113
  store i32 0, i32* %t514
  %t515 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 114
  store i32 0, i32* %t515
  %t516 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 115
  store i32 0, i32* %t516
  %t517 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 116
  store i32 0, i32* %t517
  %t518 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 117
  store i32 0, i32* %t518
  %t519 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 118
  store i32 0, i32* %t519
  %t520 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 119
  store i32 0, i32* %t520
  %t521 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 120
  store i32 0, i32* %t521
  %t522 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 121
  store i32 0, i32* %t522
  %t523 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 122
  store i32 0, i32* %t523
  %t524 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 123
  store i32 0, i32* %t524
  %t525 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 124
  store i32 0, i32* %t525
  %t526 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 125
  store i32 0, i32* %t526
  %t527 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 126
  store i32 0, i32* %t527
  %t528 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 127
  store i32 0, i32* %t528
  %t529 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 128
  store i32 0, i32* %t529
  %t530 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 129
  store i32 0, i32* %t530
  %t531 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 130
  store i32 0, i32* %t531
  %t532 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 131
  store i32 0, i32* %t532
  %t533 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 132
  store i32 0, i32* %t533
  %t534 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 133
  store i32 0, i32* %t534
  %t535 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 134
  store i32 0, i32* %t535
  %t536 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 135
  store i32 0, i32* %t536
  %t537 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 136
  store i32 0, i32* %t537
  %t538 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 137
  store i32 0, i32* %t538
  %t539 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 138
  store i32 0, i32* %t539
  %t540 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 139
  store i32 0, i32* %t540
  %t541 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 140
  store i32 0, i32* %t541
  %t542 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 141
  store i32 0, i32* %t542
  %t543 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 142
  store i32 0, i32* %t543
  %t544 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 143
  store i32 0, i32* %t544
  %t545 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 144
  store i32 0, i32* %t545
  %t546 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 145
  store i32 0, i32* %t546
  %t547 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 146
  store i32 0, i32* %t547
  %t548 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 147
  store i32 0, i32* %t548
  %t549 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 148
  store i32 0, i32* %t549
  %t550 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 149
  store i32 0, i32* %t550
  %t551 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 150
  store i32 0, i32* %t551
  %t552 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 151
  store i32 0, i32* %t552
  %t553 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 152
  store i32 0, i32* %t553
  %t554 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 153
  store i32 0, i32* %t554
  %t555 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 154
  store i32 0, i32* %t555
  %t556 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 155
  store i32 0, i32* %t556
  %t557 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 156
  store i32 0, i32* %t557
  %t558 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 157
  store i32 0, i32* %t558
  %t559 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 158
  store i32 0, i32* %t559
  %t560 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 159
  store i32 0, i32* %t560
  %t561 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 160
  store i32 0, i32* %t561
  %t562 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 161
  store i32 0, i32* %t562
  %t563 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 162
  store i32 0, i32* %t563
  %t564 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 163
  store i32 0, i32* %t564
  %t565 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 164
  store i32 0, i32* %t565
  %t566 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 165
  store i32 0, i32* %t566
  %t567 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 166
  store i32 0, i32* %t567
  %t568 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 167
  store i32 0, i32* %t568
  %t569 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 168
  store i32 0, i32* %t569
  %t570 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 169
  store i32 0, i32* %t570
  %t571 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 170
  store i32 0, i32* %t571
  %t572 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 171
  store i32 0, i32* %t572
  %t573 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 172
  store i32 0, i32* %t573
  %t574 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 173
  store i32 0, i32* %t574
  %t575 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 174
  store i32 0, i32* %t575
  %t576 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 175
  store i32 0, i32* %t576
  %t577 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 176
  store i32 0, i32* %t577
  %t578 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 177
  store i32 0, i32* %t578
  %t579 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 178
  store i32 0, i32* %t579
  %t580 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 179
  store i32 0, i32* %t580
  %t581 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 180
  store i32 0, i32* %t581
  %t582 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 181
  store i32 0, i32* %t582
  %t583 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 182
  store i32 0, i32* %t583
  %t584 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 183
  store i32 0, i32* %t584
  %t585 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 184
  store i32 0, i32* %t585
  %t586 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 185
  store i32 0, i32* %t586
  %t587 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 186
  store i32 0, i32* %t587
  %t588 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 187
  store i32 0, i32* %t588
  %t589 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 188
  store i32 0, i32* %t589
  %t590 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 189
  store i32 0, i32* %t590
  %t591 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 190
  store i32 0, i32* %t591
  %t592 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 191
  store i32 0, i32* %t592
  %t593 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 192
  store i32 0, i32* %t593
  %t594 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 193
  store i32 0, i32* %t594
  %t595 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 194
  store i32 0, i32* %t595
  %t596 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 195
  store i32 0, i32* %t596
  %t597 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 196
  store i32 0, i32* %t597
  %t598 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 197
  store i32 0, i32* %t598
  %t599 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 198
  store i32 0, i32* %t599
  %t600 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 199
  store i32 0, i32* %t600
  %t601 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 200
  store i32 0, i32* %t601
  %t602 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 201
  store i32 0, i32* %t602
  %t603 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 202
  store i32 0, i32* %t603
  %t604 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 203
  store i32 0, i32* %t604
  %t605 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 204
  store i32 0, i32* %t605
  %t606 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 205
  store i32 0, i32* %t606
  %t607 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 206
  store i32 0, i32* %t607
  %t608 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 207
  store i32 0, i32* %t608
  %t609 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 208
  store i32 0, i32* %t609
  %t610 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 209
  store i32 0, i32* %t610
  %t611 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 210
  store i32 0, i32* %t611
  %t612 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 211
  store i32 0, i32* %t612
  %t613 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 212
  store i32 0, i32* %t613
  %t614 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 213
  store i32 0, i32* %t614
  %t615 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 214
  store i32 0, i32* %t615
  %t616 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 215
  store i32 0, i32* %t616
  %t617 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 216
  store i32 0, i32* %t617
  %t618 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 217
  store i32 0, i32* %t618
  %t619 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 218
  store i32 0, i32* %t619
  %t620 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 219
  store i32 0, i32* %t620
  %t621 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 220
  store i32 0, i32* %t621
  %t622 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 221
  store i32 0, i32* %t622
  %t623 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 222
  store i32 0, i32* %t623
  %t624 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 223
  store i32 0, i32* %t624
  %t625 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 224
  store i32 0, i32* %t625
  %t626 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 225
  store i32 0, i32* %t626
  %t627 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 226
  store i32 0, i32* %t627
  %t628 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 227
  store i32 0, i32* %t628
  %t629 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 228
  store i32 0, i32* %t629
  %t630 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 229
  store i32 0, i32* %t630
  %t631 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 230
  store i32 0, i32* %t631
  %t632 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 231
  store i32 0, i32* %t632
  %t633 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 232
  store i32 0, i32* %t633
  %t634 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 233
  store i32 0, i32* %t634
  %t635 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 234
  store i32 0, i32* %t635
  %t636 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 235
  store i32 0, i32* %t636
  %t637 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 236
  store i32 0, i32* %t637
  %t638 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 237
  store i32 0, i32* %t638
  %t639 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 238
  store i32 0, i32* %t639
  %t640 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 239
  store i32 0, i32* %t640
  %t641 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 240
  store i32 0, i32* %t641
  %t642 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 241
  store i32 0, i32* %t642
  %t643 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 242
  store i32 0, i32* %t643
  %t644 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 243
  store i32 0, i32* %t644
  %t645 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 244
  store i32 0, i32* %t645
  %t646 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 245
  store i32 0, i32* %t646
  %t647 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 246
  store i32 0, i32* %t647
  %t648 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 247
  store i32 0, i32* %t648
  %t649 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 248
  store i32 0, i32* %t649
  %t650 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 249
  store i32 0, i32* %t650
  %t651 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 250
  store i32 0, i32* %t651
  %t652 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 251
  store i32 0, i32* %t652
  %t653 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 252
  store i32 0, i32* %t653
  %t654 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 253
  store i32 0, i32* %t654
  %t655 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 254
  store i32 0, i32* %t655
  %t656 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 255
  store i32 0, i32* %t656
  %.v1 = load i32, i32* @cur_token
  %.v2 = load i32, i32* @TOKEN_NUM
  %.v3 = icmp ne i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %if.then1, label %if.end2
if.then1:
  %.v6 = call i32 @panic()
  ret i32 %.v6
if.end2:
  %.v7 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 0
  %.v8 = load i32, i32* @num
  call void @stack_push(i32* %.v7, i32 %.v8)
  %.v9 = call i32 @next_token()
  br label %while.cond3
while.cond3:
  %.v10 = load i32, i32* @cur_token
  %.v11 = load i32, i32* @TOKEN_OTHER
  %.v12 = icmp eq i32 %.v10, %.v11
  %.v13 = zext i1 %.v12 to i32
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %while.body4, label %while.end5
while.body4:
  %.v15 = load i32, i32* @other
  store i32 %.v15, i32* %op
  %.v16 = load i32, i32* %op
  %.v17 = call i32 @get_op_prec(i32 %.v16)
  %.v18 = icmp eq i32 %.v17, 0
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %if.then6, label %if.end7
while.end5:
  %.v59 = call i32 @next_token()
  br label %while.cond15
if.then6:
  br label %while.end5
if.end7:
  %.v21 = call i32 @next_token()
  br label %while.cond8
while.cond8:
  store i32 0, i32* %.v22
  %.v23 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 0
  %.v24 = call i32 @stack_size(i32* %.v23)
  %.v25 = icmp ne i32 %.v24, 0
  br i1 %.v25, label %land.rhs11, label %land.end12
while.body9:
  %.v37 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 0
  %.v38 = call i32 @stack_pop(i32* %.v37)
  store i32 %.v38, i32* %cur_op
  %.v39 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 0
  %.v40 = call i32 @stack_pop(i32* %.v39)
  store i32 %.v40, i32* %rhs
  %.v41 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 0
  %.v42 = call i32 @stack_pop(i32* %.v41)
  store i32 %.v42, i32* %lhs
  %.v43 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 0
  %.v44 = load i32, i32* %cur_op
  %.v45 = load i32, i32* %lhs
  %.v46 = load i32, i32* %rhs
  %.v47 = call i32 @eval_op(i32 %.v44, i32 %.v45, i32 %.v46)
  call void @stack_push(i32* %.v43, i32 %.v47)
  br label %while.cond8
while.end10:
  %.v48 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 0
  %.v49 = load i32, i32* %op
  call void @stack_push(i32* %.v48, i32 %.v49)
  %.v50 = load i32, i32* @cur_token
  %.v51 = load i32, i32* @TOKEN_NUM
  %.v52 = icmp ne i32 %.v50, %.v51
  %.v53 = zext i1 %.v52 to i32
  %.v54 = icmp ne i32 %.v53, 0
  br i1 %.v54, label %if.then13, label %if.end14
land.rhs11:
  %.v26 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 0
  %.v27 = call i32 @stack_peek(i32* %.v26)
  %.v28 = call i32 @get_op_prec(i32 %.v27)
  %.v29 = load i32, i32* %op
  %.v30 = call i32 @get_op_prec(i32 %.v29)
  %.v31 = icmp sge i32 %.v28, %.v30
  %.v32 = zext i1 %.v31 to i32
  %.v33 = icmp ne i32 %.v32, 0
  %.v34 = zext i1 %.v33 to i32
  store i32 %.v34, i32* %.v22
  br label %land.end12
land.end12:
  %.v35 = load i32, i32* %.v22
  %.v36 = icmp ne i32 %.v35, 0
  br i1 %.v36, label %while.body9, label %while.end10
if.then13:
  %.v55 = call i32 @panic()
  ret i32 %.v55
if.end14:
  %.v56 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 0
  %.v57 = load i32, i32* @num
  call void @stack_push(i32* %.v56, i32 %.v57)
  %.v58 = call i32 @next_token()
  br label %while.cond3
while.cond15:
  %.v60 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 0
  %.v61 = call i32 @stack_size(i32* %.v60)
  %.v62 = icmp ne i32 %.v61, 0
  br i1 %.v62, label %while.body16, label %while.end17
while.body16:
  %.v63 = getelementptr [256 x i32], [256 x i32]* %ops, i64 0, i64 0
  %.v64 = call i32 @stack_pop(i32* %.v63)
  store i32 %.v64, i32* %cur_op.1
  %.v65 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 0
  %.v66 = call i32 @stack_pop(i32* %.v65)
  store i32 %.v66, i32* %rhs.1
  %.v67 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 0
  %.v68 = call i32 @stack_pop(i32* %.v67)
  store i32 %.v68, i32* %lhs.1
  %.v69 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 0
  %.v70 = load i32, i32* %cur_op.1
  %.v71 = load i32, i32* %lhs.1
  %.v72 = load i32, i32* %rhs.1
  %.v73 = call i32 @eval_op(i32 %.v70, i32 %.v71, i32 %.v72)
  call void @stack_push(i32* %.v69, i32 %.v73)
  br label %while.cond15
while.end17:
  %.v74 = getelementptr [256 x i32], [256 x i32]* %oprs, i64 0, i64 0
  %.v75 = call i32 @stack_peek(i32* %.v74)
  ret i32 %.v75
}

define i32 @main() {
entry:
  %count = alloca i32
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* %count
  %.v2 = call i32 @getch()
  %.v3 = call i32 @next_token()
  br label %while.cond1
while.cond1:
  %.v4 = load i32, i32* %count
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = call i32 @eval()
  call void @putint(i32 %.v6)
  call void @putch(i32 10)
  %.v7 = load i32, i32* %count
  %.v8 = sub i32 %.v7, 1
  store i32 %.v8, i32* %count
  br label %while.cond1
while.end3:
  ret i32 0
}

