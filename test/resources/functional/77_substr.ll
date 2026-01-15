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

define i32 @MAX(i32 %a, i32 %b) {
entry:
  %b.addr = alloca i32
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  store i32 %b, i32* %b.addr
  %.v1 = load i32, i32* %a.addr
  %.v2 = load i32, i32* %b.addr
  %.v3 = icmp eq i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %if.then1, label %if.else2
if.then1:
  %.v6 = load i32, i32* %a.addr
  ret i32 %.v6
if.else2:
  %.v7 = load i32, i32* %a.addr
  %.v8 = load i32, i32* %b.addr
  %.v9 = icmp sgt i32 %.v7, %.v8
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %if.then4, label %if.else5
if.end3:
  ret i32 0
if.then4:
  %.v12 = load i32, i32* %a.addr
  ret i32 %.v12
if.else5:
  %.v13 = load i32, i32* %b.addr
  ret i32 %.v13
if.end6:
  br label %if.end3
}

define i32 @max_sum_nonadjacent(i32* %arr, i32 %n) {
entry:
  %i = alloca i32
  %temp = alloca [16 x i32]
  %n.addr = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  store i32 %n, i32* %n.addr
  %t13 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 0
  store i32 0, i32* %t13
  %t14 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 1
  store i32 0, i32* %t14
  %t15 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 2
  store i32 0, i32* %t15
  %t16 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 3
  store i32 0, i32* %t16
  %t17 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 4
  store i32 0, i32* %t17
  %t18 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 5
  store i32 0, i32* %t18
  %t19 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 6
  store i32 0, i32* %t19
  %t20 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 7
  store i32 0, i32* %t20
  %t21 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 8
  store i32 0, i32* %t21
  %t22 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 9
  store i32 0, i32* %t22
  %t23 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 10
  store i32 0, i32* %t23
  %t24 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 11
  store i32 0, i32* %t24
  %t25 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 12
  store i32 0, i32* %t25
  %t26 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 13
  store i32 0, i32* %t26
  %t27 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 14
  store i32 0, i32* %t27
  %t28 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i64 15
  store i32 0, i32* %t28
  %.v1 = load i32*, i32** %arr.addr
  %.v2 = getelementptr i32, i32* %.v1, i32 0
  %.v3 = load i32, i32* %.v2
  %t32 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i32 0
  store i32 %.v3, i32* %t32
  %.v4 = load i32*, i32** %arr.addr
  %.v5 = getelementptr i32, i32* %.v4, i32 0
  %.v6 = load i32, i32* %.v5
  %.v7 = load i32*, i32** %arr.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 1
  %.v9 = load i32, i32* %.v8
  %.v10 = call i32 @MAX(i32 %.v6, i32 %.v9)
  %t40 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i32 1
  store i32 %.v10, i32* %t40
  store i32 2, i32* %i
  br label %while.cond1
while.cond1:
  %.v11 = load i32, i32* %i
  %.v12 = load i32, i32* %n.addr
  %.v13 = icmp slt i32 %.v11, %.v12
  %.v14 = zext i1 %.v13 to i32
  %.v15 = icmp ne i32 %.v14, 0
  br i1 %.v15, label %while.body2, label %while.end3
while.body2:
  %.v16 = load i32, i32* %i
  %.v17 = sub i32 %.v16, 2
  %t48 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i32 %.v17
  %.v18 = load i32, i32* %t48
  %.v19 = load i32, i32* %i
  %.v20 = load i32*, i32** %arr.addr
  %.v21 = getelementptr i32, i32* %.v20, i32 %.v19
  %.v22 = load i32, i32* %.v21
  %.v23 = add i32 %.v18, %.v22
  %.v24 = load i32, i32* %i
  %.v25 = sub i32 %.v24, 1
  %t57 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i32 %.v25
  %.v26 = load i32, i32* %t57
  %.v27 = call i32 @MAX(i32 %.v23, i32 %.v26)
  %.v28 = load i32, i32* %i
  %t61 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i32 %.v28
  store i32 %.v27, i32* %t61
  %.v29 = load i32, i32* %i
  %.v30 = add i32 %.v29, 1
  store i32 %.v30, i32* %i
  br label %while.cond1
while.end3:
  %.v31 = load i32, i32* %n.addr
  %.v32 = sub i32 %.v31, 1
  %t66 = getelementptr [16 x i32], [16 x i32]* %temp, i64 0, i32 %.v32
  %.v33 = load i32, i32* %t66
  ret i32 %.v33
}

define i32 @longest_common_subseq(i32* %arr1, i32 %len1, i32* %arr2, i32 %len2) {
entry:
  %j = alloca i32
  %i = alloca i32
  %p = alloca [16 x [16 x i32]]
  %len2.addr = alloca i32
  %arr2.addr = alloca i32*
  %len1.addr = alloca i32
  %arr1.addr = alloca i32*
  store i32* %arr1, i32** %arr1.addr
  store i32 %len1, i32* %len1.addr
  store i32* %arr2, i32** %arr2.addr
  store i32 %len2, i32* %len2.addr
  %t68 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 0
  store i32 0, i32* %t68
  %t69 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 1
  store i32 0, i32* %t69
  %t70 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 2
  store i32 0, i32* %t70
  %t71 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 3
  store i32 0, i32* %t71
  %t72 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 4
  store i32 0, i32* %t72
  %t73 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 5
  store i32 0, i32* %t73
  %t74 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 6
  store i32 0, i32* %t74
  %t75 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 7
  store i32 0, i32* %t75
  %t76 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 8
  store i32 0, i32* %t76
  %t77 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 9
  store i32 0, i32* %t77
  %t78 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 10
  store i32 0, i32* %t78
  %t79 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 11
  store i32 0, i32* %t79
  %t80 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 12
  store i32 0, i32* %t80
  %t81 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 13
  store i32 0, i32* %t81
  %t82 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 14
  store i32 0, i32* %t82
  %t83 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 0, i64 15
  store i32 0, i32* %t83
  %t84 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 0
  store i32 0, i32* %t84
  %t85 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 1
  store i32 0, i32* %t85
  %t86 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 2
  store i32 0, i32* %t86
  %t87 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 3
  store i32 0, i32* %t87
  %t88 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 4
  store i32 0, i32* %t88
  %t89 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 5
  store i32 0, i32* %t89
  %t90 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 6
  store i32 0, i32* %t90
  %t91 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 7
  store i32 0, i32* %t91
  %t92 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 8
  store i32 0, i32* %t92
  %t93 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 9
  store i32 0, i32* %t93
  %t94 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 10
  store i32 0, i32* %t94
  %t95 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 11
  store i32 0, i32* %t95
  %t96 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 12
  store i32 0, i32* %t96
  %t97 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 13
  store i32 0, i32* %t97
  %t98 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 14
  store i32 0, i32* %t98
  %t99 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 1, i64 15
  store i32 0, i32* %t99
  %t100 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 0
  store i32 0, i32* %t100
  %t101 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 1
  store i32 0, i32* %t101
  %t102 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 2
  store i32 0, i32* %t102
  %t103 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 3
  store i32 0, i32* %t103
  %t104 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 4
  store i32 0, i32* %t104
  %t105 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 5
  store i32 0, i32* %t105
  %t106 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 6
  store i32 0, i32* %t106
  %t107 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 7
  store i32 0, i32* %t107
  %t108 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 8
  store i32 0, i32* %t108
  %t109 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 9
  store i32 0, i32* %t109
  %t110 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 10
  store i32 0, i32* %t110
  %t111 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 11
  store i32 0, i32* %t111
  %t112 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 12
  store i32 0, i32* %t112
  %t113 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 13
  store i32 0, i32* %t113
  %t114 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 14
  store i32 0, i32* %t114
  %t115 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 2, i64 15
  store i32 0, i32* %t115
  %t116 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 0
  store i32 0, i32* %t116
  %t117 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 1
  store i32 0, i32* %t117
  %t118 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 2
  store i32 0, i32* %t118
  %t119 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 3
  store i32 0, i32* %t119
  %t120 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 4
  store i32 0, i32* %t120
  %t121 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 5
  store i32 0, i32* %t121
  %t122 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 6
  store i32 0, i32* %t122
  %t123 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 7
  store i32 0, i32* %t123
  %t124 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 8
  store i32 0, i32* %t124
  %t125 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 9
  store i32 0, i32* %t125
  %t126 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 10
  store i32 0, i32* %t126
  %t127 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 11
  store i32 0, i32* %t127
  %t128 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 12
  store i32 0, i32* %t128
  %t129 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 13
  store i32 0, i32* %t129
  %t130 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 14
  store i32 0, i32* %t130
  %t131 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 3, i64 15
  store i32 0, i32* %t131
  %t132 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 0
  store i32 0, i32* %t132
  %t133 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 1
  store i32 0, i32* %t133
  %t134 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 2
  store i32 0, i32* %t134
  %t135 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 3
  store i32 0, i32* %t135
  %t136 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 4
  store i32 0, i32* %t136
  %t137 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 5
  store i32 0, i32* %t137
  %t138 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 6
  store i32 0, i32* %t138
  %t139 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 7
  store i32 0, i32* %t139
  %t140 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 8
  store i32 0, i32* %t140
  %t141 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 9
  store i32 0, i32* %t141
  %t142 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 10
  store i32 0, i32* %t142
  %t143 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 11
  store i32 0, i32* %t143
  %t144 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 12
  store i32 0, i32* %t144
  %t145 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 13
  store i32 0, i32* %t145
  %t146 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 14
  store i32 0, i32* %t146
  %t147 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 4, i64 15
  store i32 0, i32* %t147
  %t148 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 0
  store i32 0, i32* %t148
  %t149 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 1
  store i32 0, i32* %t149
  %t150 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 2
  store i32 0, i32* %t150
  %t151 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 3
  store i32 0, i32* %t151
  %t152 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 4
  store i32 0, i32* %t152
  %t153 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 5
  store i32 0, i32* %t153
  %t154 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 6
  store i32 0, i32* %t154
  %t155 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 7
  store i32 0, i32* %t155
  %t156 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 8
  store i32 0, i32* %t156
  %t157 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 9
  store i32 0, i32* %t157
  %t158 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 10
  store i32 0, i32* %t158
  %t159 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 11
  store i32 0, i32* %t159
  %t160 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 12
  store i32 0, i32* %t160
  %t161 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 13
  store i32 0, i32* %t161
  %t162 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 14
  store i32 0, i32* %t162
  %t163 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 5, i64 15
  store i32 0, i32* %t163
  %t164 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 0
  store i32 0, i32* %t164
  %t165 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 1
  store i32 0, i32* %t165
  %t166 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 2
  store i32 0, i32* %t166
  %t167 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 3
  store i32 0, i32* %t167
  %t168 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 4
  store i32 0, i32* %t168
  %t169 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 5
  store i32 0, i32* %t169
  %t170 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 6
  store i32 0, i32* %t170
  %t171 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 7
  store i32 0, i32* %t171
  %t172 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 8
  store i32 0, i32* %t172
  %t173 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 9
  store i32 0, i32* %t173
  %t174 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 10
  store i32 0, i32* %t174
  %t175 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 11
  store i32 0, i32* %t175
  %t176 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 12
  store i32 0, i32* %t176
  %t177 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 13
  store i32 0, i32* %t177
  %t178 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 14
  store i32 0, i32* %t178
  %t179 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 6, i64 15
  store i32 0, i32* %t179
  %t180 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 0
  store i32 0, i32* %t180
  %t181 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 1
  store i32 0, i32* %t181
  %t182 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 2
  store i32 0, i32* %t182
  %t183 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 3
  store i32 0, i32* %t183
  %t184 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 4
  store i32 0, i32* %t184
  %t185 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 5
  store i32 0, i32* %t185
  %t186 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 6
  store i32 0, i32* %t186
  %t187 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 7
  store i32 0, i32* %t187
  %t188 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 8
  store i32 0, i32* %t188
  %t189 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 9
  store i32 0, i32* %t189
  %t190 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 10
  store i32 0, i32* %t190
  %t191 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 11
  store i32 0, i32* %t191
  %t192 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 12
  store i32 0, i32* %t192
  %t193 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 13
  store i32 0, i32* %t193
  %t194 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 14
  store i32 0, i32* %t194
  %t195 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 7, i64 15
  store i32 0, i32* %t195
  %t196 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 0
  store i32 0, i32* %t196
  %t197 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 1
  store i32 0, i32* %t197
  %t198 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 2
  store i32 0, i32* %t198
  %t199 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 3
  store i32 0, i32* %t199
  %t200 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 4
  store i32 0, i32* %t200
  %t201 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 5
  store i32 0, i32* %t201
  %t202 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 6
  store i32 0, i32* %t202
  %t203 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 7
  store i32 0, i32* %t203
  %t204 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 8
  store i32 0, i32* %t204
  %t205 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 9
  store i32 0, i32* %t205
  %t206 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 10
  store i32 0, i32* %t206
  %t207 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 11
  store i32 0, i32* %t207
  %t208 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 12
  store i32 0, i32* %t208
  %t209 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 13
  store i32 0, i32* %t209
  %t210 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 14
  store i32 0, i32* %t210
  %t211 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 8, i64 15
  store i32 0, i32* %t211
  %t212 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 0
  store i32 0, i32* %t212
  %t213 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 1
  store i32 0, i32* %t213
  %t214 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 2
  store i32 0, i32* %t214
  %t215 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 3
  store i32 0, i32* %t215
  %t216 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 4
  store i32 0, i32* %t216
  %t217 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 5
  store i32 0, i32* %t217
  %t218 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 6
  store i32 0, i32* %t218
  %t219 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 7
  store i32 0, i32* %t219
  %t220 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 8
  store i32 0, i32* %t220
  %t221 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 9
  store i32 0, i32* %t221
  %t222 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 10
  store i32 0, i32* %t222
  %t223 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 11
  store i32 0, i32* %t223
  %t224 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 12
  store i32 0, i32* %t224
  %t225 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 13
  store i32 0, i32* %t225
  %t226 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 14
  store i32 0, i32* %t226
  %t227 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 9, i64 15
  store i32 0, i32* %t227
  %t228 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 0
  store i32 0, i32* %t228
  %t229 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 1
  store i32 0, i32* %t229
  %t230 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 2
  store i32 0, i32* %t230
  %t231 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 3
  store i32 0, i32* %t231
  %t232 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 4
  store i32 0, i32* %t232
  %t233 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 5
  store i32 0, i32* %t233
  %t234 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 6
  store i32 0, i32* %t234
  %t235 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 7
  store i32 0, i32* %t235
  %t236 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 8
  store i32 0, i32* %t236
  %t237 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 9
  store i32 0, i32* %t237
  %t238 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 10
  store i32 0, i32* %t238
  %t239 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 11
  store i32 0, i32* %t239
  %t240 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 12
  store i32 0, i32* %t240
  %t241 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 13
  store i32 0, i32* %t241
  %t242 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 14
  store i32 0, i32* %t242
  %t243 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 10, i64 15
  store i32 0, i32* %t243
  %t244 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 0
  store i32 0, i32* %t244
  %t245 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 1
  store i32 0, i32* %t245
  %t246 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 2
  store i32 0, i32* %t246
  %t247 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 3
  store i32 0, i32* %t247
  %t248 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 4
  store i32 0, i32* %t248
  %t249 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 5
  store i32 0, i32* %t249
  %t250 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 6
  store i32 0, i32* %t250
  %t251 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 7
  store i32 0, i32* %t251
  %t252 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 8
  store i32 0, i32* %t252
  %t253 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 9
  store i32 0, i32* %t253
  %t254 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 10
  store i32 0, i32* %t254
  %t255 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 11
  store i32 0, i32* %t255
  %t256 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 12
  store i32 0, i32* %t256
  %t257 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 13
  store i32 0, i32* %t257
  %t258 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 14
  store i32 0, i32* %t258
  %t259 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 11, i64 15
  store i32 0, i32* %t259
  %t260 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 0
  store i32 0, i32* %t260
  %t261 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 1
  store i32 0, i32* %t261
  %t262 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 2
  store i32 0, i32* %t262
  %t263 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 3
  store i32 0, i32* %t263
  %t264 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 4
  store i32 0, i32* %t264
  %t265 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 5
  store i32 0, i32* %t265
  %t266 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 6
  store i32 0, i32* %t266
  %t267 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 7
  store i32 0, i32* %t267
  %t268 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 8
  store i32 0, i32* %t268
  %t269 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 9
  store i32 0, i32* %t269
  %t270 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 10
  store i32 0, i32* %t270
  %t271 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 11
  store i32 0, i32* %t271
  %t272 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 12
  store i32 0, i32* %t272
  %t273 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 13
  store i32 0, i32* %t273
  %t274 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 14
  store i32 0, i32* %t274
  %t275 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 12, i64 15
  store i32 0, i32* %t275
  %t276 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 0
  store i32 0, i32* %t276
  %t277 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 1
  store i32 0, i32* %t277
  %t278 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 2
  store i32 0, i32* %t278
  %t279 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 3
  store i32 0, i32* %t279
  %t280 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 4
  store i32 0, i32* %t280
  %t281 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 5
  store i32 0, i32* %t281
  %t282 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 6
  store i32 0, i32* %t282
  %t283 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 7
  store i32 0, i32* %t283
  %t284 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 8
  store i32 0, i32* %t284
  %t285 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 9
  store i32 0, i32* %t285
  %t286 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 10
  store i32 0, i32* %t286
  %t287 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 11
  store i32 0, i32* %t287
  %t288 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 12
  store i32 0, i32* %t288
  %t289 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 13
  store i32 0, i32* %t289
  %t290 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 14
  store i32 0, i32* %t290
  %t291 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 13, i64 15
  store i32 0, i32* %t291
  %t292 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 0
  store i32 0, i32* %t292
  %t293 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 1
  store i32 0, i32* %t293
  %t294 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 2
  store i32 0, i32* %t294
  %t295 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 3
  store i32 0, i32* %t295
  %t296 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 4
  store i32 0, i32* %t296
  %t297 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 5
  store i32 0, i32* %t297
  %t298 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 6
  store i32 0, i32* %t298
  %t299 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 7
  store i32 0, i32* %t299
  %t300 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 8
  store i32 0, i32* %t300
  %t301 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 9
  store i32 0, i32* %t301
  %t302 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 10
  store i32 0, i32* %t302
  %t303 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 11
  store i32 0, i32* %t303
  %t304 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 12
  store i32 0, i32* %t304
  %t305 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 13
  store i32 0, i32* %t305
  %t306 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 14
  store i32 0, i32* %t306
  %t307 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 14, i64 15
  store i32 0, i32* %t307
  %t308 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 0
  store i32 0, i32* %t308
  %t309 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 1
  store i32 0, i32* %t309
  %t310 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 2
  store i32 0, i32* %t310
  %t311 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 3
  store i32 0, i32* %t311
  %t312 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 4
  store i32 0, i32* %t312
  %t313 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 5
  store i32 0, i32* %t313
  %t314 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 6
  store i32 0, i32* %t314
  %t315 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 7
  store i32 0, i32* %t315
  %t316 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 8
  store i32 0, i32* %t316
  %t317 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 9
  store i32 0, i32* %t317
  %t318 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 10
  store i32 0, i32* %t318
  %t319 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 11
  store i32 0, i32* %t319
  %t320 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 12
  store i32 0, i32* %t320
  %t321 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 13
  store i32 0, i32* %t321
  %t322 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 14
  store i32 0, i32* %t322
  %t323 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i64 15, i64 15
  store i32 0, i32* %t323
  store i32 1, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %len1.addr
  %.v3 = icmp sle i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  store i32 1, i32* %j
  br label %while.cond4
while.end3:
  %.v47 = load i32, i32* %len1.addr
  %t381 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i32 %.v47
  %.v48 = load i32, i32* %len2.addr
  %t383 = getelementptr [16 x i32], [16 x i32]* %t381, i64 0, i32 %.v48
  %.v49 = load i32, i32* %t383
  ret i32 %.v49
while.cond4:
  %.v6 = load i32, i32* %j
  %.v7 = load i32, i32* %len2.addr
  %.v8 = icmp sle i32 %.v6, %.v7
  %.v9 = zext i1 %.v8 to i32
  %.v10 = icmp ne i32 %.v9, 0
  br i1 %.v10, label %while.body5, label %while.end6
while.body5:
  %.v11 = load i32, i32* %i
  %.v12 = sub i32 %.v11, 1
  %.v13 = load i32*, i32** %arr1.addr
  %.v14 = getelementptr i32, i32* %.v13, i32 %.v12
  %.v15 = load i32, i32* %.v14
  %.v16 = load i32, i32* %j
  %.v17 = sub i32 %.v16, 1
  %.v18 = load i32*, i32** %arr2.addr
  %.v19 = getelementptr i32, i32* %.v18, i32 %.v17
  %.v20 = load i32, i32* %.v19
  %.v21 = icmp eq i32 %.v15, %.v20
  %.v22 = zext i1 %.v21 to i32
  %.v23 = icmp ne i32 %.v22, 0
  br i1 %.v23, label %if.then7, label %if.else8
while.end6:
  %.v45 = load i32, i32* %i
  %.v46 = add i32 %.v45, 1
  store i32 %.v46, i32* %i
  br label %while.cond1
if.then7:
  %.v24 = load i32, i32* %i
  %.v25 = sub i32 %.v24, 1
  %t349 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i32 %.v25
  %.v26 = load i32, i32* %j
  %.v27 = sub i32 %.v26, 1
  %t352 = getelementptr [16 x i32], [16 x i32]* %t349, i64 0, i32 %.v27
  %.v28 = load i32, i32* %t352
  %.v29 = add i32 %.v28, 1
  %.v30 = load i32, i32* %i
  %t356 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i32 %.v30
  %.v31 = load i32, i32* %j
  %t358 = getelementptr [16 x i32], [16 x i32]* %t356, i64 0, i32 %.v31
  store i32 %.v29, i32* %t358
  br label %if.end9
if.else8:
  %.v32 = load i32, i32* %i
  %.v33 = sub i32 %.v32, 1
  %t361 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i32 %.v33
  %.v34 = load i32, i32* %j
  %t363 = getelementptr [16 x i32], [16 x i32]* %t361, i64 0, i32 %.v34
  %.v35 = load i32, i32* %t363
  %.v36 = load i32, i32* %i
  %t366 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i32 %.v36
  %.v37 = load i32, i32* %j
  %.v38 = sub i32 %.v37, 1
  %t369 = getelementptr [16 x i32], [16 x i32]* %t366, i64 0, i32 %.v38
  %.v39 = load i32, i32* %t369
  %.v40 = call i32 @MAX(i32 %.v35, i32 %.v39)
  %.v41 = load i32, i32* %i
  %t373 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %p, i64 0, i32 %.v41
  %.v42 = load i32, i32* %j
  %t375 = getelementptr [16 x i32], [16 x i32]* %t373, i64 0, i32 %.v42
  store i32 %.v40, i32* %t375
  br label %if.end9
if.end9:
  %.v43 = load i32, i32* %j
  %.v44 = add i32 %.v43, 1
  store i32 %.v44, i32* %j
  br label %while.cond4
}

define i32 @main() {
entry:
  %Bn = alloca i32
  %An = alloca i32
  %B = alloca [13 x i32]
  %A = alloca [15 x i32]
  %t385 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 0
  store i32 8, i32* %t385
  %t386 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 1
  store i32 7, i32* %t386
  %t387 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 2
  store i32 4, i32* %t387
  %t388 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 3
  store i32 1, i32* %t388
  %t389 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 4
  store i32 2, i32* %t389
  %t390 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 5
  store i32 7, i32* %t390
  %t391 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 6
  store i32 0, i32* %t391
  %t392 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 7
  store i32 1, i32* %t392
  %t393 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 8
  store i32 9, i32* %t393
  %t394 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 9
  store i32 3, i32* %t394
  %t395 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 10
  store i32 4, i32* %t395
  %t396 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 11
  store i32 8, i32* %t396
  %t397 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 12
  store i32 3, i32* %t397
  %t398 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 13
  store i32 7, i32* %t398
  %t399 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 14
  store i32 0, i32* %t399
  %t400 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 0
  store i32 3, i32* %t400
  %t401 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 1
  store i32 9, i32* %t401
  %t402 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 2
  store i32 7, i32* %t402
  %t403 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 3
  store i32 1, i32* %t403
  %t404 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 4
  store i32 4, i32* %t404
  %t405 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 5
  store i32 2, i32* %t405
  %t406 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 6
  store i32 4, i32* %t406
  %t407 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 7
  store i32 3, i32* %t407
  %t408 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 8
  store i32 6, i32* %t408
  %t409 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 9
  store i32 8, i32* %t409
  %t410 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 10
  store i32 0, i32* %t410
  %t411 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 11
  store i32 1, i32* %t411
  %t412 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 12
  store i32 5, i32* %t412
  %.v1 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 0
  %.v2 = call i32 @max_sum_nonadjacent(i32* %.v1, i32 15)
  call void @putint(i32 %.v2)
  call void @putch(i32 10)
  %.v3 = getelementptr [15 x i32], [15 x i32]* %A, i64 0, i64 0
  %.v4 = getelementptr [13 x i32], [13 x i32]* %B, i64 0, i64 0
  %.v5 = call i32 @longest_common_subseq(i32* %.v3, i32 15, i32* %.v4, i32 13)
  call void @putint(i32 %.v5)
  call void @putch(i32 10)
  ret i32 0
}

