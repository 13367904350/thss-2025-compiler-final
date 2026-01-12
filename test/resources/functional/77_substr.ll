declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @MAX(i32 %a, i32 %b) {
entry:
  %t0 = alloca i32
  store i32 %a, i32* %t0
  %t1 = alloca i32
  store i32 %b, i32* %t1
  %v1 = load i32, i32* %t0
  %v2 = load i32, i32* %t1
  %v3 = icmp eq i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %if.then1, label %if.else2
if.then1:
  %v6 = load i32, i32* %t0
  ret i32 %v6
if.else2:
  %v7 = load i32, i32* %t0
  %v8 = load i32, i32* %t1
  %v9 = icmp sgt i32 %v7, %v8
  %v10 = zext i1 %v9 to i32
  %v11 = icmp ne i32 %v10, 0
  br i1 %v11, label %if.then4, label %if.else5
if.end3:
  ret i32 0
if.then4:
  %v12 = load i32, i32* %t0
  ret i32 %v12
if.else5:
  %v13 = load i32, i32* %t1
  ret i32 %v13
if.end6:
  br label %if.end3
}

define i32 @max_sum_nonadjacent(i32* %arr, i32 %n) {
entry:
  %t15 = alloca i32
  store i32 %n, i32* %t15
  %t16 = alloca [16 x i32]
  %t17 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 0
  store i32 0, i32* %t17
  %t18 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 1
  store i32 0, i32* %t18
  %t19 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 2
  store i32 0, i32* %t19
  %t20 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 3
  store i32 0, i32* %t20
  %t21 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 4
  store i32 0, i32* %t21
  %t22 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 5
  store i32 0, i32* %t22
  %t23 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 6
  store i32 0, i32* %t23
  %t24 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 7
  store i32 0, i32* %t24
  %t25 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 8
  store i32 0, i32* %t25
  %t26 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 9
  store i32 0, i32* %t26
  %t27 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 10
  store i32 0, i32* %t27
  %t28 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 11
  store i32 0, i32* %t28
  %t29 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 12
  store i32 0, i32* %t29
  %t30 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 13
  store i32 0, i32* %t30
  %t31 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 14
  store i32 0, i32* %t31
  %t32 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 15
  store i32 0, i32* %t32
  %t33 = getelementptr i32, i32* %arr, i32 0
  %v1 = load i32, i32* %t33
  %t35 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 0
  store i32 %v1, i32* %t35
  %t36 = getelementptr i32, i32* %arr, i32 0
  %v2 = load i32, i32* %t36
  %t38 = getelementptr i32, i32* %arr, i32 1
  %v3 = load i32, i32* %t38
  %v4 = call i32 @MAX(i32 %v2, i32 %v3)
  %t41 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 1
  store i32 %v4, i32* %t41
  %t42 = alloca i32
  store i32 2, i32* %t42
  br label %while.cond1
while.cond1:
  %v5 = load i32, i32* %t42
  %v6 = load i32, i32* %t15
  %v7 = icmp slt i32 %v5, %v6
  %v8 = zext i1 %v7 to i32
  %v9 = icmp ne i32 %v8, 0
  br i1 %v9, label %while.body2, label %while.end3
while.body2:
  %v10 = load i32, i32* %t42
  %v11 = sub i32 %v10, 2
  %t50 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 %v11
  %v12 = load i32, i32* %t50
  %v13 = load i32, i32* %t42
  %t53 = getelementptr i32, i32* %arr, i32 %v13
  %v14 = load i32, i32* %t53
  %v15 = add i32 %v12, %v14
  %v16 = load i32, i32* %t42
  %v17 = sub i32 %v16, 1
  %t58 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 %v17
  %v18 = load i32, i32* %t58
  %v19 = call i32 @MAX(i32 %v15, i32 %v18)
  %v20 = load i32, i32* %t42
  %t62 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 %v20
  store i32 %v19, i32* %t62
  %v21 = load i32, i32* %t42
  %v22 = add i32 %v21, 1
  store i32 %v22, i32* %t42
  br label %while.cond1
while.end3:
  %v23 = load i32, i32* %t15
  %v24 = sub i32 %v23, 1
  %t67 = getelementptr [16 x i32], [16 x i32]* %t16, i32 0, i32 %v24
  %v25 = load i32, i32* %t67
  ret i32 %v25
}

define i32 @longest_common_subseq(i32* %arr1, i32 %len1, i32* %arr2, i32 %len2) {
entry:
  %t69 = alloca i32
  store i32 %len1, i32* %t69
  %t70 = alloca i32
  store i32 %len2, i32* %t70
  %t71 = alloca [16 x [16 x i32]]
  %t72 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 0
  store i32 0, i32* %t72
  %t73 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 1
  store i32 0, i32* %t73
  %t74 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 2
  store i32 0, i32* %t74
  %t75 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 3
  store i32 0, i32* %t75
  %t76 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 4
  store i32 0, i32* %t76
  %t77 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 5
  store i32 0, i32* %t77
  %t78 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 6
  store i32 0, i32* %t78
  %t79 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 7
  store i32 0, i32* %t79
  %t80 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 8
  store i32 0, i32* %t80
  %t81 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 9
  store i32 0, i32* %t81
  %t82 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 10
  store i32 0, i32* %t82
  %t83 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 11
  store i32 0, i32* %t83
  %t84 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 12
  store i32 0, i32* %t84
  %t85 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 13
  store i32 0, i32* %t85
  %t86 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 14
  store i32 0, i32* %t86
  %t87 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 0, i32 15
  store i32 0, i32* %t87
  %t88 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 0
  store i32 0, i32* %t88
  %t89 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 1
  store i32 0, i32* %t89
  %t90 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 2
  store i32 0, i32* %t90
  %t91 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 3
  store i32 0, i32* %t91
  %t92 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 4
  store i32 0, i32* %t92
  %t93 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 5
  store i32 0, i32* %t93
  %t94 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 6
  store i32 0, i32* %t94
  %t95 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 7
  store i32 0, i32* %t95
  %t96 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 8
  store i32 0, i32* %t96
  %t97 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 9
  store i32 0, i32* %t97
  %t98 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 10
  store i32 0, i32* %t98
  %t99 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 11
  store i32 0, i32* %t99
  %t100 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 12
  store i32 0, i32* %t100
  %t101 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 13
  store i32 0, i32* %t101
  %t102 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 14
  store i32 0, i32* %t102
  %t103 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 1, i32 15
  store i32 0, i32* %t103
  %t104 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 0
  store i32 0, i32* %t104
  %t105 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 1
  store i32 0, i32* %t105
  %t106 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 2
  store i32 0, i32* %t106
  %t107 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 3
  store i32 0, i32* %t107
  %t108 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 4
  store i32 0, i32* %t108
  %t109 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 5
  store i32 0, i32* %t109
  %t110 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 6
  store i32 0, i32* %t110
  %t111 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 7
  store i32 0, i32* %t111
  %t112 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 8
  store i32 0, i32* %t112
  %t113 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 9
  store i32 0, i32* %t113
  %t114 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 10
  store i32 0, i32* %t114
  %t115 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 11
  store i32 0, i32* %t115
  %t116 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 12
  store i32 0, i32* %t116
  %t117 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 13
  store i32 0, i32* %t117
  %t118 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 14
  store i32 0, i32* %t118
  %t119 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 2, i32 15
  store i32 0, i32* %t119
  %t120 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 0
  store i32 0, i32* %t120
  %t121 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 1
  store i32 0, i32* %t121
  %t122 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 2
  store i32 0, i32* %t122
  %t123 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 3
  store i32 0, i32* %t123
  %t124 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 4
  store i32 0, i32* %t124
  %t125 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 5
  store i32 0, i32* %t125
  %t126 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 6
  store i32 0, i32* %t126
  %t127 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 7
  store i32 0, i32* %t127
  %t128 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 8
  store i32 0, i32* %t128
  %t129 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 9
  store i32 0, i32* %t129
  %t130 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 10
  store i32 0, i32* %t130
  %t131 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 11
  store i32 0, i32* %t131
  %t132 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 12
  store i32 0, i32* %t132
  %t133 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 13
  store i32 0, i32* %t133
  %t134 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 14
  store i32 0, i32* %t134
  %t135 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 3, i32 15
  store i32 0, i32* %t135
  %t136 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 0
  store i32 0, i32* %t136
  %t137 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 1
  store i32 0, i32* %t137
  %t138 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 2
  store i32 0, i32* %t138
  %t139 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 3
  store i32 0, i32* %t139
  %t140 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 4
  store i32 0, i32* %t140
  %t141 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 5
  store i32 0, i32* %t141
  %t142 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 6
  store i32 0, i32* %t142
  %t143 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 7
  store i32 0, i32* %t143
  %t144 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 8
  store i32 0, i32* %t144
  %t145 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 9
  store i32 0, i32* %t145
  %t146 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 10
  store i32 0, i32* %t146
  %t147 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 11
  store i32 0, i32* %t147
  %t148 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 12
  store i32 0, i32* %t148
  %t149 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 13
  store i32 0, i32* %t149
  %t150 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 14
  store i32 0, i32* %t150
  %t151 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 4, i32 15
  store i32 0, i32* %t151
  %t152 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 0
  store i32 0, i32* %t152
  %t153 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 1
  store i32 0, i32* %t153
  %t154 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 2
  store i32 0, i32* %t154
  %t155 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 3
  store i32 0, i32* %t155
  %t156 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 4
  store i32 0, i32* %t156
  %t157 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 5
  store i32 0, i32* %t157
  %t158 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 6
  store i32 0, i32* %t158
  %t159 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 7
  store i32 0, i32* %t159
  %t160 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 8
  store i32 0, i32* %t160
  %t161 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 9
  store i32 0, i32* %t161
  %t162 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 10
  store i32 0, i32* %t162
  %t163 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 11
  store i32 0, i32* %t163
  %t164 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 12
  store i32 0, i32* %t164
  %t165 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 13
  store i32 0, i32* %t165
  %t166 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 14
  store i32 0, i32* %t166
  %t167 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 5, i32 15
  store i32 0, i32* %t167
  %t168 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 0
  store i32 0, i32* %t168
  %t169 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 1
  store i32 0, i32* %t169
  %t170 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 2
  store i32 0, i32* %t170
  %t171 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 3
  store i32 0, i32* %t171
  %t172 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 4
  store i32 0, i32* %t172
  %t173 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 5
  store i32 0, i32* %t173
  %t174 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 6
  store i32 0, i32* %t174
  %t175 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 7
  store i32 0, i32* %t175
  %t176 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 8
  store i32 0, i32* %t176
  %t177 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 9
  store i32 0, i32* %t177
  %t178 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 10
  store i32 0, i32* %t178
  %t179 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 11
  store i32 0, i32* %t179
  %t180 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 12
  store i32 0, i32* %t180
  %t181 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 13
  store i32 0, i32* %t181
  %t182 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 14
  store i32 0, i32* %t182
  %t183 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 6, i32 15
  store i32 0, i32* %t183
  %t184 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 0
  store i32 0, i32* %t184
  %t185 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 1
  store i32 0, i32* %t185
  %t186 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 2
  store i32 0, i32* %t186
  %t187 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 3
  store i32 0, i32* %t187
  %t188 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 4
  store i32 0, i32* %t188
  %t189 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 5
  store i32 0, i32* %t189
  %t190 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 6
  store i32 0, i32* %t190
  %t191 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 7
  store i32 0, i32* %t191
  %t192 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 8
  store i32 0, i32* %t192
  %t193 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 9
  store i32 0, i32* %t193
  %t194 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 10
  store i32 0, i32* %t194
  %t195 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 11
  store i32 0, i32* %t195
  %t196 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 12
  store i32 0, i32* %t196
  %t197 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 13
  store i32 0, i32* %t197
  %t198 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 14
  store i32 0, i32* %t198
  %t199 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 7, i32 15
  store i32 0, i32* %t199
  %t200 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 0
  store i32 0, i32* %t200
  %t201 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 1
  store i32 0, i32* %t201
  %t202 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 2
  store i32 0, i32* %t202
  %t203 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 3
  store i32 0, i32* %t203
  %t204 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 4
  store i32 0, i32* %t204
  %t205 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 5
  store i32 0, i32* %t205
  %t206 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 6
  store i32 0, i32* %t206
  %t207 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 7
  store i32 0, i32* %t207
  %t208 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 8
  store i32 0, i32* %t208
  %t209 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 9
  store i32 0, i32* %t209
  %t210 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 10
  store i32 0, i32* %t210
  %t211 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 11
  store i32 0, i32* %t211
  %t212 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 12
  store i32 0, i32* %t212
  %t213 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 13
  store i32 0, i32* %t213
  %t214 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 14
  store i32 0, i32* %t214
  %t215 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 8, i32 15
  store i32 0, i32* %t215
  %t216 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 0
  store i32 0, i32* %t216
  %t217 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 1
  store i32 0, i32* %t217
  %t218 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 2
  store i32 0, i32* %t218
  %t219 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 3
  store i32 0, i32* %t219
  %t220 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 4
  store i32 0, i32* %t220
  %t221 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 5
  store i32 0, i32* %t221
  %t222 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 6
  store i32 0, i32* %t222
  %t223 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 7
  store i32 0, i32* %t223
  %t224 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 8
  store i32 0, i32* %t224
  %t225 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 9
  store i32 0, i32* %t225
  %t226 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 10
  store i32 0, i32* %t226
  %t227 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 11
  store i32 0, i32* %t227
  %t228 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 12
  store i32 0, i32* %t228
  %t229 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 13
  store i32 0, i32* %t229
  %t230 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 14
  store i32 0, i32* %t230
  %t231 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 9, i32 15
  store i32 0, i32* %t231
  %t232 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 0
  store i32 0, i32* %t232
  %t233 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 1
  store i32 0, i32* %t233
  %t234 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 2
  store i32 0, i32* %t234
  %t235 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 3
  store i32 0, i32* %t235
  %t236 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 4
  store i32 0, i32* %t236
  %t237 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 5
  store i32 0, i32* %t237
  %t238 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 6
  store i32 0, i32* %t238
  %t239 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 7
  store i32 0, i32* %t239
  %t240 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 8
  store i32 0, i32* %t240
  %t241 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 9
  store i32 0, i32* %t241
  %t242 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 10
  store i32 0, i32* %t242
  %t243 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 11
  store i32 0, i32* %t243
  %t244 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 12
  store i32 0, i32* %t244
  %t245 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 13
  store i32 0, i32* %t245
  %t246 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 14
  store i32 0, i32* %t246
  %t247 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 10, i32 15
  store i32 0, i32* %t247
  %t248 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 0
  store i32 0, i32* %t248
  %t249 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 1
  store i32 0, i32* %t249
  %t250 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 2
  store i32 0, i32* %t250
  %t251 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 3
  store i32 0, i32* %t251
  %t252 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 4
  store i32 0, i32* %t252
  %t253 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 5
  store i32 0, i32* %t253
  %t254 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 6
  store i32 0, i32* %t254
  %t255 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 7
  store i32 0, i32* %t255
  %t256 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 8
  store i32 0, i32* %t256
  %t257 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 9
  store i32 0, i32* %t257
  %t258 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 10
  store i32 0, i32* %t258
  %t259 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 11
  store i32 0, i32* %t259
  %t260 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 12
  store i32 0, i32* %t260
  %t261 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 13
  store i32 0, i32* %t261
  %t262 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 14
  store i32 0, i32* %t262
  %t263 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 11, i32 15
  store i32 0, i32* %t263
  %t264 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 0
  store i32 0, i32* %t264
  %t265 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 1
  store i32 0, i32* %t265
  %t266 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 2
  store i32 0, i32* %t266
  %t267 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 3
  store i32 0, i32* %t267
  %t268 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 4
  store i32 0, i32* %t268
  %t269 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 5
  store i32 0, i32* %t269
  %t270 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 6
  store i32 0, i32* %t270
  %t271 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 7
  store i32 0, i32* %t271
  %t272 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 8
  store i32 0, i32* %t272
  %t273 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 9
  store i32 0, i32* %t273
  %t274 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 10
  store i32 0, i32* %t274
  %t275 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 11
  store i32 0, i32* %t275
  %t276 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 12
  store i32 0, i32* %t276
  %t277 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 13
  store i32 0, i32* %t277
  %t278 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 14
  store i32 0, i32* %t278
  %t279 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 12, i32 15
  store i32 0, i32* %t279
  %t280 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 0
  store i32 0, i32* %t280
  %t281 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 1
  store i32 0, i32* %t281
  %t282 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 2
  store i32 0, i32* %t282
  %t283 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 3
  store i32 0, i32* %t283
  %t284 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 4
  store i32 0, i32* %t284
  %t285 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 5
  store i32 0, i32* %t285
  %t286 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 6
  store i32 0, i32* %t286
  %t287 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 7
  store i32 0, i32* %t287
  %t288 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 8
  store i32 0, i32* %t288
  %t289 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 9
  store i32 0, i32* %t289
  %t290 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 10
  store i32 0, i32* %t290
  %t291 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 11
  store i32 0, i32* %t291
  %t292 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 12
  store i32 0, i32* %t292
  %t293 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 13
  store i32 0, i32* %t293
  %t294 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 14
  store i32 0, i32* %t294
  %t295 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 13, i32 15
  store i32 0, i32* %t295
  %t296 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 0
  store i32 0, i32* %t296
  %t297 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 1
  store i32 0, i32* %t297
  %t298 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 2
  store i32 0, i32* %t298
  %t299 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 3
  store i32 0, i32* %t299
  %t300 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 4
  store i32 0, i32* %t300
  %t301 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 5
  store i32 0, i32* %t301
  %t302 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 6
  store i32 0, i32* %t302
  %t303 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 7
  store i32 0, i32* %t303
  %t304 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 8
  store i32 0, i32* %t304
  %t305 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 9
  store i32 0, i32* %t305
  %t306 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 10
  store i32 0, i32* %t306
  %t307 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 11
  store i32 0, i32* %t307
  %t308 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 12
  store i32 0, i32* %t308
  %t309 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 13
  store i32 0, i32* %t309
  %t310 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 14
  store i32 0, i32* %t310
  %t311 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 14, i32 15
  store i32 0, i32* %t311
  %t312 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 0
  store i32 0, i32* %t312
  %t313 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 1
  store i32 0, i32* %t313
  %t314 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 2
  store i32 0, i32* %t314
  %t315 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 3
  store i32 0, i32* %t315
  %t316 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 4
  store i32 0, i32* %t316
  %t317 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 5
  store i32 0, i32* %t317
  %t318 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 6
  store i32 0, i32* %t318
  %t319 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 7
  store i32 0, i32* %t319
  %t320 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 8
  store i32 0, i32* %t320
  %t321 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 9
  store i32 0, i32* %t321
  %t322 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 10
  store i32 0, i32* %t322
  %t323 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 11
  store i32 0, i32* %t323
  %t324 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 12
  store i32 0, i32* %t324
  %t325 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 13
  store i32 0, i32* %t325
  %t326 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 14
  store i32 0, i32* %t326
  %t327 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 15, i32 15
  store i32 0, i32* %t327
  %t328 = alloca i32
  %t329 = alloca i32
  store i32 1, i32* %t328
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t328
  %v2 = load i32, i32* %t69
  %v3 = icmp sle i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  store i32 1, i32* %t329
  br label %while.cond4
while.end3:
  %v43 = load i32, i32* %t69
  %v44 = load i32, i32* %t70
  %t381 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 %v43, i32 %v44
  %v45 = load i32, i32* %t381
  ret i32 %v45
while.cond4:
  %v6 = load i32, i32* %t329
  %v7 = load i32, i32* %t70
  %v8 = icmp sle i32 %v6, %v7
  %v9 = zext i1 %v8 to i32
  %v10 = icmp ne i32 %v9, 0
  br i1 %v10, label %while.body5, label %while.end6
while.body5:
  %v11 = load i32, i32* %t328
  %v12 = sub i32 %v11, 1
  %t342 = getelementptr i32, i32* %arr1, i32 %v12
  %v13 = load i32, i32* %t342
  %v14 = load i32, i32* %t329
  %v15 = sub i32 %v14, 1
  %t346 = getelementptr i32, i32* %arr2, i32 %v15
  %v16 = load i32, i32* %t346
  %v17 = icmp eq i32 %v13, %v16
  %v18 = zext i1 %v17 to i32
  %v19 = icmp ne i32 %v18, 0
  br i1 %v19, label %if.then7, label %if.else8
while.end6:
  %v41 = load i32, i32* %t328
  %v42 = add i32 %v41, 1
  store i32 %v42, i32* %t328
  br label %while.cond1
if.then7:
  %v20 = load i32, i32* %t328
  %v21 = sub i32 %v20, 1
  %v22 = load i32, i32* %t329
  %v23 = sub i32 %v22, 1
  %t355 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 %v21, i32 %v23
  %v24 = load i32, i32* %t355
  %v25 = add i32 %v24, 1
  %v26 = load i32, i32* %t328
  %v27 = load i32, i32* %t329
  %t360 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 %v26, i32 %v27
  store i32 %v25, i32* %t360
  br label %if.end9
if.else8:
  %v28 = load i32, i32* %t328
  %v29 = sub i32 %v28, 1
  %v30 = load i32, i32* %t329
  %t364 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 %v29, i32 %v30
  %v31 = load i32, i32* %t364
  %v32 = load i32, i32* %t328
  %v33 = load i32, i32* %t329
  %v34 = sub i32 %v33, 1
  %t369 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 %v32, i32 %v34
  %v35 = load i32, i32* %t369
  %v36 = call i32 @MAX(i32 %v31, i32 %v35)
  %v37 = load i32, i32* %t328
  %v38 = load i32, i32* %t329
  %t374 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %t71, i32 0, i32 %v37, i32 %v38
  store i32 %v36, i32* %t374
  br label %if.end9
if.end9:
  %v39 = load i32, i32* %t329
  %v40 = add i32 %v39, 1
  store i32 %v40, i32* %t329
  br label %while.cond4
}

define i32 @main() {
entry:
  %t383 = alloca [15 x i32]
  %t384 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 0
  store i32 8, i32* %t384
  %t385 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 1
  store i32 7, i32* %t385
  %t386 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 2
  store i32 4, i32* %t386
  %t387 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 3
  store i32 1, i32* %t387
  %t388 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 4
  store i32 2, i32* %t388
  %t389 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 5
  store i32 7, i32* %t389
  %t390 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 6
  store i32 0, i32* %t390
  %t391 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 7
  store i32 1, i32* %t391
  %t392 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 8
  store i32 9, i32* %t392
  %t393 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 9
  store i32 3, i32* %t393
  %t394 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 10
  store i32 4, i32* %t394
  %t395 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 11
  store i32 8, i32* %t395
  %t396 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 12
  store i32 3, i32* %t396
  %t397 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 13
  store i32 7, i32* %t397
  %t398 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 14
  store i32 0, i32* %t398
  %t399 = alloca [13 x i32]
  %t400 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 0
  store i32 3, i32* %t400
  %t401 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 1
  store i32 9, i32* %t401
  %t402 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 2
  store i32 7, i32* %t402
  %t403 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 3
  store i32 1, i32* %t403
  %t404 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 4
  store i32 4, i32* %t404
  %t405 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 5
  store i32 2, i32* %t405
  %t406 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 6
  store i32 4, i32* %t406
  %t407 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 7
  store i32 3, i32* %t407
  %t408 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 8
  store i32 6, i32* %t408
  %t409 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 9
  store i32 8, i32* %t409
  %t410 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 10
  store i32 0, i32* %t410
  %t411 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 11
  store i32 1, i32* %t411
  %t412 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 12
  store i32 5, i32* %t412
  %t413 = alloca i32
  %t414 = alloca i32
  %v1 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 0
  %v2 = call i32 @max_sum_nonadjacent(i32* %v1, i32 15)
  call void @putint(i32 %v2)
  call void @putch(i32 10)
  %v3 = getelementptr [15 x i32], [15 x i32]* %t383, i32 0, i32 0
  %v4 = getelementptr [13 x i32], [13 x i32]* %t399, i32 0, i32 0
  %v5 = call i32 @longest_common_subseq(i32* %v3, i32 15, i32* %v4, i32 13)
  call void @putint(i32 %v5)
  call void @putch(i32 10)
  ret i32 0
}

