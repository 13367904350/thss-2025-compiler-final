@a = global [4096 x i32] zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @f1(i32* %b) {
entry:
  %t0 = sext i32 5 to i64
  %t1 = getelementptr [4096 x i32], [4096 x i32]* @a, i64 0, i64 %t0
  store i32 4000, i32* %t1
  %t2 = sext i32 4000 to i64
  %t3 = getelementptr [4096 x i32], [4096 x i32]* @a, i64 0, i64 %t2
  store i32 3, i32* %t3
  %t4 = sext i32 4095 to i64
  %t5 = getelementptr [4096 x i32], [4096 x i32]* @a, i64 0, i64 %t4
  store i32 7, i32* %t5
  %t6 = sext i32 2216 to i64
  %t7 = getelementptr [4096 x i32], [4096 x i32]* @a, i64 0, i64 %t6
  %.v1 = load i32, i32* %t7
  %.v2 = add i32 %.v1, 9
  %t10 = sext i32 4095 to i64
  %t11 = getelementptr [4096 x i32], [4096 x i32]* @a, i64 0, i64 %t10
  %.v3 = load i32, i32* %t11
  %t13 = sext i32 %.v3 to i64
  %t14 = getelementptr i32, i32* %b, i64 %t13
  store i32 %.v2, i32* %t14
  %t15 = sext i32 5 to i64
  %t16 = getelementptr [4096 x i32], [4096 x i32]* @a, i64 0, i64 %t15
  %.v4 = load i32, i32* %t16
  %t18 = sext i32 %.v4 to i64
  %t19 = getelementptr [4096 x i32], [4096 x i32]* @a, i64 0, i64 %t18
  %.v5 = load i32, i32* %t19
  ret i32 %.v5
}

define i32 @main() {
entry:
  %c = alloca [1024 x [4 x i32]]
  %b = alloca [4 x [1024 x i32]]
  %t21 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 0
  store i32 0, i32* %t21
  %t22 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1
  store i32 0, i32* %t22
  %t23 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 2
  store i32 0, i32* %t23
  %t24 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 3
  store i32 0, i32* %t24
  %t25 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 4
  store i32 0, i32* %t25
  %t26 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 5
  store i32 0, i32* %t26
  %t27 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 6
  store i32 0, i32* %t27
  %t28 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 7
  store i32 0, i32* %t28
  %t29 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 8
  store i32 0, i32* %t29
  %t30 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 9
  store i32 0, i32* %t30
  %t31 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 10
  store i32 0, i32* %t31
  %t32 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 11
  store i32 0, i32* %t32
  %t33 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 12
  store i32 0, i32* %t33
  %t34 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 13
  store i32 0, i32* %t34
  %t35 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 14
  store i32 0, i32* %t35
  %t36 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 15
  store i32 0, i32* %t36
  %t37 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 16
  store i32 0, i32* %t37
  %t38 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 17
  store i32 0, i32* %t38
  %t39 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 18
  store i32 0, i32* %t39
  %t40 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 19
  store i32 0, i32* %t40
  %t41 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 20
  store i32 0, i32* %t41
  %t42 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 21
  store i32 0, i32* %t42
  %t43 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 22
  store i32 0, i32* %t43
  %t44 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 23
  store i32 0, i32* %t44
  %t45 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 24
  store i32 0, i32* %t45
  %t46 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 25
  store i32 0, i32* %t46
  %t47 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 26
  store i32 0, i32* %t47
  %t48 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 27
  store i32 0, i32* %t48
  %t49 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 28
  store i32 0, i32* %t49
  %t50 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 29
  store i32 0, i32* %t50
  %t51 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 30
  store i32 0, i32* %t51
  %t52 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 31
  store i32 0, i32* %t52
  %t53 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 32
  store i32 0, i32* %t53
  %t54 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 33
  store i32 0, i32* %t54
  %t55 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 34
  store i32 0, i32* %t55
  %t56 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 35
  store i32 0, i32* %t56
  %t57 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 36
  store i32 0, i32* %t57
  %t58 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 37
  store i32 0, i32* %t58
  %t59 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 38
  store i32 0, i32* %t59
  %t60 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 39
  store i32 0, i32* %t60
  %t61 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 40
  store i32 0, i32* %t61
  %t62 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 41
  store i32 0, i32* %t62
  %t63 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 42
  store i32 0, i32* %t63
  %t64 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 43
  store i32 0, i32* %t64
  %t65 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 44
  store i32 0, i32* %t65
  %t66 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 45
  store i32 0, i32* %t66
  %t67 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 46
  store i32 0, i32* %t67
  %t68 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 47
  store i32 0, i32* %t68
  %t69 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 48
  store i32 0, i32* %t69
  %t70 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 49
  store i32 0, i32* %t70
  %t71 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 50
  store i32 0, i32* %t71
  %t72 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 51
  store i32 0, i32* %t72
  %t73 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 52
  store i32 0, i32* %t73
  %t74 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 53
  store i32 0, i32* %t74
  %t75 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 54
  store i32 0, i32* %t75
  %t76 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 55
  store i32 0, i32* %t76
  %t77 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 56
  store i32 0, i32* %t77
  %t78 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 57
  store i32 0, i32* %t78
  %t79 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 58
  store i32 0, i32* %t79
  %t80 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 59
  store i32 0, i32* %t80
  %t81 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 60
  store i32 0, i32* %t81
  %t82 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 61
  store i32 0, i32* %t82
  %t83 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 62
  store i32 0, i32* %t83
  %t84 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 63
  store i32 0, i32* %t84
  %t85 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 64
  store i32 0, i32* %t85
  %t86 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 65
  store i32 0, i32* %t86
  %t87 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 66
  store i32 0, i32* %t87
  %t88 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 67
  store i32 0, i32* %t88
  %t89 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 68
  store i32 0, i32* %t89
  %t90 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 69
  store i32 0, i32* %t90
  %t91 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 70
  store i32 0, i32* %t91
  %t92 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 71
  store i32 0, i32* %t92
  %t93 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 72
  store i32 0, i32* %t93
  %t94 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 73
  store i32 0, i32* %t94
  %t95 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 74
  store i32 0, i32* %t95
  %t96 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 75
  store i32 0, i32* %t96
  %t97 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 76
  store i32 0, i32* %t97
  %t98 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 77
  store i32 0, i32* %t98
  %t99 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 78
  store i32 0, i32* %t99
  %t100 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 79
  store i32 0, i32* %t100
  %t101 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 80
  store i32 0, i32* %t101
  %t102 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 81
  store i32 0, i32* %t102
  %t103 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 82
  store i32 0, i32* %t103
  %t104 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 83
  store i32 0, i32* %t104
  %t105 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 84
  store i32 0, i32* %t105
  %t106 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 85
  store i32 0, i32* %t106
  %t107 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 86
  store i32 0, i32* %t107
  %t108 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 87
  store i32 0, i32* %t108
  %t109 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 88
  store i32 0, i32* %t109
  %t110 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 89
  store i32 0, i32* %t110
  %t111 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 90
  store i32 0, i32* %t111
  %t112 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 91
  store i32 0, i32* %t112
  %t113 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 92
  store i32 0, i32* %t113
  %t114 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 93
  store i32 0, i32* %t114
  %t115 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 94
  store i32 0, i32* %t115
  %t116 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 95
  store i32 0, i32* %t116
  %t117 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 96
  store i32 0, i32* %t117
  %t118 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 97
  store i32 0, i32* %t118
  %t119 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 98
  store i32 0, i32* %t119
  %t120 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 99
  store i32 0, i32* %t120
  %t121 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 100
  store i32 0, i32* %t121
  %t122 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 101
  store i32 0, i32* %t122
  %t123 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 102
  store i32 0, i32* %t123
  %t124 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 103
  store i32 0, i32* %t124
  %t125 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 104
  store i32 0, i32* %t125
  %t126 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 105
  store i32 0, i32* %t126
  %t127 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 106
  store i32 0, i32* %t127
  %t128 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 107
  store i32 0, i32* %t128
  %t129 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 108
  store i32 0, i32* %t129
  %t130 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 109
  store i32 0, i32* %t130
  %t131 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 110
  store i32 0, i32* %t131
  %t132 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 111
  store i32 0, i32* %t132
  %t133 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 112
  store i32 0, i32* %t133
  %t134 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 113
  store i32 0, i32* %t134
  %t135 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 114
  store i32 0, i32* %t135
  %t136 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 115
  store i32 0, i32* %t136
  %t137 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 116
  store i32 0, i32* %t137
  %t138 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 117
  store i32 0, i32* %t138
  %t139 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 118
  store i32 0, i32* %t139
  %t140 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 119
  store i32 0, i32* %t140
  %t141 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 120
  store i32 0, i32* %t141
  %t142 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 121
  store i32 0, i32* %t142
  %t143 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 122
  store i32 0, i32* %t143
  %t144 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 123
  store i32 0, i32* %t144
  %t145 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 124
  store i32 0, i32* %t145
  %t146 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 125
  store i32 0, i32* %t146
  %t147 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 126
  store i32 0, i32* %t147
  %t148 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 127
  store i32 0, i32* %t148
  %t149 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 128
  store i32 0, i32* %t149
  %t150 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 129
  store i32 0, i32* %t150
  %t151 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 130
  store i32 0, i32* %t151
  %t152 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 131
  store i32 0, i32* %t152
  %t153 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 132
  store i32 0, i32* %t153
  %t154 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 133
  store i32 0, i32* %t154
  %t155 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 134
  store i32 0, i32* %t155
  %t156 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 135
  store i32 0, i32* %t156
  %t157 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 136
  store i32 0, i32* %t157
  %t158 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 137
  store i32 0, i32* %t158
  %t159 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 138
  store i32 0, i32* %t159
  %t160 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 139
  store i32 0, i32* %t160
  %t161 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 140
  store i32 0, i32* %t161
  %t162 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 141
  store i32 0, i32* %t162
  %t163 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 142
  store i32 0, i32* %t163
  %t164 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 143
  store i32 0, i32* %t164
  %t165 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 144
  store i32 0, i32* %t165
  %t166 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 145
  store i32 0, i32* %t166
  %t167 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 146
  store i32 0, i32* %t167
  %t168 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 147
  store i32 0, i32* %t168
  %t169 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 148
  store i32 0, i32* %t169
  %t170 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 149
  store i32 0, i32* %t170
  %t171 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 150
  store i32 0, i32* %t171
  %t172 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 151
  store i32 0, i32* %t172
  %t173 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 152
  store i32 0, i32* %t173
  %t174 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 153
  store i32 0, i32* %t174
  %t175 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 154
  store i32 0, i32* %t175
  %t176 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 155
  store i32 0, i32* %t176
  %t177 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 156
  store i32 0, i32* %t177
  %t178 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 157
  store i32 0, i32* %t178
  %t179 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 158
  store i32 0, i32* %t179
  %t180 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 159
  store i32 0, i32* %t180
  %t181 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 160
  store i32 0, i32* %t181
  %t182 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 161
  store i32 0, i32* %t182
  %t183 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 162
  store i32 0, i32* %t183
  %t184 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 163
  store i32 0, i32* %t184
  %t185 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 164
  store i32 0, i32* %t185
  %t186 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 165
  store i32 0, i32* %t186
  %t187 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 166
  store i32 0, i32* %t187
  %t188 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 167
  store i32 0, i32* %t188
  %t189 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 168
  store i32 0, i32* %t189
  %t190 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 169
  store i32 0, i32* %t190
  %t191 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 170
  store i32 0, i32* %t191
  %t192 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 171
  store i32 0, i32* %t192
  %t193 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 172
  store i32 0, i32* %t193
  %t194 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 173
  store i32 0, i32* %t194
  %t195 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 174
  store i32 0, i32* %t195
  %t196 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 175
  store i32 0, i32* %t196
  %t197 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 176
  store i32 0, i32* %t197
  %t198 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 177
  store i32 0, i32* %t198
  %t199 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 178
  store i32 0, i32* %t199
  %t200 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 179
  store i32 0, i32* %t200
  %t201 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 180
  store i32 0, i32* %t201
  %t202 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 181
  store i32 0, i32* %t202
  %t203 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 182
  store i32 0, i32* %t203
  %t204 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 183
  store i32 0, i32* %t204
  %t205 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 184
  store i32 0, i32* %t205
  %t206 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 185
  store i32 0, i32* %t206
  %t207 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 186
  store i32 0, i32* %t207
  %t208 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 187
  store i32 0, i32* %t208
  %t209 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 188
  store i32 0, i32* %t209
  %t210 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 189
  store i32 0, i32* %t210
  %t211 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 190
  store i32 0, i32* %t211
  %t212 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 191
  store i32 0, i32* %t212
  %t213 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 192
  store i32 0, i32* %t213
  %t214 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 193
  store i32 0, i32* %t214
  %t215 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 194
  store i32 0, i32* %t215
  %t216 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 195
  store i32 0, i32* %t216
  %t217 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 196
  store i32 0, i32* %t217
  %t218 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 197
  store i32 0, i32* %t218
  %t219 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 198
  store i32 0, i32* %t219
  %t220 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 199
  store i32 0, i32* %t220
  %t221 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 200
  store i32 0, i32* %t221
  %t222 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 201
  store i32 0, i32* %t222
  %t223 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 202
  store i32 0, i32* %t223
  %t224 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 203
  store i32 0, i32* %t224
  %t225 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 204
  store i32 0, i32* %t225
  %t226 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 205
  store i32 0, i32* %t226
  %t227 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 206
  store i32 0, i32* %t227
  %t228 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 207
  store i32 0, i32* %t228
  %t229 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 208
  store i32 0, i32* %t229
  %t230 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 209
  store i32 0, i32* %t230
  %t231 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 210
  store i32 0, i32* %t231
  %t232 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 211
  store i32 0, i32* %t232
  %t233 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 212
  store i32 0, i32* %t233
  %t234 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 213
  store i32 0, i32* %t234
  %t235 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 214
  store i32 0, i32* %t235
  %t236 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 215
  store i32 0, i32* %t236
  %t237 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 216
  store i32 0, i32* %t237
  %t238 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 217
  store i32 0, i32* %t238
  %t239 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 218
  store i32 0, i32* %t239
  %t240 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 219
  store i32 0, i32* %t240
  %t241 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 220
  store i32 0, i32* %t241
  %t242 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 221
  store i32 0, i32* %t242
  %t243 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 222
  store i32 0, i32* %t243
  %t244 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 223
  store i32 0, i32* %t244
  %t245 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 224
  store i32 0, i32* %t245
  %t246 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 225
  store i32 0, i32* %t246
  %t247 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 226
  store i32 0, i32* %t247
  %t248 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 227
  store i32 0, i32* %t248
  %t249 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 228
  store i32 0, i32* %t249
  %t250 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 229
  store i32 0, i32* %t250
  %t251 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 230
  store i32 0, i32* %t251
  %t252 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 231
  store i32 0, i32* %t252
  %t253 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 232
  store i32 0, i32* %t253
  %t254 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 233
  store i32 0, i32* %t254
  %t255 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 234
  store i32 0, i32* %t255
  %t256 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 235
  store i32 0, i32* %t256
  %t257 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 236
  store i32 0, i32* %t257
  %t258 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 237
  store i32 0, i32* %t258
  %t259 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 238
  store i32 0, i32* %t259
  %t260 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 239
  store i32 0, i32* %t260
  %t261 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 240
  store i32 0, i32* %t261
  %t262 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 241
  store i32 0, i32* %t262
  %t263 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 242
  store i32 0, i32* %t263
  %t264 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 243
  store i32 0, i32* %t264
  %t265 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 244
  store i32 0, i32* %t265
  %t266 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 245
  store i32 0, i32* %t266
  %t267 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 246
  store i32 0, i32* %t267
  %t268 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 247
  store i32 0, i32* %t268
  %t269 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 248
  store i32 0, i32* %t269
  %t270 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 249
  store i32 0, i32* %t270
  %t271 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 250
  store i32 0, i32* %t271
  %t272 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 251
  store i32 0, i32* %t272
  %t273 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 252
  store i32 0, i32* %t273
  %t274 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 253
  store i32 0, i32* %t274
  %t275 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 254
  store i32 0, i32* %t275
  %t276 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 255
  store i32 0, i32* %t276
  %t277 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 256
  store i32 0, i32* %t277
  %t278 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 257
  store i32 0, i32* %t278
  %t279 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 258
  store i32 0, i32* %t279
  %t280 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 259
  store i32 0, i32* %t280
  %t281 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 260
  store i32 0, i32* %t281
  %t282 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 261
  store i32 0, i32* %t282
  %t283 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 262
  store i32 0, i32* %t283
  %t284 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 263
  store i32 0, i32* %t284
  %t285 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 264
  store i32 0, i32* %t285
  %t286 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 265
  store i32 0, i32* %t286
  %t287 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 266
  store i32 0, i32* %t287
  %t288 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 267
  store i32 0, i32* %t288
  %t289 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 268
  store i32 0, i32* %t289
  %t290 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 269
  store i32 0, i32* %t290
  %t291 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 270
  store i32 0, i32* %t291
  %t292 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 271
  store i32 0, i32* %t292
  %t293 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 272
  store i32 0, i32* %t293
  %t294 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 273
  store i32 0, i32* %t294
  %t295 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 274
  store i32 0, i32* %t295
  %t296 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 275
  store i32 0, i32* %t296
  %t297 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 276
  store i32 0, i32* %t297
  %t298 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 277
  store i32 0, i32* %t298
  %t299 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 278
  store i32 0, i32* %t299
  %t300 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 279
  store i32 0, i32* %t300
  %t301 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 280
  store i32 0, i32* %t301
  %t302 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 281
  store i32 0, i32* %t302
  %t303 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 282
  store i32 0, i32* %t303
  %t304 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 283
  store i32 0, i32* %t304
  %t305 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 284
  store i32 0, i32* %t305
  %t306 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 285
  store i32 0, i32* %t306
  %t307 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 286
  store i32 0, i32* %t307
  %t308 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 287
  store i32 0, i32* %t308
  %t309 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 288
  store i32 0, i32* %t309
  %t310 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 289
  store i32 0, i32* %t310
  %t311 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 290
  store i32 0, i32* %t311
  %t312 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 291
  store i32 0, i32* %t312
  %t313 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 292
  store i32 0, i32* %t313
  %t314 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 293
  store i32 0, i32* %t314
  %t315 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 294
  store i32 0, i32* %t315
  %t316 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 295
  store i32 0, i32* %t316
  %t317 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 296
  store i32 0, i32* %t317
  %t318 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 297
  store i32 0, i32* %t318
  %t319 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 298
  store i32 0, i32* %t319
  %t320 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 299
  store i32 0, i32* %t320
  %t321 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 300
  store i32 0, i32* %t321
  %t322 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 301
  store i32 0, i32* %t322
  %t323 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 302
  store i32 0, i32* %t323
  %t324 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 303
  store i32 0, i32* %t324
  %t325 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 304
  store i32 0, i32* %t325
  %t326 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 305
  store i32 0, i32* %t326
  %t327 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 306
  store i32 0, i32* %t327
  %t328 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 307
  store i32 0, i32* %t328
  %t329 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 308
  store i32 0, i32* %t329
  %t330 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 309
  store i32 0, i32* %t330
  %t331 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 310
  store i32 0, i32* %t331
  %t332 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 311
  store i32 0, i32* %t332
  %t333 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 312
  store i32 0, i32* %t333
  %t334 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 313
  store i32 0, i32* %t334
  %t335 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 314
  store i32 0, i32* %t335
  %t336 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 315
  store i32 0, i32* %t336
  %t337 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 316
  store i32 0, i32* %t337
  %t338 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 317
  store i32 0, i32* %t338
  %t339 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 318
  store i32 0, i32* %t339
  %t340 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 319
  store i32 0, i32* %t340
  %t341 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 320
  store i32 0, i32* %t341
  %t342 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 321
  store i32 0, i32* %t342
  %t343 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 322
  store i32 0, i32* %t343
  %t344 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 323
  store i32 0, i32* %t344
  %t345 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 324
  store i32 0, i32* %t345
  %t346 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 325
  store i32 0, i32* %t346
  %t347 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 326
  store i32 0, i32* %t347
  %t348 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 327
  store i32 0, i32* %t348
  %t349 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 328
  store i32 0, i32* %t349
  %t350 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 329
  store i32 0, i32* %t350
  %t351 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 330
  store i32 0, i32* %t351
  %t352 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 331
  store i32 0, i32* %t352
  %t353 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 332
  store i32 0, i32* %t353
  %t354 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 333
  store i32 0, i32* %t354
  %t355 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 334
  store i32 0, i32* %t355
  %t356 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 335
  store i32 0, i32* %t356
  %t357 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 336
  store i32 0, i32* %t357
  %t358 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 337
  store i32 0, i32* %t358
  %t359 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 338
  store i32 0, i32* %t359
  %t360 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 339
  store i32 0, i32* %t360
  %t361 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 340
  store i32 0, i32* %t361
  %t362 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 341
  store i32 0, i32* %t362
  %t363 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 342
  store i32 0, i32* %t363
  %t364 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 343
  store i32 0, i32* %t364
  %t365 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 344
  store i32 0, i32* %t365
  %t366 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 345
  store i32 0, i32* %t366
  %t367 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 346
  store i32 0, i32* %t367
  %t368 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 347
  store i32 0, i32* %t368
  %t369 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 348
  store i32 0, i32* %t369
  %t370 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 349
  store i32 0, i32* %t370
  %t371 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 350
  store i32 0, i32* %t371
  %t372 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 351
  store i32 0, i32* %t372
  %t373 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 352
  store i32 0, i32* %t373
  %t374 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 353
  store i32 0, i32* %t374
  %t375 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 354
  store i32 0, i32* %t375
  %t376 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 355
  store i32 0, i32* %t376
  %t377 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 356
  store i32 0, i32* %t377
  %t378 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 357
  store i32 0, i32* %t378
  %t379 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 358
  store i32 0, i32* %t379
  %t380 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 359
  store i32 0, i32* %t380
  %t381 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 360
  store i32 0, i32* %t381
  %t382 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 361
  store i32 0, i32* %t382
  %t383 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 362
  store i32 0, i32* %t383
  %t384 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 363
  store i32 0, i32* %t384
  %t385 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 364
  store i32 0, i32* %t385
  %t386 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 365
  store i32 0, i32* %t386
  %t387 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 366
  store i32 0, i32* %t387
  %t388 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 367
  store i32 0, i32* %t388
  %t389 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 368
  store i32 0, i32* %t389
  %t390 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 369
  store i32 0, i32* %t390
  %t391 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 370
  store i32 0, i32* %t391
  %t392 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 371
  store i32 0, i32* %t392
  %t393 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 372
  store i32 0, i32* %t393
  %t394 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 373
  store i32 0, i32* %t394
  %t395 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 374
  store i32 0, i32* %t395
  %t396 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 375
  store i32 0, i32* %t396
  %t397 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 376
  store i32 0, i32* %t397
  %t398 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 377
  store i32 0, i32* %t398
  %t399 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 378
  store i32 0, i32* %t399
  %t400 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 379
  store i32 0, i32* %t400
  %t401 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 380
  store i32 0, i32* %t401
  %t402 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 381
  store i32 0, i32* %t402
  %t403 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 382
  store i32 0, i32* %t403
  %t404 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 383
  store i32 0, i32* %t404
  %t405 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 384
  store i32 0, i32* %t405
  %t406 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 385
  store i32 0, i32* %t406
  %t407 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 386
  store i32 0, i32* %t407
  %t408 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 387
  store i32 0, i32* %t408
  %t409 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 388
  store i32 0, i32* %t409
  %t410 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 389
  store i32 0, i32* %t410
  %t411 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 390
  store i32 0, i32* %t411
  %t412 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 391
  store i32 0, i32* %t412
  %t413 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 392
  store i32 0, i32* %t413
  %t414 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 393
  store i32 0, i32* %t414
  %t415 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 394
  store i32 0, i32* %t415
  %t416 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 395
  store i32 0, i32* %t416
  %t417 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 396
  store i32 0, i32* %t417
  %t418 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 397
  store i32 0, i32* %t418
  %t419 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 398
  store i32 0, i32* %t419
  %t420 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 399
  store i32 0, i32* %t420
  %t421 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 400
  store i32 0, i32* %t421
  %t422 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 401
  store i32 0, i32* %t422
  %t423 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 402
  store i32 0, i32* %t423
  %t424 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 403
  store i32 0, i32* %t424
  %t425 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 404
  store i32 0, i32* %t425
  %t426 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 405
  store i32 0, i32* %t426
  %t427 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 406
  store i32 0, i32* %t427
  %t428 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 407
  store i32 0, i32* %t428
  %t429 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 408
  store i32 0, i32* %t429
  %t430 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 409
  store i32 0, i32* %t430
  %t431 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 410
  store i32 0, i32* %t431
  %t432 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 411
  store i32 0, i32* %t432
  %t433 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 412
  store i32 0, i32* %t433
  %t434 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 413
  store i32 0, i32* %t434
  %t435 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 414
  store i32 0, i32* %t435
  %t436 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 415
  store i32 0, i32* %t436
  %t437 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 416
  store i32 0, i32* %t437
  %t438 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 417
  store i32 0, i32* %t438
  %t439 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 418
  store i32 0, i32* %t439
  %t440 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 419
  store i32 0, i32* %t440
  %t441 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 420
  store i32 0, i32* %t441
  %t442 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 421
  store i32 0, i32* %t442
  %t443 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 422
  store i32 0, i32* %t443
  %t444 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 423
  store i32 0, i32* %t444
  %t445 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 424
  store i32 0, i32* %t445
  %t446 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 425
  store i32 0, i32* %t446
  %t447 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 426
  store i32 0, i32* %t447
  %t448 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 427
  store i32 0, i32* %t448
  %t449 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 428
  store i32 0, i32* %t449
  %t450 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 429
  store i32 0, i32* %t450
  %t451 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 430
  store i32 0, i32* %t451
  %t452 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 431
  store i32 0, i32* %t452
  %t453 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 432
  store i32 0, i32* %t453
  %t454 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 433
  store i32 0, i32* %t454
  %t455 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 434
  store i32 0, i32* %t455
  %t456 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 435
  store i32 0, i32* %t456
  %t457 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 436
  store i32 0, i32* %t457
  %t458 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 437
  store i32 0, i32* %t458
  %t459 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 438
  store i32 0, i32* %t459
  %t460 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 439
  store i32 0, i32* %t460
  %t461 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 440
  store i32 0, i32* %t461
  %t462 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 441
  store i32 0, i32* %t462
  %t463 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 442
  store i32 0, i32* %t463
  %t464 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 443
  store i32 0, i32* %t464
  %t465 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 444
  store i32 0, i32* %t465
  %t466 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 445
  store i32 0, i32* %t466
  %t467 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 446
  store i32 0, i32* %t467
  %t468 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 447
  store i32 0, i32* %t468
  %t469 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 448
  store i32 0, i32* %t469
  %t470 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 449
  store i32 0, i32* %t470
  %t471 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 450
  store i32 0, i32* %t471
  %t472 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 451
  store i32 0, i32* %t472
  %t473 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 452
  store i32 0, i32* %t473
  %t474 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 453
  store i32 0, i32* %t474
  %t475 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 454
  store i32 0, i32* %t475
  %t476 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 455
  store i32 0, i32* %t476
  %t477 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 456
  store i32 0, i32* %t477
  %t478 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 457
  store i32 0, i32* %t478
  %t479 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 458
  store i32 0, i32* %t479
  %t480 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 459
  store i32 0, i32* %t480
  %t481 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 460
  store i32 0, i32* %t481
  %t482 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 461
  store i32 0, i32* %t482
  %t483 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 462
  store i32 0, i32* %t483
  %t484 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 463
  store i32 0, i32* %t484
  %t485 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 464
  store i32 0, i32* %t485
  %t486 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 465
  store i32 0, i32* %t486
  %t487 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 466
  store i32 0, i32* %t487
  %t488 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 467
  store i32 0, i32* %t488
  %t489 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 468
  store i32 0, i32* %t489
  %t490 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 469
  store i32 0, i32* %t490
  %t491 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 470
  store i32 0, i32* %t491
  %t492 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 471
  store i32 0, i32* %t492
  %t493 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 472
  store i32 0, i32* %t493
  %t494 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 473
  store i32 0, i32* %t494
  %t495 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 474
  store i32 0, i32* %t495
  %t496 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 475
  store i32 0, i32* %t496
  %t497 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 476
  store i32 0, i32* %t497
  %t498 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 477
  store i32 0, i32* %t498
  %t499 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 478
  store i32 0, i32* %t499
  %t500 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 479
  store i32 0, i32* %t500
  %t501 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 480
  store i32 0, i32* %t501
  %t502 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 481
  store i32 0, i32* %t502
  %t503 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 482
  store i32 0, i32* %t503
  %t504 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 483
  store i32 0, i32* %t504
  %t505 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 484
  store i32 0, i32* %t505
  %t506 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 485
  store i32 0, i32* %t506
  %t507 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 486
  store i32 0, i32* %t507
  %t508 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 487
  store i32 0, i32* %t508
  %t509 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 488
  store i32 0, i32* %t509
  %t510 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 489
  store i32 0, i32* %t510
  %t511 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 490
  store i32 0, i32* %t511
  %t512 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 491
  store i32 0, i32* %t512
  %t513 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 492
  store i32 0, i32* %t513
  %t514 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 493
  store i32 0, i32* %t514
  %t515 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 494
  store i32 0, i32* %t515
  %t516 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 495
  store i32 0, i32* %t516
  %t517 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 496
  store i32 0, i32* %t517
  %t518 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 497
  store i32 0, i32* %t518
  %t519 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 498
  store i32 0, i32* %t519
  %t520 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 499
  store i32 0, i32* %t520
  %t521 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 500
  store i32 0, i32* %t521
  %t522 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 501
  store i32 0, i32* %t522
  %t523 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 502
  store i32 0, i32* %t523
  %t524 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 503
  store i32 0, i32* %t524
  %t525 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 504
  store i32 0, i32* %t525
  %t526 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 505
  store i32 0, i32* %t526
  %t527 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 506
  store i32 0, i32* %t527
  %t528 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 507
  store i32 0, i32* %t528
  %t529 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 508
  store i32 0, i32* %t529
  %t530 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 509
  store i32 0, i32* %t530
  %t531 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 510
  store i32 0, i32* %t531
  %t532 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 511
  store i32 0, i32* %t532
  %t533 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 512
  store i32 0, i32* %t533
  %t534 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 513
  store i32 0, i32* %t534
  %t535 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 514
  store i32 0, i32* %t535
  %t536 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 515
  store i32 0, i32* %t536
  %t537 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 516
  store i32 0, i32* %t537
  %t538 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 517
  store i32 0, i32* %t538
  %t539 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 518
  store i32 0, i32* %t539
  %t540 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 519
  store i32 0, i32* %t540
  %t541 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 520
  store i32 0, i32* %t541
  %t542 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 521
  store i32 0, i32* %t542
  %t543 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 522
  store i32 0, i32* %t543
  %t544 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 523
  store i32 0, i32* %t544
  %t545 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 524
  store i32 0, i32* %t545
  %t546 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 525
  store i32 0, i32* %t546
  %t547 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 526
  store i32 0, i32* %t547
  %t548 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 527
  store i32 0, i32* %t548
  %t549 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 528
  store i32 0, i32* %t549
  %t550 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 529
  store i32 0, i32* %t550
  %t551 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 530
  store i32 0, i32* %t551
  %t552 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 531
  store i32 0, i32* %t552
  %t553 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 532
  store i32 0, i32* %t553
  %t554 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 533
  store i32 0, i32* %t554
  %t555 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 534
  store i32 0, i32* %t555
  %t556 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 535
  store i32 0, i32* %t556
  %t557 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 536
  store i32 0, i32* %t557
  %t558 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 537
  store i32 0, i32* %t558
  %t559 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 538
  store i32 0, i32* %t559
  %t560 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 539
  store i32 0, i32* %t560
  %t561 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 540
  store i32 0, i32* %t561
  %t562 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 541
  store i32 0, i32* %t562
  %t563 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 542
  store i32 0, i32* %t563
  %t564 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 543
  store i32 0, i32* %t564
  %t565 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 544
  store i32 0, i32* %t565
  %t566 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 545
  store i32 0, i32* %t566
  %t567 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 546
  store i32 0, i32* %t567
  %t568 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 547
  store i32 0, i32* %t568
  %t569 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 548
  store i32 0, i32* %t569
  %t570 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 549
  store i32 0, i32* %t570
  %t571 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 550
  store i32 0, i32* %t571
  %t572 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 551
  store i32 0, i32* %t572
  %t573 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 552
  store i32 0, i32* %t573
  %t574 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 553
  store i32 0, i32* %t574
  %t575 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 554
  store i32 0, i32* %t575
  %t576 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 555
  store i32 0, i32* %t576
  %t577 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 556
  store i32 0, i32* %t577
  %t578 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 557
  store i32 0, i32* %t578
  %t579 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 558
  store i32 0, i32* %t579
  %t580 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 559
  store i32 0, i32* %t580
  %t581 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 560
  store i32 0, i32* %t581
  %t582 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 561
  store i32 0, i32* %t582
  %t583 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 562
  store i32 0, i32* %t583
  %t584 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 563
  store i32 0, i32* %t584
  %t585 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 564
  store i32 0, i32* %t585
  %t586 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 565
  store i32 0, i32* %t586
  %t587 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 566
  store i32 0, i32* %t587
  %t588 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 567
  store i32 0, i32* %t588
  %t589 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 568
  store i32 0, i32* %t589
  %t590 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 569
  store i32 0, i32* %t590
  %t591 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 570
  store i32 0, i32* %t591
  %t592 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 571
  store i32 0, i32* %t592
  %t593 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 572
  store i32 0, i32* %t593
  %t594 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 573
  store i32 0, i32* %t594
  %t595 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 574
  store i32 0, i32* %t595
  %t596 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 575
  store i32 0, i32* %t596
  %t597 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 576
  store i32 0, i32* %t597
  %t598 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 577
  store i32 0, i32* %t598
  %t599 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 578
  store i32 0, i32* %t599
  %t600 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 579
  store i32 0, i32* %t600
  %t601 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 580
  store i32 0, i32* %t601
  %t602 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 581
  store i32 0, i32* %t602
  %t603 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 582
  store i32 0, i32* %t603
  %t604 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 583
  store i32 0, i32* %t604
  %t605 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 584
  store i32 0, i32* %t605
  %t606 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 585
  store i32 0, i32* %t606
  %t607 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 586
  store i32 0, i32* %t607
  %t608 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 587
  store i32 0, i32* %t608
  %t609 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 588
  store i32 0, i32* %t609
  %t610 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 589
  store i32 0, i32* %t610
  %t611 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 590
  store i32 0, i32* %t611
  %t612 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 591
  store i32 0, i32* %t612
  %t613 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 592
  store i32 0, i32* %t613
  %t614 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 593
  store i32 0, i32* %t614
  %t615 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 594
  store i32 0, i32* %t615
  %t616 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 595
  store i32 0, i32* %t616
  %t617 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 596
  store i32 0, i32* %t617
  %t618 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 597
  store i32 0, i32* %t618
  %t619 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 598
  store i32 0, i32* %t619
  %t620 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 599
  store i32 0, i32* %t620
  %t621 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 600
  store i32 0, i32* %t621
  %t622 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 601
  store i32 0, i32* %t622
  %t623 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 602
  store i32 0, i32* %t623
  %t624 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 603
  store i32 0, i32* %t624
  %t625 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 604
  store i32 0, i32* %t625
  %t626 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 605
  store i32 0, i32* %t626
  %t627 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 606
  store i32 0, i32* %t627
  %t628 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 607
  store i32 0, i32* %t628
  %t629 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 608
  store i32 0, i32* %t629
  %t630 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 609
  store i32 0, i32* %t630
  %t631 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 610
  store i32 0, i32* %t631
  %t632 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 611
  store i32 0, i32* %t632
  %t633 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 612
  store i32 0, i32* %t633
  %t634 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 613
  store i32 0, i32* %t634
  %t635 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 614
  store i32 0, i32* %t635
  %t636 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 615
  store i32 0, i32* %t636
  %t637 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 616
  store i32 0, i32* %t637
  %t638 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 617
  store i32 0, i32* %t638
  %t639 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 618
  store i32 0, i32* %t639
  %t640 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 619
  store i32 0, i32* %t640
  %t641 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 620
  store i32 0, i32* %t641
  %t642 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 621
  store i32 0, i32* %t642
  %t643 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 622
  store i32 0, i32* %t643
  %t644 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 623
  store i32 0, i32* %t644
  %t645 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 624
  store i32 0, i32* %t645
  %t646 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 625
  store i32 0, i32* %t646
  %t647 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 626
  store i32 0, i32* %t647
  %t648 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 627
  store i32 0, i32* %t648
  %t649 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 628
  store i32 0, i32* %t649
  %t650 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 629
  store i32 0, i32* %t650
  %t651 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 630
  store i32 0, i32* %t651
  %t652 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 631
  store i32 0, i32* %t652
  %t653 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 632
  store i32 0, i32* %t653
  %t654 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 633
  store i32 0, i32* %t654
  %t655 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 634
  store i32 0, i32* %t655
  %t656 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 635
  store i32 0, i32* %t656
  %t657 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 636
  store i32 0, i32* %t657
  %t658 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 637
  store i32 0, i32* %t658
  %t659 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 638
  store i32 0, i32* %t659
  %t660 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 639
  store i32 0, i32* %t660
  %t661 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 640
  store i32 0, i32* %t661
  %t662 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 641
  store i32 0, i32* %t662
  %t663 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 642
  store i32 0, i32* %t663
  %t664 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 643
  store i32 0, i32* %t664
  %t665 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 644
  store i32 0, i32* %t665
  %t666 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 645
  store i32 0, i32* %t666
  %t667 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 646
  store i32 0, i32* %t667
  %t668 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 647
  store i32 0, i32* %t668
  %t669 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 648
  store i32 0, i32* %t669
  %t670 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 649
  store i32 0, i32* %t670
  %t671 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 650
  store i32 0, i32* %t671
  %t672 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 651
  store i32 0, i32* %t672
  %t673 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 652
  store i32 0, i32* %t673
  %t674 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 653
  store i32 0, i32* %t674
  %t675 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 654
  store i32 0, i32* %t675
  %t676 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 655
  store i32 0, i32* %t676
  %t677 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 656
  store i32 0, i32* %t677
  %t678 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 657
  store i32 0, i32* %t678
  %t679 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 658
  store i32 0, i32* %t679
  %t680 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 659
  store i32 0, i32* %t680
  %t681 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 660
  store i32 0, i32* %t681
  %t682 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 661
  store i32 0, i32* %t682
  %t683 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 662
  store i32 0, i32* %t683
  %t684 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 663
  store i32 0, i32* %t684
  %t685 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 664
  store i32 0, i32* %t685
  %t686 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 665
  store i32 0, i32* %t686
  %t687 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 666
  store i32 0, i32* %t687
  %t688 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 667
  store i32 0, i32* %t688
  %t689 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 668
  store i32 0, i32* %t689
  %t690 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 669
  store i32 0, i32* %t690
  %t691 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 670
  store i32 0, i32* %t691
  %t692 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 671
  store i32 0, i32* %t692
  %t693 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 672
  store i32 0, i32* %t693
  %t694 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 673
  store i32 0, i32* %t694
  %t695 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 674
  store i32 0, i32* %t695
  %t696 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 675
  store i32 0, i32* %t696
  %t697 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 676
  store i32 0, i32* %t697
  %t698 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 677
  store i32 0, i32* %t698
  %t699 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 678
  store i32 0, i32* %t699
  %t700 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 679
  store i32 0, i32* %t700
  %t701 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 680
  store i32 0, i32* %t701
  %t702 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 681
  store i32 0, i32* %t702
  %t703 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 682
  store i32 0, i32* %t703
  %t704 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 683
  store i32 0, i32* %t704
  %t705 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 684
  store i32 0, i32* %t705
  %t706 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 685
  store i32 0, i32* %t706
  %t707 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 686
  store i32 0, i32* %t707
  %t708 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 687
  store i32 0, i32* %t708
  %t709 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 688
  store i32 0, i32* %t709
  %t710 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 689
  store i32 0, i32* %t710
  %t711 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 690
  store i32 0, i32* %t711
  %t712 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 691
  store i32 0, i32* %t712
  %t713 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 692
  store i32 0, i32* %t713
  %t714 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 693
  store i32 0, i32* %t714
  %t715 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 694
  store i32 0, i32* %t715
  %t716 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 695
  store i32 0, i32* %t716
  %t717 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 696
  store i32 0, i32* %t717
  %t718 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 697
  store i32 0, i32* %t718
  %t719 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 698
  store i32 0, i32* %t719
  %t720 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 699
  store i32 0, i32* %t720
  %t721 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 700
  store i32 0, i32* %t721
  %t722 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 701
  store i32 0, i32* %t722
  %t723 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 702
  store i32 0, i32* %t723
  %t724 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 703
  store i32 0, i32* %t724
  %t725 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 704
  store i32 0, i32* %t725
  %t726 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 705
  store i32 0, i32* %t726
  %t727 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 706
  store i32 0, i32* %t727
  %t728 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 707
  store i32 0, i32* %t728
  %t729 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 708
  store i32 0, i32* %t729
  %t730 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 709
  store i32 0, i32* %t730
  %t731 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 710
  store i32 0, i32* %t731
  %t732 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 711
  store i32 0, i32* %t732
  %t733 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 712
  store i32 0, i32* %t733
  %t734 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 713
  store i32 0, i32* %t734
  %t735 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 714
  store i32 0, i32* %t735
  %t736 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 715
  store i32 0, i32* %t736
  %t737 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 716
  store i32 0, i32* %t737
  %t738 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 717
  store i32 0, i32* %t738
  %t739 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 718
  store i32 0, i32* %t739
  %t740 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 719
  store i32 0, i32* %t740
  %t741 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 720
  store i32 0, i32* %t741
  %t742 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 721
  store i32 0, i32* %t742
  %t743 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 722
  store i32 0, i32* %t743
  %t744 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 723
  store i32 0, i32* %t744
  %t745 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 724
  store i32 0, i32* %t745
  %t746 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 725
  store i32 0, i32* %t746
  %t747 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 726
  store i32 0, i32* %t747
  %t748 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 727
  store i32 0, i32* %t748
  %t749 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 728
  store i32 0, i32* %t749
  %t750 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 729
  store i32 0, i32* %t750
  %t751 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 730
  store i32 0, i32* %t751
  %t752 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 731
  store i32 0, i32* %t752
  %t753 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 732
  store i32 0, i32* %t753
  %t754 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 733
  store i32 0, i32* %t754
  %t755 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 734
  store i32 0, i32* %t755
  %t756 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 735
  store i32 0, i32* %t756
  %t757 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 736
  store i32 0, i32* %t757
  %t758 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 737
  store i32 0, i32* %t758
  %t759 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 738
  store i32 0, i32* %t759
  %t760 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 739
  store i32 0, i32* %t760
  %t761 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 740
  store i32 0, i32* %t761
  %t762 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 741
  store i32 0, i32* %t762
  %t763 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 742
  store i32 0, i32* %t763
  %t764 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 743
  store i32 0, i32* %t764
  %t765 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 744
  store i32 0, i32* %t765
  %t766 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 745
  store i32 0, i32* %t766
  %t767 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 746
  store i32 0, i32* %t767
  %t768 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 747
  store i32 0, i32* %t768
  %t769 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 748
  store i32 0, i32* %t769
  %t770 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 749
  store i32 0, i32* %t770
  %t771 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 750
  store i32 0, i32* %t771
  %t772 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 751
  store i32 0, i32* %t772
  %t773 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 752
  store i32 0, i32* %t773
  %t774 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 753
  store i32 0, i32* %t774
  %t775 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 754
  store i32 0, i32* %t775
  %t776 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 755
  store i32 0, i32* %t776
  %t777 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 756
  store i32 0, i32* %t777
  %t778 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 757
  store i32 0, i32* %t778
  %t779 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 758
  store i32 0, i32* %t779
  %t780 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 759
  store i32 0, i32* %t780
  %t781 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 760
  store i32 0, i32* %t781
  %t782 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 761
  store i32 0, i32* %t782
  %t783 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 762
  store i32 0, i32* %t783
  %t784 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 763
  store i32 0, i32* %t784
  %t785 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 764
  store i32 0, i32* %t785
  %t786 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 765
  store i32 0, i32* %t786
  %t787 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 766
  store i32 0, i32* %t787
  %t788 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 767
  store i32 0, i32* %t788
  %t789 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 768
  store i32 0, i32* %t789
  %t790 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 769
  store i32 0, i32* %t790
  %t791 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 770
  store i32 0, i32* %t791
  %t792 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 771
  store i32 0, i32* %t792
  %t793 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 772
  store i32 0, i32* %t793
  %t794 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 773
  store i32 0, i32* %t794
  %t795 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 774
  store i32 0, i32* %t795
  %t796 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 775
  store i32 0, i32* %t796
  %t797 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 776
  store i32 0, i32* %t797
  %t798 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 777
  store i32 0, i32* %t798
  %t799 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 778
  store i32 0, i32* %t799
  %t800 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 779
  store i32 0, i32* %t800
  %t801 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 780
  store i32 0, i32* %t801
  %t802 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 781
  store i32 0, i32* %t802
  %t803 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 782
  store i32 0, i32* %t803
  %t804 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 783
  store i32 0, i32* %t804
  %t805 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 784
  store i32 0, i32* %t805
  %t806 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 785
  store i32 0, i32* %t806
  %t807 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 786
  store i32 0, i32* %t807
  %t808 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 787
  store i32 0, i32* %t808
  %t809 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 788
  store i32 0, i32* %t809
  %t810 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 789
  store i32 0, i32* %t810
  %t811 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 790
  store i32 0, i32* %t811
  %t812 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 791
  store i32 0, i32* %t812
  %t813 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 792
  store i32 0, i32* %t813
  %t814 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 793
  store i32 0, i32* %t814
  %t815 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 794
  store i32 0, i32* %t815
  %t816 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 795
  store i32 0, i32* %t816
  %t817 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 796
  store i32 0, i32* %t817
  %t818 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 797
  store i32 0, i32* %t818
  %t819 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 798
  store i32 0, i32* %t819
  %t820 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 799
  store i32 0, i32* %t820
  %t821 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 800
  store i32 0, i32* %t821
  %t822 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 801
  store i32 0, i32* %t822
  %t823 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 802
  store i32 0, i32* %t823
  %t824 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 803
  store i32 0, i32* %t824
  %t825 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 804
  store i32 0, i32* %t825
  %t826 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 805
  store i32 0, i32* %t826
  %t827 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 806
  store i32 0, i32* %t827
  %t828 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 807
  store i32 0, i32* %t828
  %t829 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 808
  store i32 0, i32* %t829
  %t830 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 809
  store i32 0, i32* %t830
  %t831 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 810
  store i32 0, i32* %t831
  %t832 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 811
  store i32 0, i32* %t832
  %t833 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 812
  store i32 0, i32* %t833
  %t834 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 813
  store i32 0, i32* %t834
  %t835 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 814
  store i32 0, i32* %t835
  %t836 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 815
  store i32 0, i32* %t836
  %t837 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 816
  store i32 0, i32* %t837
  %t838 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 817
  store i32 0, i32* %t838
  %t839 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 818
  store i32 0, i32* %t839
  %t840 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 819
  store i32 0, i32* %t840
  %t841 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 820
  store i32 0, i32* %t841
  %t842 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 821
  store i32 0, i32* %t842
  %t843 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 822
  store i32 0, i32* %t843
  %t844 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 823
  store i32 0, i32* %t844
  %t845 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 824
  store i32 0, i32* %t845
  %t846 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 825
  store i32 0, i32* %t846
  %t847 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 826
  store i32 0, i32* %t847
  %t848 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 827
  store i32 0, i32* %t848
  %t849 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 828
  store i32 0, i32* %t849
  %t850 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 829
  store i32 0, i32* %t850
  %t851 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 830
  store i32 0, i32* %t851
  %t852 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 831
  store i32 0, i32* %t852
  %t853 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 832
  store i32 0, i32* %t853
  %t854 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 833
  store i32 0, i32* %t854
  %t855 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 834
  store i32 0, i32* %t855
  %t856 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 835
  store i32 0, i32* %t856
  %t857 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 836
  store i32 0, i32* %t857
  %t858 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 837
  store i32 0, i32* %t858
  %t859 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 838
  store i32 0, i32* %t859
  %t860 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 839
  store i32 0, i32* %t860
  %t861 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 840
  store i32 0, i32* %t861
  %t862 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 841
  store i32 0, i32* %t862
  %t863 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 842
  store i32 0, i32* %t863
  %t864 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 843
  store i32 0, i32* %t864
  %t865 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 844
  store i32 0, i32* %t865
  %t866 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 845
  store i32 0, i32* %t866
  %t867 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 846
  store i32 0, i32* %t867
  %t868 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 847
  store i32 0, i32* %t868
  %t869 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 848
  store i32 0, i32* %t869
  %t870 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 849
  store i32 0, i32* %t870
  %t871 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 850
  store i32 0, i32* %t871
  %t872 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 851
  store i32 0, i32* %t872
  %t873 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 852
  store i32 0, i32* %t873
  %t874 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 853
  store i32 0, i32* %t874
  %t875 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 854
  store i32 0, i32* %t875
  %t876 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 855
  store i32 0, i32* %t876
  %t877 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 856
  store i32 0, i32* %t877
  %t878 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 857
  store i32 0, i32* %t878
  %t879 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 858
  store i32 0, i32* %t879
  %t880 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 859
  store i32 0, i32* %t880
  %t881 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 860
  store i32 0, i32* %t881
  %t882 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 861
  store i32 0, i32* %t882
  %t883 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 862
  store i32 0, i32* %t883
  %t884 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 863
  store i32 0, i32* %t884
  %t885 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 864
  store i32 0, i32* %t885
  %t886 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 865
  store i32 0, i32* %t886
  %t887 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 866
  store i32 0, i32* %t887
  %t888 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 867
  store i32 0, i32* %t888
  %t889 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 868
  store i32 0, i32* %t889
  %t890 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 869
  store i32 0, i32* %t890
  %t891 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 870
  store i32 0, i32* %t891
  %t892 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 871
  store i32 0, i32* %t892
  %t893 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 872
  store i32 0, i32* %t893
  %t894 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 873
  store i32 0, i32* %t894
  %t895 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 874
  store i32 0, i32* %t895
  %t896 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 875
  store i32 0, i32* %t896
  %t897 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 876
  store i32 0, i32* %t897
  %t898 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 877
  store i32 0, i32* %t898
  %t899 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 878
  store i32 0, i32* %t899
  %t900 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 879
  store i32 0, i32* %t900
  %t901 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 880
  store i32 0, i32* %t901
  %t902 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 881
  store i32 0, i32* %t902
  %t903 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 882
  store i32 0, i32* %t903
  %t904 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 883
  store i32 0, i32* %t904
  %t905 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 884
  store i32 0, i32* %t905
  %t906 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 885
  store i32 0, i32* %t906
  %t907 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 886
  store i32 0, i32* %t907
  %t908 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 887
  store i32 0, i32* %t908
  %t909 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 888
  store i32 0, i32* %t909
  %t910 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 889
  store i32 0, i32* %t910
  %t911 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 890
  store i32 0, i32* %t911
  %t912 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 891
  store i32 0, i32* %t912
  %t913 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 892
  store i32 0, i32* %t913
  %t914 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 893
  store i32 0, i32* %t914
  %t915 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 894
  store i32 0, i32* %t915
  %t916 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 895
  store i32 0, i32* %t916
  %t917 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 896
  store i32 0, i32* %t917
  %t918 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 897
  store i32 0, i32* %t918
  %t919 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 898
  store i32 0, i32* %t919
  %t920 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 899
  store i32 0, i32* %t920
  %t921 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 900
  store i32 0, i32* %t921
  %t922 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 901
  store i32 0, i32* %t922
  %t923 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 902
  store i32 0, i32* %t923
  %t924 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 903
  store i32 0, i32* %t924
  %t925 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 904
  store i32 0, i32* %t925
  %t926 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 905
  store i32 0, i32* %t926
  %t927 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 906
  store i32 0, i32* %t927
  %t928 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 907
  store i32 0, i32* %t928
  %t929 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 908
  store i32 0, i32* %t929
  %t930 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 909
  store i32 0, i32* %t930
  %t931 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 910
  store i32 0, i32* %t931
  %t932 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 911
  store i32 0, i32* %t932
  %t933 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 912
  store i32 0, i32* %t933
  %t934 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 913
  store i32 0, i32* %t934
  %t935 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 914
  store i32 0, i32* %t935
  %t936 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 915
  store i32 0, i32* %t936
  %t937 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 916
  store i32 0, i32* %t937
  %t938 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 917
  store i32 0, i32* %t938
  %t939 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 918
  store i32 0, i32* %t939
  %t940 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 919
  store i32 0, i32* %t940
  %t941 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 920
  store i32 0, i32* %t941
  %t942 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 921
  store i32 0, i32* %t942
  %t943 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 922
  store i32 0, i32* %t943
  %t944 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 923
  store i32 0, i32* %t944
  %t945 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 924
  store i32 0, i32* %t945
  %t946 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 925
  store i32 0, i32* %t946
  %t947 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 926
  store i32 0, i32* %t947
  %t948 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 927
  store i32 0, i32* %t948
  %t949 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 928
  store i32 0, i32* %t949
  %t950 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 929
  store i32 0, i32* %t950
  %t951 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 930
  store i32 0, i32* %t951
  %t952 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 931
  store i32 0, i32* %t952
  %t953 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 932
  store i32 0, i32* %t953
  %t954 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 933
  store i32 0, i32* %t954
  %t955 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 934
  store i32 0, i32* %t955
  %t956 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 935
  store i32 0, i32* %t956
  %t957 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 936
  store i32 0, i32* %t957
  %t958 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 937
  store i32 0, i32* %t958
  %t959 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 938
  store i32 0, i32* %t959
  %t960 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 939
  store i32 0, i32* %t960
  %t961 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 940
  store i32 0, i32* %t961
  %t962 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 941
  store i32 0, i32* %t962
  %t963 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 942
  store i32 0, i32* %t963
  %t964 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 943
  store i32 0, i32* %t964
  %t965 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 944
  store i32 0, i32* %t965
  %t966 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 945
  store i32 0, i32* %t966
  %t967 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 946
  store i32 0, i32* %t967
  %t968 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 947
  store i32 0, i32* %t968
  %t969 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 948
  store i32 0, i32* %t969
  %t970 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 949
  store i32 0, i32* %t970
  %t971 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 950
  store i32 0, i32* %t971
  %t972 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 951
  store i32 0, i32* %t972
  %t973 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 952
  store i32 0, i32* %t973
  %t974 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 953
  store i32 0, i32* %t974
  %t975 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 954
  store i32 0, i32* %t975
  %t976 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 955
  store i32 0, i32* %t976
  %t977 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 956
  store i32 0, i32* %t977
  %t978 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 957
  store i32 0, i32* %t978
  %t979 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 958
  store i32 0, i32* %t979
  %t980 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 959
  store i32 0, i32* %t980
  %t981 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 960
  store i32 0, i32* %t981
  %t982 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 961
  store i32 0, i32* %t982
  %t983 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 962
  store i32 0, i32* %t983
  %t984 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 963
  store i32 0, i32* %t984
  %t985 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 964
  store i32 0, i32* %t985
  %t986 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 965
  store i32 0, i32* %t986
  %t987 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 966
  store i32 0, i32* %t987
  %t988 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 967
  store i32 0, i32* %t988
  %t989 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 968
  store i32 0, i32* %t989
  %t990 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 969
  store i32 0, i32* %t990
  %t991 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 970
  store i32 0, i32* %t991
  %t992 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 971
  store i32 0, i32* %t992
  %t993 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 972
  store i32 0, i32* %t993
  %t994 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 973
  store i32 0, i32* %t994
  %t995 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 974
  store i32 0, i32* %t995
  %t996 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 975
  store i32 0, i32* %t996
  %t997 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 976
  store i32 0, i32* %t997
  %t998 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 977
  store i32 0, i32* %t998
  %t999 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 978
  store i32 0, i32* %t999
  %t1000 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 979
  store i32 0, i32* %t1000
  %t1001 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 980
  store i32 0, i32* %t1001
  %t1002 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 981
  store i32 0, i32* %t1002
  %t1003 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 982
  store i32 0, i32* %t1003
  %t1004 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 983
  store i32 0, i32* %t1004
  %t1005 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 984
  store i32 0, i32* %t1005
  %t1006 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 985
  store i32 0, i32* %t1006
  %t1007 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 986
  store i32 0, i32* %t1007
  %t1008 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 987
  store i32 0, i32* %t1008
  %t1009 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 988
  store i32 0, i32* %t1009
  %t1010 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 989
  store i32 0, i32* %t1010
  %t1011 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 990
  store i32 0, i32* %t1011
  %t1012 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 991
  store i32 0, i32* %t1012
  %t1013 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 992
  store i32 0, i32* %t1013
  %t1014 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 993
  store i32 0, i32* %t1014
  %t1015 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 994
  store i32 0, i32* %t1015
  %t1016 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 995
  store i32 0, i32* %t1016
  %t1017 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 996
  store i32 0, i32* %t1017
  %t1018 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 997
  store i32 0, i32* %t1018
  %t1019 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 998
  store i32 0, i32* %t1019
  %t1020 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 999
  store i32 0, i32* %t1020
  %t1021 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1000
  store i32 0, i32* %t1021
  %t1022 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1001
  store i32 0, i32* %t1022
  %t1023 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1002
  store i32 0, i32* %t1023
  %t1024 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1003
  store i32 0, i32* %t1024
  %t1025 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1004
  store i32 0, i32* %t1025
  %t1026 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1005
  store i32 0, i32* %t1026
  %t1027 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1006
  store i32 0, i32* %t1027
  %t1028 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1007
  store i32 0, i32* %t1028
  %t1029 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1008
  store i32 0, i32* %t1029
  %t1030 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1009
  store i32 0, i32* %t1030
  %t1031 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1010
  store i32 0, i32* %t1031
  %t1032 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1011
  store i32 0, i32* %t1032
  %t1033 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1012
  store i32 0, i32* %t1033
  %t1034 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1013
  store i32 0, i32* %t1034
  %t1035 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1014
  store i32 0, i32* %t1035
  %t1036 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1015
  store i32 0, i32* %t1036
  %t1037 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1016
  store i32 0, i32* %t1037
  %t1038 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1017
  store i32 0, i32* %t1038
  %t1039 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1018
  store i32 0, i32* %t1039
  %t1040 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1019
  store i32 0, i32* %t1040
  %t1041 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1020
  store i32 0, i32* %t1041
  %t1042 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1021
  store i32 0, i32* %t1042
  %t1043 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1022
  store i32 0, i32* %t1043
  %t1044 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 0, i64 1023
  store i32 0, i32* %t1044
  %t1045 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 0
  store i32 1, i32* %t1045
  %t1046 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1
  store i32 0, i32* %t1046
  %t1047 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 2
  store i32 0, i32* %t1047
  %t1048 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 3
  store i32 0, i32* %t1048
  %t1049 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 4
  store i32 0, i32* %t1049
  %t1050 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 5
  store i32 0, i32* %t1050
  %t1051 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 6
  store i32 0, i32* %t1051
  %t1052 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 7
  store i32 0, i32* %t1052
  %t1053 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 8
  store i32 0, i32* %t1053
  %t1054 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 9
  store i32 0, i32* %t1054
  %t1055 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 10
  store i32 0, i32* %t1055
  %t1056 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 11
  store i32 0, i32* %t1056
  %t1057 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 12
  store i32 0, i32* %t1057
  %t1058 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 13
  store i32 0, i32* %t1058
  %t1059 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 14
  store i32 0, i32* %t1059
  %t1060 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 15
  store i32 0, i32* %t1060
  %t1061 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 16
  store i32 0, i32* %t1061
  %t1062 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 17
  store i32 0, i32* %t1062
  %t1063 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 18
  store i32 0, i32* %t1063
  %t1064 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 19
  store i32 0, i32* %t1064
  %t1065 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 20
  store i32 0, i32* %t1065
  %t1066 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 21
  store i32 0, i32* %t1066
  %t1067 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 22
  store i32 0, i32* %t1067
  %t1068 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 23
  store i32 0, i32* %t1068
  %t1069 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 24
  store i32 0, i32* %t1069
  %t1070 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 25
  store i32 0, i32* %t1070
  %t1071 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 26
  store i32 0, i32* %t1071
  %t1072 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 27
  store i32 0, i32* %t1072
  %t1073 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 28
  store i32 0, i32* %t1073
  %t1074 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 29
  store i32 0, i32* %t1074
  %t1075 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 30
  store i32 0, i32* %t1075
  %t1076 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 31
  store i32 0, i32* %t1076
  %t1077 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 32
  store i32 0, i32* %t1077
  %t1078 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 33
  store i32 0, i32* %t1078
  %t1079 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 34
  store i32 0, i32* %t1079
  %t1080 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 35
  store i32 0, i32* %t1080
  %t1081 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 36
  store i32 0, i32* %t1081
  %t1082 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 37
  store i32 0, i32* %t1082
  %t1083 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 38
  store i32 0, i32* %t1083
  %t1084 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 39
  store i32 0, i32* %t1084
  %t1085 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 40
  store i32 0, i32* %t1085
  %t1086 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 41
  store i32 0, i32* %t1086
  %t1087 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 42
  store i32 0, i32* %t1087
  %t1088 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 43
  store i32 0, i32* %t1088
  %t1089 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 44
  store i32 0, i32* %t1089
  %t1090 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 45
  store i32 0, i32* %t1090
  %t1091 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 46
  store i32 0, i32* %t1091
  %t1092 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 47
  store i32 0, i32* %t1092
  %t1093 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 48
  store i32 0, i32* %t1093
  %t1094 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 49
  store i32 0, i32* %t1094
  %t1095 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 50
  store i32 0, i32* %t1095
  %t1096 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 51
  store i32 0, i32* %t1096
  %t1097 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 52
  store i32 0, i32* %t1097
  %t1098 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 53
  store i32 0, i32* %t1098
  %t1099 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 54
  store i32 0, i32* %t1099
  %t1100 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 55
  store i32 0, i32* %t1100
  %t1101 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 56
  store i32 0, i32* %t1101
  %t1102 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 57
  store i32 0, i32* %t1102
  %t1103 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 58
  store i32 0, i32* %t1103
  %t1104 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 59
  store i32 0, i32* %t1104
  %t1105 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 60
  store i32 0, i32* %t1105
  %t1106 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 61
  store i32 0, i32* %t1106
  %t1107 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 62
  store i32 0, i32* %t1107
  %t1108 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 63
  store i32 0, i32* %t1108
  %t1109 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 64
  store i32 0, i32* %t1109
  %t1110 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 65
  store i32 0, i32* %t1110
  %t1111 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 66
  store i32 0, i32* %t1111
  %t1112 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 67
  store i32 0, i32* %t1112
  %t1113 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 68
  store i32 0, i32* %t1113
  %t1114 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 69
  store i32 0, i32* %t1114
  %t1115 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 70
  store i32 0, i32* %t1115
  %t1116 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 71
  store i32 0, i32* %t1116
  %t1117 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 72
  store i32 0, i32* %t1117
  %t1118 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 73
  store i32 0, i32* %t1118
  %t1119 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 74
  store i32 0, i32* %t1119
  %t1120 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 75
  store i32 0, i32* %t1120
  %t1121 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 76
  store i32 0, i32* %t1121
  %t1122 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 77
  store i32 0, i32* %t1122
  %t1123 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 78
  store i32 0, i32* %t1123
  %t1124 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 79
  store i32 0, i32* %t1124
  %t1125 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 80
  store i32 0, i32* %t1125
  %t1126 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 81
  store i32 0, i32* %t1126
  %t1127 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 82
  store i32 0, i32* %t1127
  %t1128 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 83
  store i32 0, i32* %t1128
  %t1129 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 84
  store i32 0, i32* %t1129
  %t1130 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 85
  store i32 0, i32* %t1130
  %t1131 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 86
  store i32 0, i32* %t1131
  %t1132 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 87
  store i32 0, i32* %t1132
  %t1133 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 88
  store i32 0, i32* %t1133
  %t1134 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 89
  store i32 0, i32* %t1134
  %t1135 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 90
  store i32 0, i32* %t1135
  %t1136 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 91
  store i32 0, i32* %t1136
  %t1137 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 92
  store i32 0, i32* %t1137
  %t1138 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 93
  store i32 0, i32* %t1138
  %t1139 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 94
  store i32 0, i32* %t1139
  %t1140 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 95
  store i32 0, i32* %t1140
  %t1141 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 96
  store i32 0, i32* %t1141
  %t1142 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 97
  store i32 0, i32* %t1142
  %t1143 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 98
  store i32 0, i32* %t1143
  %t1144 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 99
  store i32 0, i32* %t1144
  %t1145 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 100
  store i32 0, i32* %t1145
  %t1146 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 101
  store i32 0, i32* %t1146
  %t1147 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 102
  store i32 0, i32* %t1147
  %t1148 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 103
  store i32 0, i32* %t1148
  %t1149 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 104
  store i32 0, i32* %t1149
  %t1150 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 105
  store i32 0, i32* %t1150
  %t1151 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 106
  store i32 0, i32* %t1151
  %t1152 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 107
  store i32 0, i32* %t1152
  %t1153 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 108
  store i32 0, i32* %t1153
  %t1154 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 109
  store i32 0, i32* %t1154
  %t1155 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 110
  store i32 0, i32* %t1155
  %t1156 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 111
  store i32 0, i32* %t1156
  %t1157 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 112
  store i32 0, i32* %t1157
  %t1158 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 113
  store i32 0, i32* %t1158
  %t1159 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 114
  store i32 0, i32* %t1159
  %t1160 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 115
  store i32 0, i32* %t1160
  %t1161 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 116
  store i32 0, i32* %t1161
  %t1162 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 117
  store i32 0, i32* %t1162
  %t1163 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 118
  store i32 0, i32* %t1163
  %t1164 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 119
  store i32 0, i32* %t1164
  %t1165 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 120
  store i32 0, i32* %t1165
  %t1166 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 121
  store i32 0, i32* %t1166
  %t1167 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 122
  store i32 0, i32* %t1167
  %t1168 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 123
  store i32 0, i32* %t1168
  %t1169 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 124
  store i32 0, i32* %t1169
  %t1170 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 125
  store i32 0, i32* %t1170
  %t1171 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 126
  store i32 0, i32* %t1171
  %t1172 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 127
  store i32 0, i32* %t1172
  %t1173 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 128
  store i32 0, i32* %t1173
  %t1174 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 129
  store i32 0, i32* %t1174
  %t1175 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 130
  store i32 0, i32* %t1175
  %t1176 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 131
  store i32 0, i32* %t1176
  %t1177 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 132
  store i32 0, i32* %t1177
  %t1178 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 133
  store i32 0, i32* %t1178
  %t1179 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 134
  store i32 0, i32* %t1179
  %t1180 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 135
  store i32 0, i32* %t1180
  %t1181 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 136
  store i32 0, i32* %t1181
  %t1182 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 137
  store i32 0, i32* %t1182
  %t1183 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 138
  store i32 0, i32* %t1183
  %t1184 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 139
  store i32 0, i32* %t1184
  %t1185 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 140
  store i32 0, i32* %t1185
  %t1186 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 141
  store i32 0, i32* %t1186
  %t1187 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 142
  store i32 0, i32* %t1187
  %t1188 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 143
  store i32 0, i32* %t1188
  %t1189 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 144
  store i32 0, i32* %t1189
  %t1190 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 145
  store i32 0, i32* %t1190
  %t1191 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 146
  store i32 0, i32* %t1191
  %t1192 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 147
  store i32 0, i32* %t1192
  %t1193 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 148
  store i32 0, i32* %t1193
  %t1194 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 149
  store i32 0, i32* %t1194
  %t1195 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 150
  store i32 0, i32* %t1195
  %t1196 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 151
  store i32 0, i32* %t1196
  %t1197 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 152
  store i32 0, i32* %t1197
  %t1198 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 153
  store i32 0, i32* %t1198
  %t1199 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 154
  store i32 0, i32* %t1199
  %t1200 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 155
  store i32 0, i32* %t1200
  %t1201 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 156
  store i32 0, i32* %t1201
  %t1202 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 157
  store i32 0, i32* %t1202
  %t1203 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 158
  store i32 0, i32* %t1203
  %t1204 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 159
  store i32 0, i32* %t1204
  %t1205 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 160
  store i32 0, i32* %t1205
  %t1206 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 161
  store i32 0, i32* %t1206
  %t1207 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 162
  store i32 0, i32* %t1207
  %t1208 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 163
  store i32 0, i32* %t1208
  %t1209 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 164
  store i32 0, i32* %t1209
  %t1210 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 165
  store i32 0, i32* %t1210
  %t1211 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 166
  store i32 0, i32* %t1211
  %t1212 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 167
  store i32 0, i32* %t1212
  %t1213 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 168
  store i32 0, i32* %t1213
  %t1214 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 169
  store i32 0, i32* %t1214
  %t1215 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 170
  store i32 0, i32* %t1215
  %t1216 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 171
  store i32 0, i32* %t1216
  %t1217 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 172
  store i32 0, i32* %t1217
  %t1218 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 173
  store i32 0, i32* %t1218
  %t1219 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 174
  store i32 0, i32* %t1219
  %t1220 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 175
  store i32 0, i32* %t1220
  %t1221 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 176
  store i32 0, i32* %t1221
  %t1222 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 177
  store i32 0, i32* %t1222
  %t1223 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 178
  store i32 0, i32* %t1223
  %t1224 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 179
  store i32 0, i32* %t1224
  %t1225 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 180
  store i32 0, i32* %t1225
  %t1226 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 181
  store i32 0, i32* %t1226
  %t1227 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 182
  store i32 0, i32* %t1227
  %t1228 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 183
  store i32 0, i32* %t1228
  %t1229 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 184
  store i32 0, i32* %t1229
  %t1230 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 185
  store i32 0, i32* %t1230
  %t1231 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 186
  store i32 0, i32* %t1231
  %t1232 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 187
  store i32 0, i32* %t1232
  %t1233 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 188
  store i32 0, i32* %t1233
  %t1234 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 189
  store i32 0, i32* %t1234
  %t1235 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 190
  store i32 0, i32* %t1235
  %t1236 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 191
  store i32 0, i32* %t1236
  %t1237 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 192
  store i32 0, i32* %t1237
  %t1238 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 193
  store i32 0, i32* %t1238
  %t1239 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 194
  store i32 0, i32* %t1239
  %t1240 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 195
  store i32 0, i32* %t1240
  %t1241 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 196
  store i32 0, i32* %t1241
  %t1242 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 197
  store i32 0, i32* %t1242
  %t1243 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 198
  store i32 0, i32* %t1243
  %t1244 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 199
  store i32 0, i32* %t1244
  %t1245 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 200
  store i32 0, i32* %t1245
  %t1246 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 201
  store i32 0, i32* %t1246
  %t1247 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 202
  store i32 0, i32* %t1247
  %t1248 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 203
  store i32 0, i32* %t1248
  %t1249 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 204
  store i32 0, i32* %t1249
  %t1250 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 205
  store i32 0, i32* %t1250
  %t1251 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 206
  store i32 0, i32* %t1251
  %t1252 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 207
  store i32 0, i32* %t1252
  %t1253 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 208
  store i32 0, i32* %t1253
  %t1254 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 209
  store i32 0, i32* %t1254
  %t1255 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 210
  store i32 0, i32* %t1255
  %t1256 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 211
  store i32 0, i32* %t1256
  %t1257 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 212
  store i32 0, i32* %t1257
  %t1258 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 213
  store i32 0, i32* %t1258
  %t1259 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 214
  store i32 0, i32* %t1259
  %t1260 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 215
  store i32 0, i32* %t1260
  %t1261 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 216
  store i32 0, i32* %t1261
  %t1262 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 217
  store i32 0, i32* %t1262
  %t1263 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 218
  store i32 0, i32* %t1263
  %t1264 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 219
  store i32 0, i32* %t1264
  %t1265 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 220
  store i32 0, i32* %t1265
  %t1266 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 221
  store i32 0, i32* %t1266
  %t1267 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 222
  store i32 0, i32* %t1267
  %t1268 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 223
  store i32 0, i32* %t1268
  %t1269 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 224
  store i32 0, i32* %t1269
  %t1270 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 225
  store i32 0, i32* %t1270
  %t1271 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 226
  store i32 0, i32* %t1271
  %t1272 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 227
  store i32 0, i32* %t1272
  %t1273 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 228
  store i32 0, i32* %t1273
  %t1274 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 229
  store i32 0, i32* %t1274
  %t1275 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 230
  store i32 0, i32* %t1275
  %t1276 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 231
  store i32 0, i32* %t1276
  %t1277 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 232
  store i32 0, i32* %t1277
  %t1278 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 233
  store i32 0, i32* %t1278
  %t1279 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 234
  store i32 0, i32* %t1279
  %t1280 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 235
  store i32 0, i32* %t1280
  %t1281 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 236
  store i32 0, i32* %t1281
  %t1282 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 237
  store i32 0, i32* %t1282
  %t1283 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 238
  store i32 0, i32* %t1283
  %t1284 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 239
  store i32 0, i32* %t1284
  %t1285 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 240
  store i32 0, i32* %t1285
  %t1286 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 241
  store i32 0, i32* %t1286
  %t1287 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 242
  store i32 0, i32* %t1287
  %t1288 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 243
  store i32 0, i32* %t1288
  %t1289 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 244
  store i32 0, i32* %t1289
  %t1290 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 245
  store i32 0, i32* %t1290
  %t1291 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 246
  store i32 0, i32* %t1291
  %t1292 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 247
  store i32 0, i32* %t1292
  %t1293 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 248
  store i32 0, i32* %t1293
  %t1294 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 249
  store i32 0, i32* %t1294
  %t1295 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 250
  store i32 0, i32* %t1295
  %t1296 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 251
  store i32 0, i32* %t1296
  %t1297 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 252
  store i32 0, i32* %t1297
  %t1298 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 253
  store i32 0, i32* %t1298
  %t1299 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 254
  store i32 0, i32* %t1299
  %t1300 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 255
  store i32 0, i32* %t1300
  %t1301 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 256
  store i32 0, i32* %t1301
  %t1302 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 257
  store i32 0, i32* %t1302
  %t1303 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 258
  store i32 0, i32* %t1303
  %t1304 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 259
  store i32 0, i32* %t1304
  %t1305 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 260
  store i32 0, i32* %t1305
  %t1306 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 261
  store i32 0, i32* %t1306
  %t1307 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 262
  store i32 0, i32* %t1307
  %t1308 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 263
  store i32 0, i32* %t1308
  %t1309 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 264
  store i32 0, i32* %t1309
  %t1310 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 265
  store i32 0, i32* %t1310
  %t1311 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 266
  store i32 0, i32* %t1311
  %t1312 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 267
  store i32 0, i32* %t1312
  %t1313 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 268
  store i32 0, i32* %t1313
  %t1314 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 269
  store i32 0, i32* %t1314
  %t1315 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 270
  store i32 0, i32* %t1315
  %t1316 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 271
  store i32 0, i32* %t1316
  %t1317 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 272
  store i32 0, i32* %t1317
  %t1318 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 273
  store i32 0, i32* %t1318
  %t1319 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 274
  store i32 0, i32* %t1319
  %t1320 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 275
  store i32 0, i32* %t1320
  %t1321 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 276
  store i32 0, i32* %t1321
  %t1322 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 277
  store i32 0, i32* %t1322
  %t1323 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 278
  store i32 0, i32* %t1323
  %t1324 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 279
  store i32 0, i32* %t1324
  %t1325 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 280
  store i32 0, i32* %t1325
  %t1326 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 281
  store i32 0, i32* %t1326
  %t1327 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 282
  store i32 0, i32* %t1327
  %t1328 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 283
  store i32 0, i32* %t1328
  %t1329 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 284
  store i32 0, i32* %t1329
  %t1330 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 285
  store i32 0, i32* %t1330
  %t1331 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 286
  store i32 0, i32* %t1331
  %t1332 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 287
  store i32 0, i32* %t1332
  %t1333 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 288
  store i32 0, i32* %t1333
  %t1334 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 289
  store i32 0, i32* %t1334
  %t1335 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 290
  store i32 0, i32* %t1335
  %t1336 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 291
  store i32 0, i32* %t1336
  %t1337 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 292
  store i32 0, i32* %t1337
  %t1338 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 293
  store i32 0, i32* %t1338
  %t1339 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 294
  store i32 0, i32* %t1339
  %t1340 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 295
  store i32 0, i32* %t1340
  %t1341 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 296
  store i32 0, i32* %t1341
  %t1342 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 297
  store i32 0, i32* %t1342
  %t1343 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 298
  store i32 0, i32* %t1343
  %t1344 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 299
  store i32 0, i32* %t1344
  %t1345 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 300
  store i32 0, i32* %t1345
  %t1346 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 301
  store i32 0, i32* %t1346
  %t1347 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 302
  store i32 0, i32* %t1347
  %t1348 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 303
  store i32 0, i32* %t1348
  %t1349 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 304
  store i32 0, i32* %t1349
  %t1350 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 305
  store i32 0, i32* %t1350
  %t1351 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 306
  store i32 0, i32* %t1351
  %t1352 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 307
  store i32 0, i32* %t1352
  %t1353 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 308
  store i32 0, i32* %t1353
  %t1354 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 309
  store i32 0, i32* %t1354
  %t1355 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 310
  store i32 0, i32* %t1355
  %t1356 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 311
  store i32 0, i32* %t1356
  %t1357 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 312
  store i32 0, i32* %t1357
  %t1358 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 313
  store i32 0, i32* %t1358
  %t1359 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 314
  store i32 0, i32* %t1359
  %t1360 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 315
  store i32 0, i32* %t1360
  %t1361 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 316
  store i32 0, i32* %t1361
  %t1362 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 317
  store i32 0, i32* %t1362
  %t1363 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 318
  store i32 0, i32* %t1363
  %t1364 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 319
  store i32 0, i32* %t1364
  %t1365 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 320
  store i32 0, i32* %t1365
  %t1366 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 321
  store i32 0, i32* %t1366
  %t1367 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 322
  store i32 0, i32* %t1367
  %t1368 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 323
  store i32 0, i32* %t1368
  %t1369 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 324
  store i32 0, i32* %t1369
  %t1370 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 325
  store i32 0, i32* %t1370
  %t1371 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 326
  store i32 0, i32* %t1371
  %t1372 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 327
  store i32 0, i32* %t1372
  %t1373 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 328
  store i32 0, i32* %t1373
  %t1374 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 329
  store i32 0, i32* %t1374
  %t1375 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 330
  store i32 0, i32* %t1375
  %t1376 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 331
  store i32 0, i32* %t1376
  %t1377 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 332
  store i32 0, i32* %t1377
  %t1378 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 333
  store i32 0, i32* %t1378
  %t1379 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 334
  store i32 0, i32* %t1379
  %t1380 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 335
  store i32 0, i32* %t1380
  %t1381 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 336
  store i32 0, i32* %t1381
  %t1382 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 337
  store i32 0, i32* %t1382
  %t1383 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 338
  store i32 0, i32* %t1383
  %t1384 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 339
  store i32 0, i32* %t1384
  %t1385 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 340
  store i32 0, i32* %t1385
  %t1386 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 341
  store i32 0, i32* %t1386
  %t1387 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 342
  store i32 0, i32* %t1387
  %t1388 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 343
  store i32 0, i32* %t1388
  %t1389 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 344
  store i32 0, i32* %t1389
  %t1390 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 345
  store i32 0, i32* %t1390
  %t1391 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 346
  store i32 0, i32* %t1391
  %t1392 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 347
  store i32 0, i32* %t1392
  %t1393 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 348
  store i32 0, i32* %t1393
  %t1394 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 349
  store i32 0, i32* %t1394
  %t1395 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 350
  store i32 0, i32* %t1395
  %t1396 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 351
  store i32 0, i32* %t1396
  %t1397 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 352
  store i32 0, i32* %t1397
  %t1398 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 353
  store i32 0, i32* %t1398
  %t1399 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 354
  store i32 0, i32* %t1399
  %t1400 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 355
  store i32 0, i32* %t1400
  %t1401 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 356
  store i32 0, i32* %t1401
  %t1402 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 357
  store i32 0, i32* %t1402
  %t1403 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 358
  store i32 0, i32* %t1403
  %t1404 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 359
  store i32 0, i32* %t1404
  %t1405 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 360
  store i32 0, i32* %t1405
  %t1406 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 361
  store i32 0, i32* %t1406
  %t1407 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 362
  store i32 0, i32* %t1407
  %t1408 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 363
  store i32 0, i32* %t1408
  %t1409 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 364
  store i32 0, i32* %t1409
  %t1410 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 365
  store i32 0, i32* %t1410
  %t1411 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 366
  store i32 0, i32* %t1411
  %t1412 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 367
  store i32 0, i32* %t1412
  %t1413 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 368
  store i32 0, i32* %t1413
  %t1414 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 369
  store i32 0, i32* %t1414
  %t1415 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 370
  store i32 0, i32* %t1415
  %t1416 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 371
  store i32 0, i32* %t1416
  %t1417 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 372
  store i32 0, i32* %t1417
  %t1418 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 373
  store i32 0, i32* %t1418
  %t1419 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 374
  store i32 0, i32* %t1419
  %t1420 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 375
  store i32 0, i32* %t1420
  %t1421 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 376
  store i32 0, i32* %t1421
  %t1422 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 377
  store i32 0, i32* %t1422
  %t1423 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 378
  store i32 0, i32* %t1423
  %t1424 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 379
  store i32 0, i32* %t1424
  %t1425 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 380
  store i32 0, i32* %t1425
  %t1426 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 381
  store i32 0, i32* %t1426
  %t1427 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 382
  store i32 0, i32* %t1427
  %t1428 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 383
  store i32 0, i32* %t1428
  %t1429 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 384
  store i32 0, i32* %t1429
  %t1430 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 385
  store i32 0, i32* %t1430
  %t1431 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 386
  store i32 0, i32* %t1431
  %t1432 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 387
  store i32 0, i32* %t1432
  %t1433 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 388
  store i32 0, i32* %t1433
  %t1434 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 389
  store i32 0, i32* %t1434
  %t1435 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 390
  store i32 0, i32* %t1435
  %t1436 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 391
  store i32 0, i32* %t1436
  %t1437 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 392
  store i32 0, i32* %t1437
  %t1438 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 393
  store i32 0, i32* %t1438
  %t1439 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 394
  store i32 0, i32* %t1439
  %t1440 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 395
  store i32 0, i32* %t1440
  %t1441 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 396
  store i32 0, i32* %t1441
  %t1442 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 397
  store i32 0, i32* %t1442
  %t1443 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 398
  store i32 0, i32* %t1443
  %t1444 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 399
  store i32 0, i32* %t1444
  %t1445 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 400
  store i32 0, i32* %t1445
  %t1446 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 401
  store i32 0, i32* %t1446
  %t1447 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 402
  store i32 0, i32* %t1447
  %t1448 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 403
  store i32 0, i32* %t1448
  %t1449 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 404
  store i32 0, i32* %t1449
  %t1450 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 405
  store i32 0, i32* %t1450
  %t1451 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 406
  store i32 0, i32* %t1451
  %t1452 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 407
  store i32 0, i32* %t1452
  %t1453 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 408
  store i32 0, i32* %t1453
  %t1454 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 409
  store i32 0, i32* %t1454
  %t1455 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 410
  store i32 0, i32* %t1455
  %t1456 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 411
  store i32 0, i32* %t1456
  %t1457 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 412
  store i32 0, i32* %t1457
  %t1458 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 413
  store i32 0, i32* %t1458
  %t1459 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 414
  store i32 0, i32* %t1459
  %t1460 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 415
  store i32 0, i32* %t1460
  %t1461 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 416
  store i32 0, i32* %t1461
  %t1462 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 417
  store i32 0, i32* %t1462
  %t1463 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 418
  store i32 0, i32* %t1463
  %t1464 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 419
  store i32 0, i32* %t1464
  %t1465 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 420
  store i32 0, i32* %t1465
  %t1466 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 421
  store i32 0, i32* %t1466
  %t1467 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 422
  store i32 0, i32* %t1467
  %t1468 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 423
  store i32 0, i32* %t1468
  %t1469 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 424
  store i32 0, i32* %t1469
  %t1470 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 425
  store i32 0, i32* %t1470
  %t1471 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 426
  store i32 0, i32* %t1471
  %t1472 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 427
  store i32 0, i32* %t1472
  %t1473 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 428
  store i32 0, i32* %t1473
  %t1474 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 429
  store i32 0, i32* %t1474
  %t1475 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 430
  store i32 0, i32* %t1475
  %t1476 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 431
  store i32 0, i32* %t1476
  %t1477 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 432
  store i32 0, i32* %t1477
  %t1478 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 433
  store i32 0, i32* %t1478
  %t1479 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 434
  store i32 0, i32* %t1479
  %t1480 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 435
  store i32 0, i32* %t1480
  %t1481 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 436
  store i32 0, i32* %t1481
  %t1482 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 437
  store i32 0, i32* %t1482
  %t1483 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 438
  store i32 0, i32* %t1483
  %t1484 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 439
  store i32 0, i32* %t1484
  %t1485 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 440
  store i32 0, i32* %t1485
  %t1486 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 441
  store i32 0, i32* %t1486
  %t1487 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 442
  store i32 0, i32* %t1487
  %t1488 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 443
  store i32 0, i32* %t1488
  %t1489 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 444
  store i32 0, i32* %t1489
  %t1490 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 445
  store i32 0, i32* %t1490
  %t1491 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 446
  store i32 0, i32* %t1491
  %t1492 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 447
  store i32 0, i32* %t1492
  %t1493 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 448
  store i32 0, i32* %t1493
  %t1494 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 449
  store i32 0, i32* %t1494
  %t1495 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 450
  store i32 0, i32* %t1495
  %t1496 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 451
  store i32 0, i32* %t1496
  %t1497 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 452
  store i32 0, i32* %t1497
  %t1498 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 453
  store i32 0, i32* %t1498
  %t1499 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 454
  store i32 0, i32* %t1499
  %t1500 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 455
  store i32 0, i32* %t1500
  %t1501 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 456
  store i32 0, i32* %t1501
  %t1502 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 457
  store i32 0, i32* %t1502
  %t1503 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 458
  store i32 0, i32* %t1503
  %t1504 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 459
  store i32 0, i32* %t1504
  %t1505 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 460
  store i32 0, i32* %t1505
  %t1506 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 461
  store i32 0, i32* %t1506
  %t1507 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 462
  store i32 0, i32* %t1507
  %t1508 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 463
  store i32 0, i32* %t1508
  %t1509 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 464
  store i32 0, i32* %t1509
  %t1510 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 465
  store i32 0, i32* %t1510
  %t1511 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 466
  store i32 0, i32* %t1511
  %t1512 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 467
  store i32 0, i32* %t1512
  %t1513 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 468
  store i32 0, i32* %t1513
  %t1514 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 469
  store i32 0, i32* %t1514
  %t1515 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 470
  store i32 0, i32* %t1515
  %t1516 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 471
  store i32 0, i32* %t1516
  %t1517 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 472
  store i32 0, i32* %t1517
  %t1518 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 473
  store i32 0, i32* %t1518
  %t1519 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 474
  store i32 0, i32* %t1519
  %t1520 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 475
  store i32 0, i32* %t1520
  %t1521 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 476
  store i32 0, i32* %t1521
  %t1522 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 477
  store i32 0, i32* %t1522
  %t1523 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 478
  store i32 0, i32* %t1523
  %t1524 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 479
  store i32 0, i32* %t1524
  %t1525 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 480
  store i32 0, i32* %t1525
  %t1526 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 481
  store i32 0, i32* %t1526
  %t1527 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 482
  store i32 0, i32* %t1527
  %t1528 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 483
  store i32 0, i32* %t1528
  %t1529 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 484
  store i32 0, i32* %t1529
  %t1530 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 485
  store i32 0, i32* %t1530
  %t1531 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 486
  store i32 0, i32* %t1531
  %t1532 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 487
  store i32 0, i32* %t1532
  %t1533 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 488
  store i32 0, i32* %t1533
  %t1534 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 489
  store i32 0, i32* %t1534
  %t1535 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 490
  store i32 0, i32* %t1535
  %t1536 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 491
  store i32 0, i32* %t1536
  %t1537 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 492
  store i32 0, i32* %t1537
  %t1538 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 493
  store i32 0, i32* %t1538
  %t1539 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 494
  store i32 0, i32* %t1539
  %t1540 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 495
  store i32 0, i32* %t1540
  %t1541 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 496
  store i32 0, i32* %t1541
  %t1542 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 497
  store i32 0, i32* %t1542
  %t1543 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 498
  store i32 0, i32* %t1543
  %t1544 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 499
  store i32 0, i32* %t1544
  %t1545 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 500
  store i32 0, i32* %t1545
  %t1546 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 501
  store i32 0, i32* %t1546
  %t1547 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 502
  store i32 0, i32* %t1547
  %t1548 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 503
  store i32 0, i32* %t1548
  %t1549 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 504
  store i32 0, i32* %t1549
  %t1550 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 505
  store i32 0, i32* %t1550
  %t1551 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 506
  store i32 0, i32* %t1551
  %t1552 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 507
  store i32 0, i32* %t1552
  %t1553 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 508
  store i32 0, i32* %t1553
  %t1554 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 509
  store i32 0, i32* %t1554
  %t1555 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 510
  store i32 0, i32* %t1555
  %t1556 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 511
  store i32 0, i32* %t1556
  %t1557 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 512
  store i32 0, i32* %t1557
  %t1558 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 513
  store i32 0, i32* %t1558
  %t1559 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 514
  store i32 0, i32* %t1559
  %t1560 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 515
  store i32 0, i32* %t1560
  %t1561 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 516
  store i32 0, i32* %t1561
  %t1562 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 517
  store i32 0, i32* %t1562
  %t1563 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 518
  store i32 0, i32* %t1563
  %t1564 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 519
  store i32 0, i32* %t1564
  %t1565 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 520
  store i32 0, i32* %t1565
  %t1566 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 521
  store i32 0, i32* %t1566
  %t1567 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 522
  store i32 0, i32* %t1567
  %t1568 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 523
  store i32 0, i32* %t1568
  %t1569 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 524
  store i32 0, i32* %t1569
  %t1570 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 525
  store i32 0, i32* %t1570
  %t1571 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 526
  store i32 0, i32* %t1571
  %t1572 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 527
  store i32 0, i32* %t1572
  %t1573 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 528
  store i32 0, i32* %t1573
  %t1574 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 529
  store i32 0, i32* %t1574
  %t1575 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 530
  store i32 0, i32* %t1575
  %t1576 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 531
  store i32 0, i32* %t1576
  %t1577 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 532
  store i32 0, i32* %t1577
  %t1578 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 533
  store i32 0, i32* %t1578
  %t1579 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 534
  store i32 0, i32* %t1579
  %t1580 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 535
  store i32 0, i32* %t1580
  %t1581 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 536
  store i32 0, i32* %t1581
  %t1582 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 537
  store i32 0, i32* %t1582
  %t1583 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 538
  store i32 0, i32* %t1583
  %t1584 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 539
  store i32 0, i32* %t1584
  %t1585 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 540
  store i32 0, i32* %t1585
  %t1586 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 541
  store i32 0, i32* %t1586
  %t1587 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 542
  store i32 0, i32* %t1587
  %t1588 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 543
  store i32 0, i32* %t1588
  %t1589 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 544
  store i32 0, i32* %t1589
  %t1590 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 545
  store i32 0, i32* %t1590
  %t1591 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 546
  store i32 0, i32* %t1591
  %t1592 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 547
  store i32 0, i32* %t1592
  %t1593 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 548
  store i32 0, i32* %t1593
  %t1594 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 549
  store i32 0, i32* %t1594
  %t1595 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 550
  store i32 0, i32* %t1595
  %t1596 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 551
  store i32 0, i32* %t1596
  %t1597 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 552
  store i32 0, i32* %t1597
  %t1598 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 553
  store i32 0, i32* %t1598
  %t1599 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 554
  store i32 0, i32* %t1599
  %t1600 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 555
  store i32 0, i32* %t1600
  %t1601 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 556
  store i32 0, i32* %t1601
  %t1602 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 557
  store i32 0, i32* %t1602
  %t1603 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 558
  store i32 0, i32* %t1603
  %t1604 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 559
  store i32 0, i32* %t1604
  %t1605 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 560
  store i32 0, i32* %t1605
  %t1606 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 561
  store i32 0, i32* %t1606
  %t1607 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 562
  store i32 0, i32* %t1607
  %t1608 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 563
  store i32 0, i32* %t1608
  %t1609 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 564
  store i32 0, i32* %t1609
  %t1610 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 565
  store i32 0, i32* %t1610
  %t1611 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 566
  store i32 0, i32* %t1611
  %t1612 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 567
  store i32 0, i32* %t1612
  %t1613 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 568
  store i32 0, i32* %t1613
  %t1614 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 569
  store i32 0, i32* %t1614
  %t1615 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 570
  store i32 0, i32* %t1615
  %t1616 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 571
  store i32 0, i32* %t1616
  %t1617 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 572
  store i32 0, i32* %t1617
  %t1618 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 573
  store i32 0, i32* %t1618
  %t1619 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 574
  store i32 0, i32* %t1619
  %t1620 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 575
  store i32 0, i32* %t1620
  %t1621 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 576
  store i32 0, i32* %t1621
  %t1622 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 577
  store i32 0, i32* %t1622
  %t1623 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 578
  store i32 0, i32* %t1623
  %t1624 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 579
  store i32 0, i32* %t1624
  %t1625 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 580
  store i32 0, i32* %t1625
  %t1626 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 581
  store i32 0, i32* %t1626
  %t1627 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 582
  store i32 0, i32* %t1627
  %t1628 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 583
  store i32 0, i32* %t1628
  %t1629 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 584
  store i32 0, i32* %t1629
  %t1630 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 585
  store i32 0, i32* %t1630
  %t1631 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 586
  store i32 0, i32* %t1631
  %t1632 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 587
  store i32 0, i32* %t1632
  %t1633 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 588
  store i32 0, i32* %t1633
  %t1634 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 589
  store i32 0, i32* %t1634
  %t1635 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 590
  store i32 0, i32* %t1635
  %t1636 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 591
  store i32 0, i32* %t1636
  %t1637 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 592
  store i32 0, i32* %t1637
  %t1638 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 593
  store i32 0, i32* %t1638
  %t1639 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 594
  store i32 0, i32* %t1639
  %t1640 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 595
  store i32 0, i32* %t1640
  %t1641 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 596
  store i32 0, i32* %t1641
  %t1642 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 597
  store i32 0, i32* %t1642
  %t1643 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 598
  store i32 0, i32* %t1643
  %t1644 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 599
  store i32 0, i32* %t1644
  %t1645 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 600
  store i32 0, i32* %t1645
  %t1646 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 601
  store i32 0, i32* %t1646
  %t1647 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 602
  store i32 0, i32* %t1647
  %t1648 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 603
  store i32 0, i32* %t1648
  %t1649 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 604
  store i32 0, i32* %t1649
  %t1650 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 605
  store i32 0, i32* %t1650
  %t1651 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 606
  store i32 0, i32* %t1651
  %t1652 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 607
  store i32 0, i32* %t1652
  %t1653 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 608
  store i32 0, i32* %t1653
  %t1654 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 609
  store i32 0, i32* %t1654
  %t1655 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 610
  store i32 0, i32* %t1655
  %t1656 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 611
  store i32 0, i32* %t1656
  %t1657 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 612
  store i32 0, i32* %t1657
  %t1658 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 613
  store i32 0, i32* %t1658
  %t1659 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 614
  store i32 0, i32* %t1659
  %t1660 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 615
  store i32 0, i32* %t1660
  %t1661 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 616
  store i32 0, i32* %t1661
  %t1662 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 617
  store i32 0, i32* %t1662
  %t1663 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 618
  store i32 0, i32* %t1663
  %t1664 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 619
  store i32 0, i32* %t1664
  %t1665 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 620
  store i32 0, i32* %t1665
  %t1666 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 621
  store i32 0, i32* %t1666
  %t1667 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 622
  store i32 0, i32* %t1667
  %t1668 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 623
  store i32 0, i32* %t1668
  %t1669 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 624
  store i32 0, i32* %t1669
  %t1670 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 625
  store i32 0, i32* %t1670
  %t1671 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 626
  store i32 0, i32* %t1671
  %t1672 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 627
  store i32 0, i32* %t1672
  %t1673 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 628
  store i32 0, i32* %t1673
  %t1674 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 629
  store i32 0, i32* %t1674
  %t1675 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 630
  store i32 0, i32* %t1675
  %t1676 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 631
  store i32 0, i32* %t1676
  %t1677 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 632
  store i32 0, i32* %t1677
  %t1678 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 633
  store i32 0, i32* %t1678
  %t1679 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 634
  store i32 0, i32* %t1679
  %t1680 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 635
  store i32 0, i32* %t1680
  %t1681 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 636
  store i32 0, i32* %t1681
  %t1682 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 637
  store i32 0, i32* %t1682
  %t1683 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 638
  store i32 0, i32* %t1683
  %t1684 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 639
  store i32 0, i32* %t1684
  %t1685 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 640
  store i32 0, i32* %t1685
  %t1686 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 641
  store i32 0, i32* %t1686
  %t1687 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 642
  store i32 0, i32* %t1687
  %t1688 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 643
  store i32 0, i32* %t1688
  %t1689 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 644
  store i32 0, i32* %t1689
  %t1690 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 645
  store i32 0, i32* %t1690
  %t1691 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 646
  store i32 0, i32* %t1691
  %t1692 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 647
  store i32 0, i32* %t1692
  %t1693 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 648
  store i32 0, i32* %t1693
  %t1694 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 649
  store i32 0, i32* %t1694
  %t1695 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 650
  store i32 0, i32* %t1695
  %t1696 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 651
  store i32 0, i32* %t1696
  %t1697 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 652
  store i32 0, i32* %t1697
  %t1698 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 653
  store i32 0, i32* %t1698
  %t1699 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 654
  store i32 0, i32* %t1699
  %t1700 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 655
  store i32 0, i32* %t1700
  %t1701 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 656
  store i32 0, i32* %t1701
  %t1702 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 657
  store i32 0, i32* %t1702
  %t1703 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 658
  store i32 0, i32* %t1703
  %t1704 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 659
  store i32 0, i32* %t1704
  %t1705 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 660
  store i32 0, i32* %t1705
  %t1706 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 661
  store i32 0, i32* %t1706
  %t1707 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 662
  store i32 0, i32* %t1707
  %t1708 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 663
  store i32 0, i32* %t1708
  %t1709 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 664
  store i32 0, i32* %t1709
  %t1710 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 665
  store i32 0, i32* %t1710
  %t1711 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 666
  store i32 0, i32* %t1711
  %t1712 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 667
  store i32 0, i32* %t1712
  %t1713 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 668
  store i32 0, i32* %t1713
  %t1714 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 669
  store i32 0, i32* %t1714
  %t1715 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 670
  store i32 0, i32* %t1715
  %t1716 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 671
  store i32 0, i32* %t1716
  %t1717 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 672
  store i32 0, i32* %t1717
  %t1718 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 673
  store i32 0, i32* %t1718
  %t1719 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 674
  store i32 0, i32* %t1719
  %t1720 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 675
  store i32 0, i32* %t1720
  %t1721 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 676
  store i32 0, i32* %t1721
  %t1722 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 677
  store i32 0, i32* %t1722
  %t1723 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 678
  store i32 0, i32* %t1723
  %t1724 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 679
  store i32 0, i32* %t1724
  %t1725 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 680
  store i32 0, i32* %t1725
  %t1726 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 681
  store i32 0, i32* %t1726
  %t1727 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 682
  store i32 0, i32* %t1727
  %t1728 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 683
  store i32 0, i32* %t1728
  %t1729 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 684
  store i32 0, i32* %t1729
  %t1730 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 685
  store i32 0, i32* %t1730
  %t1731 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 686
  store i32 0, i32* %t1731
  %t1732 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 687
  store i32 0, i32* %t1732
  %t1733 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 688
  store i32 0, i32* %t1733
  %t1734 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 689
  store i32 0, i32* %t1734
  %t1735 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 690
  store i32 0, i32* %t1735
  %t1736 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 691
  store i32 0, i32* %t1736
  %t1737 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 692
  store i32 0, i32* %t1737
  %t1738 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 693
  store i32 0, i32* %t1738
  %t1739 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 694
  store i32 0, i32* %t1739
  %t1740 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 695
  store i32 0, i32* %t1740
  %t1741 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 696
  store i32 0, i32* %t1741
  %t1742 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 697
  store i32 0, i32* %t1742
  %t1743 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 698
  store i32 0, i32* %t1743
  %t1744 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 699
  store i32 0, i32* %t1744
  %t1745 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 700
  store i32 0, i32* %t1745
  %t1746 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 701
  store i32 0, i32* %t1746
  %t1747 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 702
  store i32 0, i32* %t1747
  %t1748 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 703
  store i32 0, i32* %t1748
  %t1749 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 704
  store i32 0, i32* %t1749
  %t1750 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 705
  store i32 0, i32* %t1750
  %t1751 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 706
  store i32 0, i32* %t1751
  %t1752 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 707
  store i32 0, i32* %t1752
  %t1753 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 708
  store i32 0, i32* %t1753
  %t1754 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 709
  store i32 0, i32* %t1754
  %t1755 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 710
  store i32 0, i32* %t1755
  %t1756 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 711
  store i32 0, i32* %t1756
  %t1757 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 712
  store i32 0, i32* %t1757
  %t1758 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 713
  store i32 0, i32* %t1758
  %t1759 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 714
  store i32 0, i32* %t1759
  %t1760 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 715
  store i32 0, i32* %t1760
  %t1761 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 716
  store i32 0, i32* %t1761
  %t1762 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 717
  store i32 0, i32* %t1762
  %t1763 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 718
  store i32 0, i32* %t1763
  %t1764 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 719
  store i32 0, i32* %t1764
  %t1765 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 720
  store i32 0, i32* %t1765
  %t1766 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 721
  store i32 0, i32* %t1766
  %t1767 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 722
  store i32 0, i32* %t1767
  %t1768 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 723
  store i32 0, i32* %t1768
  %t1769 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 724
  store i32 0, i32* %t1769
  %t1770 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 725
  store i32 0, i32* %t1770
  %t1771 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 726
  store i32 0, i32* %t1771
  %t1772 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 727
  store i32 0, i32* %t1772
  %t1773 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 728
  store i32 0, i32* %t1773
  %t1774 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 729
  store i32 0, i32* %t1774
  %t1775 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 730
  store i32 0, i32* %t1775
  %t1776 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 731
  store i32 0, i32* %t1776
  %t1777 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 732
  store i32 0, i32* %t1777
  %t1778 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 733
  store i32 0, i32* %t1778
  %t1779 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 734
  store i32 0, i32* %t1779
  %t1780 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 735
  store i32 0, i32* %t1780
  %t1781 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 736
  store i32 0, i32* %t1781
  %t1782 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 737
  store i32 0, i32* %t1782
  %t1783 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 738
  store i32 0, i32* %t1783
  %t1784 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 739
  store i32 0, i32* %t1784
  %t1785 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 740
  store i32 0, i32* %t1785
  %t1786 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 741
  store i32 0, i32* %t1786
  %t1787 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 742
  store i32 0, i32* %t1787
  %t1788 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 743
  store i32 0, i32* %t1788
  %t1789 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 744
  store i32 0, i32* %t1789
  %t1790 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 745
  store i32 0, i32* %t1790
  %t1791 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 746
  store i32 0, i32* %t1791
  %t1792 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 747
  store i32 0, i32* %t1792
  %t1793 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 748
  store i32 0, i32* %t1793
  %t1794 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 749
  store i32 0, i32* %t1794
  %t1795 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 750
  store i32 0, i32* %t1795
  %t1796 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 751
  store i32 0, i32* %t1796
  %t1797 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 752
  store i32 0, i32* %t1797
  %t1798 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 753
  store i32 0, i32* %t1798
  %t1799 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 754
  store i32 0, i32* %t1799
  %t1800 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 755
  store i32 0, i32* %t1800
  %t1801 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 756
  store i32 0, i32* %t1801
  %t1802 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 757
  store i32 0, i32* %t1802
  %t1803 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 758
  store i32 0, i32* %t1803
  %t1804 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 759
  store i32 0, i32* %t1804
  %t1805 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 760
  store i32 0, i32* %t1805
  %t1806 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 761
  store i32 0, i32* %t1806
  %t1807 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 762
  store i32 0, i32* %t1807
  %t1808 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 763
  store i32 0, i32* %t1808
  %t1809 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 764
  store i32 0, i32* %t1809
  %t1810 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 765
  store i32 0, i32* %t1810
  %t1811 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 766
  store i32 0, i32* %t1811
  %t1812 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 767
  store i32 0, i32* %t1812
  %t1813 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 768
  store i32 0, i32* %t1813
  %t1814 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 769
  store i32 0, i32* %t1814
  %t1815 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 770
  store i32 0, i32* %t1815
  %t1816 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 771
  store i32 0, i32* %t1816
  %t1817 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 772
  store i32 0, i32* %t1817
  %t1818 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 773
  store i32 0, i32* %t1818
  %t1819 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 774
  store i32 0, i32* %t1819
  %t1820 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 775
  store i32 0, i32* %t1820
  %t1821 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 776
  store i32 0, i32* %t1821
  %t1822 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 777
  store i32 0, i32* %t1822
  %t1823 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 778
  store i32 0, i32* %t1823
  %t1824 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 779
  store i32 0, i32* %t1824
  %t1825 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 780
  store i32 0, i32* %t1825
  %t1826 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 781
  store i32 0, i32* %t1826
  %t1827 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 782
  store i32 0, i32* %t1827
  %t1828 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 783
  store i32 0, i32* %t1828
  %t1829 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 784
  store i32 0, i32* %t1829
  %t1830 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 785
  store i32 0, i32* %t1830
  %t1831 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 786
  store i32 0, i32* %t1831
  %t1832 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 787
  store i32 0, i32* %t1832
  %t1833 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 788
  store i32 0, i32* %t1833
  %t1834 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 789
  store i32 0, i32* %t1834
  %t1835 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 790
  store i32 0, i32* %t1835
  %t1836 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 791
  store i32 0, i32* %t1836
  %t1837 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 792
  store i32 0, i32* %t1837
  %t1838 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 793
  store i32 0, i32* %t1838
  %t1839 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 794
  store i32 0, i32* %t1839
  %t1840 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 795
  store i32 0, i32* %t1840
  %t1841 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 796
  store i32 0, i32* %t1841
  %t1842 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 797
  store i32 0, i32* %t1842
  %t1843 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 798
  store i32 0, i32* %t1843
  %t1844 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 799
  store i32 0, i32* %t1844
  %t1845 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 800
  store i32 0, i32* %t1845
  %t1846 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 801
  store i32 0, i32* %t1846
  %t1847 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 802
  store i32 0, i32* %t1847
  %t1848 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 803
  store i32 0, i32* %t1848
  %t1849 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 804
  store i32 0, i32* %t1849
  %t1850 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 805
  store i32 0, i32* %t1850
  %t1851 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 806
  store i32 0, i32* %t1851
  %t1852 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 807
  store i32 0, i32* %t1852
  %t1853 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 808
  store i32 0, i32* %t1853
  %t1854 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 809
  store i32 0, i32* %t1854
  %t1855 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 810
  store i32 0, i32* %t1855
  %t1856 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 811
  store i32 0, i32* %t1856
  %t1857 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 812
  store i32 0, i32* %t1857
  %t1858 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 813
  store i32 0, i32* %t1858
  %t1859 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 814
  store i32 0, i32* %t1859
  %t1860 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 815
  store i32 0, i32* %t1860
  %t1861 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 816
  store i32 0, i32* %t1861
  %t1862 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 817
  store i32 0, i32* %t1862
  %t1863 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 818
  store i32 0, i32* %t1863
  %t1864 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 819
  store i32 0, i32* %t1864
  %t1865 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 820
  store i32 0, i32* %t1865
  %t1866 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 821
  store i32 0, i32* %t1866
  %t1867 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 822
  store i32 0, i32* %t1867
  %t1868 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 823
  store i32 0, i32* %t1868
  %t1869 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 824
  store i32 0, i32* %t1869
  %t1870 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 825
  store i32 0, i32* %t1870
  %t1871 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 826
  store i32 0, i32* %t1871
  %t1872 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 827
  store i32 0, i32* %t1872
  %t1873 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 828
  store i32 0, i32* %t1873
  %t1874 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 829
  store i32 0, i32* %t1874
  %t1875 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 830
  store i32 0, i32* %t1875
  %t1876 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 831
  store i32 0, i32* %t1876
  %t1877 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 832
  store i32 0, i32* %t1877
  %t1878 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 833
  store i32 0, i32* %t1878
  %t1879 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 834
  store i32 0, i32* %t1879
  %t1880 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 835
  store i32 0, i32* %t1880
  %t1881 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 836
  store i32 0, i32* %t1881
  %t1882 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 837
  store i32 0, i32* %t1882
  %t1883 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 838
  store i32 0, i32* %t1883
  %t1884 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 839
  store i32 0, i32* %t1884
  %t1885 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 840
  store i32 0, i32* %t1885
  %t1886 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 841
  store i32 0, i32* %t1886
  %t1887 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 842
  store i32 0, i32* %t1887
  %t1888 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 843
  store i32 0, i32* %t1888
  %t1889 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 844
  store i32 0, i32* %t1889
  %t1890 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 845
  store i32 0, i32* %t1890
  %t1891 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 846
  store i32 0, i32* %t1891
  %t1892 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 847
  store i32 0, i32* %t1892
  %t1893 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 848
  store i32 0, i32* %t1893
  %t1894 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 849
  store i32 0, i32* %t1894
  %t1895 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 850
  store i32 0, i32* %t1895
  %t1896 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 851
  store i32 0, i32* %t1896
  %t1897 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 852
  store i32 0, i32* %t1897
  %t1898 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 853
  store i32 0, i32* %t1898
  %t1899 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 854
  store i32 0, i32* %t1899
  %t1900 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 855
  store i32 0, i32* %t1900
  %t1901 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 856
  store i32 0, i32* %t1901
  %t1902 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 857
  store i32 0, i32* %t1902
  %t1903 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 858
  store i32 0, i32* %t1903
  %t1904 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 859
  store i32 0, i32* %t1904
  %t1905 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 860
  store i32 0, i32* %t1905
  %t1906 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 861
  store i32 0, i32* %t1906
  %t1907 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 862
  store i32 0, i32* %t1907
  %t1908 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 863
  store i32 0, i32* %t1908
  %t1909 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 864
  store i32 0, i32* %t1909
  %t1910 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 865
  store i32 0, i32* %t1910
  %t1911 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 866
  store i32 0, i32* %t1911
  %t1912 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 867
  store i32 0, i32* %t1912
  %t1913 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 868
  store i32 0, i32* %t1913
  %t1914 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 869
  store i32 0, i32* %t1914
  %t1915 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 870
  store i32 0, i32* %t1915
  %t1916 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 871
  store i32 0, i32* %t1916
  %t1917 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 872
  store i32 0, i32* %t1917
  %t1918 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 873
  store i32 0, i32* %t1918
  %t1919 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 874
  store i32 0, i32* %t1919
  %t1920 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 875
  store i32 0, i32* %t1920
  %t1921 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 876
  store i32 0, i32* %t1921
  %t1922 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 877
  store i32 0, i32* %t1922
  %t1923 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 878
  store i32 0, i32* %t1923
  %t1924 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 879
  store i32 0, i32* %t1924
  %t1925 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 880
  store i32 0, i32* %t1925
  %t1926 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 881
  store i32 0, i32* %t1926
  %t1927 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 882
  store i32 0, i32* %t1927
  %t1928 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 883
  store i32 0, i32* %t1928
  %t1929 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 884
  store i32 0, i32* %t1929
  %t1930 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 885
  store i32 0, i32* %t1930
  %t1931 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 886
  store i32 0, i32* %t1931
  %t1932 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 887
  store i32 0, i32* %t1932
  %t1933 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 888
  store i32 0, i32* %t1933
  %t1934 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 889
  store i32 0, i32* %t1934
  %t1935 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 890
  store i32 0, i32* %t1935
  %t1936 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 891
  store i32 0, i32* %t1936
  %t1937 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 892
  store i32 0, i32* %t1937
  %t1938 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 893
  store i32 0, i32* %t1938
  %t1939 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 894
  store i32 0, i32* %t1939
  %t1940 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 895
  store i32 0, i32* %t1940
  %t1941 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 896
  store i32 0, i32* %t1941
  %t1942 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 897
  store i32 0, i32* %t1942
  %t1943 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 898
  store i32 0, i32* %t1943
  %t1944 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 899
  store i32 0, i32* %t1944
  %t1945 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 900
  store i32 0, i32* %t1945
  %t1946 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 901
  store i32 0, i32* %t1946
  %t1947 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 902
  store i32 0, i32* %t1947
  %t1948 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 903
  store i32 0, i32* %t1948
  %t1949 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 904
  store i32 0, i32* %t1949
  %t1950 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 905
  store i32 0, i32* %t1950
  %t1951 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 906
  store i32 0, i32* %t1951
  %t1952 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 907
  store i32 0, i32* %t1952
  %t1953 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 908
  store i32 0, i32* %t1953
  %t1954 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 909
  store i32 0, i32* %t1954
  %t1955 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 910
  store i32 0, i32* %t1955
  %t1956 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 911
  store i32 0, i32* %t1956
  %t1957 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 912
  store i32 0, i32* %t1957
  %t1958 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 913
  store i32 0, i32* %t1958
  %t1959 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 914
  store i32 0, i32* %t1959
  %t1960 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 915
  store i32 0, i32* %t1960
  %t1961 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 916
  store i32 0, i32* %t1961
  %t1962 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 917
  store i32 0, i32* %t1962
  %t1963 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 918
  store i32 0, i32* %t1963
  %t1964 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 919
  store i32 0, i32* %t1964
  %t1965 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 920
  store i32 0, i32* %t1965
  %t1966 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 921
  store i32 0, i32* %t1966
  %t1967 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 922
  store i32 0, i32* %t1967
  %t1968 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 923
  store i32 0, i32* %t1968
  %t1969 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 924
  store i32 0, i32* %t1969
  %t1970 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 925
  store i32 0, i32* %t1970
  %t1971 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 926
  store i32 0, i32* %t1971
  %t1972 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 927
  store i32 0, i32* %t1972
  %t1973 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 928
  store i32 0, i32* %t1973
  %t1974 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 929
  store i32 0, i32* %t1974
  %t1975 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 930
  store i32 0, i32* %t1975
  %t1976 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 931
  store i32 0, i32* %t1976
  %t1977 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 932
  store i32 0, i32* %t1977
  %t1978 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 933
  store i32 0, i32* %t1978
  %t1979 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 934
  store i32 0, i32* %t1979
  %t1980 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 935
  store i32 0, i32* %t1980
  %t1981 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 936
  store i32 0, i32* %t1981
  %t1982 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 937
  store i32 0, i32* %t1982
  %t1983 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 938
  store i32 0, i32* %t1983
  %t1984 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 939
  store i32 0, i32* %t1984
  %t1985 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 940
  store i32 0, i32* %t1985
  %t1986 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 941
  store i32 0, i32* %t1986
  %t1987 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 942
  store i32 0, i32* %t1987
  %t1988 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 943
  store i32 0, i32* %t1988
  %t1989 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 944
  store i32 0, i32* %t1989
  %t1990 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 945
  store i32 0, i32* %t1990
  %t1991 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 946
  store i32 0, i32* %t1991
  %t1992 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 947
  store i32 0, i32* %t1992
  %t1993 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 948
  store i32 0, i32* %t1993
  %t1994 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 949
  store i32 0, i32* %t1994
  %t1995 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 950
  store i32 0, i32* %t1995
  %t1996 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 951
  store i32 0, i32* %t1996
  %t1997 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 952
  store i32 0, i32* %t1997
  %t1998 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 953
  store i32 0, i32* %t1998
  %t1999 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 954
  store i32 0, i32* %t1999
  %t2000 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 955
  store i32 0, i32* %t2000
  %t2001 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 956
  store i32 0, i32* %t2001
  %t2002 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 957
  store i32 0, i32* %t2002
  %t2003 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 958
  store i32 0, i32* %t2003
  %t2004 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 959
  store i32 0, i32* %t2004
  %t2005 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 960
  store i32 0, i32* %t2005
  %t2006 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 961
  store i32 0, i32* %t2006
  %t2007 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 962
  store i32 0, i32* %t2007
  %t2008 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 963
  store i32 0, i32* %t2008
  %t2009 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 964
  store i32 0, i32* %t2009
  %t2010 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 965
  store i32 0, i32* %t2010
  %t2011 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 966
  store i32 0, i32* %t2011
  %t2012 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 967
  store i32 0, i32* %t2012
  %t2013 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 968
  store i32 0, i32* %t2013
  %t2014 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 969
  store i32 0, i32* %t2014
  %t2015 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 970
  store i32 0, i32* %t2015
  %t2016 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 971
  store i32 0, i32* %t2016
  %t2017 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 972
  store i32 0, i32* %t2017
  %t2018 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 973
  store i32 0, i32* %t2018
  %t2019 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 974
  store i32 0, i32* %t2019
  %t2020 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 975
  store i32 0, i32* %t2020
  %t2021 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 976
  store i32 0, i32* %t2021
  %t2022 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 977
  store i32 0, i32* %t2022
  %t2023 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 978
  store i32 0, i32* %t2023
  %t2024 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 979
  store i32 0, i32* %t2024
  %t2025 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 980
  store i32 0, i32* %t2025
  %t2026 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 981
  store i32 0, i32* %t2026
  %t2027 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 982
  store i32 0, i32* %t2027
  %t2028 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 983
  store i32 0, i32* %t2028
  %t2029 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 984
  store i32 0, i32* %t2029
  %t2030 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 985
  store i32 0, i32* %t2030
  %t2031 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 986
  store i32 0, i32* %t2031
  %t2032 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 987
  store i32 0, i32* %t2032
  %t2033 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 988
  store i32 0, i32* %t2033
  %t2034 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 989
  store i32 0, i32* %t2034
  %t2035 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 990
  store i32 0, i32* %t2035
  %t2036 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 991
  store i32 0, i32* %t2036
  %t2037 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 992
  store i32 0, i32* %t2037
  %t2038 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 993
  store i32 0, i32* %t2038
  %t2039 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 994
  store i32 0, i32* %t2039
  %t2040 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 995
  store i32 0, i32* %t2040
  %t2041 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 996
  store i32 0, i32* %t2041
  %t2042 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 997
  store i32 0, i32* %t2042
  %t2043 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 998
  store i32 0, i32* %t2043
  %t2044 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 999
  store i32 0, i32* %t2044
  %t2045 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1000
  store i32 0, i32* %t2045
  %t2046 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1001
  store i32 0, i32* %t2046
  %t2047 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1002
  store i32 0, i32* %t2047
  %t2048 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1003
  store i32 0, i32* %t2048
  %t2049 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1004
  store i32 0, i32* %t2049
  %t2050 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1005
  store i32 0, i32* %t2050
  %t2051 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1006
  store i32 0, i32* %t2051
  %t2052 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1007
  store i32 0, i32* %t2052
  %t2053 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1008
  store i32 0, i32* %t2053
  %t2054 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1009
  store i32 0, i32* %t2054
  %t2055 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1010
  store i32 0, i32* %t2055
  %t2056 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1011
  store i32 0, i32* %t2056
  %t2057 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1012
  store i32 0, i32* %t2057
  %t2058 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1013
  store i32 0, i32* %t2058
  %t2059 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1014
  store i32 0, i32* %t2059
  %t2060 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1015
  store i32 0, i32* %t2060
  %t2061 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1016
  store i32 0, i32* %t2061
  %t2062 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1017
  store i32 0, i32* %t2062
  %t2063 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1018
  store i32 0, i32* %t2063
  %t2064 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1019
  store i32 0, i32* %t2064
  %t2065 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1020
  store i32 0, i32* %t2065
  %t2066 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1021
  store i32 0, i32* %t2066
  %t2067 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1022
  store i32 0, i32* %t2067
  %t2068 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 1, i64 1023
  store i32 0, i32* %t2068
  %t2069 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 0
  store i32 2, i32* %t2069
  %t2070 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1
  store i32 3, i32* %t2070
  %t2071 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 2
  store i32 0, i32* %t2071
  %t2072 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 3
  store i32 0, i32* %t2072
  %t2073 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 4
  store i32 0, i32* %t2073
  %t2074 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 5
  store i32 0, i32* %t2074
  %t2075 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 6
  store i32 0, i32* %t2075
  %t2076 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 7
  store i32 0, i32* %t2076
  %t2077 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 8
  store i32 0, i32* %t2077
  %t2078 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 9
  store i32 0, i32* %t2078
  %t2079 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 10
  store i32 0, i32* %t2079
  %t2080 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 11
  store i32 0, i32* %t2080
  %t2081 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 12
  store i32 0, i32* %t2081
  %t2082 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 13
  store i32 0, i32* %t2082
  %t2083 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 14
  store i32 0, i32* %t2083
  %t2084 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 15
  store i32 0, i32* %t2084
  %t2085 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 16
  store i32 0, i32* %t2085
  %t2086 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 17
  store i32 0, i32* %t2086
  %t2087 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 18
  store i32 0, i32* %t2087
  %t2088 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 19
  store i32 0, i32* %t2088
  %t2089 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 20
  store i32 0, i32* %t2089
  %t2090 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 21
  store i32 0, i32* %t2090
  %t2091 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 22
  store i32 0, i32* %t2091
  %t2092 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 23
  store i32 0, i32* %t2092
  %t2093 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 24
  store i32 0, i32* %t2093
  %t2094 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 25
  store i32 0, i32* %t2094
  %t2095 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 26
  store i32 0, i32* %t2095
  %t2096 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 27
  store i32 0, i32* %t2096
  %t2097 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 28
  store i32 0, i32* %t2097
  %t2098 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 29
  store i32 0, i32* %t2098
  %t2099 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 30
  store i32 0, i32* %t2099
  %t2100 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 31
  store i32 0, i32* %t2100
  %t2101 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 32
  store i32 0, i32* %t2101
  %t2102 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 33
  store i32 0, i32* %t2102
  %t2103 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 34
  store i32 0, i32* %t2103
  %t2104 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 35
  store i32 0, i32* %t2104
  %t2105 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 36
  store i32 0, i32* %t2105
  %t2106 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 37
  store i32 0, i32* %t2106
  %t2107 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 38
  store i32 0, i32* %t2107
  %t2108 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 39
  store i32 0, i32* %t2108
  %t2109 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 40
  store i32 0, i32* %t2109
  %t2110 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 41
  store i32 0, i32* %t2110
  %t2111 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 42
  store i32 0, i32* %t2111
  %t2112 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 43
  store i32 0, i32* %t2112
  %t2113 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 44
  store i32 0, i32* %t2113
  %t2114 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 45
  store i32 0, i32* %t2114
  %t2115 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 46
  store i32 0, i32* %t2115
  %t2116 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 47
  store i32 0, i32* %t2116
  %t2117 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 48
  store i32 0, i32* %t2117
  %t2118 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 49
  store i32 0, i32* %t2118
  %t2119 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 50
  store i32 0, i32* %t2119
  %t2120 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 51
  store i32 0, i32* %t2120
  %t2121 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 52
  store i32 0, i32* %t2121
  %t2122 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 53
  store i32 0, i32* %t2122
  %t2123 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 54
  store i32 0, i32* %t2123
  %t2124 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 55
  store i32 0, i32* %t2124
  %t2125 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 56
  store i32 0, i32* %t2125
  %t2126 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 57
  store i32 0, i32* %t2126
  %t2127 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 58
  store i32 0, i32* %t2127
  %t2128 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 59
  store i32 0, i32* %t2128
  %t2129 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 60
  store i32 0, i32* %t2129
  %t2130 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 61
  store i32 0, i32* %t2130
  %t2131 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 62
  store i32 0, i32* %t2131
  %t2132 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 63
  store i32 0, i32* %t2132
  %t2133 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 64
  store i32 0, i32* %t2133
  %t2134 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 65
  store i32 0, i32* %t2134
  %t2135 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 66
  store i32 0, i32* %t2135
  %t2136 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 67
  store i32 0, i32* %t2136
  %t2137 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 68
  store i32 0, i32* %t2137
  %t2138 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 69
  store i32 0, i32* %t2138
  %t2139 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 70
  store i32 0, i32* %t2139
  %t2140 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 71
  store i32 0, i32* %t2140
  %t2141 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 72
  store i32 0, i32* %t2141
  %t2142 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 73
  store i32 0, i32* %t2142
  %t2143 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 74
  store i32 0, i32* %t2143
  %t2144 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 75
  store i32 0, i32* %t2144
  %t2145 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 76
  store i32 0, i32* %t2145
  %t2146 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 77
  store i32 0, i32* %t2146
  %t2147 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 78
  store i32 0, i32* %t2147
  %t2148 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 79
  store i32 0, i32* %t2148
  %t2149 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 80
  store i32 0, i32* %t2149
  %t2150 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 81
  store i32 0, i32* %t2150
  %t2151 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 82
  store i32 0, i32* %t2151
  %t2152 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 83
  store i32 0, i32* %t2152
  %t2153 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 84
  store i32 0, i32* %t2153
  %t2154 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 85
  store i32 0, i32* %t2154
  %t2155 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 86
  store i32 0, i32* %t2155
  %t2156 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 87
  store i32 0, i32* %t2156
  %t2157 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 88
  store i32 0, i32* %t2157
  %t2158 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 89
  store i32 0, i32* %t2158
  %t2159 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 90
  store i32 0, i32* %t2159
  %t2160 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 91
  store i32 0, i32* %t2160
  %t2161 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 92
  store i32 0, i32* %t2161
  %t2162 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 93
  store i32 0, i32* %t2162
  %t2163 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 94
  store i32 0, i32* %t2163
  %t2164 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 95
  store i32 0, i32* %t2164
  %t2165 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 96
  store i32 0, i32* %t2165
  %t2166 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 97
  store i32 0, i32* %t2166
  %t2167 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 98
  store i32 0, i32* %t2167
  %t2168 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 99
  store i32 0, i32* %t2168
  %t2169 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 100
  store i32 0, i32* %t2169
  %t2170 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 101
  store i32 0, i32* %t2170
  %t2171 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 102
  store i32 0, i32* %t2171
  %t2172 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 103
  store i32 0, i32* %t2172
  %t2173 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 104
  store i32 0, i32* %t2173
  %t2174 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 105
  store i32 0, i32* %t2174
  %t2175 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 106
  store i32 0, i32* %t2175
  %t2176 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 107
  store i32 0, i32* %t2176
  %t2177 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 108
  store i32 0, i32* %t2177
  %t2178 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 109
  store i32 0, i32* %t2178
  %t2179 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 110
  store i32 0, i32* %t2179
  %t2180 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 111
  store i32 0, i32* %t2180
  %t2181 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 112
  store i32 0, i32* %t2181
  %t2182 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 113
  store i32 0, i32* %t2182
  %t2183 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 114
  store i32 0, i32* %t2183
  %t2184 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 115
  store i32 0, i32* %t2184
  %t2185 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 116
  store i32 0, i32* %t2185
  %t2186 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 117
  store i32 0, i32* %t2186
  %t2187 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 118
  store i32 0, i32* %t2187
  %t2188 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 119
  store i32 0, i32* %t2188
  %t2189 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 120
  store i32 0, i32* %t2189
  %t2190 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 121
  store i32 0, i32* %t2190
  %t2191 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 122
  store i32 0, i32* %t2191
  %t2192 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 123
  store i32 0, i32* %t2192
  %t2193 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 124
  store i32 0, i32* %t2193
  %t2194 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 125
  store i32 0, i32* %t2194
  %t2195 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 126
  store i32 0, i32* %t2195
  %t2196 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 127
  store i32 0, i32* %t2196
  %t2197 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 128
  store i32 0, i32* %t2197
  %t2198 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 129
  store i32 0, i32* %t2198
  %t2199 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 130
  store i32 0, i32* %t2199
  %t2200 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 131
  store i32 0, i32* %t2200
  %t2201 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 132
  store i32 0, i32* %t2201
  %t2202 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 133
  store i32 0, i32* %t2202
  %t2203 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 134
  store i32 0, i32* %t2203
  %t2204 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 135
  store i32 0, i32* %t2204
  %t2205 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 136
  store i32 0, i32* %t2205
  %t2206 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 137
  store i32 0, i32* %t2206
  %t2207 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 138
  store i32 0, i32* %t2207
  %t2208 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 139
  store i32 0, i32* %t2208
  %t2209 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 140
  store i32 0, i32* %t2209
  %t2210 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 141
  store i32 0, i32* %t2210
  %t2211 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 142
  store i32 0, i32* %t2211
  %t2212 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 143
  store i32 0, i32* %t2212
  %t2213 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 144
  store i32 0, i32* %t2213
  %t2214 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 145
  store i32 0, i32* %t2214
  %t2215 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 146
  store i32 0, i32* %t2215
  %t2216 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 147
  store i32 0, i32* %t2216
  %t2217 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 148
  store i32 0, i32* %t2217
  %t2218 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 149
  store i32 0, i32* %t2218
  %t2219 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 150
  store i32 0, i32* %t2219
  %t2220 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 151
  store i32 0, i32* %t2220
  %t2221 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 152
  store i32 0, i32* %t2221
  %t2222 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 153
  store i32 0, i32* %t2222
  %t2223 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 154
  store i32 0, i32* %t2223
  %t2224 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 155
  store i32 0, i32* %t2224
  %t2225 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 156
  store i32 0, i32* %t2225
  %t2226 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 157
  store i32 0, i32* %t2226
  %t2227 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 158
  store i32 0, i32* %t2227
  %t2228 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 159
  store i32 0, i32* %t2228
  %t2229 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 160
  store i32 0, i32* %t2229
  %t2230 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 161
  store i32 0, i32* %t2230
  %t2231 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 162
  store i32 0, i32* %t2231
  %t2232 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 163
  store i32 0, i32* %t2232
  %t2233 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 164
  store i32 0, i32* %t2233
  %t2234 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 165
  store i32 0, i32* %t2234
  %t2235 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 166
  store i32 0, i32* %t2235
  %t2236 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 167
  store i32 0, i32* %t2236
  %t2237 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 168
  store i32 0, i32* %t2237
  %t2238 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 169
  store i32 0, i32* %t2238
  %t2239 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 170
  store i32 0, i32* %t2239
  %t2240 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 171
  store i32 0, i32* %t2240
  %t2241 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 172
  store i32 0, i32* %t2241
  %t2242 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 173
  store i32 0, i32* %t2242
  %t2243 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 174
  store i32 0, i32* %t2243
  %t2244 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 175
  store i32 0, i32* %t2244
  %t2245 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 176
  store i32 0, i32* %t2245
  %t2246 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 177
  store i32 0, i32* %t2246
  %t2247 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 178
  store i32 0, i32* %t2247
  %t2248 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 179
  store i32 0, i32* %t2248
  %t2249 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 180
  store i32 0, i32* %t2249
  %t2250 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 181
  store i32 0, i32* %t2250
  %t2251 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 182
  store i32 0, i32* %t2251
  %t2252 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 183
  store i32 0, i32* %t2252
  %t2253 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 184
  store i32 0, i32* %t2253
  %t2254 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 185
  store i32 0, i32* %t2254
  %t2255 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 186
  store i32 0, i32* %t2255
  %t2256 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 187
  store i32 0, i32* %t2256
  %t2257 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 188
  store i32 0, i32* %t2257
  %t2258 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 189
  store i32 0, i32* %t2258
  %t2259 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 190
  store i32 0, i32* %t2259
  %t2260 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 191
  store i32 0, i32* %t2260
  %t2261 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 192
  store i32 0, i32* %t2261
  %t2262 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 193
  store i32 0, i32* %t2262
  %t2263 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 194
  store i32 0, i32* %t2263
  %t2264 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 195
  store i32 0, i32* %t2264
  %t2265 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 196
  store i32 0, i32* %t2265
  %t2266 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 197
  store i32 0, i32* %t2266
  %t2267 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 198
  store i32 0, i32* %t2267
  %t2268 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 199
  store i32 0, i32* %t2268
  %t2269 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 200
  store i32 0, i32* %t2269
  %t2270 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 201
  store i32 0, i32* %t2270
  %t2271 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 202
  store i32 0, i32* %t2271
  %t2272 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 203
  store i32 0, i32* %t2272
  %t2273 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 204
  store i32 0, i32* %t2273
  %t2274 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 205
  store i32 0, i32* %t2274
  %t2275 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 206
  store i32 0, i32* %t2275
  %t2276 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 207
  store i32 0, i32* %t2276
  %t2277 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 208
  store i32 0, i32* %t2277
  %t2278 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 209
  store i32 0, i32* %t2278
  %t2279 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 210
  store i32 0, i32* %t2279
  %t2280 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 211
  store i32 0, i32* %t2280
  %t2281 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 212
  store i32 0, i32* %t2281
  %t2282 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 213
  store i32 0, i32* %t2282
  %t2283 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 214
  store i32 0, i32* %t2283
  %t2284 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 215
  store i32 0, i32* %t2284
  %t2285 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 216
  store i32 0, i32* %t2285
  %t2286 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 217
  store i32 0, i32* %t2286
  %t2287 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 218
  store i32 0, i32* %t2287
  %t2288 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 219
  store i32 0, i32* %t2288
  %t2289 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 220
  store i32 0, i32* %t2289
  %t2290 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 221
  store i32 0, i32* %t2290
  %t2291 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 222
  store i32 0, i32* %t2291
  %t2292 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 223
  store i32 0, i32* %t2292
  %t2293 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 224
  store i32 0, i32* %t2293
  %t2294 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 225
  store i32 0, i32* %t2294
  %t2295 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 226
  store i32 0, i32* %t2295
  %t2296 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 227
  store i32 0, i32* %t2296
  %t2297 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 228
  store i32 0, i32* %t2297
  %t2298 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 229
  store i32 0, i32* %t2298
  %t2299 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 230
  store i32 0, i32* %t2299
  %t2300 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 231
  store i32 0, i32* %t2300
  %t2301 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 232
  store i32 0, i32* %t2301
  %t2302 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 233
  store i32 0, i32* %t2302
  %t2303 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 234
  store i32 0, i32* %t2303
  %t2304 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 235
  store i32 0, i32* %t2304
  %t2305 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 236
  store i32 0, i32* %t2305
  %t2306 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 237
  store i32 0, i32* %t2306
  %t2307 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 238
  store i32 0, i32* %t2307
  %t2308 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 239
  store i32 0, i32* %t2308
  %t2309 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 240
  store i32 0, i32* %t2309
  %t2310 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 241
  store i32 0, i32* %t2310
  %t2311 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 242
  store i32 0, i32* %t2311
  %t2312 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 243
  store i32 0, i32* %t2312
  %t2313 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 244
  store i32 0, i32* %t2313
  %t2314 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 245
  store i32 0, i32* %t2314
  %t2315 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 246
  store i32 0, i32* %t2315
  %t2316 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 247
  store i32 0, i32* %t2316
  %t2317 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 248
  store i32 0, i32* %t2317
  %t2318 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 249
  store i32 0, i32* %t2318
  %t2319 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 250
  store i32 0, i32* %t2319
  %t2320 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 251
  store i32 0, i32* %t2320
  %t2321 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 252
  store i32 0, i32* %t2321
  %t2322 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 253
  store i32 0, i32* %t2322
  %t2323 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 254
  store i32 0, i32* %t2323
  %t2324 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 255
  store i32 0, i32* %t2324
  %t2325 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 256
  store i32 0, i32* %t2325
  %t2326 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 257
  store i32 0, i32* %t2326
  %t2327 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 258
  store i32 0, i32* %t2327
  %t2328 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 259
  store i32 0, i32* %t2328
  %t2329 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 260
  store i32 0, i32* %t2329
  %t2330 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 261
  store i32 0, i32* %t2330
  %t2331 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 262
  store i32 0, i32* %t2331
  %t2332 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 263
  store i32 0, i32* %t2332
  %t2333 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 264
  store i32 0, i32* %t2333
  %t2334 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 265
  store i32 0, i32* %t2334
  %t2335 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 266
  store i32 0, i32* %t2335
  %t2336 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 267
  store i32 0, i32* %t2336
  %t2337 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 268
  store i32 0, i32* %t2337
  %t2338 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 269
  store i32 0, i32* %t2338
  %t2339 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 270
  store i32 0, i32* %t2339
  %t2340 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 271
  store i32 0, i32* %t2340
  %t2341 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 272
  store i32 0, i32* %t2341
  %t2342 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 273
  store i32 0, i32* %t2342
  %t2343 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 274
  store i32 0, i32* %t2343
  %t2344 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 275
  store i32 0, i32* %t2344
  %t2345 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 276
  store i32 0, i32* %t2345
  %t2346 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 277
  store i32 0, i32* %t2346
  %t2347 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 278
  store i32 0, i32* %t2347
  %t2348 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 279
  store i32 0, i32* %t2348
  %t2349 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 280
  store i32 0, i32* %t2349
  %t2350 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 281
  store i32 0, i32* %t2350
  %t2351 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 282
  store i32 0, i32* %t2351
  %t2352 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 283
  store i32 0, i32* %t2352
  %t2353 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 284
  store i32 0, i32* %t2353
  %t2354 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 285
  store i32 0, i32* %t2354
  %t2355 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 286
  store i32 0, i32* %t2355
  %t2356 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 287
  store i32 0, i32* %t2356
  %t2357 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 288
  store i32 0, i32* %t2357
  %t2358 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 289
  store i32 0, i32* %t2358
  %t2359 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 290
  store i32 0, i32* %t2359
  %t2360 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 291
  store i32 0, i32* %t2360
  %t2361 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 292
  store i32 0, i32* %t2361
  %t2362 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 293
  store i32 0, i32* %t2362
  %t2363 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 294
  store i32 0, i32* %t2363
  %t2364 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 295
  store i32 0, i32* %t2364
  %t2365 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 296
  store i32 0, i32* %t2365
  %t2366 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 297
  store i32 0, i32* %t2366
  %t2367 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 298
  store i32 0, i32* %t2367
  %t2368 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 299
  store i32 0, i32* %t2368
  %t2369 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 300
  store i32 0, i32* %t2369
  %t2370 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 301
  store i32 0, i32* %t2370
  %t2371 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 302
  store i32 0, i32* %t2371
  %t2372 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 303
  store i32 0, i32* %t2372
  %t2373 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 304
  store i32 0, i32* %t2373
  %t2374 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 305
  store i32 0, i32* %t2374
  %t2375 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 306
  store i32 0, i32* %t2375
  %t2376 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 307
  store i32 0, i32* %t2376
  %t2377 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 308
  store i32 0, i32* %t2377
  %t2378 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 309
  store i32 0, i32* %t2378
  %t2379 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 310
  store i32 0, i32* %t2379
  %t2380 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 311
  store i32 0, i32* %t2380
  %t2381 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 312
  store i32 0, i32* %t2381
  %t2382 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 313
  store i32 0, i32* %t2382
  %t2383 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 314
  store i32 0, i32* %t2383
  %t2384 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 315
  store i32 0, i32* %t2384
  %t2385 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 316
  store i32 0, i32* %t2385
  %t2386 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 317
  store i32 0, i32* %t2386
  %t2387 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 318
  store i32 0, i32* %t2387
  %t2388 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 319
  store i32 0, i32* %t2388
  %t2389 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 320
  store i32 0, i32* %t2389
  %t2390 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 321
  store i32 0, i32* %t2390
  %t2391 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 322
  store i32 0, i32* %t2391
  %t2392 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 323
  store i32 0, i32* %t2392
  %t2393 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 324
  store i32 0, i32* %t2393
  %t2394 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 325
  store i32 0, i32* %t2394
  %t2395 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 326
  store i32 0, i32* %t2395
  %t2396 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 327
  store i32 0, i32* %t2396
  %t2397 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 328
  store i32 0, i32* %t2397
  %t2398 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 329
  store i32 0, i32* %t2398
  %t2399 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 330
  store i32 0, i32* %t2399
  %t2400 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 331
  store i32 0, i32* %t2400
  %t2401 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 332
  store i32 0, i32* %t2401
  %t2402 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 333
  store i32 0, i32* %t2402
  %t2403 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 334
  store i32 0, i32* %t2403
  %t2404 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 335
  store i32 0, i32* %t2404
  %t2405 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 336
  store i32 0, i32* %t2405
  %t2406 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 337
  store i32 0, i32* %t2406
  %t2407 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 338
  store i32 0, i32* %t2407
  %t2408 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 339
  store i32 0, i32* %t2408
  %t2409 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 340
  store i32 0, i32* %t2409
  %t2410 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 341
  store i32 0, i32* %t2410
  %t2411 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 342
  store i32 0, i32* %t2411
  %t2412 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 343
  store i32 0, i32* %t2412
  %t2413 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 344
  store i32 0, i32* %t2413
  %t2414 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 345
  store i32 0, i32* %t2414
  %t2415 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 346
  store i32 0, i32* %t2415
  %t2416 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 347
  store i32 0, i32* %t2416
  %t2417 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 348
  store i32 0, i32* %t2417
  %t2418 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 349
  store i32 0, i32* %t2418
  %t2419 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 350
  store i32 0, i32* %t2419
  %t2420 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 351
  store i32 0, i32* %t2420
  %t2421 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 352
  store i32 0, i32* %t2421
  %t2422 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 353
  store i32 0, i32* %t2422
  %t2423 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 354
  store i32 0, i32* %t2423
  %t2424 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 355
  store i32 0, i32* %t2424
  %t2425 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 356
  store i32 0, i32* %t2425
  %t2426 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 357
  store i32 0, i32* %t2426
  %t2427 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 358
  store i32 0, i32* %t2427
  %t2428 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 359
  store i32 0, i32* %t2428
  %t2429 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 360
  store i32 0, i32* %t2429
  %t2430 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 361
  store i32 0, i32* %t2430
  %t2431 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 362
  store i32 0, i32* %t2431
  %t2432 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 363
  store i32 0, i32* %t2432
  %t2433 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 364
  store i32 0, i32* %t2433
  %t2434 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 365
  store i32 0, i32* %t2434
  %t2435 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 366
  store i32 0, i32* %t2435
  %t2436 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 367
  store i32 0, i32* %t2436
  %t2437 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 368
  store i32 0, i32* %t2437
  %t2438 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 369
  store i32 0, i32* %t2438
  %t2439 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 370
  store i32 0, i32* %t2439
  %t2440 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 371
  store i32 0, i32* %t2440
  %t2441 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 372
  store i32 0, i32* %t2441
  %t2442 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 373
  store i32 0, i32* %t2442
  %t2443 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 374
  store i32 0, i32* %t2443
  %t2444 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 375
  store i32 0, i32* %t2444
  %t2445 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 376
  store i32 0, i32* %t2445
  %t2446 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 377
  store i32 0, i32* %t2446
  %t2447 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 378
  store i32 0, i32* %t2447
  %t2448 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 379
  store i32 0, i32* %t2448
  %t2449 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 380
  store i32 0, i32* %t2449
  %t2450 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 381
  store i32 0, i32* %t2450
  %t2451 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 382
  store i32 0, i32* %t2451
  %t2452 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 383
  store i32 0, i32* %t2452
  %t2453 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 384
  store i32 0, i32* %t2453
  %t2454 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 385
  store i32 0, i32* %t2454
  %t2455 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 386
  store i32 0, i32* %t2455
  %t2456 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 387
  store i32 0, i32* %t2456
  %t2457 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 388
  store i32 0, i32* %t2457
  %t2458 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 389
  store i32 0, i32* %t2458
  %t2459 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 390
  store i32 0, i32* %t2459
  %t2460 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 391
  store i32 0, i32* %t2460
  %t2461 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 392
  store i32 0, i32* %t2461
  %t2462 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 393
  store i32 0, i32* %t2462
  %t2463 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 394
  store i32 0, i32* %t2463
  %t2464 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 395
  store i32 0, i32* %t2464
  %t2465 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 396
  store i32 0, i32* %t2465
  %t2466 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 397
  store i32 0, i32* %t2466
  %t2467 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 398
  store i32 0, i32* %t2467
  %t2468 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 399
  store i32 0, i32* %t2468
  %t2469 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 400
  store i32 0, i32* %t2469
  %t2470 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 401
  store i32 0, i32* %t2470
  %t2471 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 402
  store i32 0, i32* %t2471
  %t2472 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 403
  store i32 0, i32* %t2472
  %t2473 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 404
  store i32 0, i32* %t2473
  %t2474 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 405
  store i32 0, i32* %t2474
  %t2475 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 406
  store i32 0, i32* %t2475
  %t2476 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 407
  store i32 0, i32* %t2476
  %t2477 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 408
  store i32 0, i32* %t2477
  %t2478 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 409
  store i32 0, i32* %t2478
  %t2479 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 410
  store i32 0, i32* %t2479
  %t2480 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 411
  store i32 0, i32* %t2480
  %t2481 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 412
  store i32 0, i32* %t2481
  %t2482 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 413
  store i32 0, i32* %t2482
  %t2483 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 414
  store i32 0, i32* %t2483
  %t2484 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 415
  store i32 0, i32* %t2484
  %t2485 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 416
  store i32 0, i32* %t2485
  %t2486 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 417
  store i32 0, i32* %t2486
  %t2487 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 418
  store i32 0, i32* %t2487
  %t2488 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 419
  store i32 0, i32* %t2488
  %t2489 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 420
  store i32 0, i32* %t2489
  %t2490 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 421
  store i32 0, i32* %t2490
  %t2491 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 422
  store i32 0, i32* %t2491
  %t2492 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 423
  store i32 0, i32* %t2492
  %t2493 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 424
  store i32 0, i32* %t2493
  %t2494 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 425
  store i32 0, i32* %t2494
  %t2495 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 426
  store i32 0, i32* %t2495
  %t2496 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 427
  store i32 0, i32* %t2496
  %t2497 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 428
  store i32 0, i32* %t2497
  %t2498 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 429
  store i32 0, i32* %t2498
  %t2499 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 430
  store i32 0, i32* %t2499
  %t2500 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 431
  store i32 0, i32* %t2500
  %t2501 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 432
  store i32 0, i32* %t2501
  %t2502 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 433
  store i32 0, i32* %t2502
  %t2503 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 434
  store i32 0, i32* %t2503
  %t2504 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 435
  store i32 0, i32* %t2504
  %t2505 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 436
  store i32 0, i32* %t2505
  %t2506 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 437
  store i32 0, i32* %t2506
  %t2507 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 438
  store i32 0, i32* %t2507
  %t2508 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 439
  store i32 0, i32* %t2508
  %t2509 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 440
  store i32 0, i32* %t2509
  %t2510 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 441
  store i32 0, i32* %t2510
  %t2511 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 442
  store i32 0, i32* %t2511
  %t2512 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 443
  store i32 0, i32* %t2512
  %t2513 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 444
  store i32 0, i32* %t2513
  %t2514 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 445
  store i32 0, i32* %t2514
  %t2515 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 446
  store i32 0, i32* %t2515
  %t2516 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 447
  store i32 0, i32* %t2516
  %t2517 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 448
  store i32 0, i32* %t2517
  %t2518 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 449
  store i32 0, i32* %t2518
  %t2519 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 450
  store i32 0, i32* %t2519
  %t2520 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 451
  store i32 0, i32* %t2520
  %t2521 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 452
  store i32 0, i32* %t2521
  %t2522 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 453
  store i32 0, i32* %t2522
  %t2523 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 454
  store i32 0, i32* %t2523
  %t2524 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 455
  store i32 0, i32* %t2524
  %t2525 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 456
  store i32 0, i32* %t2525
  %t2526 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 457
  store i32 0, i32* %t2526
  %t2527 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 458
  store i32 0, i32* %t2527
  %t2528 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 459
  store i32 0, i32* %t2528
  %t2529 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 460
  store i32 0, i32* %t2529
  %t2530 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 461
  store i32 0, i32* %t2530
  %t2531 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 462
  store i32 0, i32* %t2531
  %t2532 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 463
  store i32 0, i32* %t2532
  %t2533 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 464
  store i32 0, i32* %t2533
  %t2534 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 465
  store i32 0, i32* %t2534
  %t2535 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 466
  store i32 0, i32* %t2535
  %t2536 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 467
  store i32 0, i32* %t2536
  %t2537 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 468
  store i32 0, i32* %t2537
  %t2538 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 469
  store i32 0, i32* %t2538
  %t2539 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 470
  store i32 0, i32* %t2539
  %t2540 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 471
  store i32 0, i32* %t2540
  %t2541 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 472
  store i32 0, i32* %t2541
  %t2542 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 473
  store i32 0, i32* %t2542
  %t2543 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 474
  store i32 0, i32* %t2543
  %t2544 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 475
  store i32 0, i32* %t2544
  %t2545 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 476
  store i32 0, i32* %t2545
  %t2546 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 477
  store i32 0, i32* %t2546
  %t2547 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 478
  store i32 0, i32* %t2547
  %t2548 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 479
  store i32 0, i32* %t2548
  %t2549 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 480
  store i32 0, i32* %t2549
  %t2550 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 481
  store i32 0, i32* %t2550
  %t2551 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 482
  store i32 0, i32* %t2551
  %t2552 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 483
  store i32 0, i32* %t2552
  %t2553 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 484
  store i32 0, i32* %t2553
  %t2554 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 485
  store i32 0, i32* %t2554
  %t2555 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 486
  store i32 0, i32* %t2555
  %t2556 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 487
  store i32 0, i32* %t2556
  %t2557 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 488
  store i32 0, i32* %t2557
  %t2558 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 489
  store i32 0, i32* %t2558
  %t2559 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 490
  store i32 0, i32* %t2559
  %t2560 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 491
  store i32 0, i32* %t2560
  %t2561 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 492
  store i32 0, i32* %t2561
  %t2562 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 493
  store i32 0, i32* %t2562
  %t2563 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 494
  store i32 0, i32* %t2563
  %t2564 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 495
  store i32 0, i32* %t2564
  %t2565 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 496
  store i32 0, i32* %t2565
  %t2566 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 497
  store i32 0, i32* %t2566
  %t2567 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 498
  store i32 0, i32* %t2567
  %t2568 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 499
  store i32 0, i32* %t2568
  %t2569 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 500
  store i32 0, i32* %t2569
  %t2570 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 501
  store i32 0, i32* %t2570
  %t2571 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 502
  store i32 0, i32* %t2571
  %t2572 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 503
  store i32 0, i32* %t2572
  %t2573 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 504
  store i32 0, i32* %t2573
  %t2574 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 505
  store i32 0, i32* %t2574
  %t2575 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 506
  store i32 0, i32* %t2575
  %t2576 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 507
  store i32 0, i32* %t2576
  %t2577 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 508
  store i32 0, i32* %t2577
  %t2578 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 509
  store i32 0, i32* %t2578
  %t2579 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 510
  store i32 0, i32* %t2579
  %t2580 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 511
  store i32 0, i32* %t2580
  %t2581 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 512
  store i32 0, i32* %t2581
  %t2582 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 513
  store i32 0, i32* %t2582
  %t2583 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 514
  store i32 0, i32* %t2583
  %t2584 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 515
  store i32 0, i32* %t2584
  %t2585 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 516
  store i32 0, i32* %t2585
  %t2586 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 517
  store i32 0, i32* %t2586
  %t2587 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 518
  store i32 0, i32* %t2587
  %t2588 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 519
  store i32 0, i32* %t2588
  %t2589 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 520
  store i32 0, i32* %t2589
  %t2590 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 521
  store i32 0, i32* %t2590
  %t2591 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 522
  store i32 0, i32* %t2591
  %t2592 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 523
  store i32 0, i32* %t2592
  %t2593 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 524
  store i32 0, i32* %t2593
  %t2594 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 525
  store i32 0, i32* %t2594
  %t2595 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 526
  store i32 0, i32* %t2595
  %t2596 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 527
  store i32 0, i32* %t2596
  %t2597 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 528
  store i32 0, i32* %t2597
  %t2598 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 529
  store i32 0, i32* %t2598
  %t2599 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 530
  store i32 0, i32* %t2599
  %t2600 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 531
  store i32 0, i32* %t2600
  %t2601 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 532
  store i32 0, i32* %t2601
  %t2602 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 533
  store i32 0, i32* %t2602
  %t2603 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 534
  store i32 0, i32* %t2603
  %t2604 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 535
  store i32 0, i32* %t2604
  %t2605 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 536
  store i32 0, i32* %t2605
  %t2606 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 537
  store i32 0, i32* %t2606
  %t2607 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 538
  store i32 0, i32* %t2607
  %t2608 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 539
  store i32 0, i32* %t2608
  %t2609 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 540
  store i32 0, i32* %t2609
  %t2610 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 541
  store i32 0, i32* %t2610
  %t2611 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 542
  store i32 0, i32* %t2611
  %t2612 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 543
  store i32 0, i32* %t2612
  %t2613 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 544
  store i32 0, i32* %t2613
  %t2614 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 545
  store i32 0, i32* %t2614
  %t2615 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 546
  store i32 0, i32* %t2615
  %t2616 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 547
  store i32 0, i32* %t2616
  %t2617 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 548
  store i32 0, i32* %t2617
  %t2618 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 549
  store i32 0, i32* %t2618
  %t2619 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 550
  store i32 0, i32* %t2619
  %t2620 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 551
  store i32 0, i32* %t2620
  %t2621 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 552
  store i32 0, i32* %t2621
  %t2622 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 553
  store i32 0, i32* %t2622
  %t2623 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 554
  store i32 0, i32* %t2623
  %t2624 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 555
  store i32 0, i32* %t2624
  %t2625 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 556
  store i32 0, i32* %t2625
  %t2626 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 557
  store i32 0, i32* %t2626
  %t2627 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 558
  store i32 0, i32* %t2627
  %t2628 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 559
  store i32 0, i32* %t2628
  %t2629 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 560
  store i32 0, i32* %t2629
  %t2630 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 561
  store i32 0, i32* %t2630
  %t2631 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 562
  store i32 0, i32* %t2631
  %t2632 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 563
  store i32 0, i32* %t2632
  %t2633 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 564
  store i32 0, i32* %t2633
  %t2634 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 565
  store i32 0, i32* %t2634
  %t2635 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 566
  store i32 0, i32* %t2635
  %t2636 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 567
  store i32 0, i32* %t2636
  %t2637 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 568
  store i32 0, i32* %t2637
  %t2638 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 569
  store i32 0, i32* %t2638
  %t2639 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 570
  store i32 0, i32* %t2639
  %t2640 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 571
  store i32 0, i32* %t2640
  %t2641 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 572
  store i32 0, i32* %t2641
  %t2642 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 573
  store i32 0, i32* %t2642
  %t2643 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 574
  store i32 0, i32* %t2643
  %t2644 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 575
  store i32 0, i32* %t2644
  %t2645 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 576
  store i32 0, i32* %t2645
  %t2646 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 577
  store i32 0, i32* %t2646
  %t2647 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 578
  store i32 0, i32* %t2647
  %t2648 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 579
  store i32 0, i32* %t2648
  %t2649 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 580
  store i32 0, i32* %t2649
  %t2650 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 581
  store i32 0, i32* %t2650
  %t2651 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 582
  store i32 0, i32* %t2651
  %t2652 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 583
  store i32 0, i32* %t2652
  %t2653 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 584
  store i32 0, i32* %t2653
  %t2654 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 585
  store i32 0, i32* %t2654
  %t2655 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 586
  store i32 0, i32* %t2655
  %t2656 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 587
  store i32 0, i32* %t2656
  %t2657 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 588
  store i32 0, i32* %t2657
  %t2658 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 589
  store i32 0, i32* %t2658
  %t2659 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 590
  store i32 0, i32* %t2659
  %t2660 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 591
  store i32 0, i32* %t2660
  %t2661 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 592
  store i32 0, i32* %t2661
  %t2662 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 593
  store i32 0, i32* %t2662
  %t2663 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 594
  store i32 0, i32* %t2663
  %t2664 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 595
  store i32 0, i32* %t2664
  %t2665 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 596
  store i32 0, i32* %t2665
  %t2666 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 597
  store i32 0, i32* %t2666
  %t2667 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 598
  store i32 0, i32* %t2667
  %t2668 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 599
  store i32 0, i32* %t2668
  %t2669 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 600
  store i32 0, i32* %t2669
  %t2670 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 601
  store i32 0, i32* %t2670
  %t2671 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 602
  store i32 0, i32* %t2671
  %t2672 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 603
  store i32 0, i32* %t2672
  %t2673 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 604
  store i32 0, i32* %t2673
  %t2674 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 605
  store i32 0, i32* %t2674
  %t2675 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 606
  store i32 0, i32* %t2675
  %t2676 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 607
  store i32 0, i32* %t2676
  %t2677 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 608
  store i32 0, i32* %t2677
  %t2678 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 609
  store i32 0, i32* %t2678
  %t2679 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 610
  store i32 0, i32* %t2679
  %t2680 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 611
  store i32 0, i32* %t2680
  %t2681 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 612
  store i32 0, i32* %t2681
  %t2682 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 613
  store i32 0, i32* %t2682
  %t2683 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 614
  store i32 0, i32* %t2683
  %t2684 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 615
  store i32 0, i32* %t2684
  %t2685 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 616
  store i32 0, i32* %t2685
  %t2686 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 617
  store i32 0, i32* %t2686
  %t2687 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 618
  store i32 0, i32* %t2687
  %t2688 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 619
  store i32 0, i32* %t2688
  %t2689 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 620
  store i32 0, i32* %t2689
  %t2690 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 621
  store i32 0, i32* %t2690
  %t2691 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 622
  store i32 0, i32* %t2691
  %t2692 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 623
  store i32 0, i32* %t2692
  %t2693 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 624
  store i32 0, i32* %t2693
  %t2694 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 625
  store i32 0, i32* %t2694
  %t2695 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 626
  store i32 0, i32* %t2695
  %t2696 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 627
  store i32 0, i32* %t2696
  %t2697 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 628
  store i32 0, i32* %t2697
  %t2698 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 629
  store i32 0, i32* %t2698
  %t2699 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 630
  store i32 0, i32* %t2699
  %t2700 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 631
  store i32 0, i32* %t2700
  %t2701 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 632
  store i32 0, i32* %t2701
  %t2702 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 633
  store i32 0, i32* %t2702
  %t2703 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 634
  store i32 0, i32* %t2703
  %t2704 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 635
  store i32 0, i32* %t2704
  %t2705 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 636
  store i32 0, i32* %t2705
  %t2706 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 637
  store i32 0, i32* %t2706
  %t2707 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 638
  store i32 0, i32* %t2707
  %t2708 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 639
  store i32 0, i32* %t2708
  %t2709 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 640
  store i32 0, i32* %t2709
  %t2710 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 641
  store i32 0, i32* %t2710
  %t2711 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 642
  store i32 0, i32* %t2711
  %t2712 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 643
  store i32 0, i32* %t2712
  %t2713 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 644
  store i32 0, i32* %t2713
  %t2714 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 645
  store i32 0, i32* %t2714
  %t2715 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 646
  store i32 0, i32* %t2715
  %t2716 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 647
  store i32 0, i32* %t2716
  %t2717 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 648
  store i32 0, i32* %t2717
  %t2718 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 649
  store i32 0, i32* %t2718
  %t2719 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 650
  store i32 0, i32* %t2719
  %t2720 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 651
  store i32 0, i32* %t2720
  %t2721 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 652
  store i32 0, i32* %t2721
  %t2722 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 653
  store i32 0, i32* %t2722
  %t2723 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 654
  store i32 0, i32* %t2723
  %t2724 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 655
  store i32 0, i32* %t2724
  %t2725 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 656
  store i32 0, i32* %t2725
  %t2726 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 657
  store i32 0, i32* %t2726
  %t2727 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 658
  store i32 0, i32* %t2727
  %t2728 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 659
  store i32 0, i32* %t2728
  %t2729 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 660
  store i32 0, i32* %t2729
  %t2730 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 661
  store i32 0, i32* %t2730
  %t2731 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 662
  store i32 0, i32* %t2731
  %t2732 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 663
  store i32 0, i32* %t2732
  %t2733 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 664
  store i32 0, i32* %t2733
  %t2734 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 665
  store i32 0, i32* %t2734
  %t2735 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 666
  store i32 0, i32* %t2735
  %t2736 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 667
  store i32 0, i32* %t2736
  %t2737 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 668
  store i32 0, i32* %t2737
  %t2738 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 669
  store i32 0, i32* %t2738
  %t2739 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 670
  store i32 0, i32* %t2739
  %t2740 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 671
  store i32 0, i32* %t2740
  %t2741 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 672
  store i32 0, i32* %t2741
  %t2742 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 673
  store i32 0, i32* %t2742
  %t2743 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 674
  store i32 0, i32* %t2743
  %t2744 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 675
  store i32 0, i32* %t2744
  %t2745 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 676
  store i32 0, i32* %t2745
  %t2746 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 677
  store i32 0, i32* %t2746
  %t2747 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 678
  store i32 0, i32* %t2747
  %t2748 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 679
  store i32 0, i32* %t2748
  %t2749 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 680
  store i32 0, i32* %t2749
  %t2750 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 681
  store i32 0, i32* %t2750
  %t2751 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 682
  store i32 0, i32* %t2751
  %t2752 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 683
  store i32 0, i32* %t2752
  %t2753 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 684
  store i32 0, i32* %t2753
  %t2754 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 685
  store i32 0, i32* %t2754
  %t2755 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 686
  store i32 0, i32* %t2755
  %t2756 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 687
  store i32 0, i32* %t2756
  %t2757 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 688
  store i32 0, i32* %t2757
  %t2758 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 689
  store i32 0, i32* %t2758
  %t2759 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 690
  store i32 0, i32* %t2759
  %t2760 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 691
  store i32 0, i32* %t2760
  %t2761 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 692
  store i32 0, i32* %t2761
  %t2762 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 693
  store i32 0, i32* %t2762
  %t2763 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 694
  store i32 0, i32* %t2763
  %t2764 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 695
  store i32 0, i32* %t2764
  %t2765 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 696
  store i32 0, i32* %t2765
  %t2766 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 697
  store i32 0, i32* %t2766
  %t2767 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 698
  store i32 0, i32* %t2767
  %t2768 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 699
  store i32 0, i32* %t2768
  %t2769 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 700
  store i32 0, i32* %t2769
  %t2770 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 701
  store i32 0, i32* %t2770
  %t2771 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 702
  store i32 0, i32* %t2771
  %t2772 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 703
  store i32 0, i32* %t2772
  %t2773 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 704
  store i32 0, i32* %t2773
  %t2774 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 705
  store i32 0, i32* %t2774
  %t2775 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 706
  store i32 0, i32* %t2775
  %t2776 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 707
  store i32 0, i32* %t2776
  %t2777 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 708
  store i32 0, i32* %t2777
  %t2778 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 709
  store i32 0, i32* %t2778
  %t2779 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 710
  store i32 0, i32* %t2779
  %t2780 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 711
  store i32 0, i32* %t2780
  %t2781 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 712
  store i32 0, i32* %t2781
  %t2782 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 713
  store i32 0, i32* %t2782
  %t2783 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 714
  store i32 0, i32* %t2783
  %t2784 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 715
  store i32 0, i32* %t2784
  %t2785 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 716
  store i32 0, i32* %t2785
  %t2786 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 717
  store i32 0, i32* %t2786
  %t2787 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 718
  store i32 0, i32* %t2787
  %t2788 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 719
  store i32 0, i32* %t2788
  %t2789 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 720
  store i32 0, i32* %t2789
  %t2790 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 721
  store i32 0, i32* %t2790
  %t2791 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 722
  store i32 0, i32* %t2791
  %t2792 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 723
  store i32 0, i32* %t2792
  %t2793 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 724
  store i32 0, i32* %t2793
  %t2794 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 725
  store i32 0, i32* %t2794
  %t2795 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 726
  store i32 0, i32* %t2795
  %t2796 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 727
  store i32 0, i32* %t2796
  %t2797 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 728
  store i32 0, i32* %t2797
  %t2798 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 729
  store i32 0, i32* %t2798
  %t2799 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 730
  store i32 0, i32* %t2799
  %t2800 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 731
  store i32 0, i32* %t2800
  %t2801 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 732
  store i32 0, i32* %t2801
  %t2802 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 733
  store i32 0, i32* %t2802
  %t2803 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 734
  store i32 0, i32* %t2803
  %t2804 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 735
  store i32 0, i32* %t2804
  %t2805 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 736
  store i32 0, i32* %t2805
  %t2806 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 737
  store i32 0, i32* %t2806
  %t2807 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 738
  store i32 0, i32* %t2807
  %t2808 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 739
  store i32 0, i32* %t2808
  %t2809 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 740
  store i32 0, i32* %t2809
  %t2810 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 741
  store i32 0, i32* %t2810
  %t2811 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 742
  store i32 0, i32* %t2811
  %t2812 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 743
  store i32 0, i32* %t2812
  %t2813 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 744
  store i32 0, i32* %t2813
  %t2814 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 745
  store i32 0, i32* %t2814
  %t2815 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 746
  store i32 0, i32* %t2815
  %t2816 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 747
  store i32 0, i32* %t2816
  %t2817 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 748
  store i32 0, i32* %t2817
  %t2818 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 749
  store i32 0, i32* %t2818
  %t2819 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 750
  store i32 0, i32* %t2819
  %t2820 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 751
  store i32 0, i32* %t2820
  %t2821 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 752
  store i32 0, i32* %t2821
  %t2822 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 753
  store i32 0, i32* %t2822
  %t2823 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 754
  store i32 0, i32* %t2823
  %t2824 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 755
  store i32 0, i32* %t2824
  %t2825 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 756
  store i32 0, i32* %t2825
  %t2826 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 757
  store i32 0, i32* %t2826
  %t2827 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 758
  store i32 0, i32* %t2827
  %t2828 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 759
  store i32 0, i32* %t2828
  %t2829 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 760
  store i32 0, i32* %t2829
  %t2830 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 761
  store i32 0, i32* %t2830
  %t2831 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 762
  store i32 0, i32* %t2831
  %t2832 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 763
  store i32 0, i32* %t2832
  %t2833 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 764
  store i32 0, i32* %t2833
  %t2834 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 765
  store i32 0, i32* %t2834
  %t2835 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 766
  store i32 0, i32* %t2835
  %t2836 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 767
  store i32 0, i32* %t2836
  %t2837 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 768
  store i32 0, i32* %t2837
  %t2838 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 769
  store i32 0, i32* %t2838
  %t2839 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 770
  store i32 0, i32* %t2839
  %t2840 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 771
  store i32 0, i32* %t2840
  %t2841 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 772
  store i32 0, i32* %t2841
  %t2842 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 773
  store i32 0, i32* %t2842
  %t2843 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 774
  store i32 0, i32* %t2843
  %t2844 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 775
  store i32 0, i32* %t2844
  %t2845 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 776
  store i32 0, i32* %t2845
  %t2846 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 777
  store i32 0, i32* %t2846
  %t2847 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 778
  store i32 0, i32* %t2847
  %t2848 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 779
  store i32 0, i32* %t2848
  %t2849 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 780
  store i32 0, i32* %t2849
  %t2850 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 781
  store i32 0, i32* %t2850
  %t2851 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 782
  store i32 0, i32* %t2851
  %t2852 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 783
  store i32 0, i32* %t2852
  %t2853 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 784
  store i32 0, i32* %t2853
  %t2854 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 785
  store i32 0, i32* %t2854
  %t2855 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 786
  store i32 0, i32* %t2855
  %t2856 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 787
  store i32 0, i32* %t2856
  %t2857 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 788
  store i32 0, i32* %t2857
  %t2858 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 789
  store i32 0, i32* %t2858
  %t2859 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 790
  store i32 0, i32* %t2859
  %t2860 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 791
  store i32 0, i32* %t2860
  %t2861 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 792
  store i32 0, i32* %t2861
  %t2862 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 793
  store i32 0, i32* %t2862
  %t2863 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 794
  store i32 0, i32* %t2863
  %t2864 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 795
  store i32 0, i32* %t2864
  %t2865 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 796
  store i32 0, i32* %t2865
  %t2866 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 797
  store i32 0, i32* %t2866
  %t2867 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 798
  store i32 0, i32* %t2867
  %t2868 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 799
  store i32 0, i32* %t2868
  %t2869 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 800
  store i32 0, i32* %t2869
  %t2870 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 801
  store i32 0, i32* %t2870
  %t2871 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 802
  store i32 0, i32* %t2871
  %t2872 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 803
  store i32 0, i32* %t2872
  %t2873 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 804
  store i32 0, i32* %t2873
  %t2874 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 805
  store i32 0, i32* %t2874
  %t2875 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 806
  store i32 0, i32* %t2875
  %t2876 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 807
  store i32 0, i32* %t2876
  %t2877 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 808
  store i32 0, i32* %t2877
  %t2878 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 809
  store i32 0, i32* %t2878
  %t2879 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 810
  store i32 0, i32* %t2879
  %t2880 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 811
  store i32 0, i32* %t2880
  %t2881 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 812
  store i32 0, i32* %t2881
  %t2882 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 813
  store i32 0, i32* %t2882
  %t2883 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 814
  store i32 0, i32* %t2883
  %t2884 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 815
  store i32 0, i32* %t2884
  %t2885 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 816
  store i32 0, i32* %t2885
  %t2886 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 817
  store i32 0, i32* %t2886
  %t2887 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 818
  store i32 0, i32* %t2887
  %t2888 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 819
  store i32 0, i32* %t2888
  %t2889 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 820
  store i32 0, i32* %t2889
  %t2890 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 821
  store i32 0, i32* %t2890
  %t2891 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 822
  store i32 0, i32* %t2891
  %t2892 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 823
  store i32 0, i32* %t2892
  %t2893 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 824
  store i32 0, i32* %t2893
  %t2894 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 825
  store i32 0, i32* %t2894
  %t2895 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 826
  store i32 0, i32* %t2895
  %t2896 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 827
  store i32 0, i32* %t2896
  %t2897 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 828
  store i32 0, i32* %t2897
  %t2898 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 829
  store i32 0, i32* %t2898
  %t2899 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 830
  store i32 0, i32* %t2899
  %t2900 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 831
  store i32 0, i32* %t2900
  %t2901 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 832
  store i32 0, i32* %t2901
  %t2902 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 833
  store i32 0, i32* %t2902
  %t2903 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 834
  store i32 0, i32* %t2903
  %t2904 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 835
  store i32 0, i32* %t2904
  %t2905 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 836
  store i32 0, i32* %t2905
  %t2906 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 837
  store i32 0, i32* %t2906
  %t2907 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 838
  store i32 0, i32* %t2907
  %t2908 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 839
  store i32 0, i32* %t2908
  %t2909 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 840
  store i32 0, i32* %t2909
  %t2910 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 841
  store i32 0, i32* %t2910
  %t2911 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 842
  store i32 0, i32* %t2911
  %t2912 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 843
  store i32 0, i32* %t2912
  %t2913 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 844
  store i32 0, i32* %t2913
  %t2914 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 845
  store i32 0, i32* %t2914
  %t2915 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 846
  store i32 0, i32* %t2915
  %t2916 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 847
  store i32 0, i32* %t2916
  %t2917 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 848
  store i32 0, i32* %t2917
  %t2918 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 849
  store i32 0, i32* %t2918
  %t2919 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 850
  store i32 0, i32* %t2919
  %t2920 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 851
  store i32 0, i32* %t2920
  %t2921 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 852
  store i32 0, i32* %t2921
  %t2922 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 853
  store i32 0, i32* %t2922
  %t2923 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 854
  store i32 0, i32* %t2923
  %t2924 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 855
  store i32 0, i32* %t2924
  %t2925 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 856
  store i32 0, i32* %t2925
  %t2926 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 857
  store i32 0, i32* %t2926
  %t2927 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 858
  store i32 0, i32* %t2927
  %t2928 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 859
  store i32 0, i32* %t2928
  %t2929 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 860
  store i32 0, i32* %t2929
  %t2930 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 861
  store i32 0, i32* %t2930
  %t2931 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 862
  store i32 0, i32* %t2931
  %t2932 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 863
  store i32 0, i32* %t2932
  %t2933 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 864
  store i32 0, i32* %t2933
  %t2934 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 865
  store i32 0, i32* %t2934
  %t2935 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 866
  store i32 0, i32* %t2935
  %t2936 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 867
  store i32 0, i32* %t2936
  %t2937 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 868
  store i32 0, i32* %t2937
  %t2938 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 869
  store i32 0, i32* %t2938
  %t2939 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 870
  store i32 0, i32* %t2939
  %t2940 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 871
  store i32 0, i32* %t2940
  %t2941 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 872
  store i32 0, i32* %t2941
  %t2942 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 873
  store i32 0, i32* %t2942
  %t2943 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 874
  store i32 0, i32* %t2943
  %t2944 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 875
  store i32 0, i32* %t2944
  %t2945 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 876
  store i32 0, i32* %t2945
  %t2946 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 877
  store i32 0, i32* %t2946
  %t2947 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 878
  store i32 0, i32* %t2947
  %t2948 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 879
  store i32 0, i32* %t2948
  %t2949 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 880
  store i32 0, i32* %t2949
  %t2950 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 881
  store i32 0, i32* %t2950
  %t2951 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 882
  store i32 0, i32* %t2951
  %t2952 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 883
  store i32 0, i32* %t2952
  %t2953 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 884
  store i32 0, i32* %t2953
  %t2954 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 885
  store i32 0, i32* %t2954
  %t2955 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 886
  store i32 0, i32* %t2955
  %t2956 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 887
  store i32 0, i32* %t2956
  %t2957 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 888
  store i32 0, i32* %t2957
  %t2958 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 889
  store i32 0, i32* %t2958
  %t2959 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 890
  store i32 0, i32* %t2959
  %t2960 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 891
  store i32 0, i32* %t2960
  %t2961 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 892
  store i32 0, i32* %t2961
  %t2962 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 893
  store i32 0, i32* %t2962
  %t2963 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 894
  store i32 0, i32* %t2963
  %t2964 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 895
  store i32 0, i32* %t2964
  %t2965 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 896
  store i32 0, i32* %t2965
  %t2966 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 897
  store i32 0, i32* %t2966
  %t2967 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 898
  store i32 0, i32* %t2967
  %t2968 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 899
  store i32 0, i32* %t2968
  %t2969 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 900
  store i32 0, i32* %t2969
  %t2970 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 901
  store i32 0, i32* %t2970
  %t2971 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 902
  store i32 0, i32* %t2971
  %t2972 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 903
  store i32 0, i32* %t2972
  %t2973 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 904
  store i32 0, i32* %t2973
  %t2974 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 905
  store i32 0, i32* %t2974
  %t2975 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 906
  store i32 0, i32* %t2975
  %t2976 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 907
  store i32 0, i32* %t2976
  %t2977 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 908
  store i32 0, i32* %t2977
  %t2978 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 909
  store i32 0, i32* %t2978
  %t2979 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 910
  store i32 0, i32* %t2979
  %t2980 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 911
  store i32 0, i32* %t2980
  %t2981 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 912
  store i32 0, i32* %t2981
  %t2982 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 913
  store i32 0, i32* %t2982
  %t2983 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 914
  store i32 0, i32* %t2983
  %t2984 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 915
  store i32 0, i32* %t2984
  %t2985 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 916
  store i32 0, i32* %t2985
  %t2986 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 917
  store i32 0, i32* %t2986
  %t2987 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 918
  store i32 0, i32* %t2987
  %t2988 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 919
  store i32 0, i32* %t2988
  %t2989 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 920
  store i32 0, i32* %t2989
  %t2990 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 921
  store i32 0, i32* %t2990
  %t2991 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 922
  store i32 0, i32* %t2991
  %t2992 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 923
  store i32 0, i32* %t2992
  %t2993 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 924
  store i32 0, i32* %t2993
  %t2994 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 925
  store i32 0, i32* %t2994
  %t2995 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 926
  store i32 0, i32* %t2995
  %t2996 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 927
  store i32 0, i32* %t2996
  %t2997 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 928
  store i32 0, i32* %t2997
  %t2998 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 929
  store i32 0, i32* %t2998
  %t2999 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 930
  store i32 0, i32* %t2999
  %t3000 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 931
  store i32 0, i32* %t3000
  %t3001 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 932
  store i32 0, i32* %t3001
  %t3002 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 933
  store i32 0, i32* %t3002
  %t3003 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 934
  store i32 0, i32* %t3003
  %t3004 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 935
  store i32 0, i32* %t3004
  %t3005 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 936
  store i32 0, i32* %t3005
  %t3006 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 937
  store i32 0, i32* %t3006
  %t3007 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 938
  store i32 0, i32* %t3007
  %t3008 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 939
  store i32 0, i32* %t3008
  %t3009 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 940
  store i32 0, i32* %t3009
  %t3010 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 941
  store i32 0, i32* %t3010
  %t3011 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 942
  store i32 0, i32* %t3011
  %t3012 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 943
  store i32 0, i32* %t3012
  %t3013 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 944
  store i32 0, i32* %t3013
  %t3014 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 945
  store i32 0, i32* %t3014
  %t3015 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 946
  store i32 0, i32* %t3015
  %t3016 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 947
  store i32 0, i32* %t3016
  %t3017 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 948
  store i32 0, i32* %t3017
  %t3018 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 949
  store i32 0, i32* %t3018
  %t3019 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 950
  store i32 0, i32* %t3019
  %t3020 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 951
  store i32 0, i32* %t3020
  %t3021 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 952
  store i32 0, i32* %t3021
  %t3022 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 953
  store i32 0, i32* %t3022
  %t3023 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 954
  store i32 0, i32* %t3023
  %t3024 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 955
  store i32 0, i32* %t3024
  %t3025 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 956
  store i32 0, i32* %t3025
  %t3026 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 957
  store i32 0, i32* %t3026
  %t3027 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 958
  store i32 0, i32* %t3027
  %t3028 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 959
  store i32 0, i32* %t3028
  %t3029 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 960
  store i32 0, i32* %t3029
  %t3030 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 961
  store i32 0, i32* %t3030
  %t3031 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 962
  store i32 0, i32* %t3031
  %t3032 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 963
  store i32 0, i32* %t3032
  %t3033 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 964
  store i32 0, i32* %t3033
  %t3034 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 965
  store i32 0, i32* %t3034
  %t3035 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 966
  store i32 0, i32* %t3035
  %t3036 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 967
  store i32 0, i32* %t3036
  %t3037 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 968
  store i32 0, i32* %t3037
  %t3038 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 969
  store i32 0, i32* %t3038
  %t3039 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 970
  store i32 0, i32* %t3039
  %t3040 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 971
  store i32 0, i32* %t3040
  %t3041 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 972
  store i32 0, i32* %t3041
  %t3042 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 973
  store i32 0, i32* %t3042
  %t3043 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 974
  store i32 0, i32* %t3043
  %t3044 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 975
  store i32 0, i32* %t3044
  %t3045 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 976
  store i32 0, i32* %t3045
  %t3046 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 977
  store i32 0, i32* %t3046
  %t3047 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 978
  store i32 0, i32* %t3047
  %t3048 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 979
  store i32 0, i32* %t3048
  %t3049 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 980
  store i32 0, i32* %t3049
  %t3050 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 981
  store i32 0, i32* %t3050
  %t3051 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 982
  store i32 0, i32* %t3051
  %t3052 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 983
  store i32 0, i32* %t3052
  %t3053 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 984
  store i32 0, i32* %t3053
  %t3054 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 985
  store i32 0, i32* %t3054
  %t3055 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 986
  store i32 0, i32* %t3055
  %t3056 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 987
  store i32 0, i32* %t3056
  %t3057 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 988
  store i32 0, i32* %t3057
  %t3058 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 989
  store i32 0, i32* %t3058
  %t3059 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 990
  store i32 0, i32* %t3059
  %t3060 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 991
  store i32 0, i32* %t3060
  %t3061 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 992
  store i32 0, i32* %t3061
  %t3062 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 993
  store i32 0, i32* %t3062
  %t3063 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 994
  store i32 0, i32* %t3063
  %t3064 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 995
  store i32 0, i32* %t3064
  %t3065 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 996
  store i32 0, i32* %t3065
  %t3066 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 997
  store i32 0, i32* %t3066
  %t3067 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 998
  store i32 0, i32* %t3067
  %t3068 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 999
  store i32 0, i32* %t3068
  %t3069 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1000
  store i32 0, i32* %t3069
  %t3070 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1001
  store i32 0, i32* %t3070
  %t3071 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1002
  store i32 0, i32* %t3071
  %t3072 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1003
  store i32 0, i32* %t3072
  %t3073 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1004
  store i32 0, i32* %t3073
  %t3074 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1005
  store i32 0, i32* %t3074
  %t3075 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1006
  store i32 0, i32* %t3075
  %t3076 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1007
  store i32 0, i32* %t3076
  %t3077 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1008
  store i32 0, i32* %t3077
  %t3078 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1009
  store i32 0, i32* %t3078
  %t3079 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1010
  store i32 0, i32* %t3079
  %t3080 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1011
  store i32 0, i32* %t3080
  %t3081 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1012
  store i32 0, i32* %t3081
  %t3082 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1013
  store i32 0, i32* %t3082
  %t3083 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1014
  store i32 0, i32* %t3083
  %t3084 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1015
  store i32 0, i32* %t3084
  %t3085 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1016
  store i32 0, i32* %t3085
  %t3086 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1017
  store i32 0, i32* %t3086
  %t3087 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1018
  store i32 0, i32* %t3087
  %t3088 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1019
  store i32 0, i32* %t3088
  %t3089 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1020
  store i32 0, i32* %t3089
  %t3090 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1021
  store i32 0, i32* %t3090
  %t3091 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1022
  store i32 0, i32* %t3091
  %t3092 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 2, i64 1023
  store i32 0, i32* %t3092
  %t3093 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 0
  store i32 4, i32* %t3093
  %t3094 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1
  store i32 5, i32* %t3094
  %t3095 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 2
  store i32 6, i32* %t3095
  %t3096 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 3
  store i32 0, i32* %t3096
  %t3097 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 4
  store i32 0, i32* %t3097
  %t3098 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 5
  store i32 0, i32* %t3098
  %t3099 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 6
  store i32 0, i32* %t3099
  %t3100 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 7
  store i32 0, i32* %t3100
  %t3101 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 8
  store i32 0, i32* %t3101
  %t3102 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 9
  store i32 0, i32* %t3102
  %t3103 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 10
  store i32 0, i32* %t3103
  %t3104 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 11
  store i32 0, i32* %t3104
  %t3105 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 12
  store i32 0, i32* %t3105
  %t3106 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 13
  store i32 0, i32* %t3106
  %t3107 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 14
  store i32 0, i32* %t3107
  %t3108 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 15
  store i32 0, i32* %t3108
  %t3109 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 16
  store i32 0, i32* %t3109
  %t3110 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 17
  store i32 0, i32* %t3110
  %t3111 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 18
  store i32 0, i32* %t3111
  %t3112 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 19
  store i32 0, i32* %t3112
  %t3113 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 20
  store i32 0, i32* %t3113
  %t3114 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 21
  store i32 0, i32* %t3114
  %t3115 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 22
  store i32 0, i32* %t3115
  %t3116 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 23
  store i32 0, i32* %t3116
  %t3117 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 24
  store i32 0, i32* %t3117
  %t3118 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 25
  store i32 0, i32* %t3118
  %t3119 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 26
  store i32 0, i32* %t3119
  %t3120 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 27
  store i32 0, i32* %t3120
  %t3121 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 28
  store i32 0, i32* %t3121
  %t3122 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 29
  store i32 0, i32* %t3122
  %t3123 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 30
  store i32 0, i32* %t3123
  %t3124 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 31
  store i32 0, i32* %t3124
  %t3125 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 32
  store i32 0, i32* %t3125
  %t3126 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 33
  store i32 0, i32* %t3126
  %t3127 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 34
  store i32 0, i32* %t3127
  %t3128 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 35
  store i32 0, i32* %t3128
  %t3129 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 36
  store i32 0, i32* %t3129
  %t3130 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 37
  store i32 0, i32* %t3130
  %t3131 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 38
  store i32 0, i32* %t3131
  %t3132 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 39
  store i32 0, i32* %t3132
  %t3133 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 40
  store i32 0, i32* %t3133
  %t3134 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 41
  store i32 0, i32* %t3134
  %t3135 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 42
  store i32 0, i32* %t3135
  %t3136 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 43
  store i32 0, i32* %t3136
  %t3137 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 44
  store i32 0, i32* %t3137
  %t3138 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 45
  store i32 0, i32* %t3138
  %t3139 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 46
  store i32 0, i32* %t3139
  %t3140 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 47
  store i32 0, i32* %t3140
  %t3141 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 48
  store i32 0, i32* %t3141
  %t3142 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 49
  store i32 0, i32* %t3142
  %t3143 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 50
  store i32 0, i32* %t3143
  %t3144 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 51
  store i32 0, i32* %t3144
  %t3145 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 52
  store i32 0, i32* %t3145
  %t3146 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 53
  store i32 0, i32* %t3146
  %t3147 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 54
  store i32 0, i32* %t3147
  %t3148 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 55
  store i32 0, i32* %t3148
  %t3149 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 56
  store i32 0, i32* %t3149
  %t3150 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 57
  store i32 0, i32* %t3150
  %t3151 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 58
  store i32 0, i32* %t3151
  %t3152 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 59
  store i32 0, i32* %t3152
  %t3153 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 60
  store i32 0, i32* %t3153
  %t3154 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 61
  store i32 0, i32* %t3154
  %t3155 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 62
  store i32 0, i32* %t3155
  %t3156 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 63
  store i32 0, i32* %t3156
  %t3157 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 64
  store i32 0, i32* %t3157
  %t3158 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 65
  store i32 0, i32* %t3158
  %t3159 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 66
  store i32 0, i32* %t3159
  %t3160 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 67
  store i32 0, i32* %t3160
  %t3161 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 68
  store i32 0, i32* %t3161
  %t3162 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 69
  store i32 0, i32* %t3162
  %t3163 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 70
  store i32 0, i32* %t3163
  %t3164 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 71
  store i32 0, i32* %t3164
  %t3165 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 72
  store i32 0, i32* %t3165
  %t3166 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 73
  store i32 0, i32* %t3166
  %t3167 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 74
  store i32 0, i32* %t3167
  %t3168 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 75
  store i32 0, i32* %t3168
  %t3169 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 76
  store i32 0, i32* %t3169
  %t3170 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 77
  store i32 0, i32* %t3170
  %t3171 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 78
  store i32 0, i32* %t3171
  %t3172 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 79
  store i32 0, i32* %t3172
  %t3173 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 80
  store i32 0, i32* %t3173
  %t3174 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 81
  store i32 0, i32* %t3174
  %t3175 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 82
  store i32 0, i32* %t3175
  %t3176 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 83
  store i32 0, i32* %t3176
  %t3177 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 84
  store i32 0, i32* %t3177
  %t3178 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 85
  store i32 0, i32* %t3178
  %t3179 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 86
  store i32 0, i32* %t3179
  %t3180 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 87
  store i32 0, i32* %t3180
  %t3181 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 88
  store i32 0, i32* %t3181
  %t3182 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 89
  store i32 0, i32* %t3182
  %t3183 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 90
  store i32 0, i32* %t3183
  %t3184 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 91
  store i32 0, i32* %t3184
  %t3185 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 92
  store i32 0, i32* %t3185
  %t3186 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 93
  store i32 0, i32* %t3186
  %t3187 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 94
  store i32 0, i32* %t3187
  %t3188 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 95
  store i32 0, i32* %t3188
  %t3189 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 96
  store i32 0, i32* %t3189
  %t3190 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 97
  store i32 0, i32* %t3190
  %t3191 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 98
  store i32 0, i32* %t3191
  %t3192 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 99
  store i32 0, i32* %t3192
  %t3193 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 100
  store i32 0, i32* %t3193
  %t3194 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 101
  store i32 0, i32* %t3194
  %t3195 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 102
  store i32 0, i32* %t3195
  %t3196 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 103
  store i32 0, i32* %t3196
  %t3197 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 104
  store i32 0, i32* %t3197
  %t3198 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 105
  store i32 0, i32* %t3198
  %t3199 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 106
  store i32 0, i32* %t3199
  %t3200 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 107
  store i32 0, i32* %t3200
  %t3201 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 108
  store i32 0, i32* %t3201
  %t3202 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 109
  store i32 0, i32* %t3202
  %t3203 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 110
  store i32 0, i32* %t3203
  %t3204 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 111
  store i32 0, i32* %t3204
  %t3205 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 112
  store i32 0, i32* %t3205
  %t3206 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 113
  store i32 0, i32* %t3206
  %t3207 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 114
  store i32 0, i32* %t3207
  %t3208 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 115
  store i32 0, i32* %t3208
  %t3209 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 116
  store i32 0, i32* %t3209
  %t3210 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 117
  store i32 0, i32* %t3210
  %t3211 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 118
  store i32 0, i32* %t3211
  %t3212 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 119
  store i32 0, i32* %t3212
  %t3213 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 120
  store i32 0, i32* %t3213
  %t3214 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 121
  store i32 0, i32* %t3214
  %t3215 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 122
  store i32 0, i32* %t3215
  %t3216 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 123
  store i32 0, i32* %t3216
  %t3217 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 124
  store i32 0, i32* %t3217
  %t3218 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 125
  store i32 0, i32* %t3218
  %t3219 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 126
  store i32 0, i32* %t3219
  %t3220 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 127
  store i32 0, i32* %t3220
  %t3221 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 128
  store i32 0, i32* %t3221
  %t3222 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 129
  store i32 0, i32* %t3222
  %t3223 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 130
  store i32 0, i32* %t3223
  %t3224 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 131
  store i32 0, i32* %t3224
  %t3225 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 132
  store i32 0, i32* %t3225
  %t3226 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 133
  store i32 0, i32* %t3226
  %t3227 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 134
  store i32 0, i32* %t3227
  %t3228 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 135
  store i32 0, i32* %t3228
  %t3229 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 136
  store i32 0, i32* %t3229
  %t3230 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 137
  store i32 0, i32* %t3230
  %t3231 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 138
  store i32 0, i32* %t3231
  %t3232 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 139
  store i32 0, i32* %t3232
  %t3233 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 140
  store i32 0, i32* %t3233
  %t3234 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 141
  store i32 0, i32* %t3234
  %t3235 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 142
  store i32 0, i32* %t3235
  %t3236 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 143
  store i32 0, i32* %t3236
  %t3237 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 144
  store i32 0, i32* %t3237
  %t3238 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 145
  store i32 0, i32* %t3238
  %t3239 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 146
  store i32 0, i32* %t3239
  %t3240 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 147
  store i32 0, i32* %t3240
  %t3241 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 148
  store i32 0, i32* %t3241
  %t3242 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 149
  store i32 0, i32* %t3242
  %t3243 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 150
  store i32 0, i32* %t3243
  %t3244 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 151
  store i32 0, i32* %t3244
  %t3245 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 152
  store i32 0, i32* %t3245
  %t3246 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 153
  store i32 0, i32* %t3246
  %t3247 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 154
  store i32 0, i32* %t3247
  %t3248 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 155
  store i32 0, i32* %t3248
  %t3249 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 156
  store i32 0, i32* %t3249
  %t3250 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 157
  store i32 0, i32* %t3250
  %t3251 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 158
  store i32 0, i32* %t3251
  %t3252 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 159
  store i32 0, i32* %t3252
  %t3253 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 160
  store i32 0, i32* %t3253
  %t3254 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 161
  store i32 0, i32* %t3254
  %t3255 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 162
  store i32 0, i32* %t3255
  %t3256 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 163
  store i32 0, i32* %t3256
  %t3257 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 164
  store i32 0, i32* %t3257
  %t3258 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 165
  store i32 0, i32* %t3258
  %t3259 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 166
  store i32 0, i32* %t3259
  %t3260 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 167
  store i32 0, i32* %t3260
  %t3261 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 168
  store i32 0, i32* %t3261
  %t3262 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 169
  store i32 0, i32* %t3262
  %t3263 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 170
  store i32 0, i32* %t3263
  %t3264 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 171
  store i32 0, i32* %t3264
  %t3265 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 172
  store i32 0, i32* %t3265
  %t3266 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 173
  store i32 0, i32* %t3266
  %t3267 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 174
  store i32 0, i32* %t3267
  %t3268 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 175
  store i32 0, i32* %t3268
  %t3269 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 176
  store i32 0, i32* %t3269
  %t3270 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 177
  store i32 0, i32* %t3270
  %t3271 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 178
  store i32 0, i32* %t3271
  %t3272 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 179
  store i32 0, i32* %t3272
  %t3273 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 180
  store i32 0, i32* %t3273
  %t3274 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 181
  store i32 0, i32* %t3274
  %t3275 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 182
  store i32 0, i32* %t3275
  %t3276 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 183
  store i32 0, i32* %t3276
  %t3277 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 184
  store i32 0, i32* %t3277
  %t3278 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 185
  store i32 0, i32* %t3278
  %t3279 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 186
  store i32 0, i32* %t3279
  %t3280 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 187
  store i32 0, i32* %t3280
  %t3281 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 188
  store i32 0, i32* %t3281
  %t3282 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 189
  store i32 0, i32* %t3282
  %t3283 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 190
  store i32 0, i32* %t3283
  %t3284 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 191
  store i32 0, i32* %t3284
  %t3285 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 192
  store i32 0, i32* %t3285
  %t3286 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 193
  store i32 0, i32* %t3286
  %t3287 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 194
  store i32 0, i32* %t3287
  %t3288 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 195
  store i32 0, i32* %t3288
  %t3289 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 196
  store i32 0, i32* %t3289
  %t3290 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 197
  store i32 0, i32* %t3290
  %t3291 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 198
  store i32 0, i32* %t3291
  %t3292 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 199
  store i32 0, i32* %t3292
  %t3293 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 200
  store i32 0, i32* %t3293
  %t3294 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 201
  store i32 0, i32* %t3294
  %t3295 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 202
  store i32 0, i32* %t3295
  %t3296 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 203
  store i32 0, i32* %t3296
  %t3297 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 204
  store i32 0, i32* %t3297
  %t3298 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 205
  store i32 0, i32* %t3298
  %t3299 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 206
  store i32 0, i32* %t3299
  %t3300 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 207
  store i32 0, i32* %t3300
  %t3301 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 208
  store i32 0, i32* %t3301
  %t3302 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 209
  store i32 0, i32* %t3302
  %t3303 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 210
  store i32 0, i32* %t3303
  %t3304 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 211
  store i32 0, i32* %t3304
  %t3305 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 212
  store i32 0, i32* %t3305
  %t3306 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 213
  store i32 0, i32* %t3306
  %t3307 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 214
  store i32 0, i32* %t3307
  %t3308 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 215
  store i32 0, i32* %t3308
  %t3309 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 216
  store i32 0, i32* %t3309
  %t3310 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 217
  store i32 0, i32* %t3310
  %t3311 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 218
  store i32 0, i32* %t3311
  %t3312 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 219
  store i32 0, i32* %t3312
  %t3313 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 220
  store i32 0, i32* %t3313
  %t3314 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 221
  store i32 0, i32* %t3314
  %t3315 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 222
  store i32 0, i32* %t3315
  %t3316 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 223
  store i32 0, i32* %t3316
  %t3317 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 224
  store i32 0, i32* %t3317
  %t3318 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 225
  store i32 0, i32* %t3318
  %t3319 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 226
  store i32 0, i32* %t3319
  %t3320 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 227
  store i32 0, i32* %t3320
  %t3321 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 228
  store i32 0, i32* %t3321
  %t3322 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 229
  store i32 0, i32* %t3322
  %t3323 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 230
  store i32 0, i32* %t3323
  %t3324 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 231
  store i32 0, i32* %t3324
  %t3325 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 232
  store i32 0, i32* %t3325
  %t3326 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 233
  store i32 0, i32* %t3326
  %t3327 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 234
  store i32 0, i32* %t3327
  %t3328 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 235
  store i32 0, i32* %t3328
  %t3329 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 236
  store i32 0, i32* %t3329
  %t3330 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 237
  store i32 0, i32* %t3330
  %t3331 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 238
  store i32 0, i32* %t3331
  %t3332 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 239
  store i32 0, i32* %t3332
  %t3333 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 240
  store i32 0, i32* %t3333
  %t3334 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 241
  store i32 0, i32* %t3334
  %t3335 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 242
  store i32 0, i32* %t3335
  %t3336 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 243
  store i32 0, i32* %t3336
  %t3337 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 244
  store i32 0, i32* %t3337
  %t3338 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 245
  store i32 0, i32* %t3338
  %t3339 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 246
  store i32 0, i32* %t3339
  %t3340 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 247
  store i32 0, i32* %t3340
  %t3341 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 248
  store i32 0, i32* %t3341
  %t3342 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 249
  store i32 0, i32* %t3342
  %t3343 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 250
  store i32 0, i32* %t3343
  %t3344 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 251
  store i32 0, i32* %t3344
  %t3345 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 252
  store i32 0, i32* %t3345
  %t3346 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 253
  store i32 0, i32* %t3346
  %t3347 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 254
  store i32 0, i32* %t3347
  %t3348 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 255
  store i32 0, i32* %t3348
  %t3349 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 256
  store i32 0, i32* %t3349
  %t3350 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 257
  store i32 0, i32* %t3350
  %t3351 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 258
  store i32 0, i32* %t3351
  %t3352 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 259
  store i32 0, i32* %t3352
  %t3353 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 260
  store i32 0, i32* %t3353
  %t3354 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 261
  store i32 0, i32* %t3354
  %t3355 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 262
  store i32 0, i32* %t3355
  %t3356 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 263
  store i32 0, i32* %t3356
  %t3357 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 264
  store i32 0, i32* %t3357
  %t3358 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 265
  store i32 0, i32* %t3358
  %t3359 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 266
  store i32 0, i32* %t3359
  %t3360 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 267
  store i32 0, i32* %t3360
  %t3361 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 268
  store i32 0, i32* %t3361
  %t3362 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 269
  store i32 0, i32* %t3362
  %t3363 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 270
  store i32 0, i32* %t3363
  %t3364 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 271
  store i32 0, i32* %t3364
  %t3365 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 272
  store i32 0, i32* %t3365
  %t3366 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 273
  store i32 0, i32* %t3366
  %t3367 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 274
  store i32 0, i32* %t3367
  %t3368 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 275
  store i32 0, i32* %t3368
  %t3369 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 276
  store i32 0, i32* %t3369
  %t3370 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 277
  store i32 0, i32* %t3370
  %t3371 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 278
  store i32 0, i32* %t3371
  %t3372 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 279
  store i32 0, i32* %t3372
  %t3373 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 280
  store i32 0, i32* %t3373
  %t3374 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 281
  store i32 0, i32* %t3374
  %t3375 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 282
  store i32 0, i32* %t3375
  %t3376 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 283
  store i32 0, i32* %t3376
  %t3377 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 284
  store i32 0, i32* %t3377
  %t3378 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 285
  store i32 0, i32* %t3378
  %t3379 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 286
  store i32 0, i32* %t3379
  %t3380 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 287
  store i32 0, i32* %t3380
  %t3381 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 288
  store i32 0, i32* %t3381
  %t3382 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 289
  store i32 0, i32* %t3382
  %t3383 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 290
  store i32 0, i32* %t3383
  %t3384 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 291
  store i32 0, i32* %t3384
  %t3385 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 292
  store i32 0, i32* %t3385
  %t3386 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 293
  store i32 0, i32* %t3386
  %t3387 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 294
  store i32 0, i32* %t3387
  %t3388 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 295
  store i32 0, i32* %t3388
  %t3389 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 296
  store i32 0, i32* %t3389
  %t3390 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 297
  store i32 0, i32* %t3390
  %t3391 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 298
  store i32 0, i32* %t3391
  %t3392 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 299
  store i32 0, i32* %t3392
  %t3393 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 300
  store i32 0, i32* %t3393
  %t3394 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 301
  store i32 0, i32* %t3394
  %t3395 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 302
  store i32 0, i32* %t3395
  %t3396 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 303
  store i32 0, i32* %t3396
  %t3397 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 304
  store i32 0, i32* %t3397
  %t3398 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 305
  store i32 0, i32* %t3398
  %t3399 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 306
  store i32 0, i32* %t3399
  %t3400 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 307
  store i32 0, i32* %t3400
  %t3401 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 308
  store i32 0, i32* %t3401
  %t3402 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 309
  store i32 0, i32* %t3402
  %t3403 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 310
  store i32 0, i32* %t3403
  %t3404 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 311
  store i32 0, i32* %t3404
  %t3405 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 312
  store i32 0, i32* %t3405
  %t3406 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 313
  store i32 0, i32* %t3406
  %t3407 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 314
  store i32 0, i32* %t3407
  %t3408 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 315
  store i32 0, i32* %t3408
  %t3409 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 316
  store i32 0, i32* %t3409
  %t3410 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 317
  store i32 0, i32* %t3410
  %t3411 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 318
  store i32 0, i32* %t3411
  %t3412 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 319
  store i32 0, i32* %t3412
  %t3413 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 320
  store i32 0, i32* %t3413
  %t3414 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 321
  store i32 0, i32* %t3414
  %t3415 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 322
  store i32 0, i32* %t3415
  %t3416 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 323
  store i32 0, i32* %t3416
  %t3417 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 324
  store i32 0, i32* %t3417
  %t3418 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 325
  store i32 0, i32* %t3418
  %t3419 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 326
  store i32 0, i32* %t3419
  %t3420 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 327
  store i32 0, i32* %t3420
  %t3421 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 328
  store i32 0, i32* %t3421
  %t3422 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 329
  store i32 0, i32* %t3422
  %t3423 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 330
  store i32 0, i32* %t3423
  %t3424 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 331
  store i32 0, i32* %t3424
  %t3425 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 332
  store i32 0, i32* %t3425
  %t3426 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 333
  store i32 0, i32* %t3426
  %t3427 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 334
  store i32 0, i32* %t3427
  %t3428 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 335
  store i32 0, i32* %t3428
  %t3429 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 336
  store i32 0, i32* %t3429
  %t3430 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 337
  store i32 0, i32* %t3430
  %t3431 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 338
  store i32 0, i32* %t3431
  %t3432 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 339
  store i32 0, i32* %t3432
  %t3433 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 340
  store i32 0, i32* %t3433
  %t3434 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 341
  store i32 0, i32* %t3434
  %t3435 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 342
  store i32 0, i32* %t3435
  %t3436 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 343
  store i32 0, i32* %t3436
  %t3437 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 344
  store i32 0, i32* %t3437
  %t3438 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 345
  store i32 0, i32* %t3438
  %t3439 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 346
  store i32 0, i32* %t3439
  %t3440 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 347
  store i32 0, i32* %t3440
  %t3441 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 348
  store i32 0, i32* %t3441
  %t3442 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 349
  store i32 0, i32* %t3442
  %t3443 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 350
  store i32 0, i32* %t3443
  %t3444 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 351
  store i32 0, i32* %t3444
  %t3445 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 352
  store i32 0, i32* %t3445
  %t3446 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 353
  store i32 0, i32* %t3446
  %t3447 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 354
  store i32 0, i32* %t3447
  %t3448 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 355
  store i32 0, i32* %t3448
  %t3449 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 356
  store i32 0, i32* %t3449
  %t3450 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 357
  store i32 0, i32* %t3450
  %t3451 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 358
  store i32 0, i32* %t3451
  %t3452 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 359
  store i32 0, i32* %t3452
  %t3453 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 360
  store i32 0, i32* %t3453
  %t3454 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 361
  store i32 0, i32* %t3454
  %t3455 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 362
  store i32 0, i32* %t3455
  %t3456 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 363
  store i32 0, i32* %t3456
  %t3457 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 364
  store i32 0, i32* %t3457
  %t3458 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 365
  store i32 0, i32* %t3458
  %t3459 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 366
  store i32 0, i32* %t3459
  %t3460 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 367
  store i32 0, i32* %t3460
  %t3461 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 368
  store i32 0, i32* %t3461
  %t3462 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 369
  store i32 0, i32* %t3462
  %t3463 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 370
  store i32 0, i32* %t3463
  %t3464 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 371
  store i32 0, i32* %t3464
  %t3465 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 372
  store i32 0, i32* %t3465
  %t3466 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 373
  store i32 0, i32* %t3466
  %t3467 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 374
  store i32 0, i32* %t3467
  %t3468 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 375
  store i32 0, i32* %t3468
  %t3469 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 376
  store i32 0, i32* %t3469
  %t3470 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 377
  store i32 0, i32* %t3470
  %t3471 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 378
  store i32 0, i32* %t3471
  %t3472 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 379
  store i32 0, i32* %t3472
  %t3473 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 380
  store i32 0, i32* %t3473
  %t3474 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 381
  store i32 0, i32* %t3474
  %t3475 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 382
  store i32 0, i32* %t3475
  %t3476 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 383
  store i32 0, i32* %t3476
  %t3477 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 384
  store i32 0, i32* %t3477
  %t3478 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 385
  store i32 0, i32* %t3478
  %t3479 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 386
  store i32 0, i32* %t3479
  %t3480 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 387
  store i32 0, i32* %t3480
  %t3481 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 388
  store i32 0, i32* %t3481
  %t3482 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 389
  store i32 0, i32* %t3482
  %t3483 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 390
  store i32 0, i32* %t3483
  %t3484 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 391
  store i32 0, i32* %t3484
  %t3485 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 392
  store i32 0, i32* %t3485
  %t3486 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 393
  store i32 0, i32* %t3486
  %t3487 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 394
  store i32 0, i32* %t3487
  %t3488 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 395
  store i32 0, i32* %t3488
  %t3489 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 396
  store i32 0, i32* %t3489
  %t3490 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 397
  store i32 0, i32* %t3490
  %t3491 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 398
  store i32 0, i32* %t3491
  %t3492 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 399
  store i32 0, i32* %t3492
  %t3493 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 400
  store i32 0, i32* %t3493
  %t3494 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 401
  store i32 0, i32* %t3494
  %t3495 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 402
  store i32 0, i32* %t3495
  %t3496 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 403
  store i32 0, i32* %t3496
  %t3497 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 404
  store i32 0, i32* %t3497
  %t3498 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 405
  store i32 0, i32* %t3498
  %t3499 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 406
  store i32 0, i32* %t3499
  %t3500 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 407
  store i32 0, i32* %t3500
  %t3501 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 408
  store i32 0, i32* %t3501
  %t3502 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 409
  store i32 0, i32* %t3502
  %t3503 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 410
  store i32 0, i32* %t3503
  %t3504 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 411
  store i32 0, i32* %t3504
  %t3505 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 412
  store i32 0, i32* %t3505
  %t3506 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 413
  store i32 0, i32* %t3506
  %t3507 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 414
  store i32 0, i32* %t3507
  %t3508 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 415
  store i32 0, i32* %t3508
  %t3509 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 416
  store i32 0, i32* %t3509
  %t3510 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 417
  store i32 0, i32* %t3510
  %t3511 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 418
  store i32 0, i32* %t3511
  %t3512 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 419
  store i32 0, i32* %t3512
  %t3513 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 420
  store i32 0, i32* %t3513
  %t3514 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 421
  store i32 0, i32* %t3514
  %t3515 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 422
  store i32 0, i32* %t3515
  %t3516 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 423
  store i32 0, i32* %t3516
  %t3517 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 424
  store i32 0, i32* %t3517
  %t3518 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 425
  store i32 0, i32* %t3518
  %t3519 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 426
  store i32 0, i32* %t3519
  %t3520 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 427
  store i32 0, i32* %t3520
  %t3521 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 428
  store i32 0, i32* %t3521
  %t3522 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 429
  store i32 0, i32* %t3522
  %t3523 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 430
  store i32 0, i32* %t3523
  %t3524 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 431
  store i32 0, i32* %t3524
  %t3525 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 432
  store i32 0, i32* %t3525
  %t3526 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 433
  store i32 0, i32* %t3526
  %t3527 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 434
  store i32 0, i32* %t3527
  %t3528 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 435
  store i32 0, i32* %t3528
  %t3529 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 436
  store i32 0, i32* %t3529
  %t3530 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 437
  store i32 0, i32* %t3530
  %t3531 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 438
  store i32 0, i32* %t3531
  %t3532 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 439
  store i32 0, i32* %t3532
  %t3533 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 440
  store i32 0, i32* %t3533
  %t3534 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 441
  store i32 0, i32* %t3534
  %t3535 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 442
  store i32 0, i32* %t3535
  %t3536 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 443
  store i32 0, i32* %t3536
  %t3537 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 444
  store i32 0, i32* %t3537
  %t3538 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 445
  store i32 0, i32* %t3538
  %t3539 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 446
  store i32 0, i32* %t3539
  %t3540 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 447
  store i32 0, i32* %t3540
  %t3541 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 448
  store i32 0, i32* %t3541
  %t3542 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 449
  store i32 0, i32* %t3542
  %t3543 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 450
  store i32 0, i32* %t3543
  %t3544 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 451
  store i32 0, i32* %t3544
  %t3545 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 452
  store i32 0, i32* %t3545
  %t3546 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 453
  store i32 0, i32* %t3546
  %t3547 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 454
  store i32 0, i32* %t3547
  %t3548 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 455
  store i32 0, i32* %t3548
  %t3549 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 456
  store i32 0, i32* %t3549
  %t3550 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 457
  store i32 0, i32* %t3550
  %t3551 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 458
  store i32 0, i32* %t3551
  %t3552 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 459
  store i32 0, i32* %t3552
  %t3553 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 460
  store i32 0, i32* %t3553
  %t3554 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 461
  store i32 0, i32* %t3554
  %t3555 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 462
  store i32 0, i32* %t3555
  %t3556 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 463
  store i32 0, i32* %t3556
  %t3557 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 464
  store i32 0, i32* %t3557
  %t3558 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 465
  store i32 0, i32* %t3558
  %t3559 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 466
  store i32 0, i32* %t3559
  %t3560 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 467
  store i32 0, i32* %t3560
  %t3561 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 468
  store i32 0, i32* %t3561
  %t3562 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 469
  store i32 0, i32* %t3562
  %t3563 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 470
  store i32 0, i32* %t3563
  %t3564 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 471
  store i32 0, i32* %t3564
  %t3565 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 472
  store i32 0, i32* %t3565
  %t3566 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 473
  store i32 0, i32* %t3566
  %t3567 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 474
  store i32 0, i32* %t3567
  %t3568 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 475
  store i32 0, i32* %t3568
  %t3569 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 476
  store i32 0, i32* %t3569
  %t3570 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 477
  store i32 0, i32* %t3570
  %t3571 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 478
  store i32 0, i32* %t3571
  %t3572 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 479
  store i32 0, i32* %t3572
  %t3573 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 480
  store i32 0, i32* %t3573
  %t3574 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 481
  store i32 0, i32* %t3574
  %t3575 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 482
  store i32 0, i32* %t3575
  %t3576 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 483
  store i32 0, i32* %t3576
  %t3577 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 484
  store i32 0, i32* %t3577
  %t3578 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 485
  store i32 0, i32* %t3578
  %t3579 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 486
  store i32 0, i32* %t3579
  %t3580 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 487
  store i32 0, i32* %t3580
  %t3581 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 488
  store i32 0, i32* %t3581
  %t3582 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 489
  store i32 0, i32* %t3582
  %t3583 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 490
  store i32 0, i32* %t3583
  %t3584 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 491
  store i32 0, i32* %t3584
  %t3585 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 492
  store i32 0, i32* %t3585
  %t3586 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 493
  store i32 0, i32* %t3586
  %t3587 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 494
  store i32 0, i32* %t3587
  %t3588 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 495
  store i32 0, i32* %t3588
  %t3589 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 496
  store i32 0, i32* %t3589
  %t3590 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 497
  store i32 0, i32* %t3590
  %t3591 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 498
  store i32 0, i32* %t3591
  %t3592 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 499
  store i32 0, i32* %t3592
  %t3593 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 500
  store i32 0, i32* %t3593
  %t3594 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 501
  store i32 0, i32* %t3594
  %t3595 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 502
  store i32 0, i32* %t3595
  %t3596 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 503
  store i32 0, i32* %t3596
  %t3597 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 504
  store i32 0, i32* %t3597
  %t3598 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 505
  store i32 0, i32* %t3598
  %t3599 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 506
  store i32 0, i32* %t3599
  %t3600 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 507
  store i32 0, i32* %t3600
  %t3601 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 508
  store i32 0, i32* %t3601
  %t3602 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 509
  store i32 0, i32* %t3602
  %t3603 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 510
  store i32 0, i32* %t3603
  %t3604 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 511
  store i32 0, i32* %t3604
  %t3605 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 512
  store i32 0, i32* %t3605
  %t3606 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 513
  store i32 0, i32* %t3606
  %t3607 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 514
  store i32 0, i32* %t3607
  %t3608 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 515
  store i32 0, i32* %t3608
  %t3609 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 516
  store i32 0, i32* %t3609
  %t3610 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 517
  store i32 0, i32* %t3610
  %t3611 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 518
  store i32 0, i32* %t3611
  %t3612 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 519
  store i32 0, i32* %t3612
  %t3613 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 520
  store i32 0, i32* %t3613
  %t3614 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 521
  store i32 0, i32* %t3614
  %t3615 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 522
  store i32 0, i32* %t3615
  %t3616 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 523
  store i32 0, i32* %t3616
  %t3617 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 524
  store i32 0, i32* %t3617
  %t3618 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 525
  store i32 0, i32* %t3618
  %t3619 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 526
  store i32 0, i32* %t3619
  %t3620 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 527
  store i32 0, i32* %t3620
  %t3621 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 528
  store i32 0, i32* %t3621
  %t3622 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 529
  store i32 0, i32* %t3622
  %t3623 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 530
  store i32 0, i32* %t3623
  %t3624 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 531
  store i32 0, i32* %t3624
  %t3625 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 532
  store i32 0, i32* %t3625
  %t3626 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 533
  store i32 0, i32* %t3626
  %t3627 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 534
  store i32 0, i32* %t3627
  %t3628 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 535
  store i32 0, i32* %t3628
  %t3629 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 536
  store i32 0, i32* %t3629
  %t3630 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 537
  store i32 0, i32* %t3630
  %t3631 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 538
  store i32 0, i32* %t3631
  %t3632 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 539
  store i32 0, i32* %t3632
  %t3633 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 540
  store i32 0, i32* %t3633
  %t3634 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 541
  store i32 0, i32* %t3634
  %t3635 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 542
  store i32 0, i32* %t3635
  %t3636 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 543
  store i32 0, i32* %t3636
  %t3637 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 544
  store i32 0, i32* %t3637
  %t3638 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 545
  store i32 0, i32* %t3638
  %t3639 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 546
  store i32 0, i32* %t3639
  %t3640 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 547
  store i32 0, i32* %t3640
  %t3641 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 548
  store i32 0, i32* %t3641
  %t3642 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 549
  store i32 0, i32* %t3642
  %t3643 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 550
  store i32 0, i32* %t3643
  %t3644 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 551
  store i32 0, i32* %t3644
  %t3645 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 552
  store i32 0, i32* %t3645
  %t3646 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 553
  store i32 0, i32* %t3646
  %t3647 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 554
  store i32 0, i32* %t3647
  %t3648 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 555
  store i32 0, i32* %t3648
  %t3649 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 556
  store i32 0, i32* %t3649
  %t3650 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 557
  store i32 0, i32* %t3650
  %t3651 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 558
  store i32 0, i32* %t3651
  %t3652 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 559
  store i32 0, i32* %t3652
  %t3653 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 560
  store i32 0, i32* %t3653
  %t3654 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 561
  store i32 0, i32* %t3654
  %t3655 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 562
  store i32 0, i32* %t3655
  %t3656 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 563
  store i32 0, i32* %t3656
  %t3657 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 564
  store i32 0, i32* %t3657
  %t3658 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 565
  store i32 0, i32* %t3658
  %t3659 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 566
  store i32 0, i32* %t3659
  %t3660 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 567
  store i32 0, i32* %t3660
  %t3661 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 568
  store i32 0, i32* %t3661
  %t3662 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 569
  store i32 0, i32* %t3662
  %t3663 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 570
  store i32 0, i32* %t3663
  %t3664 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 571
  store i32 0, i32* %t3664
  %t3665 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 572
  store i32 0, i32* %t3665
  %t3666 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 573
  store i32 0, i32* %t3666
  %t3667 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 574
  store i32 0, i32* %t3667
  %t3668 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 575
  store i32 0, i32* %t3668
  %t3669 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 576
  store i32 0, i32* %t3669
  %t3670 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 577
  store i32 0, i32* %t3670
  %t3671 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 578
  store i32 0, i32* %t3671
  %t3672 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 579
  store i32 0, i32* %t3672
  %t3673 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 580
  store i32 0, i32* %t3673
  %t3674 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 581
  store i32 0, i32* %t3674
  %t3675 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 582
  store i32 0, i32* %t3675
  %t3676 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 583
  store i32 0, i32* %t3676
  %t3677 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 584
  store i32 0, i32* %t3677
  %t3678 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 585
  store i32 0, i32* %t3678
  %t3679 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 586
  store i32 0, i32* %t3679
  %t3680 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 587
  store i32 0, i32* %t3680
  %t3681 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 588
  store i32 0, i32* %t3681
  %t3682 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 589
  store i32 0, i32* %t3682
  %t3683 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 590
  store i32 0, i32* %t3683
  %t3684 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 591
  store i32 0, i32* %t3684
  %t3685 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 592
  store i32 0, i32* %t3685
  %t3686 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 593
  store i32 0, i32* %t3686
  %t3687 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 594
  store i32 0, i32* %t3687
  %t3688 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 595
  store i32 0, i32* %t3688
  %t3689 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 596
  store i32 0, i32* %t3689
  %t3690 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 597
  store i32 0, i32* %t3690
  %t3691 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 598
  store i32 0, i32* %t3691
  %t3692 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 599
  store i32 0, i32* %t3692
  %t3693 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 600
  store i32 0, i32* %t3693
  %t3694 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 601
  store i32 0, i32* %t3694
  %t3695 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 602
  store i32 0, i32* %t3695
  %t3696 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 603
  store i32 0, i32* %t3696
  %t3697 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 604
  store i32 0, i32* %t3697
  %t3698 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 605
  store i32 0, i32* %t3698
  %t3699 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 606
  store i32 0, i32* %t3699
  %t3700 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 607
  store i32 0, i32* %t3700
  %t3701 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 608
  store i32 0, i32* %t3701
  %t3702 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 609
  store i32 0, i32* %t3702
  %t3703 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 610
  store i32 0, i32* %t3703
  %t3704 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 611
  store i32 0, i32* %t3704
  %t3705 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 612
  store i32 0, i32* %t3705
  %t3706 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 613
  store i32 0, i32* %t3706
  %t3707 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 614
  store i32 0, i32* %t3707
  %t3708 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 615
  store i32 0, i32* %t3708
  %t3709 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 616
  store i32 0, i32* %t3709
  %t3710 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 617
  store i32 0, i32* %t3710
  %t3711 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 618
  store i32 0, i32* %t3711
  %t3712 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 619
  store i32 0, i32* %t3712
  %t3713 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 620
  store i32 0, i32* %t3713
  %t3714 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 621
  store i32 0, i32* %t3714
  %t3715 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 622
  store i32 0, i32* %t3715
  %t3716 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 623
  store i32 0, i32* %t3716
  %t3717 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 624
  store i32 0, i32* %t3717
  %t3718 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 625
  store i32 0, i32* %t3718
  %t3719 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 626
  store i32 0, i32* %t3719
  %t3720 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 627
  store i32 0, i32* %t3720
  %t3721 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 628
  store i32 0, i32* %t3721
  %t3722 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 629
  store i32 0, i32* %t3722
  %t3723 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 630
  store i32 0, i32* %t3723
  %t3724 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 631
  store i32 0, i32* %t3724
  %t3725 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 632
  store i32 0, i32* %t3725
  %t3726 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 633
  store i32 0, i32* %t3726
  %t3727 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 634
  store i32 0, i32* %t3727
  %t3728 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 635
  store i32 0, i32* %t3728
  %t3729 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 636
  store i32 0, i32* %t3729
  %t3730 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 637
  store i32 0, i32* %t3730
  %t3731 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 638
  store i32 0, i32* %t3731
  %t3732 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 639
  store i32 0, i32* %t3732
  %t3733 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 640
  store i32 0, i32* %t3733
  %t3734 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 641
  store i32 0, i32* %t3734
  %t3735 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 642
  store i32 0, i32* %t3735
  %t3736 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 643
  store i32 0, i32* %t3736
  %t3737 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 644
  store i32 0, i32* %t3737
  %t3738 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 645
  store i32 0, i32* %t3738
  %t3739 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 646
  store i32 0, i32* %t3739
  %t3740 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 647
  store i32 0, i32* %t3740
  %t3741 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 648
  store i32 0, i32* %t3741
  %t3742 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 649
  store i32 0, i32* %t3742
  %t3743 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 650
  store i32 0, i32* %t3743
  %t3744 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 651
  store i32 0, i32* %t3744
  %t3745 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 652
  store i32 0, i32* %t3745
  %t3746 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 653
  store i32 0, i32* %t3746
  %t3747 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 654
  store i32 0, i32* %t3747
  %t3748 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 655
  store i32 0, i32* %t3748
  %t3749 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 656
  store i32 0, i32* %t3749
  %t3750 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 657
  store i32 0, i32* %t3750
  %t3751 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 658
  store i32 0, i32* %t3751
  %t3752 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 659
  store i32 0, i32* %t3752
  %t3753 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 660
  store i32 0, i32* %t3753
  %t3754 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 661
  store i32 0, i32* %t3754
  %t3755 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 662
  store i32 0, i32* %t3755
  %t3756 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 663
  store i32 0, i32* %t3756
  %t3757 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 664
  store i32 0, i32* %t3757
  %t3758 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 665
  store i32 0, i32* %t3758
  %t3759 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 666
  store i32 0, i32* %t3759
  %t3760 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 667
  store i32 0, i32* %t3760
  %t3761 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 668
  store i32 0, i32* %t3761
  %t3762 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 669
  store i32 0, i32* %t3762
  %t3763 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 670
  store i32 0, i32* %t3763
  %t3764 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 671
  store i32 0, i32* %t3764
  %t3765 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 672
  store i32 0, i32* %t3765
  %t3766 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 673
  store i32 0, i32* %t3766
  %t3767 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 674
  store i32 0, i32* %t3767
  %t3768 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 675
  store i32 0, i32* %t3768
  %t3769 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 676
  store i32 0, i32* %t3769
  %t3770 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 677
  store i32 0, i32* %t3770
  %t3771 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 678
  store i32 0, i32* %t3771
  %t3772 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 679
  store i32 0, i32* %t3772
  %t3773 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 680
  store i32 0, i32* %t3773
  %t3774 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 681
  store i32 0, i32* %t3774
  %t3775 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 682
  store i32 0, i32* %t3775
  %t3776 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 683
  store i32 0, i32* %t3776
  %t3777 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 684
  store i32 0, i32* %t3777
  %t3778 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 685
  store i32 0, i32* %t3778
  %t3779 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 686
  store i32 0, i32* %t3779
  %t3780 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 687
  store i32 0, i32* %t3780
  %t3781 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 688
  store i32 0, i32* %t3781
  %t3782 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 689
  store i32 0, i32* %t3782
  %t3783 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 690
  store i32 0, i32* %t3783
  %t3784 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 691
  store i32 0, i32* %t3784
  %t3785 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 692
  store i32 0, i32* %t3785
  %t3786 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 693
  store i32 0, i32* %t3786
  %t3787 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 694
  store i32 0, i32* %t3787
  %t3788 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 695
  store i32 0, i32* %t3788
  %t3789 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 696
  store i32 0, i32* %t3789
  %t3790 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 697
  store i32 0, i32* %t3790
  %t3791 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 698
  store i32 0, i32* %t3791
  %t3792 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 699
  store i32 0, i32* %t3792
  %t3793 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 700
  store i32 0, i32* %t3793
  %t3794 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 701
  store i32 0, i32* %t3794
  %t3795 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 702
  store i32 0, i32* %t3795
  %t3796 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 703
  store i32 0, i32* %t3796
  %t3797 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 704
  store i32 0, i32* %t3797
  %t3798 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 705
  store i32 0, i32* %t3798
  %t3799 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 706
  store i32 0, i32* %t3799
  %t3800 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 707
  store i32 0, i32* %t3800
  %t3801 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 708
  store i32 0, i32* %t3801
  %t3802 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 709
  store i32 0, i32* %t3802
  %t3803 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 710
  store i32 0, i32* %t3803
  %t3804 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 711
  store i32 0, i32* %t3804
  %t3805 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 712
  store i32 0, i32* %t3805
  %t3806 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 713
  store i32 0, i32* %t3806
  %t3807 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 714
  store i32 0, i32* %t3807
  %t3808 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 715
  store i32 0, i32* %t3808
  %t3809 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 716
  store i32 0, i32* %t3809
  %t3810 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 717
  store i32 0, i32* %t3810
  %t3811 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 718
  store i32 0, i32* %t3811
  %t3812 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 719
  store i32 0, i32* %t3812
  %t3813 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 720
  store i32 0, i32* %t3813
  %t3814 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 721
  store i32 0, i32* %t3814
  %t3815 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 722
  store i32 0, i32* %t3815
  %t3816 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 723
  store i32 0, i32* %t3816
  %t3817 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 724
  store i32 0, i32* %t3817
  %t3818 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 725
  store i32 0, i32* %t3818
  %t3819 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 726
  store i32 0, i32* %t3819
  %t3820 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 727
  store i32 0, i32* %t3820
  %t3821 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 728
  store i32 0, i32* %t3821
  %t3822 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 729
  store i32 0, i32* %t3822
  %t3823 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 730
  store i32 0, i32* %t3823
  %t3824 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 731
  store i32 0, i32* %t3824
  %t3825 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 732
  store i32 0, i32* %t3825
  %t3826 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 733
  store i32 0, i32* %t3826
  %t3827 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 734
  store i32 0, i32* %t3827
  %t3828 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 735
  store i32 0, i32* %t3828
  %t3829 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 736
  store i32 0, i32* %t3829
  %t3830 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 737
  store i32 0, i32* %t3830
  %t3831 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 738
  store i32 0, i32* %t3831
  %t3832 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 739
  store i32 0, i32* %t3832
  %t3833 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 740
  store i32 0, i32* %t3833
  %t3834 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 741
  store i32 0, i32* %t3834
  %t3835 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 742
  store i32 0, i32* %t3835
  %t3836 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 743
  store i32 0, i32* %t3836
  %t3837 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 744
  store i32 0, i32* %t3837
  %t3838 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 745
  store i32 0, i32* %t3838
  %t3839 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 746
  store i32 0, i32* %t3839
  %t3840 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 747
  store i32 0, i32* %t3840
  %t3841 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 748
  store i32 0, i32* %t3841
  %t3842 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 749
  store i32 0, i32* %t3842
  %t3843 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 750
  store i32 0, i32* %t3843
  %t3844 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 751
  store i32 0, i32* %t3844
  %t3845 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 752
  store i32 0, i32* %t3845
  %t3846 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 753
  store i32 0, i32* %t3846
  %t3847 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 754
  store i32 0, i32* %t3847
  %t3848 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 755
  store i32 0, i32* %t3848
  %t3849 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 756
  store i32 0, i32* %t3849
  %t3850 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 757
  store i32 0, i32* %t3850
  %t3851 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 758
  store i32 0, i32* %t3851
  %t3852 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 759
  store i32 0, i32* %t3852
  %t3853 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 760
  store i32 0, i32* %t3853
  %t3854 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 761
  store i32 0, i32* %t3854
  %t3855 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 762
  store i32 0, i32* %t3855
  %t3856 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 763
  store i32 0, i32* %t3856
  %t3857 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 764
  store i32 0, i32* %t3857
  %t3858 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 765
  store i32 0, i32* %t3858
  %t3859 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 766
  store i32 0, i32* %t3859
  %t3860 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 767
  store i32 0, i32* %t3860
  %t3861 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 768
  store i32 0, i32* %t3861
  %t3862 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 769
  store i32 0, i32* %t3862
  %t3863 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 770
  store i32 0, i32* %t3863
  %t3864 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 771
  store i32 0, i32* %t3864
  %t3865 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 772
  store i32 0, i32* %t3865
  %t3866 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 773
  store i32 0, i32* %t3866
  %t3867 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 774
  store i32 0, i32* %t3867
  %t3868 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 775
  store i32 0, i32* %t3868
  %t3869 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 776
  store i32 0, i32* %t3869
  %t3870 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 777
  store i32 0, i32* %t3870
  %t3871 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 778
  store i32 0, i32* %t3871
  %t3872 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 779
  store i32 0, i32* %t3872
  %t3873 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 780
  store i32 0, i32* %t3873
  %t3874 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 781
  store i32 0, i32* %t3874
  %t3875 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 782
  store i32 0, i32* %t3875
  %t3876 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 783
  store i32 0, i32* %t3876
  %t3877 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 784
  store i32 0, i32* %t3877
  %t3878 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 785
  store i32 0, i32* %t3878
  %t3879 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 786
  store i32 0, i32* %t3879
  %t3880 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 787
  store i32 0, i32* %t3880
  %t3881 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 788
  store i32 0, i32* %t3881
  %t3882 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 789
  store i32 0, i32* %t3882
  %t3883 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 790
  store i32 0, i32* %t3883
  %t3884 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 791
  store i32 0, i32* %t3884
  %t3885 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 792
  store i32 0, i32* %t3885
  %t3886 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 793
  store i32 0, i32* %t3886
  %t3887 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 794
  store i32 0, i32* %t3887
  %t3888 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 795
  store i32 0, i32* %t3888
  %t3889 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 796
  store i32 0, i32* %t3889
  %t3890 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 797
  store i32 0, i32* %t3890
  %t3891 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 798
  store i32 0, i32* %t3891
  %t3892 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 799
  store i32 0, i32* %t3892
  %t3893 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 800
  store i32 0, i32* %t3893
  %t3894 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 801
  store i32 0, i32* %t3894
  %t3895 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 802
  store i32 0, i32* %t3895
  %t3896 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 803
  store i32 0, i32* %t3896
  %t3897 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 804
  store i32 0, i32* %t3897
  %t3898 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 805
  store i32 0, i32* %t3898
  %t3899 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 806
  store i32 0, i32* %t3899
  %t3900 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 807
  store i32 0, i32* %t3900
  %t3901 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 808
  store i32 0, i32* %t3901
  %t3902 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 809
  store i32 0, i32* %t3902
  %t3903 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 810
  store i32 0, i32* %t3903
  %t3904 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 811
  store i32 0, i32* %t3904
  %t3905 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 812
  store i32 0, i32* %t3905
  %t3906 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 813
  store i32 0, i32* %t3906
  %t3907 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 814
  store i32 0, i32* %t3907
  %t3908 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 815
  store i32 0, i32* %t3908
  %t3909 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 816
  store i32 0, i32* %t3909
  %t3910 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 817
  store i32 0, i32* %t3910
  %t3911 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 818
  store i32 0, i32* %t3911
  %t3912 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 819
  store i32 0, i32* %t3912
  %t3913 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 820
  store i32 0, i32* %t3913
  %t3914 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 821
  store i32 0, i32* %t3914
  %t3915 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 822
  store i32 0, i32* %t3915
  %t3916 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 823
  store i32 0, i32* %t3916
  %t3917 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 824
  store i32 0, i32* %t3917
  %t3918 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 825
  store i32 0, i32* %t3918
  %t3919 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 826
  store i32 0, i32* %t3919
  %t3920 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 827
  store i32 0, i32* %t3920
  %t3921 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 828
  store i32 0, i32* %t3921
  %t3922 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 829
  store i32 0, i32* %t3922
  %t3923 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 830
  store i32 0, i32* %t3923
  %t3924 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 831
  store i32 0, i32* %t3924
  %t3925 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 832
  store i32 0, i32* %t3925
  %t3926 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 833
  store i32 0, i32* %t3926
  %t3927 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 834
  store i32 0, i32* %t3927
  %t3928 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 835
  store i32 0, i32* %t3928
  %t3929 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 836
  store i32 0, i32* %t3929
  %t3930 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 837
  store i32 0, i32* %t3930
  %t3931 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 838
  store i32 0, i32* %t3931
  %t3932 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 839
  store i32 0, i32* %t3932
  %t3933 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 840
  store i32 0, i32* %t3933
  %t3934 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 841
  store i32 0, i32* %t3934
  %t3935 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 842
  store i32 0, i32* %t3935
  %t3936 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 843
  store i32 0, i32* %t3936
  %t3937 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 844
  store i32 0, i32* %t3937
  %t3938 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 845
  store i32 0, i32* %t3938
  %t3939 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 846
  store i32 0, i32* %t3939
  %t3940 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 847
  store i32 0, i32* %t3940
  %t3941 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 848
  store i32 0, i32* %t3941
  %t3942 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 849
  store i32 0, i32* %t3942
  %t3943 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 850
  store i32 0, i32* %t3943
  %t3944 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 851
  store i32 0, i32* %t3944
  %t3945 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 852
  store i32 0, i32* %t3945
  %t3946 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 853
  store i32 0, i32* %t3946
  %t3947 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 854
  store i32 0, i32* %t3947
  %t3948 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 855
  store i32 0, i32* %t3948
  %t3949 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 856
  store i32 0, i32* %t3949
  %t3950 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 857
  store i32 0, i32* %t3950
  %t3951 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 858
  store i32 0, i32* %t3951
  %t3952 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 859
  store i32 0, i32* %t3952
  %t3953 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 860
  store i32 0, i32* %t3953
  %t3954 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 861
  store i32 0, i32* %t3954
  %t3955 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 862
  store i32 0, i32* %t3955
  %t3956 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 863
  store i32 0, i32* %t3956
  %t3957 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 864
  store i32 0, i32* %t3957
  %t3958 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 865
  store i32 0, i32* %t3958
  %t3959 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 866
  store i32 0, i32* %t3959
  %t3960 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 867
  store i32 0, i32* %t3960
  %t3961 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 868
  store i32 0, i32* %t3961
  %t3962 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 869
  store i32 0, i32* %t3962
  %t3963 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 870
  store i32 0, i32* %t3963
  %t3964 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 871
  store i32 0, i32* %t3964
  %t3965 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 872
  store i32 0, i32* %t3965
  %t3966 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 873
  store i32 0, i32* %t3966
  %t3967 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 874
  store i32 0, i32* %t3967
  %t3968 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 875
  store i32 0, i32* %t3968
  %t3969 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 876
  store i32 0, i32* %t3969
  %t3970 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 877
  store i32 0, i32* %t3970
  %t3971 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 878
  store i32 0, i32* %t3971
  %t3972 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 879
  store i32 0, i32* %t3972
  %t3973 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 880
  store i32 0, i32* %t3973
  %t3974 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 881
  store i32 0, i32* %t3974
  %t3975 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 882
  store i32 0, i32* %t3975
  %t3976 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 883
  store i32 0, i32* %t3976
  %t3977 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 884
  store i32 0, i32* %t3977
  %t3978 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 885
  store i32 0, i32* %t3978
  %t3979 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 886
  store i32 0, i32* %t3979
  %t3980 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 887
  store i32 0, i32* %t3980
  %t3981 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 888
  store i32 0, i32* %t3981
  %t3982 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 889
  store i32 0, i32* %t3982
  %t3983 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 890
  store i32 0, i32* %t3983
  %t3984 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 891
  store i32 0, i32* %t3984
  %t3985 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 892
  store i32 0, i32* %t3985
  %t3986 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 893
  store i32 0, i32* %t3986
  %t3987 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 894
  store i32 0, i32* %t3987
  %t3988 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 895
  store i32 0, i32* %t3988
  %t3989 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 896
  store i32 0, i32* %t3989
  %t3990 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 897
  store i32 0, i32* %t3990
  %t3991 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 898
  store i32 0, i32* %t3991
  %t3992 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 899
  store i32 0, i32* %t3992
  %t3993 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 900
  store i32 0, i32* %t3993
  %t3994 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 901
  store i32 0, i32* %t3994
  %t3995 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 902
  store i32 0, i32* %t3995
  %t3996 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 903
  store i32 0, i32* %t3996
  %t3997 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 904
  store i32 0, i32* %t3997
  %t3998 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 905
  store i32 0, i32* %t3998
  %t3999 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 906
  store i32 0, i32* %t3999
  %t4000 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 907
  store i32 0, i32* %t4000
  %t4001 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 908
  store i32 0, i32* %t4001
  %t4002 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 909
  store i32 0, i32* %t4002
  %t4003 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 910
  store i32 0, i32* %t4003
  %t4004 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 911
  store i32 0, i32* %t4004
  %t4005 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 912
  store i32 0, i32* %t4005
  %t4006 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 913
  store i32 0, i32* %t4006
  %t4007 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 914
  store i32 0, i32* %t4007
  %t4008 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 915
  store i32 0, i32* %t4008
  %t4009 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 916
  store i32 0, i32* %t4009
  %t4010 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 917
  store i32 0, i32* %t4010
  %t4011 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 918
  store i32 0, i32* %t4011
  %t4012 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 919
  store i32 0, i32* %t4012
  %t4013 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 920
  store i32 0, i32* %t4013
  %t4014 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 921
  store i32 0, i32* %t4014
  %t4015 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 922
  store i32 0, i32* %t4015
  %t4016 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 923
  store i32 0, i32* %t4016
  %t4017 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 924
  store i32 0, i32* %t4017
  %t4018 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 925
  store i32 0, i32* %t4018
  %t4019 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 926
  store i32 0, i32* %t4019
  %t4020 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 927
  store i32 0, i32* %t4020
  %t4021 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 928
  store i32 0, i32* %t4021
  %t4022 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 929
  store i32 0, i32* %t4022
  %t4023 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 930
  store i32 0, i32* %t4023
  %t4024 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 931
  store i32 0, i32* %t4024
  %t4025 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 932
  store i32 0, i32* %t4025
  %t4026 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 933
  store i32 0, i32* %t4026
  %t4027 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 934
  store i32 0, i32* %t4027
  %t4028 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 935
  store i32 0, i32* %t4028
  %t4029 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 936
  store i32 0, i32* %t4029
  %t4030 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 937
  store i32 0, i32* %t4030
  %t4031 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 938
  store i32 0, i32* %t4031
  %t4032 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 939
  store i32 0, i32* %t4032
  %t4033 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 940
  store i32 0, i32* %t4033
  %t4034 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 941
  store i32 0, i32* %t4034
  %t4035 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 942
  store i32 0, i32* %t4035
  %t4036 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 943
  store i32 0, i32* %t4036
  %t4037 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 944
  store i32 0, i32* %t4037
  %t4038 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 945
  store i32 0, i32* %t4038
  %t4039 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 946
  store i32 0, i32* %t4039
  %t4040 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 947
  store i32 0, i32* %t4040
  %t4041 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 948
  store i32 0, i32* %t4041
  %t4042 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 949
  store i32 0, i32* %t4042
  %t4043 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 950
  store i32 0, i32* %t4043
  %t4044 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 951
  store i32 0, i32* %t4044
  %t4045 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 952
  store i32 0, i32* %t4045
  %t4046 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 953
  store i32 0, i32* %t4046
  %t4047 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 954
  store i32 0, i32* %t4047
  %t4048 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 955
  store i32 0, i32* %t4048
  %t4049 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 956
  store i32 0, i32* %t4049
  %t4050 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 957
  store i32 0, i32* %t4050
  %t4051 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 958
  store i32 0, i32* %t4051
  %t4052 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 959
  store i32 0, i32* %t4052
  %t4053 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 960
  store i32 0, i32* %t4053
  %t4054 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 961
  store i32 0, i32* %t4054
  %t4055 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 962
  store i32 0, i32* %t4055
  %t4056 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 963
  store i32 0, i32* %t4056
  %t4057 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 964
  store i32 0, i32* %t4057
  %t4058 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 965
  store i32 0, i32* %t4058
  %t4059 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 966
  store i32 0, i32* %t4059
  %t4060 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 967
  store i32 0, i32* %t4060
  %t4061 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 968
  store i32 0, i32* %t4061
  %t4062 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 969
  store i32 0, i32* %t4062
  %t4063 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 970
  store i32 0, i32* %t4063
  %t4064 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 971
  store i32 0, i32* %t4064
  %t4065 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 972
  store i32 0, i32* %t4065
  %t4066 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 973
  store i32 0, i32* %t4066
  %t4067 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 974
  store i32 0, i32* %t4067
  %t4068 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 975
  store i32 0, i32* %t4068
  %t4069 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 976
  store i32 0, i32* %t4069
  %t4070 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 977
  store i32 0, i32* %t4070
  %t4071 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 978
  store i32 0, i32* %t4071
  %t4072 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 979
  store i32 0, i32* %t4072
  %t4073 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 980
  store i32 0, i32* %t4073
  %t4074 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 981
  store i32 0, i32* %t4074
  %t4075 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 982
  store i32 0, i32* %t4075
  %t4076 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 983
  store i32 0, i32* %t4076
  %t4077 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 984
  store i32 0, i32* %t4077
  %t4078 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 985
  store i32 0, i32* %t4078
  %t4079 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 986
  store i32 0, i32* %t4079
  %t4080 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 987
  store i32 0, i32* %t4080
  %t4081 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 988
  store i32 0, i32* %t4081
  %t4082 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 989
  store i32 0, i32* %t4082
  %t4083 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 990
  store i32 0, i32* %t4083
  %t4084 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 991
  store i32 0, i32* %t4084
  %t4085 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 992
  store i32 0, i32* %t4085
  %t4086 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 993
  store i32 0, i32* %t4086
  %t4087 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 994
  store i32 0, i32* %t4087
  %t4088 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 995
  store i32 0, i32* %t4088
  %t4089 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 996
  store i32 0, i32* %t4089
  %t4090 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 997
  store i32 0, i32* %t4090
  %t4091 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 998
  store i32 0, i32* %t4091
  %t4092 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 999
  store i32 0, i32* %t4092
  %t4093 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1000
  store i32 0, i32* %t4093
  %t4094 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1001
  store i32 0, i32* %t4094
  %t4095 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1002
  store i32 0, i32* %t4095
  %t4096 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1003
  store i32 0, i32* %t4096
  %t4097 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1004
  store i32 0, i32* %t4097
  %t4098 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1005
  store i32 0, i32* %t4098
  %t4099 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1006
  store i32 0, i32* %t4099
  %t4100 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1007
  store i32 0, i32* %t4100
  %t4101 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1008
  store i32 0, i32* %t4101
  %t4102 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1009
  store i32 0, i32* %t4102
  %t4103 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1010
  store i32 0, i32* %t4103
  %t4104 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1011
  store i32 0, i32* %t4104
  %t4105 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1012
  store i32 0, i32* %t4105
  %t4106 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1013
  store i32 0, i32* %t4106
  %t4107 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1014
  store i32 0, i32* %t4107
  %t4108 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1015
  store i32 0, i32* %t4108
  %t4109 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1016
  store i32 0, i32* %t4109
  %t4110 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1017
  store i32 0, i32* %t4110
  %t4111 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1018
  store i32 0, i32* %t4111
  %t4112 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1019
  store i32 0, i32* %t4112
  %t4113 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1020
  store i32 0, i32* %t4113
  %t4114 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1021
  store i32 0, i32* %t4114
  %t4115 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1022
  store i32 0, i32* %t4115
  %t4116 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %b, i64 0, i64 3, i64 1023
  store i32 0, i32* %t4116
  %t4117 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 0, i64 0
  store i32 1, i32* %t4117
  %t4118 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 0, i64 1
  store i32 2, i32* %t4118
  %t4119 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 0, i64 2
  store i32 0, i32* %t4119
  %t4120 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 0, i64 3
  store i32 0, i32* %t4120
  %t4121 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1, i64 0
  store i32 3, i32* %t4121
  %t4122 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1, i64 1
  store i32 4, i32* %t4122
  %t4123 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1, i64 2
  store i32 0, i32* %t4123
  %t4124 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1, i64 3
  store i32 0, i32* %t4124
  %t4125 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 2, i64 0
  store i32 0, i32* %t4125
  %t4126 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 2, i64 1
  store i32 0, i32* %t4126
  %t4127 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 2, i64 2
  store i32 0, i32* %t4127
  %t4128 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 2, i64 3
  store i32 0, i32* %t4128
  %t4129 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 3, i64 0
  store i32 0, i32* %t4129
  %t4130 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 3, i64 1
  store i32 0, i32* %t4130
  %t4131 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 3, i64 2
  store i32 0, i32* %t4131
  %t4132 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 3, i64 3
  store i32 0, i32* %t4132
  %t4133 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 4, i64 0
  store i32 0, i32* %t4133
  %t4134 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 4, i64 1
  store i32 0, i32* %t4134
  %t4135 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 4, i64 2
  store i32 0, i32* %t4135
  %t4136 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 4, i64 3
  store i32 0, i32* %t4136
  %t4137 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 5, i64 0
  store i32 0, i32* %t4137
  %t4138 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 5, i64 1
  store i32 0, i32* %t4138
  %t4139 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 5, i64 2
  store i32 0, i32* %t4139
  %t4140 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 5, i64 3
  store i32 0, i32* %t4140
  %t4141 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 6, i64 0
  store i32 0, i32* %t4141
  %t4142 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 6, i64 1
  store i32 0, i32* %t4142
  %t4143 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 6, i64 2
  store i32 0, i32* %t4143
  %t4144 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 6, i64 3
  store i32 0, i32* %t4144
  %t4145 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 7, i64 0
  store i32 0, i32* %t4145
  %t4146 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 7, i64 1
  store i32 0, i32* %t4146
  %t4147 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 7, i64 2
  store i32 0, i32* %t4147
  %t4148 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 7, i64 3
  store i32 0, i32* %t4148
  %t4149 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 8, i64 0
  store i32 0, i32* %t4149
  %t4150 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 8, i64 1
  store i32 0, i32* %t4150
  %t4151 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 8, i64 2
  store i32 0, i32* %t4151
  %t4152 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 8, i64 3
  store i32 0, i32* %t4152
  %t4153 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 9, i64 0
  store i32 0, i32* %t4153
  %t4154 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 9, i64 1
  store i32 0, i32* %t4154
  %t4155 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 9, i64 2
  store i32 0, i32* %t4155
  %t4156 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 9, i64 3
  store i32 0, i32* %t4156
  %t4157 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 10, i64 0
  store i32 0, i32* %t4157
  %t4158 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 10, i64 1
  store i32 0, i32* %t4158
  %t4159 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 10, i64 2
  store i32 0, i32* %t4159
  %t4160 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 10, i64 3
  store i32 0, i32* %t4160
  %t4161 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 11, i64 0
  store i32 0, i32* %t4161
  %t4162 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 11, i64 1
  store i32 0, i32* %t4162
  %t4163 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 11, i64 2
  store i32 0, i32* %t4163
  %t4164 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 11, i64 3
  store i32 0, i32* %t4164
  %t4165 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 12, i64 0
  store i32 0, i32* %t4165
  %t4166 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 12, i64 1
  store i32 0, i32* %t4166
  %t4167 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 12, i64 2
  store i32 0, i32* %t4167
  %t4168 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 12, i64 3
  store i32 0, i32* %t4168
  %t4169 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 13, i64 0
  store i32 0, i32* %t4169
  %t4170 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 13, i64 1
  store i32 0, i32* %t4170
  %t4171 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 13, i64 2
  store i32 0, i32* %t4171
  %t4172 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 13, i64 3
  store i32 0, i32* %t4172
  %t4173 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 14, i64 0
  store i32 0, i32* %t4173
  %t4174 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 14, i64 1
  store i32 0, i32* %t4174
  %t4175 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 14, i64 2
  store i32 0, i32* %t4175
  %t4176 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 14, i64 3
  store i32 0, i32* %t4176
  %t4177 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 15, i64 0
  store i32 0, i32* %t4177
  %t4178 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 15, i64 1
  store i32 0, i32* %t4178
  %t4179 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 15, i64 2
  store i32 0, i32* %t4179
  %t4180 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 15, i64 3
  store i32 0, i32* %t4180
  %t4181 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 16, i64 0
  store i32 0, i32* %t4181
  %t4182 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 16, i64 1
  store i32 0, i32* %t4182
  %t4183 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 16, i64 2
  store i32 0, i32* %t4183
  %t4184 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 16, i64 3
  store i32 0, i32* %t4184
  %t4185 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 17, i64 0
  store i32 0, i32* %t4185
  %t4186 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 17, i64 1
  store i32 0, i32* %t4186
  %t4187 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 17, i64 2
  store i32 0, i32* %t4187
  %t4188 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 17, i64 3
  store i32 0, i32* %t4188
  %t4189 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 18, i64 0
  store i32 0, i32* %t4189
  %t4190 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 18, i64 1
  store i32 0, i32* %t4190
  %t4191 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 18, i64 2
  store i32 0, i32* %t4191
  %t4192 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 18, i64 3
  store i32 0, i32* %t4192
  %t4193 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 19, i64 0
  store i32 0, i32* %t4193
  %t4194 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 19, i64 1
  store i32 0, i32* %t4194
  %t4195 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 19, i64 2
  store i32 0, i32* %t4195
  %t4196 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 19, i64 3
  store i32 0, i32* %t4196
  %t4197 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 20, i64 0
  store i32 0, i32* %t4197
  %t4198 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 20, i64 1
  store i32 0, i32* %t4198
  %t4199 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 20, i64 2
  store i32 0, i32* %t4199
  %t4200 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 20, i64 3
  store i32 0, i32* %t4200
  %t4201 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 21, i64 0
  store i32 0, i32* %t4201
  %t4202 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 21, i64 1
  store i32 0, i32* %t4202
  %t4203 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 21, i64 2
  store i32 0, i32* %t4203
  %t4204 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 21, i64 3
  store i32 0, i32* %t4204
  %t4205 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 22, i64 0
  store i32 0, i32* %t4205
  %t4206 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 22, i64 1
  store i32 0, i32* %t4206
  %t4207 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 22, i64 2
  store i32 0, i32* %t4207
  %t4208 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 22, i64 3
  store i32 0, i32* %t4208
  %t4209 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 23, i64 0
  store i32 0, i32* %t4209
  %t4210 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 23, i64 1
  store i32 0, i32* %t4210
  %t4211 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 23, i64 2
  store i32 0, i32* %t4211
  %t4212 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 23, i64 3
  store i32 0, i32* %t4212
  %t4213 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 24, i64 0
  store i32 0, i32* %t4213
  %t4214 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 24, i64 1
  store i32 0, i32* %t4214
  %t4215 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 24, i64 2
  store i32 0, i32* %t4215
  %t4216 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 24, i64 3
  store i32 0, i32* %t4216
  %t4217 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 25, i64 0
  store i32 0, i32* %t4217
  %t4218 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 25, i64 1
  store i32 0, i32* %t4218
  %t4219 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 25, i64 2
  store i32 0, i32* %t4219
  %t4220 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 25, i64 3
  store i32 0, i32* %t4220
  %t4221 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 26, i64 0
  store i32 0, i32* %t4221
  %t4222 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 26, i64 1
  store i32 0, i32* %t4222
  %t4223 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 26, i64 2
  store i32 0, i32* %t4223
  %t4224 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 26, i64 3
  store i32 0, i32* %t4224
  %t4225 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 27, i64 0
  store i32 0, i32* %t4225
  %t4226 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 27, i64 1
  store i32 0, i32* %t4226
  %t4227 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 27, i64 2
  store i32 0, i32* %t4227
  %t4228 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 27, i64 3
  store i32 0, i32* %t4228
  %t4229 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 28, i64 0
  store i32 0, i32* %t4229
  %t4230 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 28, i64 1
  store i32 0, i32* %t4230
  %t4231 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 28, i64 2
  store i32 0, i32* %t4231
  %t4232 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 28, i64 3
  store i32 0, i32* %t4232
  %t4233 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 29, i64 0
  store i32 0, i32* %t4233
  %t4234 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 29, i64 1
  store i32 0, i32* %t4234
  %t4235 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 29, i64 2
  store i32 0, i32* %t4235
  %t4236 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 29, i64 3
  store i32 0, i32* %t4236
  %t4237 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 30, i64 0
  store i32 0, i32* %t4237
  %t4238 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 30, i64 1
  store i32 0, i32* %t4238
  %t4239 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 30, i64 2
  store i32 0, i32* %t4239
  %t4240 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 30, i64 3
  store i32 0, i32* %t4240
  %t4241 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 31, i64 0
  store i32 0, i32* %t4241
  %t4242 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 31, i64 1
  store i32 0, i32* %t4242
  %t4243 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 31, i64 2
  store i32 0, i32* %t4243
  %t4244 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 31, i64 3
  store i32 0, i32* %t4244
  %t4245 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 32, i64 0
  store i32 0, i32* %t4245
  %t4246 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 32, i64 1
  store i32 0, i32* %t4246
  %t4247 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 32, i64 2
  store i32 0, i32* %t4247
  %t4248 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 32, i64 3
  store i32 0, i32* %t4248
  %t4249 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 33, i64 0
  store i32 0, i32* %t4249
  %t4250 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 33, i64 1
  store i32 0, i32* %t4250
  %t4251 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 33, i64 2
  store i32 0, i32* %t4251
  %t4252 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 33, i64 3
  store i32 0, i32* %t4252
  %t4253 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 34, i64 0
  store i32 0, i32* %t4253
  %t4254 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 34, i64 1
  store i32 0, i32* %t4254
  %t4255 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 34, i64 2
  store i32 0, i32* %t4255
  %t4256 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 34, i64 3
  store i32 0, i32* %t4256
  %t4257 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 35, i64 0
  store i32 0, i32* %t4257
  %t4258 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 35, i64 1
  store i32 0, i32* %t4258
  %t4259 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 35, i64 2
  store i32 0, i32* %t4259
  %t4260 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 35, i64 3
  store i32 0, i32* %t4260
  %t4261 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 36, i64 0
  store i32 0, i32* %t4261
  %t4262 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 36, i64 1
  store i32 0, i32* %t4262
  %t4263 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 36, i64 2
  store i32 0, i32* %t4263
  %t4264 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 36, i64 3
  store i32 0, i32* %t4264
  %t4265 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 37, i64 0
  store i32 0, i32* %t4265
  %t4266 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 37, i64 1
  store i32 0, i32* %t4266
  %t4267 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 37, i64 2
  store i32 0, i32* %t4267
  %t4268 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 37, i64 3
  store i32 0, i32* %t4268
  %t4269 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 38, i64 0
  store i32 0, i32* %t4269
  %t4270 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 38, i64 1
  store i32 0, i32* %t4270
  %t4271 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 38, i64 2
  store i32 0, i32* %t4271
  %t4272 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 38, i64 3
  store i32 0, i32* %t4272
  %t4273 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 39, i64 0
  store i32 0, i32* %t4273
  %t4274 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 39, i64 1
  store i32 0, i32* %t4274
  %t4275 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 39, i64 2
  store i32 0, i32* %t4275
  %t4276 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 39, i64 3
  store i32 0, i32* %t4276
  %t4277 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 40, i64 0
  store i32 0, i32* %t4277
  %t4278 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 40, i64 1
  store i32 0, i32* %t4278
  %t4279 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 40, i64 2
  store i32 0, i32* %t4279
  %t4280 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 40, i64 3
  store i32 0, i32* %t4280
  %t4281 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 41, i64 0
  store i32 0, i32* %t4281
  %t4282 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 41, i64 1
  store i32 0, i32* %t4282
  %t4283 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 41, i64 2
  store i32 0, i32* %t4283
  %t4284 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 41, i64 3
  store i32 0, i32* %t4284
  %t4285 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 42, i64 0
  store i32 0, i32* %t4285
  %t4286 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 42, i64 1
  store i32 0, i32* %t4286
  %t4287 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 42, i64 2
  store i32 0, i32* %t4287
  %t4288 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 42, i64 3
  store i32 0, i32* %t4288
  %t4289 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 43, i64 0
  store i32 0, i32* %t4289
  %t4290 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 43, i64 1
  store i32 0, i32* %t4290
  %t4291 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 43, i64 2
  store i32 0, i32* %t4291
  %t4292 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 43, i64 3
  store i32 0, i32* %t4292
  %t4293 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 44, i64 0
  store i32 0, i32* %t4293
  %t4294 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 44, i64 1
  store i32 0, i32* %t4294
  %t4295 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 44, i64 2
  store i32 0, i32* %t4295
  %t4296 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 44, i64 3
  store i32 0, i32* %t4296
  %t4297 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 45, i64 0
  store i32 0, i32* %t4297
  %t4298 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 45, i64 1
  store i32 0, i32* %t4298
  %t4299 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 45, i64 2
  store i32 0, i32* %t4299
  %t4300 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 45, i64 3
  store i32 0, i32* %t4300
  %t4301 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 46, i64 0
  store i32 0, i32* %t4301
  %t4302 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 46, i64 1
  store i32 0, i32* %t4302
  %t4303 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 46, i64 2
  store i32 0, i32* %t4303
  %t4304 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 46, i64 3
  store i32 0, i32* %t4304
  %t4305 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 47, i64 0
  store i32 0, i32* %t4305
  %t4306 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 47, i64 1
  store i32 0, i32* %t4306
  %t4307 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 47, i64 2
  store i32 0, i32* %t4307
  %t4308 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 47, i64 3
  store i32 0, i32* %t4308
  %t4309 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 48, i64 0
  store i32 0, i32* %t4309
  %t4310 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 48, i64 1
  store i32 0, i32* %t4310
  %t4311 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 48, i64 2
  store i32 0, i32* %t4311
  %t4312 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 48, i64 3
  store i32 0, i32* %t4312
  %t4313 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 49, i64 0
  store i32 0, i32* %t4313
  %t4314 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 49, i64 1
  store i32 0, i32* %t4314
  %t4315 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 49, i64 2
  store i32 0, i32* %t4315
  %t4316 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 49, i64 3
  store i32 0, i32* %t4316
  %t4317 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 50, i64 0
  store i32 0, i32* %t4317
  %t4318 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 50, i64 1
  store i32 0, i32* %t4318
  %t4319 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 50, i64 2
  store i32 0, i32* %t4319
  %t4320 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 50, i64 3
  store i32 0, i32* %t4320
  %t4321 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 51, i64 0
  store i32 0, i32* %t4321
  %t4322 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 51, i64 1
  store i32 0, i32* %t4322
  %t4323 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 51, i64 2
  store i32 0, i32* %t4323
  %t4324 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 51, i64 3
  store i32 0, i32* %t4324
  %t4325 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 52, i64 0
  store i32 0, i32* %t4325
  %t4326 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 52, i64 1
  store i32 0, i32* %t4326
  %t4327 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 52, i64 2
  store i32 0, i32* %t4327
  %t4328 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 52, i64 3
  store i32 0, i32* %t4328
  %t4329 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 53, i64 0
  store i32 0, i32* %t4329
  %t4330 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 53, i64 1
  store i32 0, i32* %t4330
  %t4331 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 53, i64 2
  store i32 0, i32* %t4331
  %t4332 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 53, i64 3
  store i32 0, i32* %t4332
  %t4333 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 54, i64 0
  store i32 0, i32* %t4333
  %t4334 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 54, i64 1
  store i32 0, i32* %t4334
  %t4335 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 54, i64 2
  store i32 0, i32* %t4335
  %t4336 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 54, i64 3
  store i32 0, i32* %t4336
  %t4337 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 55, i64 0
  store i32 0, i32* %t4337
  %t4338 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 55, i64 1
  store i32 0, i32* %t4338
  %t4339 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 55, i64 2
  store i32 0, i32* %t4339
  %t4340 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 55, i64 3
  store i32 0, i32* %t4340
  %t4341 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 56, i64 0
  store i32 0, i32* %t4341
  %t4342 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 56, i64 1
  store i32 0, i32* %t4342
  %t4343 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 56, i64 2
  store i32 0, i32* %t4343
  %t4344 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 56, i64 3
  store i32 0, i32* %t4344
  %t4345 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 57, i64 0
  store i32 0, i32* %t4345
  %t4346 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 57, i64 1
  store i32 0, i32* %t4346
  %t4347 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 57, i64 2
  store i32 0, i32* %t4347
  %t4348 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 57, i64 3
  store i32 0, i32* %t4348
  %t4349 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 58, i64 0
  store i32 0, i32* %t4349
  %t4350 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 58, i64 1
  store i32 0, i32* %t4350
  %t4351 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 58, i64 2
  store i32 0, i32* %t4351
  %t4352 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 58, i64 3
  store i32 0, i32* %t4352
  %t4353 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 59, i64 0
  store i32 0, i32* %t4353
  %t4354 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 59, i64 1
  store i32 0, i32* %t4354
  %t4355 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 59, i64 2
  store i32 0, i32* %t4355
  %t4356 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 59, i64 3
  store i32 0, i32* %t4356
  %t4357 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 60, i64 0
  store i32 0, i32* %t4357
  %t4358 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 60, i64 1
  store i32 0, i32* %t4358
  %t4359 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 60, i64 2
  store i32 0, i32* %t4359
  %t4360 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 60, i64 3
  store i32 0, i32* %t4360
  %t4361 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 61, i64 0
  store i32 0, i32* %t4361
  %t4362 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 61, i64 1
  store i32 0, i32* %t4362
  %t4363 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 61, i64 2
  store i32 0, i32* %t4363
  %t4364 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 61, i64 3
  store i32 0, i32* %t4364
  %t4365 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 62, i64 0
  store i32 0, i32* %t4365
  %t4366 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 62, i64 1
  store i32 0, i32* %t4366
  %t4367 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 62, i64 2
  store i32 0, i32* %t4367
  %t4368 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 62, i64 3
  store i32 0, i32* %t4368
  %t4369 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 63, i64 0
  store i32 0, i32* %t4369
  %t4370 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 63, i64 1
  store i32 0, i32* %t4370
  %t4371 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 63, i64 2
  store i32 0, i32* %t4371
  %t4372 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 63, i64 3
  store i32 0, i32* %t4372
  %t4373 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 64, i64 0
  store i32 0, i32* %t4373
  %t4374 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 64, i64 1
  store i32 0, i32* %t4374
  %t4375 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 64, i64 2
  store i32 0, i32* %t4375
  %t4376 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 64, i64 3
  store i32 0, i32* %t4376
  %t4377 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 65, i64 0
  store i32 0, i32* %t4377
  %t4378 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 65, i64 1
  store i32 0, i32* %t4378
  %t4379 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 65, i64 2
  store i32 0, i32* %t4379
  %t4380 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 65, i64 3
  store i32 0, i32* %t4380
  %t4381 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 66, i64 0
  store i32 0, i32* %t4381
  %t4382 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 66, i64 1
  store i32 0, i32* %t4382
  %t4383 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 66, i64 2
  store i32 0, i32* %t4383
  %t4384 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 66, i64 3
  store i32 0, i32* %t4384
  %t4385 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 67, i64 0
  store i32 0, i32* %t4385
  %t4386 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 67, i64 1
  store i32 0, i32* %t4386
  %t4387 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 67, i64 2
  store i32 0, i32* %t4387
  %t4388 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 67, i64 3
  store i32 0, i32* %t4388
  %t4389 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 68, i64 0
  store i32 0, i32* %t4389
  %t4390 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 68, i64 1
  store i32 0, i32* %t4390
  %t4391 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 68, i64 2
  store i32 0, i32* %t4391
  %t4392 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 68, i64 3
  store i32 0, i32* %t4392
  %t4393 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 69, i64 0
  store i32 0, i32* %t4393
  %t4394 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 69, i64 1
  store i32 0, i32* %t4394
  %t4395 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 69, i64 2
  store i32 0, i32* %t4395
  %t4396 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 69, i64 3
  store i32 0, i32* %t4396
  %t4397 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 70, i64 0
  store i32 0, i32* %t4397
  %t4398 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 70, i64 1
  store i32 0, i32* %t4398
  %t4399 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 70, i64 2
  store i32 0, i32* %t4399
  %t4400 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 70, i64 3
  store i32 0, i32* %t4400
  %t4401 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 71, i64 0
  store i32 0, i32* %t4401
  %t4402 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 71, i64 1
  store i32 0, i32* %t4402
  %t4403 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 71, i64 2
  store i32 0, i32* %t4403
  %t4404 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 71, i64 3
  store i32 0, i32* %t4404
  %t4405 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 72, i64 0
  store i32 0, i32* %t4405
  %t4406 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 72, i64 1
  store i32 0, i32* %t4406
  %t4407 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 72, i64 2
  store i32 0, i32* %t4407
  %t4408 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 72, i64 3
  store i32 0, i32* %t4408
  %t4409 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 73, i64 0
  store i32 0, i32* %t4409
  %t4410 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 73, i64 1
  store i32 0, i32* %t4410
  %t4411 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 73, i64 2
  store i32 0, i32* %t4411
  %t4412 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 73, i64 3
  store i32 0, i32* %t4412
  %t4413 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 74, i64 0
  store i32 0, i32* %t4413
  %t4414 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 74, i64 1
  store i32 0, i32* %t4414
  %t4415 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 74, i64 2
  store i32 0, i32* %t4415
  %t4416 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 74, i64 3
  store i32 0, i32* %t4416
  %t4417 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 75, i64 0
  store i32 0, i32* %t4417
  %t4418 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 75, i64 1
  store i32 0, i32* %t4418
  %t4419 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 75, i64 2
  store i32 0, i32* %t4419
  %t4420 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 75, i64 3
  store i32 0, i32* %t4420
  %t4421 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 76, i64 0
  store i32 0, i32* %t4421
  %t4422 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 76, i64 1
  store i32 0, i32* %t4422
  %t4423 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 76, i64 2
  store i32 0, i32* %t4423
  %t4424 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 76, i64 3
  store i32 0, i32* %t4424
  %t4425 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 77, i64 0
  store i32 0, i32* %t4425
  %t4426 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 77, i64 1
  store i32 0, i32* %t4426
  %t4427 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 77, i64 2
  store i32 0, i32* %t4427
  %t4428 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 77, i64 3
  store i32 0, i32* %t4428
  %t4429 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 78, i64 0
  store i32 0, i32* %t4429
  %t4430 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 78, i64 1
  store i32 0, i32* %t4430
  %t4431 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 78, i64 2
  store i32 0, i32* %t4431
  %t4432 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 78, i64 3
  store i32 0, i32* %t4432
  %t4433 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 79, i64 0
  store i32 0, i32* %t4433
  %t4434 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 79, i64 1
  store i32 0, i32* %t4434
  %t4435 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 79, i64 2
  store i32 0, i32* %t4435
  %t4436 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 79, i64 3
  store i32 0, i32* %t4436
  %t4437 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 80, i64 0
  store i32 0, i32* %t4437
  %t4438 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 80, i64 1
  store i32 0, i32* %t4438
  %t4439 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 80, i64 2
  store i32 0, i32* %t4439
  %t4440 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 80, i64 3
  store i32 0, i32* %t4440
  %t4441 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 81, i64 0
  store i32 0, i32* %t4441
  %t4442 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 81, i64 1
  store i32 0, i32* %t4442
  %t4443 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 81, i64 2
  store i32 0, i32* %t4443
  %t4444 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 81, i64 3
  store i32 0, i32* %t4444
  %t4445 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 82, i64 0
  store i32 0, i32* %t4445
  %t4446 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 82, i64 1
  store i32 0, i32* %t4446
  %t4447 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 82, i64 2
  store i32 0, i32* %t4447
  %t4448 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 82, i64 3
  store i32 0, i32* %t4448
  %t4449 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 83, i64 0
  store i32 0, i32* %t4449
  %t4450 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 83, i64 1
  store i32 0, i32* %t4450
  %t4451 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 83, i64 2
  store i32 0, i32* %t4451
  %t4452 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 83, i64 3
  store i32 0, i32* %t4452
  %t4453 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 84, i64 0
  store i32 0, i32* %t4453
  %t4454 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 84, i64 1
  store i32 0, i32* %t4454
  %t4455 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 84, i64 2
  store i32 0, i32* %t4455
  %t4456 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 84, i64 3
  store i32 0, i32* %t4456
  %t4457 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 85, i64 0
  store i32 0, i32* %t4457
  %t4458 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 85, i64 1
  store i32 0, i32* %t4458
  %t4459 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 85, i64 2
  store i32 0, i32* %t4459
  %t4460 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 85, i64 3
  store i32 0, i32* %t4460
  %t4461 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 86, i64 0
  store i32 0, i32* %t4461
  %t4462 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 86, i64 1
  store i32 0, i32* %t4462
  %t4463 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 86, i64 2
  store i32 0, i32* %t4463
  %t4464 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 86, i64 3
  store i32 0, i32* %t4464
  %t4465 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 87, i64 0
  store i32 0, i32* %t4465
  %t4466 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 87, i64 1
  store i32 0, i32* %t4466
  %t4467 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 87, i64 2
  store i32 0, i32* %t4467
  %t4468 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 87, i64 3
  store i32 0, i32* %t4468
  %t4469 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 88, i64 0
  store i32 0, i32* %t4469
  %t4470 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 88, i64 1
  store i32 0, i32* %t4470
  %t4471 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 88, i64 2
  store i32 0, i32* %t4471
  %t4472 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 88, i64 3
  store i32 0, i32* %t4472
  %t4473 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 89, i64 0
  store i32 0, i32* %t4473
  %t4474 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 89, i64 1
  store i32 0, i32* %t4474
  %t4475 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 89, i64 2
  store i32 0, i32* %t4475
  %t4476 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 89, i64 3
  store i32 0, i32* %t4476
  %t4477 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 90, i64 0
  store i32 0, i32* %t4477
  %t4478 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 90, i64 1
  store i32 0, i32* %t4478
  %t4479 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 90, i64 2
  store i32 0, i32* %t4479
  %t4480 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 90, i64 3
  store i32 0, i32* %t4480
  %t4481 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 91, i64 0
  store i32 0, i32* %t4481
  %t4482 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 91, i64 1
  store i32 0, i32* %t4482
  %t4483 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 91, i64 2
  store i32 0, i32* %t4483
  %t4484 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 91, i64 3
  store i32 0, i32* %t4484
  %t4485 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 92, i64 0
  store i32 0, i32* %t4485
  %t4486 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 92, i64 1
  store i32 0, i32* %t4486
  %t4487 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 92, i64 2
  store i32 0, i32* %t4487
  %t4488 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 92, i64 3
  store i32 0, i32* %t4488
  %t4489 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 93, i64 0
  store i32 0, i32* %t4489
  %t4490 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 93, i64 1
  store i32 0, i32* %t4490
  %t4491 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 93, i64 2
  store i32 0, i32* %t4491
  %t4492 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 93, i64 3
  store i32 0, i32* %t4492
  %t4493 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 94, i64 0
  store i32 0, i32* %t4493
  %t4494 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 94, i64 1
  store i32 0, i32* %t4494
  %t4495 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 94, i64 2
  store i32 0, i32* %t4495
  %t4496 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 94, i64 3
  store i32 0, i32* %t4496
  %t4497 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 95, i64 0
  store i32 0, i32* %t4497
  %t4498 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 95, i64 1
  store i32 0, i32* %t4498
  %t4499 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 95, i64 2
  store i32 0, i32* %t4499
  %t4500 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 95, i64 3
  store i32 0, i32* %t4500
  %t4501 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 96, i64 0
  store i32 0, i32* %t4501
  %t4502 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 96, i64 1
  store i32 0, i32* %t4502
  %t4503 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 96, i64 2
  store i32 0, i32* %t4503
  %t4504 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 96, i64 3
  store i32 0, i32* %t4504
  %t4505 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 97, i64 0
  store i32 0, i32* %t4505
  %t4506 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 97, i64 1
  store i32 0, i32* %t4506
  %t4507 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 97, i64 2
  store i32 0, i32* %t4507
  %t4508 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 97, i64 3
  store i32 0, i32* %t4508
  %t4509 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 98, i64 0
  store i32 0, i32* %t4509
  %t4510 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 98, i64 1
  store i32 0, i32* %t4510
  %t4511 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 98, i64 2
  store i32 0, i32* %t4511
  %t4512 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 98, i64 3
  store i32 0, i32* %t4512
  %t4513 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 99, i64 0
  store i32 0, i32* %t4513
  %t4514 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 99, i64 1
  store i32 0, i32* %t4514
  %t4515 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 99, i64 2
  store i32 0, i32* %t4515
  %t4516 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 99, i64 3
  store i32 0, i32* %t4516
  %t4517 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 100, i64 0
  store i32 0, i32* %t4517
  %t4518 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 100, i64 1
  store i32 0, i32* %t4518
  %t4519 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 100, i64 2
  store i32 0, i32* %t4519
  %t4520 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 100, i64 3
  store i32 0, i32* %t4520
  %t4521 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 101, i64 0
  store i32 0, i32* %t4521
  %t4522 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 101, i64 1
  store i32 0, i32* %t4522
  %t4523 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 101, i64 2
  store i32 0, i32* %t4523
  %t4524 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 101, i64 3
  store i32 0, i32* %t4524
  %t4525 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 102, i64 0
  store i32 0, i32* %t4525
  %t4526 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 102, i64 1
  store i32 0, i32* %t4526
  %t4527 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 102, i64 2
  store i32 0, i32* %t4527
  %t4528 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 102, i64 3
  store i32 0, i32* %t4528
  %t4529 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 103, i64 0
  store i32 0, i32* %t4529
  %t4530 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 103, i64 1
  store i32 0, i32* %t4530
  %t4531 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 103, i64 2
  store i32 0, i32* %t4531
  %t4532 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 103, i64 3
  store i32 0, i32* %t4532
  %t4533 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 104, i64 0
  store i32 0, i32* %t4533
  %t4534 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 104, i64 1
  store i32 0, i32* %t4534
  %t4535 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 104, i64 2
  store i32 0, i32* %t4535
  %t4536 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 104, i64 3
  store i32 0, i32* %t4536
  %t4537 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 105, i64 0
  store i32 0, i32* %t4537
  %t4538 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 105, i64 1
  store i32 0, i32* %t4538
  %t4539 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 105, i64 2
  store i32 0, i32* %t4539
  %t4540 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 105, i64 3
  store i32 0, i32* %t4540
  %t4541 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 106, i64 0
  store i32 0, i32* %t4541
  %t4542 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 106, i64 1
  store i32 0, i32* %t4542
  %t4543 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 106, i64 2
  store i32 0, i32* %t4543
  %t4544 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 106, i64 3
  store i32 0, i32* %t4544
  %t4545 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 107, i64 0
  store i32 0, i32* %t4545
  %t4546 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 107, i64 1
  store i32 0, i32* %t4546
  %t4547 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 107, i64 2
  store i32 0, i32* %t4547
  %t4548 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 107, i64 3
  store i32 0, i32* %t4548
  %t4549 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 108, i64 0
  store i32 0, i32* %t4549
  %t4550 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 108, i64 1
  store i32 0, i32* %t4550
  %t4551 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 108, i64 2
  store i32 0, i32* %t4551
  %t4552 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 108, i64 3
  store i32 0, i32* %t4552
  %t4553 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 109, i64 0
  store i32 0, i32* %t4553
  %t4554 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 109, i64 1
  store i32 0, i32* %t4554
  %t4555 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 109, i64 2
  store i32 0, i32* %t4555
  %t4556 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 109, i64 3
  store i32 0, i32* %t4556
  %t4557 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 110, i64 0
  store i32 0, i32* %t4557
  %t4558 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 110, i64 1
  store i32 0, i32* %t4558
  %t4559 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 110, i64 2
  store i32 0, i32* %t4559
  %t4560 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 110, i64 3
  store i32 0, i32* %t4560
  %t4561 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 111, i64 0
  store i32 0, i32* %t4561
  %t4562 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 111, i64 1
  store i32 0, i32* %t4562
  %t4563 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 111, i64 2
  store i32 0, i32* %t4563
  %t4564 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 111, i64 3
  store i32 0, i32* %t4564
  %t4565 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 112, i64 0
  store i32 0, i32* %t4565
  %t4566 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 112, i64 1
  store i32 0, i32* %t4566
  %t4567 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 112, i64 2
  store i32 0, i32* %t4567
  %t4568 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 112, i64 3
  store i32 0, i32* %t4568
  %t4569 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 113, i64 0
  store i32 0, i32* %t4569
  %t4570 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 113, i64 1
  store i32 0, i32* %t4570
  %t4571 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 113, i64 2
  store i32 0, i32* %t4571
  %t4572 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 113, i64 3
  store i32 0, i32* %t4572
  %t4573 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 114, i64 0
  store i32 0, i32* %t4573
  %t4574 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 114, i64 1
  store i32 0, i32* %t4574
  %t4575 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 114, i64 2
  store i32 0, i32* %t4575
  %t4576 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 114, i64 3
  store i32 0, i32* %t4576
  %t4577 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 115, i64 0
  store i32 0, i32* %t4577
  %t4578 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 115, i64 1
  store i32 0, i32* %t4578
  %t4579 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 115, i64 2
  store i32 0, i32* %t4579
  %t4580 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 115, i64 3
  store i32 0, i32* %t4580
  %t4581 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 116, i64 0
  store i32 0, i32* %t4581
  %t4582 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 116, i64 1
  store i32 0, i32* %t4582
  %t4583 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 116, i64 2
  store i32 0, i32* %t4583
  %t4584 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 116, i64 3
  store i32 0, i32* %t4584
  %t4585 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 117, i64 0
  store i32 0, i32* %t4585
  %t4586 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 117, i64 1
  store i32 0, i32* %t4586
  %t4587 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 117, i64 2
  store i32 0, i32* %t4587
  %t4588 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 117, i64 3
  store i32 0, i32* %t4588
  %t4589 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 118, i64 0
  store i32 0, i32* %t4589
  %t4590 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 118, i64 1
  store i32 0, i32* %t4590
  %t4591 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 118, i64 2
  store i32 0, i32* %t4591
  %t4592 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 118, i64 3
  store i32 0, i32* %t4592
  %t4593 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 119, i64 0
  store i32 0, i32* %t4593
  %t4594 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 119, i64 1
  store i32 0, i32* %t4594
  %t4595 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 119, i64 2
  store i32 0, i32* %t4595
  %t4596 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 119, i64 3
  store i32 0, i32* %t4596
  %t4597 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 120, i64 0
  store i32 0, i32* %t4597
  %t4598 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 120, i64 1
  store i32 0, i32* %t4598
  %t4599 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 120, i64 2
  store i32 0, i32* %t4599
  %t4600 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 120, i64 3
  store i32 0, i32* %t4600
  %t4601 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 121, i64 0
  store i32 0, i32* %t4601
  %t4602 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 121, i64 1
  store i32 0, i32* %t4602
  %t4603 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 121, i64 2
  store i32 0, i32* %t4603
  %t4604 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 121, i64 3
  store i32 0, i32* %t4604
  %t4605 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 122, i64 0
  store i32 0, i32* %t4605
  %t4606 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 122, i64 1
  store i32 0, i32* %t4606
  %t4607 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 122, i64 2
  store i32 0, i32* %t4607
  %t4608 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 122, i64 3
  store i32 0, i32* %t4608
  %t4609 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 123, i64 0
  store i32 0, i32* %t4609
  %t4610 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 123, i64 1
  store i32 0, i32* %t4610
  %t4611 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 123, i64 2
  store i32 0, i32* %t4611
  %t4612 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 123, i64 3
  store i32 0, i32* %t4612
  %t4613 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 124, i64 0
  store i32 0, i32* %t4613
  %t4614 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 124, i64 1
  store i32 0, i32* %t4614
  %t4615 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 124, i64 2
  store i32 0, i32* %t4615
  %t4616 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 124, i64 3
  store i32 0, i32* %t4616
  %t4617 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 125, i64 0
  store i32 0, i32* %t4617
  %t4618 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 125, i64 1
  store i32 0, i32* %t4618
  %t4619 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 125, i64 2
  store i32 0, i32* %t4619
  %t4620 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 125, i64 3
  store i32 0, i32* %t4620
  %t4621 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 126, i64 0
  store i32 0, i32* %t4621
  %t4622 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 126, i64 1
  store i32 0, i32* %t4622
  %t4623 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 126, i64 2
  store i32 0, i32* %t4623
  %t4624 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 126, i64 3
  store i32 0, i32* %t4624
  %t4625 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 127, i64 0
  store i32 0, i32* %t4625
  %t4626 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 127, i64 1
  store i32 0, i32* %t4626
  %t4627 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 127, i64 2
  store i32 0, i32* %t4627
  %t4628 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 127, i64 3
  store i32 0, i32* %t4628
  %t4629 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 128, i64 0
  store i32 0, i32* %t4629
  %t4630 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 128, i64 1
  store i32 0, i32* %t4630
  %t4631 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 128, i64 2
  store i32 0, i32* %t4631
  %t4632 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 128, i64 3
  store i32 0, i32* %t4632
  %t4633 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 129, i64 0
  store i32 0, i32* %t4633
  %t4634 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 129, i64 1
  store i32 0, i32* %t4634
  %t4635 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 129, i64 2
  store i32 0, i32* %t4635
  %t4636 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 129, i64 3
  store i32 0, i32* %t4636
  %t4637 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 130, i64 0
  store i32 0, i32* %t4637
  %t4638 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 130, i64 1
  store i32 0, i32* %t4638
  %t4639 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 130, i64 2
  store i32 0, i32* %t4639
  %t4640 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 130, i64 3
  store i32 0, i32* %t4640
  %t4641 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 131, i64 0
  store i32 0, i32* %t4641
  %t4642 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 131, i64 1
  store i32 0, i32* %t4642
  %t4643 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 131, i64 2
  store i32 0, i32* %t4643
  %t4644 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 131, i64 3
  store i32 0, i32* %t4644
  %t4645 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 132, i64 0
  store i32 0, i32* %t4645
  %t4646 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 132, i64 1
  store i32 0, i32* %t4646
  %t4647 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 132, i64 2
  store i32 0, i32* %t4647
  %t4648 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 132, i64 3
  store i32 0, i32* %t4648
  %t4649 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 133, i64 0
  store i32 0, i32* %t4649
  %t4650 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 133, i64 1
  store i32 0, i32* %t4650
  %t4651 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 133, i64 2
  store i32 0, i32* %t4651
  %t4652 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 133, i64 3
  store i32 0, i32* %t4652
  %t4653 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 134, i64 0
  store i32 0, i32* %t4653
  %t4654 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 134, i64 1
  store i32 0, i32* %t4654
  %t4655 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 134, i64 2
  store i32 0, i32* %t4655
  %t4656 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 134, i64 3
  store i32 0, i32* %t4656
  %t4657 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 135, i64 0
  store i32 0, i32* %t4657
  %t4658 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 135, i64 1
  store i32 0, i32* %t4658
  %t4659 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 135, i64 2
  store i32 0, i32* %t4659
  %t4660 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 135, i64 3
  store i32 0, i32* %t4660
  %t4661 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 136, i64 0
  store i32 0, i32* %t4661
  %t4662 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 136, i64 1
  store i32 0, i32* %t4662
  %t4663 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 136, i64 2
  store i32 0, i32* %t4663
  %t4664 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 136, i64 3
  store i32 0, i32* %t4664
  %t4665 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 137, i64 0
  store i32 0, i32* %t4665
  %t4666 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 137, i64 1
  store i32 0, i32* %t4666
  %t4667 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 137, i64 2
  store i32 0, i32* %t4667
  %t4668 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 137, i64 3
  store i32 0, i32* %t4668
  %t4669 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 138, i64 0
  store i32 0, i32* %t4669
  %t4670 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 138, i64 1
  store i32 0, i32* %t4670
  %t4671 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 138, i64 2
  store i32 0, i32* %t4671
  %t4672 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 138, i64 3
  store i32 0, i32* %t4672
  %t4673 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 139, i64 0
  store i32 0, i32* %t4673
  %t4674 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 139, i64 1
  store i32 0, i32* %t4674
  %t4675 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 139, i64 2
  store i32 0, i32* %t4675
  %t4676 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 139, i64 3
  store i32 0, i32* %t4676
  %t4677 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 140, i64 0
  store i32 0, i32* %t4677
  %t4678 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 140, i64 1
  store i32 0, i32* %t4678
  %t4679 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 140, i64 2
  store i32 0, i32* %t4679
  %t4680 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 140, i64 3
  store i32 0, i32* %t4680
  %t4681 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 141, i64 0
  store i32 0, i32* %t4681
  %t4682 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 141, i64 1
  store i32 0, i32* %t4682
  %t4683 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 141, i64 2
  store i32 0, i32* %t4683
  %t4684 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 141, i64 3
  store i32 0, i32* %t4684
  %t4685 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 142, i64 0
  store i32 0, i32* %t4685
  %t4686 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 142, i64 1
  store i32 0, i32* %t4686
  %t4687 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 142, i64 2
  store i32 0, i32* %t4687
  %t4688 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 142, i64 3
  store i32 0, i32* %t4688
  %t4689 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 143, i64 0
  store i32 0, i32* %t4689
  %t4690 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 143, i64 1
  store i32 0, i32* %t4690
  %t4691 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 143, i64 2
  store i32 0, i32* %t4691
  %t4692 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 143, i64 3
  store i32 0, i32* %t4692
  %t4693 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 144, i64 0
  store i32 0, i32* %t4693
  %t4694 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 144, i64 1
  store i32 0, i32* %t4694
  %t4695 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 144, i64 2
  store i32 0, i32* %t4695
  %t4696 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 144, i64 3
  store i32 0, i32* %t4696
  %t4697 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 145, i64 0
  store i32 0, i32* %t4697
  %t4698 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 145, i64 1
  store i32 0, i32* %t4698
  %t4699 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 145, i64 2
  store i32 0, i32* %t4699
  %t4700 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 145, i64 3
  store i32 0, i32* %t4700
  %t4701 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 146, i64 0
  store i32 0, i32* %t4701
  %t4702 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 146, i64 1
  store i32 0, i32* %t4702
  %t4703 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 146, i64 2
  store i32 0, i32* %t4703
  %t4704 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 146, i64 3
  store i32 0, i32* %t4704
  %t4705 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 147, i64 0
  store i32 0, i32* %t4705
  %t4706 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 147, i64 1
  store i32 0, i32* %t4706
  %t4707 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 147, i64 2
  store i32 0, i32* %t4707
  %t4708 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 147, i64 3
  store i32 0, i32* %t4708
  %t4709 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 148, i64 0
  store i32 0, i32* %t4709
  %t4710 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 148, i64 1
  store i32 0, i32* %t4710
  %t4711 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 148, i64 2
  store i32 0, i32* %t4711
  %t4712 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 148, i64 3
  store i32 0, i32* %t4712
  %t4713 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 149, i64 0
  store i32 0, i32* %t4713
  %t4714 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 149, i64 1
  store i32 0, i32* %t4714
  %t4715 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 149, i64 2
  store i32 0, i32* %t4715
  %t4716 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 149, i64 3
  store i32 0, i32* %t4716
  %t4717 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 150, i64 0
  store i32 0, i32* %t4717
  %t4718 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 150, i64 1
  store i32 0, i32* %t4718
  %t4719 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 150, i64 2
  store i32 0, i32* %t4719
  %t4720 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 150, i64 3
  store i32 0, i32* %t4720
  %t4721 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 151, i64 0
  store i32 0, i32* %t4721
  %t4722 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 151, i64 1
  store i32 0, i32* %t4722
  %t4723 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 151, i64 2
  store i32 0, i32* %t4723
  %t4724 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 151, i64 3
  store i32 0, i32* %t4724
  %t4725 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 152, i64 0
  store i32 0, i32* %t4725
  %t4726 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 152, i64 1
  store i32 0, i32* %t4726
  %t4727 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 152, i64 2
  store i32 0, i32* %t4727
  %t4728 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 152, i64 3
  store i32 0, i32* %t4728
  %t4729 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 153, i64 0
  store i32 0, i32* %t4729
  %t4730 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 153, i64 1
  store i32 0, i32* %t4730
  %t4731 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 153, i64 2
  store i32 0, i32* %t4731
  %t4732 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 153, i64 3
  store i32 0, i32* %t4732
  %t4733 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 154, i64 0
  store i32 0, i32* %t4733
  %t4734 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 154, i64 1
  store i32 0, i32* %t4734
  %t4735 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 154, i64 2
  store i32 0, i32* %t4735
  %t4736 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 154, i64 3
  store i32 0, i32* %t4736
  %t4737 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 155, i64 0
  store i32 0, i32* %t4737
  %t4738 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 155, i64 1
  store i32 0, i32* %t4738
  %t4739 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 155, i64 2
  store i32 0, i32* %t4739
  %t4740 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 155, i64 3
  store i32 0, i32* %t4740
  %t4741 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 156, i64 0
  store i32 0, i32* %t4741
  %t4742 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 156, i64 1
  store i32 0, i32* %t4742
  %t4743 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 156, i64 2
  store i32 0, i32* %t4743
  %t4744 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 156, i64 3
  store i32 0, i32* %t4744
  %t4745 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 157, i64 0
  store i32 0, i32* %t4745
  %t4746 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 157, i64 1
  store i32 0, i32* %t4746
  %t4747 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 157, i64 2
  store i32 0, i32* %t4747
  %t4748 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 157, i64 3
  store i32 0, i32* %t4748
  %t4749 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 158, i64 0
  store i32 0, i32* %t4749
  %t4750 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 158, i64 1
  store i32 0, i32* %t4750
  %t4751 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 158, i64 2
  store i32 0, i32* %t4751
  %t4752 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 158, i64 3
  store i32 0, i32* %t4752
  %t4753 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 159, i64 0
  store i32 0, i32* %t4753
  %t4754 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 159, i64 1
  store i32 0, i32* %t4754
  %t4755 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 159, i64 2
  store i32 0, i32* %t4755
  %t4756 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 159, i64 3
  store i32 0, i32* %t4756
  %t4757 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 160, i64 0
  store i32 0, i32* %t4757
  %t4758 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 160, i64 1
  store i32 0, i32* %t4758
  %t4759 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 160, i64 2
  store i32 0, i32* %t4759
  %t4760 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 160, i64 3
  store i32 0, i32* %t4760
  %t4761 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 161, i64 0
  store i32 0, i32* %t4761
  %t4762 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 161, i64 1
  store i32 0, i32* %t4762
  %t4763 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 161, i64 2
  store i32 0, i32* %t4763
  %t4764 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 161, i64 3
  store i32 0, i32* %t4764
  %t4765 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 162, i64 0
  store i32 0, i32* %t4765
  %t4766 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 162, i64 1
  store i32 0, i32* %t4766
  %t4767 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 162, i64 2
  store i32 0, i32* %t4767
  %t4768 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 162, i64 3
  store i32 0, i32* %t4768
  %t4769 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 163, i64 0
  store i32 0, i32* %t4769
  %t4770 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 163, i64 1
  store i32 0, i32* %t4770
  %t4771 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 163, i64 2
  store i32 0, i32* %t4771
  %t4772 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 163, i64 3
  store i32 0, i32* %t4772
  %t4773 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 164, i64 0
  store i32 0, i32* %t4773
  %t4774 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 164, i64 1
  store i32 0, i32* %t4774
  %t4775 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 164, i64 2
  store i32 0, i32* %t4775
  %t4776 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 164, i64 3
  store i32 0, i32* %t4776
  %t4777 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 165, i64 0
  store i32 0, i32* %t4777
  %t4778 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 165, i64 1
  store i32 0, i32* %t4778
  %t4779 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 165, i64 2
  store i32 0, i32* %t4779
  %t4780 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 165, i64 3
  store i32 0, i32* %t4780
  %t4781 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 166, i64 0
  store i32 0, i32* %t4781
  %t4782 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 166, i64 1
  store i32 0, i32* %t4782
  %t4783 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 166, i64 2
  store i32 0, i32* %t4783
  %t4784 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 166, i64 3
  store i32 0, i32* %t4784
  %t4785 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 167, i64 0
  store i32 0, i32* %t4785
  %t4786 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 167, i64 1
  store i32 0, i32* %t4786
  %t4787 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 167, i64 2
  store i32 0, i32* %t4787
  %t4788 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 167, i64 3
  store i32 0, i32* %t4788
  %t4789 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 168, i64 0
  store i32 0, i32* %t4789
  %t4790 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 168, i64 1
  store i32 0, i32* %t4790
  %t4791 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 168, i64 2
  store i32 0, i32* %t4791
  %t4792 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 168, i64 3
  store i32 0, i32* %t4792
  %t4793 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 169, i64 0
  store i32 0, i32* %t4793
  %t4794 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 169, i64 1
  store i32 0, i32* %t4794
  %t4795 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 169, i64 2
  store i32 0, i32* %t4795
  %t4796 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 169, i64 3
  store i32 0, i32* %t4796
  %t4797 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 170, i64 0
  store i32 0, i32* %t4797
  %t4798 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 170, i64 1
  store i32 0, i32* %t4798
  %t4799 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 170, i64 2
  store i32 0, i32* %t4799
  %t4800 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 170, i64 3
  store i32 0, i32* %t4800
  %t4801 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 171, i64 0
  store i32 0, i32* %t4801
  %t4802 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 171, i64 1
  store i32 0, i32* %t4802
  %t4803 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 171, i64 2
  store i32 0, i32* %t4803
  %t4804 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 171, i64 3
  store i32 0, i32* %t4804
  %t4805 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 172, i64 0
  store i32 0, i32* %t4805
  %t4806 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 172, i64 1
  store i32 0, i32* %t4806
  %t4807 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 172, i64 2
  store i32 0, i32* %t4807
  %t4808 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 172, i64 3
  store i32 0, i32* %t4808
  %t4809 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 173, i64 0
  store i32 0, i32* %t4809
  %t4810 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 173, i64 1
  store i32 0, i32* %t4810
  %t4811 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 173, i64 2
  store i32 0, i32* %t4811
  %t4812 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 173, i64 3
  store i32 0, i32* %t4812
  %t4813 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 174, i64 0
  store i32 0, i32* %t4813
  %t4814 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 174, i64 1
  store i32 0, i32* %t4814
  %t4815 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 174, i64 2
  store i32 0, i32* %t4815
  %t4816 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 174, i64 3
  store i32 0, i32* %t4816
  %t4817 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 175, i64 0
  store i32 0, i32* %t4817
  %t4818 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 175, i64 1
  store i32 0, i32* %t4818
  %t4819 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 175, i64 2
  store i32 0, i32* %t4819
  %t4820 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 175, i64 3
  store i32 0, i32* %t4820
  %t4821 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 176, i64 0
  store i32 0, i32* %t4821
  %t4822 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 176, i64 1
  store i32 0, i32* %t4822
  %t4823 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 176, i64 2
  store i32 0, i32* %t4823
  %t4824 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 176, i64 3
  store i32 0, i32* %t4824
  %t4825 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 177, i64 0
  store i32 0, i32* %t4825
  %t4826 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 177, i64 1
  store i32 0, i32* %t4826
  %t4827 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 177, i64 2
  store i32 0, i32* %t4827
  %t4828 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 177, i64 3
  store i32 0, i32* %t4828
  %t4829 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 178, i64 0
  store i32 0, i32* %t4829
  %t4830 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 178, i64 1
  store i32 0, i32* %t4830
  %t4831 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 178, i64 2
  store i32 0, i32* %t4831
  %t4832 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 178, i64 3
  store i32 0, i32* %t4832
  %t4833 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 179, i64 0
  store i32 0, i32* %t4833
  %t4834 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 179, i64 1
  store i32 0, i32* %t4834
  %t4835 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 179, i64 2
  store i32 0, i32* %t4835
  %t4836 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 179, i64 3
  store i32 0, i32* %t4836
  %t4837 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 180, i64 0
  store i32 0, i32* %t4837
  %t4838 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 180, i64 1
  store i32 0, i32* %t4838
  %t4839 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 180, i64 2
  store i32 0, i32* %t4839
  %t4840 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 180, i64 3
  store i32 0, i32* %t4840
  %t4841 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 181, i64 0
  store i32 0, i32* %t4841
  %t4842 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 181, i64 1
  store i32 0, i32* %t4842
  %t4843 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 181, i64 2
  store i32 0, i32* %t4843
  %t4844 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 181, i64 3
  store i32 0, i32* %t4844
  %t4845 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 182, i64 0
  store i32 0, i32* %t4845
  %t4846 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 182, i64 1
  store i32 0, i32* %t4846
  %t4847 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 182, i64 2
  store i32 0, i32* %t4847
  %t4848 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 182, i64 3
  store i32 0, i32* %t4848
  %t4849 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 183, i64 0
  store i32 0, i32* %t4849
  %t4850 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 183, i64 1
  store i32 0, i32* %t4850
  %t4851 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 183, i64 2
  store i32 0, i32* %t4851
  %t4852 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 183, i64 3
  store i32 0, i32* %t4852
  %t4853 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 184, i64 0
  store i32 0, i32* %t4853
  %t4854 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 184, i64 1
  store i32 0, i32* %t4854
  %t4855 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 184, i64 2
  store i32 0, i32* %t4855
  %t4856 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 184, i64 3
  store i32 0, i32* %t4856
  %t4857 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 185, i64 0
  store i32 0, i32* %t4857
  %t4858 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 185, i64 1
  store i32 0, i32* %t4858
  %t4859 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 185, i64 2
  store i32 0, i32* %t4859
  %t4860 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 185, i64 3
  store i32 0, i32* %t4860
  %t4861 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 186, i64 0
  store i32 0, i32* %t4861
  %t4862 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 186, i64 1
  store i32 0, i32* %t4862
  %t4863 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 186, i64 2
  store i32 0, i32* %t4863
  %t4864 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 186, i64 3
  store i32 0, i32* %t4864
  %t4865 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 187, i64 0
  store i32 0, i32* %t4865
  %t4866 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 187, i64 1
  store i32 0, i32* %t4866
  %t4867 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 187, i64 2
  store i32 0, i32* %t4867
  %t4868 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 187, i64 3
  store i32 0, i32* %t4868
  %t4869 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 188, i64 0
  store i32 0, i32* %t4869
  %t4870 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 188, i64 1
  store i32 0, i32* %t4870
  %t4871 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 188, i64 2
  store i32 0, i32* %t4871
  %t4872 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 188, i64 3
  store i32 0, i32* %t4872
  %t4873 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 189, i64 0
  store i32 0, i32* %t4873
  %t4874 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 189, i64 1
  store i32 0, i32* %t4874
  %t4875 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 189, i64 2
  store i32 0, i32* %t4875
  %t4876 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 189, i64 3
  store i32 0, i32* %t4876
  %t4877 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 190, i64 0
  store i32 0, i32* %t4877
  %t4878 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 190, i64 1
  store i32 0, i32* %t4878
  %t4879 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 190, i64 2
  store i32 0, i32* %t4879
  %t4880 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 190, i64 3
  store i32 0, i32* %t4880
  %t4881 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 191, i64 0
  store i32 0, i32* %t4881
  %t4882 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 191, i64 1
  store i32 0, i32* %t4882
  %t4883 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 191, i64 2
  store i32 0, i32* %t4883
  %t4884 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 191, i64 3
  store i32 0, i32* %t4884
  %t4885 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 192, i64 0
  store i32 0, i32* %t4885
  %t4886 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 192, i64 1
  store i32 0, i32* %t4886
  %t4887 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 192, i64 2
  store i32 0, i32* %t4887
  %t4888 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 192, i64 3
  store i32 0, i32* %t4888
  %t4889 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 193, i64 0
  store i32 0, i32* %t4889
  %t4890 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 193, i64 1
  store i32 0, i32* %t4890
  %t4891 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 193, i64 2
  store i32 0, i32* %t4891
  %t4892 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 193, i64 3
  store i32 0, i32* %t4892
  %t4893 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 194, i64 0
  store i32 0, i32* %t4893
  %t4894 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 194, i64 1
  store i32 0, i32* %t4894
  %t4895 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 194, i64 2
  store i32 0, i32* %t4895
  %t4896 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 194, i64 3
  store i32 0, i32* %t4896
  %t4897 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 195, i64 0
  store i32 0, i32* %t4897
  %t4898 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 195, i64 1
  store i32 0, i32* %t4898
  %t4899 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 195, i64 2
  store i32 0, i32* %t4899
  %t4900 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 195, i64 3
  store i32 0, i32* %t4900
  %t4901 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 196, i64 0
  store i32 0, i32* %t4901
  %t4902 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 196, i64 1
  store i32 0, i32* %t4902
  %t4903 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 196, i64 2
  store i32 0, i32* %t4903
  %t4904 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 196, i64 3
  store i32 0, i32* %t4904
  %t4905 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 197, i64 0
  store i32 0, i32* %t4905
  %t4906 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 197, i64 1
  store i32 0, i32* %t4906
  %t4907 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 197, i64 2
  store i32 0, i32* %t4907
  %t4908 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 197, i64 3
  store i32 0, i32* %t4908
  %t4909 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 198, i64 0
  store i32 0, i32* %t4909
  %t4910 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 198, i64 1
  store i32 0, i32* %t4910
  %t4911 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 198, i64 2
  store i32 0, i32* %t4911
  %t4912 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 198, i64 3
  store i32 0, i32* %t4912
  %t4913 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 199, i64 0
  store i32 0, i32* %t4913
  %t4914 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 199, i64 1
  store i32 0, i32* %t4914
  %t4915 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 199, i64 2
  store i32 0, i32* %t4915
  %t4916 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 199, i64 3
  store i32 0, i32* %t4916
  %t4917 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 200, i64 0
  store i32 0, i32* %t4917
  %t4918 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 200, i64 1
  store i32 0, i32* %t4918
  %t4919 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 200, i64 2
  store i32 0, i32* %t4919
  %t4920 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 200, i64 3
  store i32 0, i32* %t4920
  %t4921 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 201, i64 0
  store i32 0, i32* %t4921
  %t4922 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 201, i64 1
  store i32 0, i32* %t4922
  %t4923 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 201, i64 2
  store i32 0, i32* %t4923
  %t4924 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 201, i64 3
  store i32 0, i32* %t4924
  %t4925 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 202, i64 0
  store i32 0, i32* %t4925
  %t4926 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 202, i64 1
  store i32 0, i32* %t4926
  %t4927 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 202, i64 2
  store i32 0, i32* %t4927
  %t4928 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 202, i64 3
  store i32 0, i32* %t4928
  %t4929 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 203, i64 0
  store i32 0, i32* %t4929
  %t4930 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 203, i64 1
  store i32 0, i32* %t4930
  %t4931 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 203, i64 2
  store i32 0, i32* %t4931
  %t4932 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 203, i64 3
  store i32 0, i32* %t4932
  %t4933 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 204, i64 0
  store i32 0, i32* %t4933
  %t4934 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 204, i64 1
  store i32 0, i32* %t4934
  %t4935 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 204, i64 2
  store i32 0, i32* %t4935
  %t4936 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 204, i64 3
  store i32 0, i32* %t4936
  %t4937 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 205, i64 0
  store i32 0, i32* %t4937
  %t4938 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 205, i64 1
  store i32 0, i32* %t4938
  %t4939 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 205, i64 2
  store i32 0, i32* %t4939
  %t4940 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 205, i64 3
  store i32 0, i32* %t4940
  %t4941 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 206, i64 0
  store i32 0, i32* %t4941
  %t4942 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 206, i64 1
  store i32 0, i32* %t4942
  %t4943 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 206, i64 2
  store i32 0, i32* %t4943
  %t4944 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 206, i64 3
  store i32 0, i32* %t4944
  %t4945 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 207, i64 0
  store i32 0, i32* %t4945
  %t4946 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 207, i64 1
  store i32 0, i32* %t4946
  %t4947 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 207, i64 2
  store i32 0, i32* %t4947
  %t4948 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 207, i64 3
  store i32 0, i32* %t4948
  %t4949 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 208, i64 0
  store i32 0, i32* %t4949
  %t4950 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 208, i64 1
  store i32 0, i32* %t4950
  %t4951 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 208, i64 2
  store i32 0, i32* %t4951
  %t4952 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 208, i64 3
  store i32 0, i32* %t4952
  %t4953 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 209, i64 0
  store i32 0, i32* %t4953
  %t4954 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 209, i64 1
  store i32 0, i32* %t4954
  %t4955 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 209, i64 2
  store i32 0, i32* %t4955
  %t4956 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 209, i64 3
  store i32 0, i32* %t4956
  %t4957 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 210, i64 0
  store i32 0, i32* %t4957
  %t4958 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 210, i64 1
  store i32 0, i32* %t4958
  %t4959 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 210, i64 2
  store i32 0, i32* %t4959
  %t4960 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 210, i64 3
  store i32 0, i32* %t4960
  %t4961 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 211, i64 0
  store i32 0, i32* %t4961
  %t4962 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 211, i64 1
  store i32 0, i32* %t4962
  %t4963 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 211, i64 2
  store i32 0, i32* %t4963
  %t4964 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 211, i64 3
  store i32 0, i32* %t4964
  %t4965 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 212, i64 0
  store i32 0, i32* %t4965
  %t4966 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 212, i64 1
  store i32 0, i32* %t4966
  %t4967 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 212, i64 2
  store i32 0, i32* %t4967
  %t4968 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 212, i64 3
  store i32 0, i32* %t4968
  %t4969 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 213, i64 0
  store i32 0, i32* %t4969
  %t4970 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 213, i64 1
  store i32 0, i32* %t4970
  %t4971 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 213, i64 2
  store i32 0, i32* %t4971
  %t4972 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 213, i64 3
  store i32 0, i32* %t4972
  %t4973 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 214, i64 0
  store i32 0, i32* %t4973
  %t4974 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 214, i64 1
  store i32 0, i32* %t4974
  %t4975 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 214, i64 2
  store i32 0, i32* %t4975
  %t4976 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 214, i64 3
  store i32 0, i32* %t4976
  %t4977 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 215, i64 0
  store i32 0, i32* %t4977
  %t4978 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 215, i64 1
  store i32 0, i32* %t4978
  %t4979 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 215, i64 2
  store i32 0, i32* %t4979
  %t4980 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 215, i64 3
  store i32 0, i32* %t4980
  %t4981 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 216, i64 0
  store i32 0, i32* %t4981
  %t4982 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 216, i64 1
  store i32 0, i32* %t4982
  %t4983 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 216, i64 2
  store i32 0, i32* %t4983
  %t4984 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 216, i64 3
  store i32 0, i32* %t4984
  %t4985 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 217, i64 0
  store i32 0, i32* %t4985
  %t4986 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 217, i64 1
  store i32 0, i32* %t4986
  %t4987 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 217, i64 2
  store i32 0, i32* %t4987
  %t4988 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 217, i64 3
  store i32 0, i32* %t4988
  %t4989 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 218, i64 0
  store i32 0, i32* %t4989
  %t4990 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 218, i64 1
  store i32 0, i32* %t4990
  %t4991 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 218, i64 2
  store i32 0, i32* %t4991
  %t4992 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 218, i64 3
  store i32 0, i32* %t4992
  %t4993 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 219, i64 0
  store i32 0, i32* %t4993
  %t4994 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 219, i64 1
  store i32 0, i32* %t4994
  %t4995 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 219, i64 2
  store i32 0, i32* %t4995
  %t4996 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 219, i64 3
  store i32 0, i32* %t4996
  %t4997 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 220, i64 0
  store i32 0, i32* %t4997
  %t4998 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 220, i64 1
  store i32 0, i32* %t4998
  %t4999 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 220, i64 2
  store i32 0, i32* %t4999
  %t5000 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 220, i64 3
  store i32 0, i32* %t5000
  %t5001 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 221, i64 0
  store i32 0, i32* %t5001
  %t5002 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 221, i64 1
  store i32 0, i32* %t5002
  %t5003 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 221, i64 2
  store i32 0, i32* %t5003
  %t5004 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 221, i64 3
  store i32 0, i32* %t5004
  %t5005 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 222, i64 0
  store i32 0, i32* %t5005
  %t5006 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 222, i64 1
  store i32 0, i32* %t5006
  %t5007 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 222, i64 2
  store i32 0, i32* %t5007
  %t5008 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 222, i64 3
  store i32 0, i32* %t5008
  %t5009 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 223, i64 0
  store i32 0, i32* %t5009
  %t5010 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 223, i64 1
  store i32 0, i32* %t5010
  %t5011 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 223, i64 2
  store i32 0, i32* %t5011
  %t5012 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 223, i64 3
  store i32 0, i32* %t5012
  %t5013 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 224, i64 0
  store i32 0, i32* %t5013
  %t5014 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 224, i64 1
  store i32 0, i32* %t5014
  %t5015 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 224, i64 2
  store i32 0, i32* %t5015
  %t5016 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 224, i64 3
  store i32 0, i32* %t5016
  %t5017 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 225, i64 0
  store i32 0, i32* %t5017
  %t5018 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 225, i64 1
  store i32 0, i32* %t5018
  %t5019 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 225, i64 2
  store i32 0, i32* %t5019
  %t5020 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 225, i64 3
  store i32 0, i32* %t5020
  %t5021 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 226, i64 0
  store i32 0, i32* %t5021
  %t5022 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 226, i64 1
  store i32 0, i32* %t5022
  %t5023 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 226, i64 2
  store i32 0, i32* %t5023
  %t5024 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 226, i64 3
  store i32 0, i32* %t5024
  %t5025 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 227, i64 0
  store i32 0, i32* %t5025
  %t5026 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 227, i64 1
  store i32 0, i32* %t5026
  %t5027 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 227, i64 2
  store i32 0, i32* %t5027
  %t5028 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 227, i64 3
  store i32 0, i32* %t5028
  %t5029 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 228, i64 0
  store i32 0, i32* %t5029
  %t5030 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 228, i64 1
  store i32 0, i32* %t5030
  %t5031 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 228, i64 2
  store i32 0, i32* %t5031
  %t5032 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 228, i64 3
  store i32 0, i32* %t5032
  %t5033 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 229, i64 0
  store i32 0, i32* %t5033
  %t5034 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 229, i64 1
  store i32 0, i32* %t5034
  %t5035 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 229, i64 2
  store i32 0, i32* %t5035
  %t5036 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 229, i64 3
  store i32 0, i32* %t5036
  %t5037 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 230, i64 0
  store i32 0, i32* %t5037
  %t5038 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 230, i64 1
  store i32 0, i32* %t5038
  %t5039 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 230, i64 2
  store i32 0, i32* %t5039
  %t5040 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 230, i64 3
  store i32 0, i32* %t5040
  %t5041 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 231, i64 0
  store i32 0, i32* %t5041
  %t5042 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 231, i64 1
  store i32 0, i32* %t5042
  %t5043 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 231, i64 2
  store i32 0, i32* %t5043
  %t5044 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 231, i64 3
  store i32 0, i32* %t5044
  %t5045 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 232, i64 0
  store i32 0, i32* %t5045
  %t5046 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 232, i64 1
  store i32 0, i32* %t5046
  %t5047 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 232, i64 2
  store i32 0, i32* %t5047
  %t5048 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 232, i64 3
  store i32 0, i32* %t5048
  %t5049 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 233, i64 0
  store i32 0, i32* %t5049
  %t5050 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 233, i64 1
  store i32 0, i32* %t5050
  %t5051 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 233, i64 2
  store i32 0, i32* %t5051
  %t5052 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 233, i64 3
  store i32 0, i32* %t5052
  %t5053 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 234, i64 0
  store i32 0, i32* %t5053
  %t5054 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 234, i64 1
  store i32 0, i32* %t5054
  %t5055 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 234, i64 2
  store i32 0, i32* %t5055
  %t5056 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 234, i64 3
  store i32 0, i32* %t5056
  %t5057 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 235, i64 0
  store i32 0, i32* %t5057
  %t5058 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 235, i64 1
  store i32 0, i32* %t5058
  %t5059 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 235, i64 2
  store i32 0, i32* %t5059
  %t5060 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 235, i64 3
  store i32 0, i32* %t5060
  %t5061 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 236, i64 0
  store i32 0, i32* %t5061
  %t5062 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 236, i64 1
  store i32 0, i32* %t5062
  %t5063 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 236, i64 2
  store i32 0, i32* %t5063
  %t5064 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 236, i64 3
  store i32 0, i32* %t5064
  %t5065 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 237, i64 0
  store i32 0, i32* %t5065
  %t5066 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 237, i64 1
  store i32 0, i32* %t5066
  %t5067 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 237, i64 2
  store i32 0, i32* %t5067
  %t5068 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 237, i64 3
  store i32 0, i32* %t5068
  %t5069 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 238, i64 0
  store i32 0, i32* %t5069
  %t5070 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 238, i64 1
  store i32 0, i32* %t5070
  %t5071 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 238, i64 2
  store i32 0, i32* %t5071
  %t5072 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 238, i64 3
  store i32 0, i32* %t5072
  %t5073 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 239, i64 0
  store i32 0, i32* %t5073
  %t5074 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 239, i64 1
  store i32 0, i32* %t5074
  %t5075 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 239, i64 2
  store i32 0, i32* %t5075
  %t5076 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 239, i64 3
  store i32 0, i32* %t5076
  %t5077 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 240, i64 0
  store i32 0, i32* %t5077
  %t5078 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 240, i64 1
  store i32 0, i32* %t5078
  %t5079 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 240, i64 2
  store i32 0, i32* %t5079
  %t5080 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 240, i64 3
  store i32 0, i32* %t5080
  %t5081 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 241, i64 0
  store i32 0, i32* %t5081
  %t5082 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 241, i64 1
  store i32 0, i32* %t5082
  %t5083 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 241, i64 2
  store i32 0, i32* %t5083
  %t5084 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 241, i64 3
  store i32 0, i32* %t5084
  %t5085 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 242, i64 0
  store i32 0, i32* %t5085
  %t5086 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 242, i64 1
  store i32 0, i32* %t5086
  %t5087 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 242, i64 2
  store i32 0, i32* %t5087
  %t5088 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 242, i64 3
  store i32 0, i32* %t5088
  %t5089 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 243, i64 0
  store i32 0, i32* %t5089
  %t5090 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 243, i64 1
  store i32 0, i32* %t5090
  %t5091 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 243, i64 2
  store i32 0, i32* %t5091
  %t5092 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 243, i64 3
  store i32 0, i32* %t5092
  %t5093 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 244, i64 0
  store i32 0, i32* %t5093
  %t5094 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 244, i64 1
  store i32 0, i32* %t5094
  %t5095 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 244, i64 2
  store i32 0, i32* %t5095
  %t5096 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 244, i64 3
  store i32 0, i32* %t5096
  %t5097 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 245, i64 0
  store i32 0, i32* %t5097
  %t5098 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 245, i64 1
  store i32 0, i32* %t5098
  %t5099 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 245, i64 2
  store i32 0, i32* %t5099
  %t5100 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 245, i64 3
  store i32 0, i32* %t5100
  %t5101 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 246, i64 0
  store i32 0, i32* %t5101
  %t5102 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 246, i64 1
  store i32 0, i32* %t5102
  %t5103 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 246, i64 2
  store i32 0, i32* %t5103
  %t5104 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 246, i64 3
  store i32 0, i32* %t5104
  %t5105 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 247, i64 0
  store i32 0, i32* %t5105
  %t5106 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 247, i64 1
  store i32 0, i32* %t5106
  %t5107 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 247, i64 2
  store i32 0, i32* %t5107
  %t5108 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 247, i64 3
  store i32 0, i32* %t5108
  %t5109 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 248, i64 0
  store i32 0, i32* %t5109
  %t5110 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 248, i64 1
  store i32 0, i32* %t5110
  %t5111 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 248, i64 2
  store i32 0, i32* %t5111
  %t5112 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 248, i64 3
  store i32 0, i32* %t5112
  %t5113 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 249, i64 0
  store i32 0, i32* %t5113
  %t5114 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 249, i64 1
  store i32 0, i32* %t5114
  %t5115 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 249, i64 2
  store i32 0, i32* %t5115
  %t5116 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 249, i64 3
  store i32 0, i32* %t5116
  %t5117 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 250, i64 0
  store i32 0, i32* %t5117
  %t5118 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 250, i64 1
  store i32 0, i32* %t5118
  %t5119 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 250, i64 2
  store i32 0, i32* %t5119
  %t5120 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 250, i64 3
  store i32 0, i32* %t5120
  %t5121 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 251, i64 0
  store i32 0, i32* %t5121
  %t5122 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 251, i64 1
  store i32 0, i32* %t5122
  %t5123 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 251, i64 2
  store i32 0, i32* %t5123
  %t5124 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 251, i64 3
  store i32 0, i32* %t5124
  %t5125 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 252, i64 0
  store i32 0, i32* %t5125
  %t5126 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 252, i64 1
  store i32 0, i32* %t5126
  %t5127 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 252, i64 2
  store i32 0, i32* %t5127
  %t5128 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 252, i64 3
  store i32 0, i32* %t5128
  %t5129 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 253, i64 0
  store i32 0, i32* %t5129
  %t5130 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 253, i64 1
  store i32 0, i32* %t5130
  %t5131 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 253, i64 2
  store i32 0, i32* %t5131
  %t5132 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 253, i64 3
  store i32 0, i32* %t5132
  %t5133 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 254, i64 0
  store i32 0, i32* %t5133
  %t5134 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 254, i64 1
  store i32 0, i32* %t5134
  %t5135 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 254, i64 2
  store i32 0, i32* %t5135
  %t5136 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 254, i64 3
  store i32 0, i32* %t5136
  %t5137 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 255, i64 0
  store i32 0, i32* %t5137
  %t5138 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 255, i64 1
  store i32 0, i32* %t5138
  %t5139 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 255, i64 2
  store i32 0, i32* %t5139
  %t5140 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 255, i64 3
  store i32 0, i32* %t5140
  %t5141 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 256, i64 0
  store i32 0, i32* %t5141
  %t5142 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 256, i64 1
  store i32 0, i32* %t5142
  %t5143 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 256, i64 2
  store i32 0, i32* %t5143
  %t5144 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 256, i64 3
  store i32 0, i32* %t5144
  %t5145 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 257, i64 0
  store i32 0, i32* %t5145
  %t5146 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 257, i64 1
  store i32 0, i32* %t5146
  %t5147 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 257, i64 2
  store i32 0, i32* %t5147
  %t5148 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 257, i64 3
  store i32 0, i32* %t5148
  %t5149 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 258, i64 0
  store i32 0, i32* %t5149
  %t5150 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 258, i64 1
  store i32 0, i32* %t5150
  %t5151 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 258, i64 2
  store i32 0, i32* %t5151
  %t5152 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 258, i64 3
  store i32 0, i32* %t5152
  %t5153 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 259, i64 0
  store i32 0, i32* %t5153
  %t5154 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 259, i64 1
  store i32 0, i32* %t5154
  %t5155 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 259, i64 2
  store i32 0, i32* %t5155
  %t5156 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 259, i64 3
  store i32 0, i32* %t5156
  %t5157 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 260, i64 0
  store i32 0, i32* %t5157
  %t5158 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 260, i64 1
  store i32 0, i32* %t5158
  %t5159 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 260, i64 2
  store i32 0, i32* %t5159
  %t5160 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 260, i64 3
  store i32 0, i32* %t5160
  %t5161 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 261, i64 0
  store i32 0, i32* %t5161
  %t5162 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 261, i64 1
  store i32 0, i32* %t5162
  %t5163 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 261, i64 2
  store i32 0, i32* %t5163
  %t5164 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 261, i64 3
  store i32 0, i32* %t5164
  %t5165 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 262, i64 0
  store i32 0, i32* %t5165
  %t5166 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 262, i64 1
  store i32 0, i32* %t5166
  %t5167 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 262, i64 2
  store i32 0, i32* %t5167
  %t5168 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 262, i64 3
  store i32 0, i32* %t5168
  %t5169 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 263, i64 0
  store i32 0, i32* %t5169
  %t5170 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 263, i64 1
  store i32 0, i32* %t5170
  %t5171 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 263, i64 2
  store i32 0, i32* %t5171
  %t5172 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 263, i64 3
  store i32 0, i32* %t5172
  %t5173 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 264, i64 0
  store i32 0, i32* %t5173
  %t5174 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 264, i64 1
  store i32 0, i32* %t5174
  %t5175 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 264, i64 2
  store i32 0, i32* %t5175
  %t5176 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 264, i64 3
  store i32 0, i32* %t5176
  %t5177 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 265, i64 0
  store i32 0, i32* %t5177
  %t5178 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 265, i64 1
  store i32 0, i32* %t5178
  %t5179 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 265, i64 2
  store i32 0, i32* %t5179
  %t5180 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 265, i64 3
  store i32 0, i32* %t5180
  %t5181 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 266, i64 0
  store i32 0, i32* %t5181
  %t5182 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 266, i64 1
  store i32 0, i32* %t5182
  %t5183 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 266, i64 2
  store i32 0, i32* %t5183
  %t5184 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 266, i64 3
  store i32 0, i32* %t5184
  %t5185 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 267, i64 0
  store i32 0, i32* %t5185
  %t5186 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 267, i64 1
  store i32 0, i32* %t5186
  %t5187 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 267, i64 2
  store i32 0, i32* %t5187
  %t5188 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 267, i64 3
  store i32 0, i32* %t5188
  %t5189 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 268, i64 0
  store i32 0, i32* %t5189
  %t5190 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 268, i64 1
  store i32 0, i32* %t5190
  %t5191 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 268, i64 2
  store i32 0, i32* %t5191
  %t5192 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 268, i64 3
  store i32 0, i32* %t5192
  %t5193 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 269, i64 0
  store i32 0, i32* %t5193
  %t5194 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 269, i64 1
  store i32 0, i32* %t5194
  %t5195 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 269, i64 2
  store i32 0, i32* %t5195
  %t5196 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 269, i64 3
  store i32 0, i32* %t5196
  %t5197 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 270, i64 0
  store i32 0, i32* %t5197
  %t5198 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 270, i64 1
  store i32 0, i32* %t5198
  %t5199 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 270, i64 2
  store i32 0, i32* %t5199
  %t5200 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 270, i64 3
  store i32 0, i32* %t5200
  %t5201 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 271, i64 0
  store i32 0, i32* %t5201
  %t5202 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 271, i64 1
  store i32 0, i32* %t5202
  %t5203 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 271, i64 2
  store i32 0, i32* %t5203
  %t5204 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 271, i64 3
  store i32 0, i32* %t5204
  %t5205 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 272, i64 0
  store i32 0, i32* %t5205
  %t5206 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 272, i64 1
  store i32 0, i32* %t5206
  %t5207 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 272, i64 2
  store i32 0, i32* %t5207
  %t5208 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 272, i64 3
  store i32 0, i32* %t5208
  %t5209 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 273, i64 0
  store i32 0, i32* %t5209
  %t5210 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 273, i64 1
  store i32 0, i32* %t5210
  %t5211 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 273, i64 2
  store i32 0, i32* %t5211
  %t5212 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 273, i64 3
  store i32 0, i32* %t5212
  %t5213 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 274, i64 0
  store i32 0, i32* %t5213
  %t5214 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 274, i64 1
  store i32 0, i32* %t5214
  %t5215 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 274, i64 2
  store i32 0, i32* %t5215
  %t5216 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 274, i64 3
  store i32 0, i32* %t5216
  %t5217 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 275, i64 0
  store i32 0, i32* %t5217
  %t5218 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 275, i64 1
  store i32 0, i32* %t5218
  %t5219 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 275, i64 2
  store i32 0, i32* %t5219
  %t5220 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 275, i64 3
  store i32 0, i32* %t5220
  %t5221 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 276, i64 0
  store i32 0, i32* %t5221
  %t5222 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 276, i64 1
  store i32 0, i32* %t5222
  %t5223 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 276, i64 2
  store i32 0, i32* %t5223
  %t5224 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 276, i64 3
  store i32 0, i32* %t5224
  %t5225 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 277, i64 0
  store i32 0, i32* %t5225
  %t5226 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 277, i64 1
  store i32 0, i32* %t5226
  %t5227 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 277, i64 2
  store i32 0, i32* %t5227
  %t5228 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 277, i64 3
  store i32 0, i32* %t5228
  %t5229 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 278, i64 0
  store i32 0, i32* %t5229
  %t5230 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 278, i64 1
  store i32 0, i32* %t5230
  %t5231 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 278, i64 2
  store i32 0, i32* %t5231
  %t5232 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 278, i64 3
  store i32 0, i32* %t5232
  %t5233 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 279, i64 0
  store i32 0, i32* %t5233
  %t5234 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 279, i64 1
  store i32 0, i32* %t5234
  %t5235 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 279, i64 2
  store i32 0, i32* %t5235
  %t5236 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 279, i64 3
  store i32 0, i32* %t5236
  %t5237 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 280, i64 0
  store i32 0, i32* %t5237
  %t5238 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 280, i64 1
  store i32 0, i32* %t5238
  %t5239 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 280, i64 2
  store i32 0, i32* %t5239
  %t5240 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 280, i64 3
  store i32 0, i32* %t5240
  %t5241 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 281, i64 0
  store i32 0, i32* %t5241
  %t5242 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 281, i64 1
  store i32 0, i32* %t5242
  %t5243 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 281, i64 2
  store i32 0, i32* %t5243
  %t5244 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 281, i64 3
  store i32 0, i32* %t5244
  %t5245 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 282, i64 0
  store i32 0, i32* %t5245
  %t5246 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 282, i64 1
  store i32 0, i32* %t5246
  %t5247 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 282, i64 2
  store i32 0, i32* %t5247
  %t5248 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 282, i64 3
  store i32 0, i32* %t5248
  %t5249 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 283, i64 0
  store i32 0, i32* %t5249
  %t5250 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 283, i64 1
  store i32 0, i32* %t5250
  %t5251 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 283, i64 2
  store i32 0, i32* %t5251
  %t5252 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 283, i64 3
  store i32 0, i32* %t5252
  %t5253 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 284, i64 0
  store i32 0, i32* %t5253
  %t5254 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 284, i64 1
  store i32 0, i32* %t5254
  %t5255 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 284, i64 2
  store i32 0, i32* %t5255
  %t5256 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 284, i64 3
  store i32 0, i32* %t5256
  %t5257 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 285, i64 0
  store i32 0, i32* %t5257
  %t5258 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 285, i64 1
  store i32 0, i32* %t5258
  %t5259 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 285, i64 2
  store i32 0, i32* %t5259
  %t5260 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 285, i64 3
  store i32 0, i32* %t5260
  %t5261 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 286, i64 0
  store i32 0, i32* %t5261
  %t5262 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 286, i64 1
  store i32 0, i32* %t5262
  %t5263 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 286, i64 2
  store i32 0, i32* %t5263
  %t5264 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 286, i64 3
  store i32 0, i32* %t5264
  %t5265 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 287, i64 0
  store i32 0, i32* %t5265
  %t5266 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 287, i64 1
  store i32 0, i32* %t5266
  %t5267 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 287, i64 2
  store i32 0, i32* %t5267
  %t5268 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 287, i64 3
  store i32 0, i32* %t5268
  %t5269 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 288, i64 0
  store i32 0, i32* %t5269
  %t5270 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 288, i64 1
  store i32 0, i32* %t5270
  %t5271 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 288, i64 2
  store i32 0, i32* %t5271
  %t5272 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 288, i64 3
  store i32 0, i32* %t5272
  %t5273 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 289, i64 0
  store i32 0, i32* %t5273
  %t5274 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 289, i64 1
  store i32 0, i32* %t5274
  %t5275 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 289, i64 2
  store i32 0, i32* %t5275
  %t5276 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 289, i64 3
  store i32 0, i32* %t5276
  %t5277 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 290, i64 0
  store i32 0, i32* %t5277
  %t5278 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 290, i64 1
  store i32 0, i32* %t5278
  %t5279 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 290, i64 2
  store i32 0, i32* %t5279
  %t5280 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 290, i64 3
  store i32 0, i32* %t5280
  %t5281 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 291, i64 0
  store i32 0, i32* %t5281
  %t5282 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 291, i64 1
  store i32 0, i32* %t5282
  %t5283 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 291, i64 2
  store i32 0, i32* %t5283
  %t5284 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 291, i64 3
  store i32 0, i32* %t5284
  %t5285 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 292, i64 0
  store i32 0, i32* %t5285
  %t5286 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 292, i64 1
  store i32 0, i32* %t5286
  %t5287 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 292, i64 2
  store i32 0, i32* %t5287
  %t5288 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 292, i64 3
  store i32 0, i32* %t5288
  %t5289 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 293, i64 0
  store i32 0, i32* %t5289
  %t5290 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 293, i64 1
  store i32 0, i32* %t5290
  %t5291 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 293, i64 2
  store i32 0, i32* %t5291
  %t5292 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 293, i64 3
  store i32 0, i32* %t5292
  %t5293 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 294, i64 0
  store i32 0, i32* %t5293
  %t5294 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 294, i64 1
  store i32 0, i32* %t5294
  %t5295 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 294, i64 2
  store i32 0, i32* %t5295
  %t5296 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 294, i64 3
  store i32 0, i32* %t5296
  %t5297 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 295, i64 0
  store i32 0, i32* %t5297
  %t5298 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 295, i64 1
  store i32 0, i32* %t5298
  %t5299 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 295, i64 2
  store i32 0, i32* %t5299
  %t5300 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 295, i64 3
  store i32 0, i32* %t5300
  %t5301 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 296, i64 0
  store i32 0, i32* %t5301
  %t5302 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 296, i64 1
  store i32 0, i32* %t5302
  %t5303 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 296, i64 2
  store i32 0, i32* %t5303
  %t5304 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 296, i64 3
  store i32 0, i32* %t5304
  %t5305 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 297, i64 0
  store i32 0, i32* %t5305
  %t5306 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 297, i64 1
  store i32 0, i32* %t5306
  %t5307 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 297, i64 2
  store i32 0, i32* %t5307
  %t5308 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 297, i64 3
  store i32 0, i32* %t5308
  %t5309 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 298, i64 0
  store i32 0, i32* %t5309
  %t5310 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 298, i64 1
  store i32 0, i32* %t5310
  %t5311 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 298, i64 2
  store i32 0, i32* %t5311
  %t5312 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 298, i64 3
  store i32 0, i32* %t5312
  %t5313 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 299, i64 0
  store i32 0, i32* %t5313
  %t5314 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 299, i64 1
  store i32 0, i32* %t5314
  %t5315 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 299, i64 2
  store i32 0, i32* %t5315
  %t5316 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 299, i64 3
  store i32 0, i32* %t5316
  %t5317 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 300, i64 0
  store i32 0, i32* %t5317
  %t5318 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 300, i64 1
  store i32 0, i32* %t5318
  %t5319 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 300, i64 2
  store i32 0, i32* %t5319
  %t5320 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 300, i64 3
  store i32 0, i32* %t5320
  %t5321 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 301, i64 0
  store i32 0, i32* %t5321
  %t5322 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 301, i64 1
  store i32 0, i32* %t5322
  %t5323 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 301, i64 2
  store i32 0, i32* %t5323
  %t5324 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 301, i64 3
  store i32 0, i32* %t5324
  %t5325 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 302, i64 0
  store i32 0, i32* %t5325
  %t5326 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 302, i64 1
  store i32 0, i32* %t5326
  %t5327 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 302, i64 2
  store i32 0, i32* %t5327
  %t5328 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 302, i64 3
  store i32 0, i32* %t5328
  %t5329 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 303, i64 0
  store i32 0, i32* %t5329
  %t5330 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 303, i64 1
  store i32 0, i32* %t5330
  %t5331 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 303, i64 2
  store i32 0, i32* %t5331
  %t5332 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 303, i64 3
  store i32 0, i32* %t5332
  %t5333 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 304, i64 0
  store i32 0, i32* %t5333
  %t5334 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 304, i64 1
  store i32 0, i32* %t5334
  %t5335 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 304, i64 2
  store i32 0, i32* %t5335
  %t5336 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 304, i64 3
  store i32 0, i32* %t5336
  %t5337 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 305, i64 0
  store i32 0, i32* %t5337
  %t5338 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 305, i64 1
  store i32 0, i32* %t5338
  %t5339 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 305, i64 2
  store i32 0, i32* %t5339
  %t5340 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 305, i64 3
  store i32 0, i32* %t5340
  %t5341 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 306, i64 0
  store i32 0, i32* %t5341
  %t5342 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 306, i64 1
  store i32 0, i32* %t5342
  %t5343 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 306, i64 2
  store i32 0, i32* %t5343
  %t5344 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 306, i64 3
  store i32 0, i32* %t5344
  %t5345 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 307, i64 0
  store i32 0, i32* %t5345
  %t5346 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 307, i64 1
  store i32 0, i32* %t5346
  %t5347 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 307, i64 2
  store i32 0, i32* %t5347
  %t5348 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 307, i64 3
  store i32 0, i32* %t5348
  %t5349 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 308, i64 0
  store i32 0, i32* %t5349
  %t5350 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 308, i64 1
  store i32 0, i32* %t5350
  %t5351 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 308, i64 2
  store i32 0, i32* %t5351
  %t5352 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 308, i64 3
  store i32 0, i32* %t5352
  %t5353 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 309, i64 0
  store i32 0, i32* %t5353
  %t5354 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 309, i64 1
  store i32 0, i32* %t5354
  %t5355 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 309, i64 2
  store i32 0, i32* %t5355
  %t5356 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 309, i64 3
  store i32 0, i32* %t5356
  %t5357 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 310, i64 0
  store i32 0, i32* %t5357
  %t5358 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 310, i64 1
  store i32 0, i32* %t5358
  %t5359 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 310, i64 2
  store i32 0, i32* %t5359
  %t5360 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 310, i64 3
  store i32 0, i32* %t5360
  %t5361 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 311, i64 0
  store i32 0, i32* %t5361
  %t5362 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 311, i64 1
  store i32 0, i32* %t5362
  %t5363 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 311, i64 2
  store i32 0, i32* %t5363
  %t5364 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 311, i64 3
  store i32 0, i32* %t5364
  %t5365 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 312, i64 0
  store i32 0, i32* %t5365
  %t5366 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 312, i64 1
  store i32 0, i32* %t5366
  %t5367 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 312, i64 2
  store i32 0, i32* %t5367
  %t5368 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 312, i64 3
  store i32 0, i32* %t5368
  %t5369 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 313, i64 0
  store i32 0, i32* %t5369
  %t5370 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 313, i64 1
  store i32 0, i32* %t5370
  %t5371 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 313, i64 2
  store i32 0, i32* %t5371
  %t5372 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 313, i64 3
  store i32 0, i32* %t5372
  %t5373 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 314, i64 0
  store i32 0, i32* %t5373
  %t5374 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 314, i64 1
  store i32 0, i32* %t5374
  %t5375 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 314, i64 2
  store i32 0, i32* %t5375
  %t5376 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 314, i64 3
  store i32 0, i32* %t5376
  %t5377 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 315, i64 0
  store i32 0, i32* %t5377
  %t5378 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 315, i64 1
  store i32 0, i32* %t5378
  %t5379 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 315, i64 2
  store i32 0, i32* %t5379
  %t5380 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 315, i64 3
  store i32 0, i32* %t5380
  %t5381 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 316, i64 0
  store i32 0, i32* %t5381
  %t5382 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 316, i64 1
  store i32 0, i32* %t5382
  %t5383 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 316, i64 2
  store i32 0, i32* %t5383
  %t5384 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 316, i64 3
  store i32 0, i32* %t5384
  %t5385 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 317, i64 0
  store i32 0, i32* %t5385
  %t5386 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 317, i64 1
  store i32 0, i32* %t5386
  %t5387 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 317, i64 2
  store i32 0, i32* %t5387
  %t5388 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 317, i64 3
  store i32 0, i32* %t5388
  %t5389 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 318, i64 0
  store i32 0, i32* %t5389
  %t5390 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 318, i64 1
  store i32 0, i32* %t5390
  %t5391 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 318, i64 2
  store i32 0, i32* %t5391
  %t5392 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 318, i64 3
  store i32 0, i32* %t5392
  %t5393 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 319, i64 0
  store i32 0, i32* %t5393
  %t5394 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 319, i64 1
  store i32 0, i32* %t5394
  %t5395 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 319, i64 2
  store i32 0, i32* %t5395
  %t5396 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 319, i64 3
  store i32 0, i32* %t5396
  %t5397 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 320, i64 0
  store i32 0, i32* %t5397
  %t5398 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 320, i64 1
  store i32 0, i32* %t5398
  %t5399 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 320, i64 2
  store i32 0, i32* %t5399
  %t5400 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 320, i64 3
  store i32 0, i32* %t5400
  %t5401 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 321, i64 0
  store i32 0, i32* %t5401
  %t5402 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 321, i64 1
  store i32 0, i32* %t5402
  %t5403 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 321, i64 2
  store i32 0, i32* %t5403
  %t5404 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 321, i64 3
  store i32 0, i32* %t5404
  %t5405 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 322, i64 0
  store i32 0, i32* %t5405
  %t5406 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 322, i64 1
  store i32 0, i32* %t5406
  %t5407 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 322, i64 2
  store i32 0, i32* %t5407
  %t5408 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 322, i64 3
  store i32 0, i32* %t5408
  %t5409 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 323, i64 0
  store i32 0, i32* %t5409
  %t5410 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 323, i64 1
  store i32 0, i32* %t5410
  %t5411 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 323, i64 2
  store i32 0, i32* %t5411
  %t5412 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 323, i64 3
  store i32 0, i32* %t5412
  %t5413 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 324, i64 0
  store i32 0, i32* %t5413
  %t5414 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 324, i64 1
  store i32 0, i32* %t5414
  %t5415 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 324, i64 2
  store i32 0, i32* %t5415
  %t5416 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 324, i64 3
  store i32 0, i32* %t5416
  %t5417 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 325, i64 0
  store i32 0, i32* %t5417
  %t5418 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 325, i64 1
  store i32 0, i32* %t5418
  %t5419 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 325, i64 2
  store i32 0, i32* %t5419
  %t5420 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 325, i64 3
  store i32 0, i32* %t5420
  %t5421 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 326, i64 0
  store i32 0, i32* %t5421
  %t5422 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 326, i64 1
  store i32 0, i32* %t5422
  %t5423 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 326, i64 2
  store i32 0, i32* %t5423
  %t5424 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 326, i64 3
  store i32 0, i32* %t5424
  %t5425 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 327, i64 0
  store i32 0, i32* %t5425
  %t5426 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 327, i64 1
  store i32 0, i32* %t5426
  %t5427 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 327, i64 2
  store i32 0, i32* %t5427
  %t5428 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 327, i64 3
  store i32 0, i32* %t5428
  %t5429 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 328, i64 0
  store i32 0, i32* %t5429
  %t5430 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 328, i64 1
  store i32 0, i32* %t5430
  %t5431 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 328, i64 2
  store i32 0, i32* %t5431
  %t5432 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 328, i64 3
  store i32 0, i32* %t5432
  %t5433 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 329, i64 0
  store i32 0, i32* %t5433
  %t5434 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 329, i64 1
  store i32 0, i32* %t5434
  %t5435 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 329, i64 2
  store i32 0, i32* %t5435
  %t5436 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 329, i64 3
  store i32 0, i32* %t5436
  %t5437 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 330, i64 0
  store i32 0, i32* %t5437
  %t5438 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 330, i64 1
  store i32 0, i32* %t5438
  %t5439 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 330, i64 2
  store i32 0, i32* %t5439
  %t5440 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 330, i64 3
  store i32 0, i32* %t5440
  %t5441 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 331, i64 0
  store i32 0, i32* %t5441
  %t5442 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 331, i64 1
  store i32 0, i32* %t5442
  %t5443 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 331, i64 2
  store i32 0, i32* %t5443
  %t5444 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 331, i64 3
  store i32 0, i32* %t5444
  %t5445 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 332, i64 0
  store i32 0, i32* %t5445
  %t5446 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 332, i64 1
  store i32 0, i32* %t5446
  %t5447 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 332, i64 2
  store i32 0, i32* %t5447
  %t5448 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 332, i64 3
  store i32 0, i32* %t5448
  %t5449 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 333, i64 0
  store i32 0, i32* %t5449
  %t5450 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 333, i64 1
  store i32 0, i32* %t5450
  %t5451 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 333, i64 2
  store i32 0, i32* %t5451
  %t5452 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 333, i64 3
  store i32 0, i32* %t5452
  %t5453 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 334, i64 0
  store i32 0, i32* %t5453
  %t5454 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 334, i64 1
  store i32 0, i32* %t5454
  %t5455 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 334, i64 2
  store i32 0, i32* %t5455
  %t5456 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 334, i64 3
  store i32 0, i32* %t5456
  %t5457 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 335, i64 0
  store i32 0, i32* %t5457
  %t5458 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 335, i64 1
  store i32 0, i32* %t5458
  %t5459 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 335, i64 2
  store i32 0, i32* %t5459
  %t5460 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 335, i64 3
  store i32 0, i32* %t5460
  %t5461 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 336, i64 0
  store i32 0, i32* %t5461
  %t5462 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 336, i64 1
  store i32 0, i32* %t5462
  %t5463 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 336, i64 2
  store i32 0, i32* %t5463
  %t5464 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 336, i64 3
  store i32 0, i32* %t5464
  %t5465 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 337, i64 0
  store i32 0, i32* %t5465
  %t5466 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 337, i64 1
  store i32 0, i32* %t5466
  %t5467 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 337, i64 2
  store i32 0, i32* %t5467
  %t5468 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 337, i64 3
  store i32 0, i32* %t5468
  %t5469 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 338, i64 0
  store i32 0, i32* %t5469
  %t5470 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 338, i64 1
  store i32 0, i32* %t5470
  %t5471 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 338, i64 2
  store i32 0, i32* %t5471
  %t5472 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 338, i64 3
  store i32 0, i32* %t5472
  %t5473 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 339, i64 0
  store i32 0, i32* %t5473
  %t5474 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 339, i64 1
  store i32 0, i32* %t5474
  %t5475 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 339, i64 2
  store i32 0, i32* %t5475
  %t5476 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 339, i64 3
  store i32 0, i32* %t5476
  %t5477 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 340, i64 0
  store i32 0, i32* %t5477
  %t5478 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 340, i64 1
  store i32 0, i32* %t5478
  %t5479 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 340, i64 2
  store i32 0, i32* %t5479
  %t5480 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 340, i64 3
  store i32 0, i32* %t5480
  %t5481 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 341, i64 0
  store i32 0, i32* %t5481
  %t5482 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 341, i64 1
  store i32 0, i32* %t5482
  %t5483 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 341, i64 2
  store i32 0, i32* %t5483
  %t5484 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 341, i64 3
  store i32 0, i32* %t5484
  %t5485 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 342, i64 0
  store i32 0, i32* %t5485
  %t5486 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 342, i64 1
  store i32 0, i32* %t5486
  %t5487 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 342, i64 2
  store i32 0, i32* %t5487
  %t5488 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 342, i64 3
  store i32 0, i32* %t5488
  %t5489 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 343, i64 0
  store i32 0, i32* %t5489
  %t5490 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 343, i64 1
  store i32 0, i32* %t5490
  %t5491 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 343, i64 2
  store i32 0, i32* %t5491
  %t5492 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 343, i64 3
  store i32 0, i32* %t5492
  %t5493 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 344, i64 0
  store i32 0, i32* %t5493
  %t5494 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 344, i64 1
  store i32 0, i32* %t5494
  %t5495 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 344, i64 2
  store i32 0, i32* %t5495
  %t5496 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 344, i64 3
  store i32 0, i32* %t5496
  %t5497 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 345, i64 0
  store i32 0, i32* %t5497
  %t5498 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 345, i64 1
  store i32 0, i32* %t5498
  %t5499 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 345, i64 2
  store i32 0, i32* %t5499
  %t5500 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 345, i64 3
  store i32 0, i32* %t5500
  %t5501 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 346, i64 0
  store i32 0, i32* %t5501
  %t5502 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 346, i64 1
  store i32 0, i32* %t5502
  %t5503 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 346, i64 2
  store i32 0, i32* %t5503
  %t5504 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 346, i64 3
  store i32 0, i32* %t5504
  %t5505 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 347, i64 0
  store i32 0, i32* %t5505
  %t5506 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 347, i64 1
  store i32 0, i32* %t5506
  %t5507 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 347, i64 2
  store i32 0, i32* %t5507
  %t5508 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 347, i64 3
  store i32 0, i32* %t5508
  %t5509 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 348, i64 0
  store i32 0, i32* %t5509
  %t5510 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 348, i64 1
  store i32 0, i32* %t5510
  %t5511 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 348, i64 2
  store i32 0, i32* %t5511
  %t5512 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 348, i64 3
  store i32 0, i32* %t5512
  %t5513 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 349, i64 0
  store i32 0, i32* %t5513
  %t5514 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 349, i64 1
  store i32 0, i32* %t5514
  %t5515 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 349, i64 2
  store i32 0, i32* %t5515
  %t5516 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 349, i64 3
  store i32 0, i32* %t5516
  %t5517 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 350, i64 0
  store i32 0, i32* %t5517
  %t5518 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 350, i64 1
  store i32 0, i32* %t5518
  %t5519 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 350, i64 2
  store i32 0, i32* %t5519
  %t5520 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 350, i64 3
  store i32 0, i32* %t5520
  %t5521 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 351, i64 0
  store i32 0, i32* %t5521
  %t5522 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 351, i64 1
  store i32 0, i32* %t5522
  %t5523 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 351, i64 2
  store i32 0, i32* %t5523
  %t5524 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 351, i64 3
  store i32 0, i32* %t5524
  %t5525 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 352, i64 0
  store i32 0, i32* %t5525
  %t5526 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 352, i64 1
  store i32 0, i32* %t5526
  %t5527 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 352, i64 2
  store i32 0, i32* %t5527
  %t5528 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 352, i64 3
  store i32 0, i32* %t5528
  %t5529 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 353, i64 0
  store i32 0, i32* %t5529
  %t5530 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 353, i64 1
  store i32 0, i32* %t5530
  %t5531 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 353, i64 2
  store i32 0, i32* %t5531
  %t5532 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 353, i64 3
  store i32 0, i32* %t5532
  %t5533 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 354, i64 0
  store i32 0, i32* %t5533
  %t5534 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 354, i64 1
  store i32 0, i32* %t5534
  %t5535 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 354, i64 2
  store i32 0, i32* %t5535
  %t5536 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 354, i64 3
  store i32 0, i32* %t5536
  %t5537 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 355, i64 0
  store i32 0, i32* %t5537
  %t5538 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 355, i64 1
  store i32 0, i32* %t5538
  %t5539 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 355, i64 2
  store i32 0, i32* %t5539
  %t5540 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 355, i64 3
  store i32 0, i32* %t5540
  %t5541 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 356, i64 0
  store i32 0, i32* %t5541
  %t5542 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 356, i64 1
  store i32 0, i32* %t5542
  %t5543 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 356, i64 2
  store i32 0, i32* %t5543
  %t5544 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 356, i64 3
  store i32 0, i32* %t5544
  %t5545 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 357, i64 0
  store i32 0, i32* %t5545
  %t5546 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 357, i64 1
  store i32 0, i32* %t5546
  %t5547 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 357, i64 2
  store i32 0, i32* %t5547
  %t5548 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 357, i64 3
  store i32 0, i32* %t5548
  %t5549 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 358, i64 0
  store i32 0, i32* %t5549
  %t5550 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 358, i64 1
  store i32 0, i32* %t5550
  %t5551 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 358, i64 2
  store i32 0, i32* %t5551
  %t5552 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 358, i64 3
  store i32 0, i32* %t5552
  %t5553 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 359, i64 0
  store i32 0, i32* %t5553
  %t5554 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 359, i64 1
  store i32 0, i32* %t5554
  %t5555 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 359, i64 2
  store i32 0, i32* %t5555
  %t5556 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 359, i64 3
  store i32 0, i32* %t5556
  %t5557 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 360, i64 0
  store i32 0, i32* %t5557
  %t5558 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 360, i64 1
  store i32 0, i32* %t5558
  %t5559 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 360, i64 2
  store i32 0, i32* %t5559
  %t5560 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 360, i64 3
  store i32 0, i32* %t5560
  %t5561 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 361, i64 0
  store i32 0, i32* %t5561
  %t5562 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 361, i64 1
  store i32 0, i32* %t5562
  %t5563 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 361, i64 2
  store i32 0, i32* %t5563
  %t5564 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 361, i64 3
  store i32 0, i32* %t5564
  %t5565 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 362, i64 0
  store i32 0, i32* %t5565
  %t5566 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 362, i64 1
  store i32 0, i32* %t5566
  %t5567 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 362, i64 2
  store i32 0, i32* %t5567
  %t5568 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 362, i64 3
  store i32 0, i32* %t5568
  %t5569 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 363, i64 0
  store i32 0, i32* %t5569
  %t5570 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 363, i64 1
  store i32 0, i32* %t5570
  %t5571 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 363, i64 2
  store i32 0, i32* %t5571
  %t5572 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 363, i64 3
  store i32 0, i32* %t5572
  %t5573 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 364, i64 0
  store i32 0, i32* %t5573
  %t5574 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 364, i64 1
  store i32 0, i32* %t5574
  %t5575 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 364, i64 2
  store i32 0, i32* %t5575
  %t5576 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 364, i64 3
  store i32 0, i32* %t5576
  %t5577 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 365, i64 0
  store i32 0, i32* %t5577
  %t5578 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 365, i64 1
  store i32 0, i32* %t5578
  %t5579 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 365, i64 2
  store i32 0, i32* %t5579
  %t5580 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 365, i64 3
  store i32 0, i32* %t5580
  %t5581 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 366, i64 0
  store i32 0, i32* %t5581
  %t5582 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 366, i64 1
  store i32 0, i32* %t5582
  %t5583 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 366, i64 2
  store i32 0, i32* %t5583
  %t5584 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 366, i64 3
  store i32 0, i32* %t5584
  %t5585 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 367, i64 0
  store i32 0, i32* %t5585
  %t5586 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 367, i64 1
  store i32 0, i32* %t5586
  %t5587 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 367, i64 2
  store i32 0, i32* %t5587
  %t5588 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 367, i64 3
  store i32 0, i32* %t5588
  %t5589 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 368, i64 0
  store i32 0, i32* %t5589
  %t5590 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 368, i64 1
  store i32 0, i32* %t5590
  %t5591 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 368, i64 2
  store i32 0, i32* %t5591
  %t5592 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 368, i64 3
  store i32 0, i32* %t5592
  %t5593 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 369, i64 0
  store i32 0, i32* %t5593
  %t5594 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 369, i64 1
  store i32 0, i32* %t5594
  %t5595 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 369, i64 2
  store i32 0, i32* %t5595
  %t5596 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 369, i64 3
  store i32 0, i32* %t5596
  %t5597 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 370, i64 0
  store i32 0, i32* %t5597
  %t5598 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 370, i64 1
  store i32 0, i32* %t5598
  %t5599 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 370, i64 2
  store i32 0, i32* %t5599
  %t5600 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 370, i64 3
  store i32 0, i32* %t5600
  %t5601 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 371, i64 0
  store i32 0, i32* %t5601
  %t5602 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 371, i64 1
  store i32 0, i32* %t5602
  %t5603 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 371, i64 2
  store i32 0, i32* %t5603
  %t5604 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 371, i64 3
  store i32 0, i32* %t5604
  %t5605 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 372, i64 0
  store i32 0, i32* %t5605
  %t5606 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 372, i64 1
  store i32 0, i32* %t5606
  %t5607 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 372, i64 2
  store i32 0, i32* %t5607
  %t5608 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 372, i64 3
  store i32 0, i32* %t5608
  %t5609 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 373, i64 0
  store i32 0, i32* %t5609
  %t5610 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 373, i64 1
  store i32 0, i32* %t5610
  %t5611 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 373, i64 2
  store i32 0, i32* %t5611
  %t5612 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 373, i64 3
  store i32 0, i32* %t5612
  %t5613 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 374, i64 0
  store i32 0, i32* %t5613
  %t5614 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 374, i64 1
  store i32 0, i32* %t5614
  %t5615 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 374, i64 2
  store i32 0, i32* %t5615
  %t5616 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 374, i64 3
  store i32 0, i32* %t5616
  %t5617 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 375, i64 0
  store i32 0, i32* %t5617
  %t5618 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 375, i64 1
  store i32 0, i32* %t5618
  %t5619 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 375, i64 2
  store i32 0, i32* %t5619
  %t5620 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 375, i64 3
  store i32 0, i32* %t5620
  %t5621 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 376, i64 0
  store i32 0, i32* %t5621
  %t5622 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 376, i64 1
  store i32 0, i32* %t5622
  %t5623 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 376, i64 2
  store i32 0, i32* %t5623
  %t5624 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 376, i64 3
  store i32 0, i32* %t5624
  %t5625 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 377, i64 0
  store i32 0, i32* %t5625
  %t5626 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 377, i64 1
  store i32 0, i32* %t5626
  %t5627 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 377, i64 2
  store i32 0, i32* %t5627
  %t5628 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 377, i64 3
  store i32 0, i32* %t5628
  %t5629 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 378, i64 0
  store i32 0, i32* %t5629
  %t5630 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 378, i64 1
  store i32 0, i32* %t5630
  %t5631 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 378, i64 2
  store i32 0, i32* %t5631
  %t5632 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 378, i64 3
  store i32 0, i32* %t5632
  %t5633 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 379, i64 0
  store i32 0, i32* %t5633
  %t5634 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 379, i64 1
  store i32 0, i32* %t5634
  %t5635 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 379, i64 2
  store i32 0, i32* %t5635
  %t5636 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 379, i64 3
  store i32 0, i32* %t5636
  %t5637 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 380, i64 0
  store i32 0, i32* %t5637
  %t5638 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 380, i64 1
  store i32 0, i32* %t5638
  %t5639 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 380, i64 2
  store i32 0, i32* %t5639
  %t5640 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 380, i64 3
  store i32 0, i32* %t5640
  %t5641 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 381, i64 0
  store i32 0, i32* %t5641
  %t5642 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 381, i64 1
  store i32 0, i32* %t5642
  %t5643 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 381, i64 2
  store i32 0, i32* %t5643
  %t5644 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 381, i64 3
  store i32 0, i32* %t5644
  %t5645 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 382, i64 0
  store i32 0, i32* %t5645
  %t5646 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 382, i64 1
  store i32 0, i32* %t5646
  %t5647 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 382, i64 2
  store i32 0, i32* %t5647
  %t5648 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 382, i64 3
  store i32 0, i32* %t5648
  %t5649 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 383, i64 0
  store i32 0, i32* %t5649
  %t5650 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 383, i64 1
  store i32 0, i32* %t5650
  %t5651 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 383, i64 2
  store i32 0, i32* %t5651
  %t5652 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 383, i64 3
  store i32 0, i32* %t5652
  %t5653 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 384, i64 0
  store i32 0, i32* %t5653
  %t5654 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 384, i64 1
  store i32 0, i32* %t5654
  %t5655 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 384, i64 2
  store i32 0, i32* %t5655
  %t5656 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 384, i64 3
  store i32 0, i32* %t5656
  %t5657 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 385, i64 0
  store i32 0, i32* %t5657
  %t5658 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 385, i64 1
  store i32 0, i32* %t5658
  %t5659 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 385, i64 2
  store i32 0, i32* %t5659
  %t5660 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 385, i64 3
  store i32 0, i32* %t5660
  %t5661 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 386, i64 0
  store i32 0, i32* %t5661
  %t5662 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 386, i64 1
  store i32 0, i32* %t5662
  %t5663 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 386, i64 2
  store i32 0, i32* %t5663
  %t5664 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 386, i64 3
  store i32 0, i32* %t5664
  %t5665 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 387, i64 0
  store i32 0, i32* %t5665
  %t5666 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 387, i64 1
  store i32 0, i32* %t5666
  %t5667 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 387, i64 2
  store i32 0, i32* %t5667
  %t5668 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 387, i64 3
  store i32 0, i32* %t5668
  %t5669 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 388, i64 0
  store i32 0, i32* %t5669
  %t5670 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 388, i64 1
  store i32 0, i32* %t5670
  %t5671 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 388, i64 2
  store i32 0, i32* %t5671
  %t5672 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 388, i64 3
  store i32 0, i32* %t5672
  %t5673 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 389, i64 0
  store i32 0, i32* %t5673
  %t5674 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 389, i64 1
  store i32 0, i32* %t5674
  %t5675 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 389, i64 2
  store i32 0, i32* %t5675
  %t5676 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 389, i64 3
  store i32 0, i32* %t5676
  %t5677 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 390, i64 0
  store i32 0, i32* %t5677
  %t5678 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 390, i64 1
  store i32 0, i32* %t5678
  %t5679 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 390, i64 2
  store i32 0, i32* %t5679
  %t5680 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 390, i64 3
  store i32 0, i32* %t5680
  %t5681 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 391, i64 0
  store i32 0, i32* %t5681
  %t5682 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 391, i64 1
  store i32 0, i32* %t5682
  %t5683 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 391, i64 2
  store i32 0, i32* %t5683
  %t5684 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 391, i64 3
  store i32 0, i32* %t5684
  %t5685 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 392, i64 0
  store i32 0, i32* %t5685
  %t5686 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 392, i64 1
  store i32 0, i32* %t5686
  %t5687 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 392, i64 2
  store i32 0, i32* %t5687
  %t5688 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 392, i64 3
  store i32 0, i32* %t5688
  %t5689 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 393, i64 0
  store i32 0, i32* %t5689
  %t5690 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 393, i64 1
  store i32 0, i32* %t5690
  %t5691 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 393, i64 2
  store i32 0, i32* %t5691
  %t5692 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 393, i64 3
  store i32 0, i32* %t5692
  %t5693 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 394, i64 0
  store i32 0, i32* %t5693
  %t5694 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 394, i64 1
  store i32 0, i32* %t5694
  %t5695 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 394, i64 2
  store i32 0, i32* %t5695
  %t5696 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 394, i64 3
  store i32 0, i32* %t5696
  %t5697 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 395, i64 0
  store i32 0, i32* %t5697
  %t5698 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 395, i64 1
  store i32 0, i32* %t5698
  %t5699 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 395, i64 2
  store i32 0, i32* %t5699
  %t5700 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 395, i64 3
  store i32 0, i32* %t5700
  %t5701 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 396, i64 0
  store i32 0, i32* %t5701
  %t5702 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 396, i64 1
  store i32 0, i32* %t5702
  %t5703 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 396, i64 2
  store i32 0, i32* %t5703
  %t5704 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 396, i64 3
  store i32 0, i32* %t5704
  %t5705 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 397, i64 0
  store i32 0, i32* %t5705
  %t5706 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 397, i64 1
  store i32 0, i32* %t5706
  %t5707 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 397, i64 2
  store i32 0, i32* %t5707
  %t5708 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 397, i64 3
  store i32 0, i32* %t5708
  %t5709 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 398, i64 0
  store i32 0, i32* %t5709
  %t5710 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 398, i64 1
  store i32 0, i32* %t5710
  %t5711 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 398, i64 2
  store i32 0, i32* %t5711
  %t5712 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 398, i64 3
  store i32 0, i32* %t5712
  %t5713 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 399, i64 0
  store i32 0, i32* %t5713
  %t5714 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 399, i64 1
  store i32 0, i32* %t5714
  %t5715 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 399, i64 2
  store i32 0, i32* %t5715
  %t5716 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 399, i64 3
  store i32 0, i32* %t5716
  %t5717 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 400, i64 0
  store i32 0, i32* %t5717
  %t5718 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 400, i64 1
  store i32 0, i32* %t5718
  %t5719 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 400, i64 2
  store i32 0, i32* %t5719
  %t5720 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 400, i64 3
  store i32 0, i32* %t5720
  %t5721 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 401, i64 0
  store i32 0, i32* %t5721
  %t5722 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 401, i64 1
  store i32 0, i32* %t5722
  %t5723 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 401, i64 2
  store i32 0, i32* %t5723
  %t5724 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 401, i64 3
  store i32 0, i32* %t5724
  %t5725 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 402, i64 0
  store i32 0, i32* %t5725
  %t5726 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 402, i64 1
  store i32 0, i32* %t5726
  %t5727 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 402, i64 2
  store i32 0, i32* %t5727
  %t5728 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 402, i64 3
  store i32 0, i32* %t5728
  %t5729 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 403, i64 0
  store i32 0, i32* %t5729
  %t5730 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 403, i64 1
  store i32 0, i32* %t5730
  %t5731 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 403, i64 2
  store i32 0, i32* %t5731
  %t5732 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 403, i64 3
  store i32 0, i32* %t5732
  %t5733 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 404, i64 0
  store i32 0, i32* %t5733
  %t5734 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 404, i64 1
  store i32 0, i32* %t5734
  %t5735 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 404, i64 2
  store i32 0, i32* %t5735
  %t5736 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 404, i64 3
  store i32 0, i32* %t5736
  %t5737 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 405, i64 0
  store i32 0, i32* %t5737
  %t5738 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 405, i64 1
  store i32 0, i32* %t5738
  %t5739 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 405, i64 2
  store i32 0, i32* %t5739
  %t5740 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 405, i64 3
  store i32 0, i32* %t5740
  %t5741 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 406, i64 0
  store i32 0, i32* %t5741
  %t5742 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 406, i64 1
  store i32 0, i32* %t5742
  %t5743 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 406, i64 2
  store i32 0, i32* %t5743
  %t5744 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 406, i64 3
  store i32 0, i32* %t5744
  %t5745 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 407, i64 0
  store i32 0, i32* %t5745
  %t5746 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 407, i64 1
  store i32 0, i32* %t5746
  %t5747 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 407, i64 2
  store i32 0, i32* %t5747
  %t5748 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 407, i64 3
  store i32 0, i32* %t5748
  %t5749 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 408, i64 0
  store i32 0, i32* %t5749
  %t5750 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 408, i64 1
  store i32 0, i32* %t5750
  %t5751 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 408, i64 2
  store i32 0, i32* %t5751
  %t5752 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 408, i64 3
  store i32 0, i32* %t5752
  %t5753 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 409, i64 0
  store i32 0, i32* %t5753
  %t5754 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 409, i64 1
  store i32 0, i32* %t5754
  %t5755 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 409, i64 2
  store i32 0, i32* %t5755
  %t5756 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 409, i64 3
  store i32 0, i32* %t5756
  %t5757 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 410, i64 0
  store i32 0, i32* %t5757
  %t5758 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 410, i64 1
  store i32 0, i32* %t5758
  %t5759 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 410, i64 2
  store i32 0, i32* %t5759
  %t5760 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 410, i64 3
  store i32 0, i32* %t5760
  %t5761 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 411, i64 0
  store i32 0, i32* %t5761
  %t5762 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 411, i64 1
  store i32 0, i32* %t5762
  %t5763 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 411, i64 2
  store i32 0, i32* %t5763
  %t5764 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 411, i64 3
  store i32 0, i32* %t5764
  %t5765 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 412, i64 0
  store i32 0, i32* %t5765
  %t5766 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 412, i64 1
  store i32 0, i32* %t5766
  %t5767 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 412, i64 2
  store i32 0, i32* %t5767
  %t5768 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 412, i64 3
  store i32 0, i32* %t5768
  %t5769 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 413, i64 0
  store i32 0, i32* %t5769
  %t5770 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 413, i64 1
  store i32 0, i32* %t5770
  %t5771 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 413, i64 2
  store i32 0, i32* %t5771
  %t5772 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 413, i64 3
  store i32 0, i32* %t5772
  %t5773 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 414, i64 0
  store i32 0, i32* %t5773
  %t5774 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 414, i64 1
  store i32 0, i32* %t5774
  %t5775 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 414, i64 2
  store i32 0, i32* %t5775
  %t5776 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 414, i64 3
  store i32 0, i32* %t5776
  %t5777 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 415, i64 0
  store i32 0, i32* %t5777
  %t5778 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 415, i64 1
  store i32 0, i32* %t5778
  %t5779 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 415, i64 2
  store i32 0, i32* %t5779
  %t5780 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 415, i64 3
  store i32 0, i32* %t5780
  %t5781 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 416, i64 0
  store i32 0, i32* %t5781
  %t5782 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 416, i64 1
  store i32 0, i32* %t5782
  %t5783 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 416, i64 2
  store i32 0, i32* %t5783
  %t5784 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 416, i64 3
  store i32 0, i32* %t5784
  %t5785 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 417, i64 0
  store i32 0, i32* %t5785
  %t5786 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 417, i64 1
  store i32 0, i32* %t5786
  %t5787 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 417, i64 2
  store i32 0, i32* %t5787
  %t5788 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 417, i64 3
  store i32 0, i32* %t5788
  %t5789 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 418, i64 0
  store i32 0, i32* %t5789
  %t5790 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 418, i64 1
  store i32 0, i32* %t5790
  %t5791 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 418, i64 2
  store i32 0, i32* %t5791
  %t5792 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 418, i64 3
  store i32 0, i32* %t5792
  %t5793 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 419, i64 0
  store i32 0, i32* %t5793
  %t5794 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 419, i64 1
  store i32 0, i32* %t5794
  %t5795 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 419, i64 2
  store i32 0, i32* %t5795
  %t5796 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 419, i64 3
  store i32 0, i32* %t5796
  %t5797 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 420, i64 0
  store i32 0, i32* %t5797
  %t5798 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 420, i64 1
  store i32 0, i32* %t5798
  %t5799 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 420, i64 2
  store i32 0, i32* %t5799
  %t5800 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 420, i64 3
  store i32 0, i32* %t5800
  %t5801 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 421, i64 0
  store i32 0, i32* %t5801
  %t5802 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 421, i64 1
  store i32 0, i32* %t5802
  %t5803 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 421, i64 2
  store i32 0, i32* %t5803
  %t5804 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 421, i64 3
  store i32 0, i32* %t5804
  %t5805 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 422, i64 0
  store i32 0, i32* %t5805
  %t5806 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 422, i64 1
  store i32 0, i32* %t5806
  %t5807 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 422, i64 2
  store i32 0, i32* %t5807
  %t5808 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 422, i64 3
  store i32 0, i32* %t5808
  %t5809 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 423, i64 0
  store i32 0, i32* %t5809
  %t5810 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 423, i64 1
  store i32 0, i32* %t5810
  %t5811 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 423, i64 2
  store i32 0, i32* %t5811
  %t5812 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 423, i64 3
  store i32 0, i32* %t5812
  %t5813 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 424, i64 0
  store i32 0, i32* %t5813
  %t5814 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 424, i64 1
  store i32 0, i32* %t5814
  %t5815 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 424, i64 2
  store i32 0, i32* %t5815
  %t5816 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 424, i64 3
  store i32 0, i32* %t5816
  %t5817 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 425, i64 0
  store i32 0, i32* %t5817
  %t5818 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 425, i64 1
  store i32 0, i32* %t5818
  %t5819 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 425, i64 2
  store i32 0, i32* %t5819
  %t5820 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 425, i64 3
  store i32 0, i32* %t5820
  %t5821 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 426, i64 0
  store i32 0, i32* %t5821
  %t5822 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 426, i64 1
  store i32 0, i32* %t5822
  %t5823 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 426, i64 2
  store i32 0, i32* %t5823
  %t5824 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 426, i64 3
  store i32 0, i32* %t5824
  %t5825 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 427, i64 0
  store i32 0, i32* %t5825
  %t5826 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 427, i64 1
  store i32 0, i32* %t5826
  %t5827 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 427, i64 2
  store i32 0, i32* %t5827
  %t5828 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 427, i64 3
  store i32 0, i32* %t5828
  %t5829 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 428, i64 0
  store i32 0, i32* %t5829
  %t5830 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 428, i64 1
  store i32 0, i32* %t5830
  %t5831 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 428, i64 2
  store i32 0, i32* %t5831
  %t5832 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 428, i64 3
  store i32 0, i32* %t5832
  %t5833 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 429, i64 0
  store i32 0, i32* %t5833
  %t5834 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 429, i64 1
  store i32 0, i32* %t5834
  %t5835 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 429, i64 2
  store i32 0, i32* %t5835
  %t5836 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 429, i64 3
  store i32 0, i32* %t5836
  %t5837 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 430, i64 0
  store i32 0, i32* %t5837
  %t5838 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 430, i64 1
  store i32 0, i32* %t5838
  %t5839 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 430, i64 2
  store i32 0, i32* %t5839
  %t5840 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 430, i64 3
  store i32 0, i32* %t5840
  %t5841 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 431, i64 0
  store i32 0, i32* %t5841
  %t5842 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 431, i64 1
  store i32 0, i32* %t5842
  %t5843 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 431, i64 2
  store i32 0, i32* %t5843
  %t5844 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 431, i64 3
  store i32 0, i32* %t5844
  %t5845 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 432, i64 0
  store i32 0, i32* %t5845
  %t5846 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 432, i64 1
  store i32 0, i32* %t5846
  %t5847 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 432, i64 2
  store i32 0, i32* %t5847
  %t5848 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 432, i64 3
  store i32 0, i32* %t5848
  %t5849 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 433, i64 0
  store i32 0, i32* %t5849
  %t5850 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 433, i64 1
  store i32 0, i32* %t5850
  %t5851 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 433, i64 2
  store i32 0, i32* %t5851
  %t5852 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 433, i64 3
  store i32 0, i32* %t5852
  %t5853 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 434, i64 0
  store i32 0, i32* %t5853
  %t5854 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 434, i64 1
  store i32 0, i32* %t5854
  %t5855 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 434, i64 2
  store i32 0, i32* %t5855
  %t5856 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 434, i64 3
  store i32 0, i32* %t5856
  %t5857 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 435, i64 0
  store i32 0, i32* %t5857
  %t5858 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 435, i64 1
  store i32 0, i32* %t5858
  %t5859 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 435, i64 2
  store i32 0, i32* %t5859
  %t5860 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 435, i64 3
  store i32 0, i32* %t5860
  %t5861 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 436, i64 0
  store i32 0, i32* %t5861
  %t5862 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 436, i64 1
  store i32 0, i32* %t5862
  %t5863 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 436, i64 2
  store i32 0, i32* %t5863
  %t5864 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 436, i64 3
  store i32 0, i32* %t5864
  %t5865 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 437, i64 0
  store i32 0, i32* %t5865
  %t5866 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 437, i64 1
  store i32 0, i32* %t5866
  %t5867 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 437, i64 2
  store i32 0, i32* %t5867
  %t5868 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 437, i64 3
  store i32 0, i32* %t5868
  %t5869 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 438, i64 0
  store i32 0, i32* %t5869
  %t5870 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 438, i64 1
  store i32 0, i32* %t5870
  %t5871 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 438, i64 2
  store i32 0, i32* %t5871
  %t5872 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 438, i64 3
  store i32 0, i32* %t5872
  %t5873 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 439, i64 0
  store i32 0, i32* %t5873
  %t5874 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 439, i64 1
  store i32 0, i32* %t5874
  %t5875 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 439, i64 2
  store i32 0, i32* %t5875
  %t5876 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 439, i64 3
  store i32 0, i32* %t5876
  %t5877 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 440, i64 0
  store i32 0, i32* %t5877
  %t5878 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 440, i64 1
  store i32 0, i32* %t5878
  %t5879 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 440, i64 2
  store i32 0, i32* %t5879
  %t5880 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 440, i64 3
  store i32 0, i32* %t5880
  %t5881 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 441, i64 0
  store i32 0, i32* %t5881
  %t5882 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 441, i64 1
  store i32 0, i32* %t5882
  %t5883 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 441, i64 2
  store i32 0, i32* %t5883
  %t5884 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 441, i64 3
  store i32 0, i32* %t5884
  %t5885 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 442, i64 0
  store i32 0, i32* %t5885
  %t5886 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 442, i64 1
  store i32 0, i32* %t5886
  %t5887 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 442, i64 2
  store i32 0, i32* %t5887
  %t5888 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 442, i64 3
  store i32 0, i32* %t5888
  %t5889 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 443, i64 0
  store i32 0, i32* %t5889
  %t5890 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 443, i64 1
  store i32 0, i32* %t5890
  %t5891 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 443, i64 2
  store i32 0, i32* %t5891
  %t5892 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 443, i64 3
  store i32 0, i32* %t5892
  %t5893 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 444, i64 0
  store i32 0, i32* %t5893
  %t5894 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 444, i64 1
  store i32 0, i32* %t5894
  %t5895 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 444, i64 2
  store i32 0, i32* %t5895
  %t5896 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 444, i64 3
  store i32 0, i32* %t5896
  %t5897 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 445, i64 0
  store i32 0, i32* %t5897
  %t5898 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 445, i64 1
  store i32 0, i32* %t5898
  %t5899 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 445, i64 2
  store i32 0, i32* %t5899
  %t5900 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 445, i64 3
  store i32 0, i32* %t5900
  %t5901 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 446, i64 0
  store i32 0, i32* %t5901
  %t5902 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 446, i64 1
  store i32 0, i32* %t5902
  %t5903 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 446, i64 2
  store i32 0, i32* %t5903
  %t5904 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 446, i64 3
  store i32 0, i32* %t5904
  %t5905 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 447, i64 0
  store i32 0, i32* %t5905
  %t5906 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 447, i64 1
  store i32 0, i32* %t5906
  %t5907 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 447, i64 2
  store i32 0, i32* %t5907
  %t5908 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 447, i64 3
  store i32 0, i32* %t5908
  %t5909 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 448, i64 0
  store i32 0, i32* %t5909
  %t5910 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 448, i64 1
  store i32 0, i32* %t5910
  %t5911 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 448, i64 2
  store i32 0, i32* %t5911
  %t5912 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 448, i64 3
  store i32 0, i32* %t5912
  %t5913 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 449, i64 0
  store i32 0, i32* %t5913
  %t5914 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 449, i64 1
  store i32 0, i32* %t5914
  %t5915 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 449, i64 2
  store i32 0, i32* %t5915
  %t5916 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 449, i64 3
  store i32 0, i32* %t5916
  %t5917 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 450, i64 0
  store i32 0, i32* %t5917
  %t5918 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 450, i64 1
  store i32 0, i32* %t5918
  %t5919 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 450, i64 2
  store i32 0, i32* %t5919
  %t5920 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 450, i64 3
  store i32 0, i32* %t5920
  %t5921 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 451, i64 0
  store i32 0, i32* %t5921
  %t5922 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 451, i64 1
  store i32 0, i32* %t5922
  %t5923 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 451, i64 2
  store i32 0, i32* %t5923
  %t5924 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 451, i64 3
  store i32 0, i32* %t5924
  %t5925 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 452, i64 0
  store i32 0, i32* %t5925
  %t5926 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 452, i64 1
  store i32 0, i32* %t5926
  %t5927 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 452, i64 2
  store i32 0, i32* %t5927
  %t5928 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 452, i64 3
  store i32 0, i32* %t5928
  %t5929 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 453, i64 0
  store i32 0, i32* %t5929
  %t5930 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 453, i64 1
  store i32 0, i32* %t5930
  %t5931 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 453, i64 2
  store i32 0, i32* %t5931
  %t5932 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 453, i64 3
  store i32 0, i32* %t5932
  %t5933 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 454, i64 0
  store i32 0, i32* %t5933
  %t5934 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 454, i64 1
  store i32 0, i32* %t5934
  %t5935 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 454, i64 2
  store i32 0, i32* %t5935
  %t5936 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 454, i64 3
  store i32 0, i32* %t5936
  %t5937 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 455, i64 0
  store i32 0, i32* %t5937
  %t5938 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 455, i64 1
  store i32 0, i32* %t5938
  %t5939 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 455, i64 2
  store i32 0, i32* %t5939
  %t5940 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 455, i64 3
  store i32 0, i32* %t5940
  %t5941 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 456, i64 0
  store i32 0, i32* %t5941
  %t5942 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 456, i64 1
  store i32 0, i32* %t5942
  %t5943 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 456, i64 2
  store i32 0, i32* %t5943
  %t5944 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 456, i64 3
  store i32 0, i32* %t5944
  %t5945 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 457, i64 0
  store i32 0, i32* %t5945
  %t5946 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 457, i64 1
  store i32 0, i32* %t5946
  %t5947 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 457, i64 2
  store i32 0, i32* %t5947
  %t5948 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 457, i64 3
  store i32 0, i32* %t5948
  %t5949 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 458, i64 0
  store i32 0, i32* %t5949
  %t5950 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 458, i64 1
  store i32 0, i32* %t5950
  %t5951 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 458, i64 2
  store i32 0, i32* %t5951
  %t5952 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 458, i64 3
  store i32 0, i32* %t5952
  %t5953 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 459, i64 0
  store i32 0, i32* %t5953
  %t5954 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 459, i64 1
  store i32 0, i32* %t5954
  %t5955 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 459, i64 2
  store i32 0, i32* %t5955
  %t5956 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 459, i64 3
  store i32 0, i32* %t5956
  %t5957 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 460, i64 0
  store i32 0, i32* %t5957
  %t5958 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 460, i64 1
  store i32 0, i32* %t5958
  %t5959 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 460, i64 2
  store i32 0, i32* %t5959
  %t5960 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 460, i64 3
  store i32 0, i32* %t5960
  %t5961 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 461, i64 0
  store i32 0, i32* %t5961
  %t5962 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 461, i64 1
  store i32 0, i32* %t5962
  %t5963 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 461, i64 2
  store i32 0, i32* %t5963
  %t5964 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 461, i64 3
  store i32 0, i32* %t5964
  %t5965 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 462, i64 0
  store i32 0, i32* %t5965
  %t5966 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 462, i64 1
  store i32 0, i32* %t5966
  %t5967 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 462, i64 2
  store i32 0, i32* %t5967
  %t5968 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 462, i64 3
  store i32 0, i32* %t5968
  %t5969 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 463, i64 0
  store i32 0, i32* %t5969
  %t5970 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 463, i64 1
  store i32 0, i32* %t5970
  %t5971 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 463, i64 2
  store i32 0, i32* %t5971
  %t5972 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 463, i64 3
  store i32 0, i32* %t5972
  %t5973 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 464, i64 0
  store i32 0, i32* %t5973
  %t5974 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 464, i64 1
  store i32 0, i32* %t5974
  %t5975 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 464, i64 2
  store i32 0, i32* %t5975
  %t5976 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 464, i64 3
  store i32 0, i32* %t5976
  %t5977 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 465, i64 0
  store i32 0, i32* %t5977
  %t5978 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 465, i64 1
  store i32 0, i32* %t5978
  %t5979 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 465, i64 2
  store i32 0, i32* %t5979
  %t5980 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 465, i64 3
  store i32 0, i32* %t5980
  %t5981 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 466, i64 0
  store i32 0, i32* %t5981
  %t5982 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 466, i64 1
  store i32 0, i32* %t5982
  %t5983 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 466, i64 2
  store i32 0, i32* %t5983
  %t5984 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 466, i64 3
  store i32 0, i32* %t5984
  %t5985 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 467, i64 0
  store i32 0, i32* %t5985
  %t5986 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 467, i64 1
  store i32 0, i32* %t5986
  %t5987 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 467, i64 2
  store i32 0, i32* %t5987
  %t5988 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 467, i64 3
  store i32 0, i32* %t5988
  %t5989 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 468, i64 0
  store i32 0, i32* %t5989
  %t5990 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 468, i64 1
  store i32 0, i32* %t5990
  %t5991 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 468, i64 2
  store i32 0, i32* %t5991
  %t5992 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 468, i64 3
  store i32 0, i32* %t5992
  %t5993 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 469, i64 0
  store i32 0, i32* %t5993
  %t5994 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 469, i64 1
  store i32 0, i32* %t5994
  %t5995 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 469, i64 2
  store i32 0, i32* %t5995
  %t5996 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 469, i64 3
  store i32 0, i32* %t5996
  %t5997 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 470, i64 0
  store i32 0, i32* %t5997
  %t5998 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 470, i64 1
  store i32 0, i32* %t5998
  %t5999 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 470, i64 2
  store i32 0, i32* %t5999
  %t6000 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 470, i64 3
  store i32 0, i32* %t6000
  %t6001 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 471, i64 0
  store i32 0, i32* %t6001
  %t6002 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 471, i64 1
  store i32 0, i32* %t6002
  %t6003 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 471, i64 2
  store i32 0, i32* %t6003
  %t6004 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 471, i64 3
  store i32 0, i32* %t6004
  %t6005 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 472, i64 0
  store i32 0, i32* %t6005
  %t6006 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 472, i64 1
  store i32 0, i32* %t6006
  %t6007 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 472, i64 2
  store i32 0, i32* %t6007
  %t6008 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 472, i64 3
  store i32 0, i32* %t6008
  %t6009 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 473, i64 0
  store i32 0, i32* %t6009
  %t6010 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 473, i64 1
  store i32 0, i32* %t6010
  %t6011 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 473, i64 2
  store i32 0, i32* %t6011
  %t6012 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 473, i64 3
  store i32 0, i32* %t6012
  %t6013 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 474, i64 0
  store i32 0, i32* %t6013
  %t6014 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 474, i64 1
  store i32 0, i32* %t6014
  %t6015 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 474, i64 2
  store i32 0, i32* %t6015
  %t6016 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 474, i64 3
  store i32 0, i32* %t6016
  %t6017 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 475, i64 0
  store i32 0, i32* %t6017
  %t6018 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 475, i64 1
  store i32 0, i32* %t6018
  %t6019 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 475, i64 2
  store i32 0, i32* %t6019
  %t6020 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 475, i64 3
  store i32 0, i32* %t6020
  %t6021 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 476, i64 0
  store i32 0, i32* %t6021
  %t6022 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 476, i64 1
  store i32 0, i32* %t6022
  %t6023 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 476, i64 2
  store i32 0, i32* %t6023
  %t6024 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 476, i64 3
  store i32 0, i32* %t6024
  %t6025 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 477, i64 0
  store i32 0, i32* %t6025
  %t6026 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 477, i64 1
  store i32 0, i32* %t6026
  %t6027 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 477, i64 2
  store i32 0, i32* %t6027
  %t6028 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 477, i64 3
  store i32 0, i32* %t6028
  %t6029 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 478, i64 0
  store i32 0, i32* %t6029
  %t6030 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 478, i64 1
  store i32 0, i32* %t6030
  %t6031 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 478, i64 2
  store i32 0, i32* %t6031
  %t6032 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 478, i64 3
  store i32 0, i32* %t6032
  %t6033 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 479, i64 0
  store i32 0, i32* %t6033
  %t6034 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 479, i64 1
  store i32 0, i32* %t6034
  %t6035 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 479, i64 2
  store i32 0, i32* %t6035
  %t6036 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 479, i64 3
  store i32 0, i32* %t6036
  %t6037 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 480, i64 0
  store i32 0, i32* %t6037
  %t6038 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 480, i64 1
  store i32 0, i32* %t6038
  %t6039 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 480, i64 2
  store i32 0, i32* %t6039
  %t6040 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 480, i64 3
  store i32 0, i32* %t6040
  %t6041 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 481, i64 0
  store i32 0, i32* %t6041
  %t6042 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 481, i64 1
  store i32 0, i32* %t6042
  %t6043 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 481, i64 2
  store i32 0, i32* %t6043
  %t6044 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 481, i64 3
  store i32 0, i32* %t6044
  %t6045 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 482, i64 0
  store i32 0, i32* %t6045
  %t6046 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 482, i64 1
  store i32 0, i32* %t6046
  %t6047 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 482, i64 2
  store i32 0, i32* %t6047
  %t6048 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 482, i64 3
  store i32 0, i32* %t6048
  %t6049 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 483, i64 0
  store i32 0, i32* %t6049
  %t6050 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 483, i64 1
  store i32 0, i32* %t6050
  %t6051 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 483, i64 2
  store i32 0, i32* %t6051
  %t6052 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 483, i64 3
  store i32 0, i32* %t6052
  %t6053 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 484, i64 0
  store i32 0, i32* %t6053
  %t6054 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 484, i64 1
  store i32 0, i32* %t6054
  %t6055 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 484, i64 2
  store i32 0, i32* %t6055
  %t6056 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 484, i64 3
  store i32 0, i32* %t6056
  %t6057 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 485, i64 0
  store i32 0, i32* %t6057
  %t6058 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 485, i64 1
  store i32 0, i32* %t6058
  %t6059 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 485, i64 2
  store i32 0, i32* %t6059
  %t6060 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 485, i64 3
  store i32 0, i32* %t6060
  %t6061 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 486, i64 0
  store i32 0, i32* %t6061
  %t6062 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 486, i64 1
  store i32 0, i32* %t6062
  %t6063 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 486, i64 2
  store i32 0, i32* %t6063
  %t6064 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 486, i64 3
  store i32 0, i32* %t6064
  %t6065 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 487, i64 0
  store i32 0, i32* %t6065
  %t6066 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 487, i64 1
  store i32 0, i32* %t6066
  %t6067 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 487, i64 2
  store i32 0, i32* %t6067
  %t6068 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 487, i64 3
  store i32 0, i32* %t6068
  %t6069 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 488, i64 0
  store i32 0, i32* %t6069
  %t6070 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 488, i64 1
  store i32 0, i32* %t6070
  %t6071 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 488, i64 2
  store i32 0, i32* %t6071
  %t6072 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 488, i64 3
  store i32 0, i32* %t6072
  %t6073 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 489, i64 0
  store i32 0, i32* %t6073
  %t6074 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 489, i64 1
  store i32 0, i32* %t6074
  %t6075 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 489, i64 2
  store i32 0, i32* %t6075
  %t6076 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 489, i64 3
  store i32 0, i32* %t6076
  %t6077 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 490, i64 0
  store i32 0, i32* %t6077
  %t6078 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 490, i64 1
  store i32 0, i32* %t6078
  %t6079 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 490, i64 2
  store i32 0, i32* %t6079
  %t6080 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 490, i64 3
  store i32 0, i32* %t6080
  %t6081 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 491, i64 0
  store i32 0, i32* %t6081
  %t6082 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 491, i64 1
  store i32 0, i32* %t6082
  %t6083 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 491, i64 2
  store i32 0, i32* %t6083
  %t6084 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 491, i64 3
  store i32 0, i32* %t6084
  %t6085 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 492, i64 0
  store i32 0, i32* %t6085
  %t6086 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 492, i64 1
  store i32 0, i32* %t6086
  %t6087 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 492, i64 2
  store i32 0, i32* %t6087
  %t6088 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 492, i64 3
  store i32 0, i32* %t6088
  %t6089 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 493, i64 0
  store i32 0, i32* %t6089
  %t6090 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 493, i64 1
  store i32 0, i32* %t6090
  %t6091 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 493, i64 2
  store i32 0, i32* %t6091
  %t6092 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 493, i64 3
  store i32 0, i32* %t6092
  %t6093 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 494, i64 0
  store i32 0, i32* %t6093
  %t6094 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 494, i64 1
  store i32 0, i32* %t6094
  %t6095 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 494, i64 2
  store i32 0, i32* %t6095
  %t6096 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 494, i64 3
  store i32 0, i32* %t6096
  %t6097 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 495, i64 0
  store i32 0, i32* %t6097
  %t6098 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 495, i64 1
  store i32 0, i32* %t6098
  %t6099 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 495, i64 2
  store i32 0, i32* %t6099
  %t6100 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 495, i64 3
  store i32 0, i32* %t6100
  %t6101 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 496, i64 0
  store i32 0, i32* %t6101
  %t6102 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 496, i64 1
  store i32 0, i32* %t6102
  %t6103 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 496, i64 2
  store i32 0, i32* %t6103
  %t6104 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 496, i64 3
  store i32 0, i32* %t6104
  %t6105 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 497, i64 0
  store i32 0, i32* %t6105
  %t6106 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 497, i64 1
  store i32 0, i32* %t6106
  %t6107 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 497, i64 2
  store i32 0, i32* %t6107
  %t6108 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 497, i64 3
  store i32 0, i32* %t6108
  %t6109 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 498, i64 0
  store i32 0, i32* %t6109
  %t6110 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 498, i64 1
  store i32 0, i32* %t6110
  %t6111 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 498, i64 2
  store i32 0, i32* %t6111
  %t6112 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 498, i64 3
  store i32 0, i32* %t6112
  %t6113 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 499, i64 0
  store i32 0, i32* %t6113
  %t6114 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 499, i64 1
  store i32 0, i32* %t6114
  %t6115 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 499, i64 2
  store i32 0, i32* %t6115
  %t6116 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 499, i64 3
  store i32 0, i32* %t6116
  %t6117 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 500, i64 0
  store i32 0, i32* %t6117
  %t6118 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 500, i64 1
  store i32 0, i32* %t6118
  %t6119 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 500, i64 2
  store i32 0, i32* %t6119
  %t6120 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 500, i64 3
  store i32 0, i32* %t6120
  %t6121 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 501, i64 0
  store i32 0, i32* %t6121
  %t6122 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 501, i64 1
  store i32 0, i32* %t6122
  %t6123 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 501, i64 2
  store i32 0, i32* %t6123
  %t6124 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 501, i64 3
  store i32 0, i32* %t6124
  %t6125 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 502, i64 0
  store i32 0, i32* %t6125
  %t6126 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 502, i64 1
  store i32 0, i32* %t6126
  %t6127 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 502, i64 2
  store i32 0, i32* %t6127
  %t6128 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 502, i64 3
  store i32 0, i32* %t6128
  %t6129 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 503, i64 0
  store i32 0, i32* %t6129
  %t6130 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 503, i64 1
  store i32 0, i32* %t6130
  %t6131 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 503, i64 2
  store i32 0, i32* %t6131
  %t6132 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 503, i64 3
  store i32 0, i32* %t6132
  %t6133 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 504, i64 0
  store i32 0, i32* %t6133
  %t6134 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 504, i64 1
  store i32 0, i32* %t6134
  %t6135 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 504, i64 2
  store i32 0, i32* %t6135
  %t6136 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 504, i64 3
  store i32 0, i32* %t6136
  %t6137 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 505, i64 0
  store i32 0, i32* %t6137
  %t6138 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 505, i64 1
  store i32 0, i32* %t6138
  %t6139 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 505, i64 2
  store i32 0, i32* %t6139
  %t6140 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 505, i64 3
  store i32 0, i32* %t6140
  %t6141 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 506, i64 0
  store i32 0, i32* %t6141
  %t6142 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 506, i64 1
  store i32 0, i32* %t6142
  %t6143 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 506, i64 2
  store i32 0, i32* %t6143
  %t6144 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 506, i64 3
  store i32 0, i32* %t6144
  %t6145 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 507, i64 0
  store i32 0, i32* %t6145
  %t6146 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 507, i64 1
  store i32 0, i32* %t6146
  %t6147 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 507, i64 2
  store i32 0, i32* %t6147
  %t6148 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 507, i64 3
  store i32 0, i32* %t6148
  %t6149 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 508, i64 0
  store i32 0, i32* %t6149
  %t6150 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 508, i64 1
  store i32 0, i32* %t6150
  %t6151 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 508, i64 2
  store i32 0, i32* %t6151
  %t6152 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 508, i64 3
  store i32 0, i32* %t6152
  %t6153 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 509, i64 0
  store i32 0, i32* %t6153
  %t6154 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 509, i64 1
  store i32 0, i32* %t6154
  %t6155 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 509, i64 2
  store i32 0, i32* %t6155
  %t6156 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 509, i64 3
  store i32 0, i32* %t6156
  %t6157 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 510, i64 0
  store i32 0, i32* %t6157
  %t6158 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 510, i64 1
  store i32 0, i32* %t6158
  %t6159 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 510, i64 2
  store i32 0, i32* %t6159
  %t6160 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 510, i64 3
  store i32 0, i32* %t6160
  %t6161 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 511, i64 0
  store i32 0, i32* %t6161
  %t6162 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 511, i64 1
  store i32 0, i32* %t6162
  %t6163 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 511, i64 2
  store i32 0, i32* %t6163
  %t6164 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 511, i64 3
  store i32 0, i32* %t6164
  %t6165 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 512, i64 0
  store i32 0, i32* %t6165
  %t6166 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 512, i64 1
  store i32 0, i32* %t6166
  %t6167 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 512, i64 2
  store i32 0, i32* %t6167
  %t6168 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 512, i64 3
  store i32 0, i32* %t6168
  %t6169 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 513, i64 0
  store i32 0, i32* %t6169
  %t6170 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 513, i64 1
  store i32 0, i32* %t6170
  %t6171 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 513, i64 2
  store i32 0, i32* %t6171
  %t6172 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 513, i64 3
  store i32 0, i32* %t6172
  %t6173 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 514, i64 0
  store i32 0, i32* %t6173
  %t6174 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 514, i64 1
  store i32 0, i32* %t6174
  %t6175 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 514, i64 2
  store i32 0, i32* %t6175
  %t6176 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 514, i64 3
  store i32 0, i32* %t6176
  %t6177 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 515, i64 0
  store i32 0, i32* %t6177
  %t6178 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 515, i64 1
  store i32 0, i32* %t6178
  %t6179 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 515, i64 2
  store i32 0, i32* %t6179
  %t6180 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 515, i64 3
  store i32 0, i32* %t6180
  %t6181 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 516, i64 0
  store i32 0, i32* %t6181
  %t6182 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 516, i64 1
  store i32 0, i32* %t6182
  %t6183 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 516, i64 2
  store i32 0, i32* %t6183
  %t6184 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 516, i64 3
  store i32 0, i32* %t6184
  %t6185 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 517, i64 0
  store i32 0, i32* %t6185
  %t6186 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 517, i64 1
  store i32 0, i32* %t6186
  %t6187 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 517, i64 2
  store i32 0, i32* %t6187
  %t6188 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 517, i64 3
  store i32 0, i32* %t6188
  %t6189 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 518, i64 0
  store i32 0, i32* %t6189
  %t6190 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 518, i64 1
  store i32 0, i32* %t6190
  %t6191 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 518, i64 2
  store i32 0, i32* %t6191
  %t6192 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 518, i64 3
  store i32 0, i32* %t6192
  %t6193 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 519, i64 0
  store i32 0, i32* %t6193
  %t6194 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 519, i64 1
  store i32 0, i32* %t6194
  %t6195 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 519, i64 2
  store i32 0, i32* %t6195
  %t6196 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 519, i64 3
  store i32 0, i32* %t6196
  %t6197 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 520, i64 0
  store i32 0, i32* %t6197
  %t6198 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 520, i64 1
  store i32 0, i32* %t6198
  %t6199 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 520, i64 2
  store i32 0, i32* %t6199
  %t6200 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 520, i64 3
  store i32 0, i32* %t6200
  %t6201 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 521, i64 0
  store i32 0, i32* %t6201
  %t6202 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 521, i64 1
  store i32 0, i32* %t6202
  %t6203 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 521, i64 2
  store i32 0, i32* %t6203
  %t6204 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 521, i64 3
  store i32 0, i32* %t6204
  %t6205 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 522, i64 0
  store i32 0, i32* %t6205
  %t6206 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 522, i64 1
  store i32 0, i32* %t6206
  %t6207 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 522, i64 2
  store i32 0, i32* %t6207
  %t6208 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 522, i64 3
  store i32 0, i32* %t6208
  %t6209 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 523, i64 0
  store i32 0, i32* %t6209
  %t6210 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 523, i64 1
  store i32 0, i32* %t6210
  %t6211 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 523, i64 2
  store i32 0, i32* %t6211
  %t6212 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 523, i64 3
  store i32 0, i32* %t6212
  %t6213 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 524, i64 0
  store i32 0, i32* %t6213
  %t6214 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 524, i64 1
  store i32 0, i32* %t6214
  %t6215 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 524, i64 2
  store i32 0, i32* %t6215
  %t6216 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 524, i64 3
  store i32 0, i32* %t6216
  %t6217 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 525, i64 0
  store i32 0, i32* %t6217
  %t6218 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 525, i64 1
  store i32 0, i32* %t6218
  %t6219 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 525, i64 2
  store i32 0, i32* %t6219
  %t6220 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 525, i64 3
  store i32 0, i32* %t6220
  %t6221 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 526, i64 0
  store i32 0, i32* %t6221
  %t6222 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 526, i64 1
  store i32 0, i32* %t6222
  %t6223 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 526, i64 2
  store i32 0, i32* %t6223
  %t6224 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 526, i64 3
  store i32 0, i32* %t6224
  %t6225 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 527, i64 0
  store i32 0, i32* %t6225
  %t6226 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 527, i64 1
  store i32 0, i32* %t6226
  %t6227 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 527, i64 2
  store i32 0, i32* %t6227
  %t6228 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 527, i64 3
  store i32 0, i32* %t6228
  %t6229 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 528, i64 0
  store i32 0, i32* %t6229
  %t6230 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 528, i64 1
  store i32 0, i32* %t6230
  %t6231 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 528, i64 2
  store i32 0, i32* %t6231
  %t6232 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 528, i64 3
  store i32 0, i32* %t6232
  %t6233 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 529, i64 0
  store i32 0, i32* %t6233
  %t6234 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 529, i64 1
  store i32 0, i32* %t6234
  %t6235 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 529, i64 2
  store i32 0, i32* %t6235
  %t6236 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 529, i64 3
  store i32 0, i32* %t6236
  %t6237 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 530, i64 0
  store i32 0, i32* %t6237
  %t6238 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 530, i64 1
  store i32 0, i32* %t6238
  %t6239 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 530, i64 2
  store i32 0, i32* %t6239
  %t6240 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 530, i64 3
  store i32 0, i32* %t6240
  %t6241 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 531, i64 0
  store i32 0, i32* %t6241
  %t6242 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 531, i64 1
  store i32 0, i32* %t6242
  %t6243 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 531, i64 2
  store i32 0, i32* %t6243
  %t6244 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 531, i64 3
  store i32 0, i32* %t6244
  %t6245 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 532, i64 0
  store i32 0, i32* %t6245
  %t6246 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 532, i64 1
  store i32 0, i32* %t6246
  %t6247 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 532, i64 2
  store i32 0, i32* %t6247
  %t6248 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 532, i64 3
  store i32 0, i32* %t6248
  %t6249 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 533, i64 0
  store i32 0, i32* %t6249
  %t6250 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 533, i64 1
  store i32 0, i32* %t6250
  %t6251 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 533, i64 2
  store i32 0, i32* %t6251
  %t6252 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 533, i64 3
  store i32 0, i32* %t6252
  %t6253 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 534, i64 0
  store i32 0, i32* %t6253
  %t6254 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 534, i64 1
  store i32 0, i32* %t6254
  %t6255 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 534, i64 2
  store i32 0, i32* %t6255
  %t6256 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 534, i64 3
  store i32 0, i32* %t6256
  %t6257 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 535, i64 0
  store i32 0, i32* %t6257
  %t6258 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 535, i64 1
  store i32 0, i32* %t6258
  %t6259 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 535, i64 2
  store i32 0, i32* %t6259
  %t6260 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 535, i64 3
  store i32 0, i32* %t6260
  %t6261 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 536, i64 0
  store i32 0, i32* %t6261
  %t6262 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 536, i64 1
  store i32 0, i32* %t6262
  %t6263 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 536, i64 2
  store i32 0, i32* %t6263
  %t6264 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 536, i64 3
  store i32 0, i32* %t6264
  %t6265 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 537, i64 0
  store i32 0, i32* %t6265
  %t6266 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 537, i64 1
  store i32 0, i32* %t6266
  %t6267 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 537, i64 2
  store i32 0, i32* %t6267
  %t6268 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 537, i64 3
  store i32 0, i32* %t6268
  %t6269 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 538, i64 0
  store i32 0, i32* %t6269
  %t6270 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 538, i64 1
  store i32 0, i32* %t6270
  %t6271 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 538, i64 2
  store i32 0, i32* %t6271
  %t6272 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 538, i64 3
  store i32 0, i32* %t6272
  %t6273 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 539, i64 0
  store i32 0, i32* %t6273
  %t6274 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 539, i64 1
  store i32 0, i32* %t6274
  %t6275 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 539, i64 2
  store i32 0, i32* %t6275
  %t6276 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 539, i64 3
  store i32 0, i32* %t6276
  %t6277 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 540, i64 0
  store i32 0, i32* %t6277
  %t6278 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 540, i64 1
  store i32 0, i32* %t6278
  %t6279 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 540, i64 2
  store i32 0, i32* %t6279
  %t6280 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 540, i64 3
  store i32 0, i32* %t6280
  %t6281 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 541, i64 0
  store i32 0, i32* %t6281
  %t6282 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 541, i64 1
  store i32 0, i32* %t6282
  %t6283 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 541, i64 2
  store i32 0, i32* %t6283
  %t6284 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 541, i64 3
  store i32 0, i32* %t6284
  %t6285 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 542, i64 0
  store i32 0, i32* %t6285
  %t6286 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 542, i64 1
  store i32 0, i32* %t6286
  %t6287 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 542, i64 2
  store i32 0, i32* %t6287
  %t6288 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 542, i64 3
  store i32 0, i32* %t6288
  %t6289 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 543, i64 0
  store i32 0, i32* %t6289
  %t6290 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 543, i64 1
  store i32 0, i32* %t6290
  %t6291 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 543, i64 2
  store i32 0, i32* %t6291
  %t6292 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 543, i64 3
  store i32 0, i32* %t6292
  %t6293 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 544, i64 0
  store i32 0, i32* %t6293
  %t6294 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 544, i64 1
  store i32 0, i32* %t6294
  %t6295 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 544, i64 2
  store i32 0, i32* %t6295
  %t6296 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 544, i64 3
  store i32 0, i32* %t6296
  %t6297 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 545, i64 0
  store i32 0, i32* %t6297
  %t6298 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 545, i64 1
  store i32 0, i32* %t6298
  %t6299 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 545, i64 2
  store i32 0, i32* %t6299
  %t6300 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 545, i64 3
  store i32 0, i32* %t6300
  %t6301 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 546, i64 0
  store i32 0, i32* %t6301
  %t6302 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 546, i64 1
  store i32 0, i32* %t6302
  %t6303 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 546, i64 2
  store i32 0, i32* %t6303
  %t6304 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 546, i64 3
  store i32 0, i32* %t6304
  %t6305 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 547, i64 0
  store i32 0, i32* %t6305
  %t6306 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 547, i64 1
  store i32 0, i32* %t6306
  %t6307 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 547, i64 2
  store i32 0, i32* %t6307
  %t6308 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 547, i64 3
  store i32 0, i32* %t6308
  %t6309 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 548, i64 0
  store i32 0, i32* %t6309
  %t6310 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 548, i64 1
  store i32 0, i32* %t6310
  %t6311 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 548, i64 2
  store i32 0, i32* %t6311
  %t6312 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 548, i64 3
  store i32 0, i32* %t6312
  %t6313 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 549, i64 0
  store i32 0, i32* %t6313
  %t6314 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 549, i64 1
  store i32 0, i32* %t6314
  %t6315 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 549, i64 2
  store i32 0, i32* %t6315
  %t6316 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 549, i64 3
  store i32 0, i32* %t6316
  %t6317 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 550, i64 0
  store i32 0, i32* %t6317
  %t6318 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 550, i64 1
  store i32 0, i32* %t6318
  %t6319 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 550, i64 2
  store i32 0, i32* %t6319
  %t6320 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 550, i64 3
  store i32 0, i32* %t6320
  %t6321 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 551, i64 0
  store i32 0, i32* %t6321
  %t6322 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 551, i64 1
  store i32 0, i32* %t6322
  %t6323 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 551, i64 2
  store i32 0, i32* %t6323
  %t6324 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 551, i64 3
  store i32 0, i32* %t6324
  %t6325 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 552, i64 0
  store i32 0, i32* %t6325
  %t6326 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 552, i64 1
  store i32 0, i32* %t6326
  %t6327 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 552, i64 2
  store i32 0, i32* %t6327
  %t6328 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 552, i64 3
  store i32 0, i32* %t6328
  %t6329 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 553, i64 0
  store i32 0, i32* %t6329
  %t6330 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 553, i64 1
  store i32 0, i32* %t6330
  %t6331 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 553, i64 2
  store i32 0, i32* %t6331
  %t6332 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 553, i64 3
  store i32 0, i32* %t6332
  %t6333 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 554, i64 0
  store i32 0, i32* %t6333
  %t6334 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 554, i64 1
  store i32 0, i32* %t6334
  %t6335 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 554, i64 2
  store i32 0, i32* %t6335
  %t6336 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 554, i64 3
  store i32 0, i32* %t6336
  %t6337 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 555, i64 0
  store i32 0, i32* %t6337
  %t6338 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 555, i64 1
  store i32 0, i32* %t6338
  %t6339 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 555, i64 2
  store i32 0, i32* %t6339
  %t6340 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 555, i64 3
  store i32 0, i32* %t6340
  %t6341 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 556, i64 0
  store i32 0, i32* %t6341
  %t6342 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 556, i64 1
  store i32 0, i32* %t6342
  %t6343 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 556, i64 2
  store i32 0, i32* %t6343
  %t6344 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 556, i64 3
  store i32 0, i32* %t6344
  %t6345 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 557, i64 0
  store i32 0, i32* %t6345
  %t6346 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 557, i64 1
  store i32 0, i32* %t6346
  %t6347 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 557, i64 2
  store i32 0, i32* %t6347
  %t6348 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 557, i64 3
  store i32 0, i32* %t6348
  %t6349 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 558, i64 0
  store i32 0, i32* %t6349
  %t6350 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 558, i64 1
  store i32 0, i32* %t6350
  %t6351 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 558, i64 2
  store i32 0, i32* %t6351
  %t6352 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 558, i64 3
  store i32 0, i32* %t6352
  %t6353 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 559, i64 0
  store i32 0, i32* %t6353
  %t6354 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 559, i64 1
  store i32 0, i32* %t6354
  %t6355 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 559, i64 2
  store i32 0, i32* %t6355
  %t6356 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 559, i64 3
  store i32 0, i32* %t6356
  %t6357 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 560, i64 0
  store i32 0, i32* %t6357
  %t6358 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 560, i64 1
  store i32 0, i32* %t6358
  %t6359 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 560, i64 2
  store i32 0, i32* %t6359
  %t6360 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 560, i64 3
  store i32 0, i32* %t6360
  %t6361 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 561, i64 0
  store i32 0, i32* %t6361
  %t6362 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 561, i64 1
  store i32 0, i32* %t6362
  %t6363 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 561, i64 2
  store i32 0, i32* %t6363
  %t6364 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 561, i64 3
  store i32 0, i32* %t6364
  %t6365 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 562, i64 0
  store i32 0, i32* %t6365
  %t6366 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 562, i64 1
  store i32 0, i32* %t6366
  %t6367 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 562, i64 2
  store i32 0, i32* %t6367
  %t6368 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 562, i64 3
  store i32 0, i32* %t6368
  %t6369 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 563, i64 0
  store i32 0, i32* %t6369
  %t6370 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 563, i64 1
  store i32 0, i32* %t6370
  %t6371 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 563, i64 2
  store i32 0, i32* %t6371
  %t6372 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 563, i64 3
  store i32 0, i32* %t6372
  %t6373 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 564, i64 0
  store i32 0, i32* %t6373
  %t6374 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 564, i64 1
  store i32 0, i32* %t6374
  %t6375 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 564, i64 2
  store i32 0, i32* %t6375
  %t6376 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 564, i64 3
  store i32 0, i32* %t6376
  %t6377 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 565, i64 0
  store i32 0, i32* %t6377
  %t6378 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 565, i64 1
  store i32 0, i32* %t6378
  %t6379 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 565, i64 2
  store i32 0, i32* %t6379
  %t6380 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 565, i64 3
  store i32 0, i32* %t6380
  %t6381 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 566, i64 0
  store i32 0, i32* %t6381
  %t6382 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 566, i64 1
  store i32 0, i32* %t6382
  %t6383 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 566, i64 2
  store i32 0, i32* %t6383
  %t6384 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 566, i64 3
  store i32 0, i32* %t6384
  %t6385 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 567, i64 0
  store i32 0, i32* %t6385
  %t6386 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 567, i64 1
  store i32 0, i32* %t6386
  %t6387 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 567, i64 2
  store i32 0, i32* %t6387
  %t6388 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 567, i64 3
  store i32 0, i32* %t6388
  %t6389 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 568, i64 0
  store i32 0, i32* %t6389
  %t6390 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 568, i64 1
  store i32 0, i32* %t6390
  %t6391 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 568, i64 2
  store i32 0, i32* %t6391
  %t6392 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 568, i64 3
  store i32 0, i32* %t6392
  %t6393 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 569, i64 0
  store i32 0, i32* %t6393
  %t6394 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 569, i64 1
  store i32 0, i32* %t6394
  %t6395 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 569, i64 2
  store i32 0, i32* %t6395
  %t6396 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 569, i64 3
  store i32 0, i32* %t6396
  %t6397 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 570, i64 0
  store i32 0, i32* %t6397
  %t6398 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 570, i64 1
  store i32 0, i32* %t6398
  %t6399 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 570, i64 2
  store i32 0, i32* %t6399
  %t6400 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 570, i64 3
  store i32 0, i32* %t6400
  %t6401 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 571, i64 0
  store i32 0, i32* %t6401
  %t6402 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 571, i64 1
  store i32 0, i32* %t6402
  %t6403 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 571, i64 2
  store i32 0, i32* %t6403
  %t6404 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 571, i64 3
  store i32 0, i32* %t6404
  %t6405 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 572, i64 0
  store i32 0, i32* %t6405
  %t6406 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 572, i64 1
  store i32 0, i32* %t6406
  %t6407 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 572, i64 2
  store i32 0, i32* %t6407
  %t6408 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 572, i64 3
  store i32 0, i32* %t6408
  %t6409 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 573, i64 0
  store i32 0, i32* %t6409
  %t6410 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 573, i64 1
  store i32 0, i32* %t6410
  %t6411 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 573, i64 2
  store i32 0, i32* %t6411
  %t6412 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 573, i64 3
  store i32 0, i32* %t6412
  %t6413 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 574, i64 0
  store i32 0, i32* %t6413
  %t6414 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 574, i64 1
  store i32 0, i32* %t6414
  %t6415 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 574, i64 2
  store i32 0, i32* %t6415
  %t6416 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 574, i64 3
  store i32 0, i32* %t6416
  %t6417 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 575, i64 0
  store i32 0, i32* %t6417
  %t6418 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 575, i64 1
  store i32 0, i32* %t6418
  %t6419 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 575, i64 2
  store i32 0, i32* %t6419
  %t6420 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 575, i64 3
  store i32 0, i32* %t6420
  %t6421 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 576, i64 0
  store i32 0, i32* %t6421
  %t6422 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 576, i64 1
  store i32 0, i32* %t6422
  %t6423 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 576, i64 2
  store i32 0, i32* %t6423
  %t6424 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 576, i64 3
  store i32 0, i32* %t6424
  %t6425 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 577, i64 0
  store i32 0, i32* %t6425
  %t6426 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 577, i64 1
  store i32 0, i32* %t6426
  %t6427 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 577, i64 2
  store i32 0, i32* %t6427
  %t6428 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 577, i64 3
  store i32 0, i32* %t6428
  %t6429 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 578, i64 0
  store i32 0, i32* %t6429
  %t6430 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 578, i64 1
  store i32 0, i32* %t6430
  %t6431 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 578, i64 2
  store i32 0, i32* %t6431
  %t6432 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 578, i64 3
  store i32 0, i32* %t6432
  %t6433 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 579, i64 0
  store i32 0, i32* %t6433
  %t6434 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 579, i64 1
  store i32 0, i32* %t6434
  %t6435 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 579, i64 2
  store i32 0, i32* %t6435
  %t6436 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 579, i64 3
  store i32 0, i32* %t6436
  %t6437 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 580, i64 0
  store i32 0, i32* %t6437
  %t6438 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 580, i64 1
  store i32 0, i32* %t6438
  %t6439 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 580, i64 2
  store i32 0, i32* %t6439
  %t6440 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 580, i64 3
  store i32 0, i32* %t6440
  %t6441 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 581, i64 0
  store i32 0, i32* %t6441
  %t6442 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 581, i64 1
  store i32 0, i32* %t6442
  %t6443 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 581, i64 2
  store i32 0, i32* %t6443
  %t6444 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 581, i64 3
  store i32 0, i32* %t6444
  %t6445 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 582, i64 0
  store i32 0, i32* %t6445
  %t6446 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 582, i64 1
  store i32 0, i32* %t6446
  %t6447 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 582, i64 2
  store i32 0, i32* %t6447
  %t6448 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 582, i64 3
  store i32 0, i32* %t6448
  %t6449 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 583, i64 0
  store i32 0, i32* %t6449
  %t6450 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 583, i64 1
  store i32 0, i32* %t6450
  %t6451 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 583, i64 2
  store i32 0, i32* %t6451
  %t6452 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 583, i64 3
  store i32 0, i32* %t6452
  %t6453 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 584, i64 0
  store i32 0, i32* %t6453
  %t6454 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 584, i64 1
  store i32 0, i32* %t6454
  %t6455 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 584, i64 2
  store i32 0, i32* %t6455
  %t6456 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 584, i64 3
  store i32 0, i32* %t6456
  %t6457 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 585, i64 0
  store i32 0, i32* %t6457
  %t6458 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 585, i64 1
  store i32 0, i32* %t6458
  %t6459 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 585, i64 2
  store i32 0, i32* %t6459
  %t6460 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 585, i64 3
  store i32 0, i32* %t6460
  %t6461 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 586, i64 0
  store i32 0, i32* %t6461
  %t6462 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 586, i64 1
  store i32 0, i32* %t6462
  %t6463 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 586, i64 2
  store i32 0, i32* %t6463
  %t6464 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 586, i64 3
  store i32 0, i32* %t6464
  %t6465 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 587, i64 0
  store i32 0, i32* %t6465
  %t6466 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 587, i64 1
  store i32 0, i32* %t6466
  %t6467 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 587, i64 2
  store i32 0, i32* %t6467
  %t6468 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 587, i64 3
  store i32 0, i32* %t6468
  %t6469 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 588, i64 0
  store i32 0, i32* %t6469
  %t6470 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 588, i64 1
  store i32 0, i32* %t6470
  %t6471 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 588, i64 2
  store i32 0, i32* %t6471
  %t6472 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 588, i64 3
  store i32 0, i32* %t6472
  %t6473 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 589, i64 0
  store i32 0, i32* %t6473
  %t6474 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 589, i64 1
  store i32 0, i32* %t6474
  %t6475 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 589, i64 2
  store i32 0, i32* %t6475
  %t6476 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 589, i64 3
  store i32 0, i32* %t6476
  %t6477 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 590, i64 0
  store i32 0, i32* %t6477
  %t6478 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 590, i64 1
  store i32 0, i32* %t6478
  %t6479 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 590, i64 2
  store i32 0, i32* %t6479
  %t6480 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 590, i64 3
  store i32 0, i32* %t6480
  %t6481 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 591, i64 0
  store i32 0, i32* %t6481
  %t6482 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 591, i64 1
  store i32 0, i32* %t6482
  %t6483 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 591, i64 2
  store i32 0, i32* %t6483
  %t6484 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 591, i64 3
  store i32 0, i32* %t6484
  %t6485 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 592, i64 0
  store i32 0, i32* %t6485
  %t6486 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 592, i64 1
  store i32 0, i32* %t6486
  %t6487 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 592, i64 2
  store i32 0, i32* %t6487
  %t6488 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 592, i64 3
  store i32 0, i32* %t6488
  %t6489 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 593, i64 0
  store i32 0, i32* %t6489
  %t6490 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 593, i64 1
  store i32 0, i32* %t6490
  %t6491 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 593, i64 2
  store i32 0, i32* %t6491
  %t6492 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 593, i64 3
  store i32 0, i32* %t6492
  %t6493 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 594, i64 0
  store i32 0, i32* %t6493
  %t6494 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 594, i64 1
  store i32 0, i32* %t6494
  %t6495 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 594, i64 2
  store i32 0, i32* %t6495
  %t6496 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 594, i64 3
  store i32 0, i32* %t6496
  %t6497 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 595, i64 0
  store i32 0, i32* %t6497
  %t6498 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 595, i64 1
  store i32 0, i32* %t6498
  %t6499 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 595, i64 2
  store i32 0, i32* %t6499
  %t6500 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 595, i64 3
  store i32 0, i32* %t6500
  %t6501 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 596, i64 0
  store i32 0, i32* %t6501
  %t6502 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 596, i64 1
  store i32 0, i32* %t6502
  %t6503 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 596, i64 2
  store i32 0, i32* %t6503
  %t6504 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 596, i64 3
  store i32 0, i32* %t6504
  %t6505 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 597, i64 0
  store i32 0, i32* %t6505
  %t6506 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 597, i64 1
  store i32 0, i32* %t6506
  %t6507 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 597, i64 2
  store i32 0, i32* %t6507
  %t6508 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 597, i64 3
  store i32 0, i32* %t6508
  %t6509 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 598, i64 0
  store i32 0, i32* %t6509
  %t6510 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 598, i64 1
  store i32 0, i32* %t6510
  %t6511 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 598, i64 2
  store i32 0, i32* %t6511
  %t6512 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 598, i64 3
  store i32 0, i32* %t6512
  %t6513 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 599, i64 0
  store i32 0, i32* %t6513
  %t6514 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 599, i64 1
  store i32 0, i32* %t6514
  %t6515 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 599, i64 2
  store i32 0, i32* %t6515
  %t6516 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 599, i64 3
  store i32 0, i32* %t6516
  %t6517 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 600, i64 0
  store i32 0, i32* %t6517
  %t6518 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 600, i64 1
  store i32 0, i32* %t6518
  %t6519 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 600, i64 2
  store i32 0, i32* %t6519
  %t6520 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 600, i64 3
  store i32 0, i32* %t6520
  %t6521 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 601, i64 0
  store i32 0, i32* %t6521
  %t6522 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 601, i64 1
  store i32 0, i32* %t6522
  %t6523 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 601, i64 2
  store i32 0, i32* %t6523
  %t6524 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 601, i64 3
  store i32 0, i32* %t6524
  %t6525 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 602, i64 0
  store i32 0, i32* %t6525
  %t6526 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 602, i64 1
  store i32 0, i32* %t6526
  %t6527 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 602, i64 2
  store i32 0, i32* %t6527
  %t6528 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 602, i64 3
  store i32 0, i32* %t6528
  %t6529 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 603, i64 0
  store i32 0, i32* %t6529
  %t6530 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 603, i64 1
  store i32 0, i32* %t6530
  %t6531 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 603, i64 2
  store i32 0, i32* %t6531
  %t6532 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 603, i64 3
  store i32 0, i32* %t6532
  %t6533 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 604, i64 0
  store i32 0, i32* %t6533
  %t6534 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 604, i64 1
  store i32 0, i32* %t6534
  %t6535 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 604, i64 2
  store i32 0, i32* %t6535
  %t6536 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 604, i64 3
  store i32 0, i32* %t6536
  %t6537 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 605, i64 0
  store i32 0, i32* %t6537
  %t6538 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 605, i64 1
  store i32 0, i32* %t6538
  %t6539 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 605, i64 2
  store i32 0, i32* %t6539
  %t6540 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 605, i64 3
  store i32 0, i32* %t6540
  %t6541 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 606, i64 0
  store i32 0, i32* %t6541
  %t6542 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 606, i64 1
  store i32 0, i32* %t6542
  %t6543 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 606, i64 2
  store i32 0, i32* %t6543
  %t6544 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 606, i64 3
  store i32 0, i32* %t6544
  %t6545 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 607, i64 0
  store i32 0, i32* %t6545
  %t6546 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 607, i64 1
  store i32 0, i32* %t6546
  %t6547 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 607, i64 2
  store i32 0, i32* %t6547
  %t6548 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 607, i64 3
  store i32 0, i32* %t6548
  %t6549 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 608, i64 0
  store i32 0, i32* %t6549
  %t6550 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 608, i64 1
  store i32 0, i32* %t6550
  %t6551 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 608, i64 2
  store i32 0, i32* %t6551
  %t6552 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 608, i64 3
  store i32 0, i32* %t6552
  %t6553 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 609, i64 0
  store i32 0, i32* %t6553
  %t6554 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 609, i64 1
  store i32 0, i32* %t6554
  %t6555 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 609, i64 2
  store i32 0, i32* %t6555
  %t6556 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 609, i64 3
  store i32 0, i32* %t6556
  %t6557 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 610, i64 0
  store i32 0, i32* %t6557
  %t6558 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 610, i64 1
  store i32 0, i32* %t6558
  %t6559 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 610, i64 2
  store i32 0, i32* %t6559
  %t6560 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 610, i64 3
  store i32 0, i32* %t6560
  %t6561 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 611, i64 0
  store i32 0, i32* %t6561
  %t6562 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 611, i64 1
  store i32 0, i32* %t6562
  %t6563 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 611, i64 2
  store i32 0, i32* %t6563
  %t6564 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 611, i64 3
  store i32 0, i32* %t6564
  %t6565 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 612, i64 0
  store i32 0, i32* %t6565
  %t6566 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 612, i64 1
  store i32 0, i32* %t6566
  %t6567 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 612, i64 2
  store i32 0, i32* %t6567
  %t6568 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 612, i64 3
  store i32 0, i32* %t6568
  %t6569 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 613, i64 0
  store i32 0, i32* %t6569
  %t6570 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 613, i64 1
  store i32 0, i32* %t6570
  %t6571 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 613, i64 2
  store i32 0, i32* %t6571
  %t6572 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 613, i64 3
  store i32 0, i32* %t6572
  %t6573 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 614, i64 0
  store i32 0, i32* %t6573
  %t6574 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 614, i64 1
  store i32 0, i32* %t6574
  %t6575 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 614, i64 2
  store i32 0, i32* %t6575
  %t6576 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 614, i64 3
  store i32 0, i32* %t6576
  %t6577 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 615, i64 0
  store i32 0, i32* %t6577
  %t6578 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 615, i64 1
  store i32 0, i32* %t6578
  %t6579 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 615, i64 2
  store i32 0, i32* %t6579
  %t6580 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 615, i64 3
  store i32 0, i32* %t6580
  %t6581 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 616, i64 0
  store i32 0, i32* %t6581
  %t6582 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 616, i64 1
  store i32 0, i32* %t6582
  %t6583 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 616, i64 2
  store i32 0, i32* %t6583
  %t6584 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 616, i64 3
  store i32 0, i32* %t6584
  %t6585 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 617, i64 0
  store i32 0, i32* %t6585
  %t6586 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 617, i64 1
  store i32 0, i32* %t6586
  %t6587 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 617, i64 2
  store i32 0, i32* %t6587
  %t6588 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 617, i64 3
  store i32 0, i32* %t6588
  %t6589 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 618, i64 0
  store i32 0, i32* %t6589
  %t6590 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 618, i64 1
  store i32 0, i32* %t6590
  %t6591 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 618, i64 2
  store i32 0, i32* %t6591
  %t6592 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 618, i64 3
  store i32 0, i32* %t6592
  %t6593 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 619, i64 0
  store i32 0, i32* %t6593
  %t6594 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 619, i64 1
  store i32 0, i32* %t6594
  %t6595 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 619, i64 2
  store i32 0, i32* %t6595
  %t6596 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 619, i64 3
  store i32 0, i32* %t6596
  %t6597 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 620, i64 0
  store i32 0, i32* %t6597
  %t6598 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 620, i64 1
  store i32 0, i32* %t6598
  %t6599 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 620, i64 2
  store i32 0, i32* %t6599
  %t6600 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 620, i64 3
  store i32 0, i32* %t6600
  %t6601 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 621, i64 0
  store i32 0, i32* %t6601
  %t6602 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 621, i64 1
  store i32 0, i32* %t6602
  %t6603 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 621, i64 2
  store i32 0, i32* %t6603
  %t6604 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 621, i64 3
  store i32 0, i32* %t6604
  %t6605 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 622, i64 0
  store i32 0, i32* %t6605
  %t6606 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 622, i64 1
  store i32 0, i32* %t6606
  %t6607 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 622, i64 2
  store i32 0, i32* %t6607
  %t6608 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 622, i64 3
  store i32 0, i32* %t6608
  %t6609 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 623, i64 0
  store i32 0, i32* %t6609
  %t6610 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 623, i64 1
  store i32 0, i32* %t6610
  %t6611 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 623, i64 2
  store i32 0, i32* %t6611
  %t6612 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 623, i64 3
  store i32 0, i32* %t6612
  %t6613 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 624, i64 0
  store i32 0, i32* %t6613
  %t6614 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 624, i64 1
  store i32 0, i32* %t6614
  %t6615 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 624, i64 2
  store i32 0, i32* %t6615
  %t6616 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 624, i64 3
  store i32 0, i32* %t6616
  %t6617 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 625, i64 0
  store i32 0, i32* %t6617
  %t6618 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 625, i64 1
  store i32 0, i32* %t6618
  %t6619 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 625, i64 2
  store i32 0, i32* %t6619
  %t6620 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 625, i64 3
  store i32 0, i32* %t6620
  %t6621 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 626, i64 0
  store i32 0, i32* %t6621
  %t6622 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 626, i64 1
  store i32 0, i32* %t6622
  %t6623 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 626, i64 2
  store i32 0, i32* %t6623
  %t6624 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 626, i64 3
  store i32 0, i32* %t6624
  %t6625 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 627, i64 0
  store i32 0, i32* %t6625
  %t6626 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 627, i64 1
  store i32 0, i32* %t6626
  %t6627 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 627, i64 2
  store i32 0, i32* %t6627
  %t6628 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 627, i64 3
  store i32 0, i32* %t6628
  %t6629 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 628, i64 0
  store i32 0, i32* %t6629
  %t6630 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 628, i64 1
  store i32 0, i32* %t6630
  %t6631 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 628, i64 2
  store i32 0, i32* %t6631
  %t6632 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 628, i64 3
  store i32 0, i32* %t6632
  %t6633 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 629, i64 0
  store i32 0, i32* %t6633
  %t6634 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 629, i64 1
  store i32 0, i32* %t6634
  %t6635 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 629, i64 2
  store i32 0, i32* %t6635
  %t6636 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 629, i64 3
  store i32 0, i32* %t6636
  %t6637 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 630, i64 0
  store i32 0, i32* %t6637
  %t6638 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 630, i64 1
  store i32 0, i32* %t6638
  %t6639 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 630, i64 2
  store i32 0, i32* %t6639
  %t6640 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 630, i64 3
  store i32 0, i32* %t6640
  %t6641 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 631, i64 0
  store i32 0, i32* %t6641
  %t6642 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 631, i64 1
  store i32 0, i32* %t6642
  %t6643 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 631, i64 2
  store i32 0, i32* %t6643
  %t6644 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 631, i64 3
  store i32 0, i32* %t6644
  %t6645 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 632, i64 0
  store i32 0, i32* %t6645
  %t6646 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 632, i64 1
  store i32 0, i32* %t6646
  %t6647 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 632, i64 2
  store i32 0, i32* %t6647
  %t6648 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 632, i64 3
  store i32 0, i32* %t6648
  %t6649 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 633, i64 0
  store i32 0, i32* %t6649
  %t6650 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 633, i64 1
  store i32 0, i32* %t6650
  %t6651 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 633, i64 2
  store i32 0, i32* %t6651
  %t6652 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 633, i64 3
  store i32 0, i32* %t6652
  %t6653 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 634, i64 0
  store i32 0, i32* %t6653
  %t6654 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 634, i64 1
  store i32 0, i32* %t6654
  %t6655 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 634, i64 2
  store i32 0, i32* %t6655
  %t6656 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 634, i64 3
  store i32 0, i32* %t6656
  %t6657 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 635, i64 0
  store i32 0, i32* %t6657
  %t6658 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 635, i64 1
  store i32 0, i32* %t6658
  %t6659 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 635, i64 2
  store i32 0, i32* %t6659
  %t6660 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 635, i64 3
  store i32 0, i32* %t6660
  %t6661 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 636, i64 0
  store i32 0, i32* %t6661
  %t6662 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 636, i64 1
  store i32 0, i32* %t6662
  %t6663 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 636, i64 2
  store i32 0, i32* %t6663
  %t6664 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 636, i64 3
  store i32 0, i32* %t6664
  %t6665 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 637, i64 0
  store i32 0, i32* %t6665
  %t6666 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 637, i64 1
  store i32 0, i32* %t6666
  %t6667 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 637, i64 2
  store i32 0, i32* %t6667
  %t6668 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 637, i64 3
  store i32 0, i32* %t6668
  %t6669 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 638, i64 0
  store i32 0, i32* %t6669
  %t6670 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 638, i64 1
  store i32 0, i32* %t6670
  %t6671 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 638, i64 2
  store i32 0, i32* %t6671
  %t6672 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 638, i64 3
  store i32 0, i32* %t6672
  %t6673 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 639, i64 0
  store i32 0, i32* %t6673
  %t6674 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 639, i64 1
  store i32 0, i32* %t6674
  %t6675 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 639, i64 2
  store i32 0, i32* %t6675
  %t6676 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 639, i64 3
  store i32 0, i32* %t6676
  %t6677 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 640, i64 0
  store i32 0, i32* %t6677
  %t6678 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 640, i64 1
  store i32 0, i32* %t6678
  %t6679 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 640, i64 2
  store i32 0, i32* %t6679
  %t6680 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 640, i64 3
  store i32 0, i32* %t6680
  %t6681 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 641, i64 0
  store i32 0, i32* %t6681
  %t6682 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 641, i64 1
  store i32 0, i32* %t6682
  %t6683 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 641, i64 2
  store i32 0, i32* %t6683
  %t6684 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 641, i64 3
  store i32 0, i32* %t6684
  %t6685 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 642, i64 0
  store i32 0, i32* %t6685
  %t6686 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 642, i64 1
  store i32 0, i32* %t6686
  %t6687 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 642, i64 2
  store i32 0, i32* %t6687
  %t6688 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 642, i64 3
  store i32 0, i32* %t6688
  %t6689 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 643, i64 0
  store i32 0, i32* %t6689
  %t6690 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 643, i64 1
  store i32 0, i32* %t6690
  %t6691 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 643, i64 2
  store i32 0, i32* %t6691
  %t6692 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 643, i64 3
  store i32 0, i32* %t6692
  %t6693 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 644, i64 0
  store i32 0, i32* %t6693
  %t6694 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 644, i64 1
  store i32 0, i32* %t6694
  %t6695 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 644, i64 2
  store i32 0, i32* %t6695
  %t6696 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 644, i64 3
  store i32 0, i32* %t6696
  %t6697 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 645, i64 0
  store i32 0, i32* %t6697
  %t6698 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 645, i64 1
  store i32 0, i32* %t6698
  %t6699 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 645, i64 2
  store i32 0, i32* %t6699
  %t6700 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 645, i64 3
  store i32 0, i32* %t6700
  %t6701 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 646, i64 0
  store i32 0, i32* %t6701
  %t6702 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 646, i64 1
  store i32 0, i32* %t6702
  %t6703 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 646, i64 2
  store i32 0, i32* %t6703
  %t6704 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 646, i64 3
  store i32 0, i32* %t6704
  %t6705 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 647, i64 0
  store i32 0, i32* %t6705
  %t6706 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 647, i64 1
  store i32 0, i32* %t6706
  %t6707 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 647, i64 2
  store i32 0, i32* %t6707
  %t6708 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 647, i64 3
  store i32 0, i32* %t6708
  %t6709 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 648, i64 0
  store i32 0, i32* %t6709
  %t6710 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 648, i64 1
  store i32 0, i32* %t6710
  %t6711 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 648, i64 2
  store i32 0, i32* %t6711
  %t6712 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 648, i64 3
  store i32 0, i32* %t6712
  %t6713 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 649, i64 0
  store i32 0, i32* %t6713
  %t6714 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 649, i64 1
  store i32 0, i32* %t6714
  %t6715 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 649, i64 2
  store i32 0, i32* %t6715
  %t6716 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 649, i64 3
  store i32 0, i32* %t6716
  %t6717 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 650, i64 0
  store i32 0, i32* %t6717
  %t6718 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 650, i64 1
  store i32 0, i32* %t6718
  %t6719 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 650, i64 2
  store i32 0, i32* %t6719
  %t6720 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 650, i64 3
  store i32 0, i32* %t6720
  %t6721 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 651, i64 0
  store i32 0, i32* %t6721
  %t6722 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 651, i64 1
  store i32 0, i32* %t6722
  %t6723 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 651, i64 2
  store i32 0, i32* %t6723
  %t6724 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 651, i64 3
  store i32 0, i32* %t6724
  %t6725 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 652, i64 0
  store i32 0, i32* %t6725
  %t6726 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 652, i64 1
  store i32 0, i32* %t6726
  %t6727 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 652, i64 2
  store i32 0, i32* %t6727
  %t6728 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 652, i64 3
  store i32 0, i32* %t6728
  %t6729 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 653, i64 0
  store i32 0, i32* %t6729
  %t6730 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 653, i64 1
  store i32 0, i32* %t6730
  %t6731 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 653, i64 2
  store i32 0, i32* %t6731
  %t6732 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 653, i64 3
  store i32 0, i32* %t6732
  %t6733 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 654, i64 0
  store i32 0, i32* %t6733
  %t6734 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 654, i64 1
  store i32 0, i32* %t6734
  %t6735 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 654, i64 2
  store i32 0, i32* %t6735
  %t6736 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 654, i64 3
  store i32 0, i32* %t6736
  %t6737 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 655, i64 0
  store i32 0, i32* %t6737
  %t6738 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 655, i64 1
  store i32 0, i32* %t6738
  %t6739 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 655, i64 2
  store i32 0, i32* %t6739
  %t6740 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 655, i64 3
  store i32 0, i32* %t6740
  %t6741 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 656, i64 0
  store i32 0, i32* %t6741
  %t6742 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 656, i64 1
  store i32 0, i32* %t6742
  %t6743 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 656, i64 2
  store i32 0, i32* %t6743
  %t6744 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 656, i64 3
  store i32 0, i32* %t6744
  %t6745 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 657, i64 0
  store i32 0, i32* %t6745
  %t6746 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 657, i64 1
  store i32 0, i32* %t6746
  %t6747 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 657, i64 2
  store i32 0, i32* %t6747
  %t6748 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 657, i64 3
  store i32 0, i32* %t6748
  %t6749 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 658, i64 0
  store i32 0, i32* %t6749
  %t6750 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 658, i64 1
  store i32 0, i32* %t6750
  %t6751 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 658, i64 2
  store i32 0, i32* %t6751
  %t6752 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 658, i64 3
  store i32 0, i32* %t6752
  %t6753 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 659, i64 0
  store i32 0, i32* %t6753
  %t6754 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 659, i64 1
  store i32 0, i32* %t6754
  %t6755 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 659, i64 2
  store i32 0, i32* %t6755
  %t6756 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 659, i64 3
  store i32 0, i32* %t6756
  %t6757 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 660, i64 0
  store i32 0, i32* %t6757
  %t6758 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 660, i64 1
  store i32 0, i32* %t6758
  %t6759 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 660, i64 2
  store i32 0, i32* %t6759
  %t6760 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 660, i64 3
  store i32 0, i32* %t6760
  %t6761 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 661, i64 0
  store i32 0, i32* %t6761
  %t6762 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 661, i64 1
  store i32 0, i32* %t6762
  %t6763 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 661, i64 2
  store i32 0, i32* %t6763
  %t6764 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 661, i64 3
  store i32 0, i32* %t6764
  %t6765 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 662, i64 0
  store i32 0, i32* %t6765
  %t6766 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 662, i64 1
  store i32 0, i32* %t6766
  %t6767 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 662, i64 2
  store i32 0, i32* %t6767
  %t6768 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 662, i64 3
  store i32 0, i32* %t6768
  %t6769 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 663, i64 0
  store i32 0, i32* %t6769
  %t6770 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 663, i64 1
  store i32 0, i32* %t6770
  %t6771 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 663, i64 2
  store i32 0, i32* %t6771
  %t6772 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 663, i64 3
  store i32 0, i32* %t6772
  %t6773 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 664, i64 0
  store i32 0, i32* %t6773
  %t6774 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 664, i64 1
  store i32 0, i32* %t6774
  %t6775 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 664, i64 2
  store i32 0, i32* %t6775
  %t6776 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 664, i64 3
  store i32 0, i32* %t6776
  %t6777 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 665, i64 0
  store i32 0, i32* %t6777
  %t6778 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 665, i64 1
  store i32 0, i32* %t6778
  %t6779 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 665, i64 2
  store i32 0, i32* %t6779
  %t6780 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 665, i64 3
  store i32 0, i32* %t6780
  %t6781 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 666, i64 0
  store i32 0, i32* %t6781
  %t6782 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 666, i64 1
  store i32 0, i32* %t6782
  %t6783 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 666, i64 2
  store i32 0, i32* %t6783
  %t6784 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 666, i64 3
  store i32 0, i32* %t6784
  %t6785 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 667, i64 0
  store i32 0, i32* %t6785
  %t6786 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 667, i64 1
  store i32 0, i32* %t6786
  %t6787 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 667, i64 2
  store i32 0, i32* %t6787
  %t6788 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 667, i64 3
  store i32 0, i32* %t6788
  %t6789 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 668, i64 0
  store i32 0, i32* %t6789
  %t6790 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 668, i64 1
  store i32 0, i32* %t6790
  %t6791 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 668, i64 2
  store i32 0, i32* %t6791
  %t6792 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 668, i64 3
  store i32 0, i32* %t6792
  %t6793 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 669, i64 0
  store i32 0, i32* %t6793
  %t6794 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 669, i64 1
  store i32 0, i32* %t6794
  %t6795 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 669, i64 2
  store i32 0, i32* %t6795
  %t6796 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 669, i64 3
  store i32 0, i32* %t6796
  %t6797 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 670, i64 0
  store i32 0, i32* %t6797
  %t6798 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 670, i64 1
  store i32 0, i32* %t6798
  %t6799 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 670, i64 2
  store i32 0, i32* %t6799
  %t6800 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 670, i64 3
  store i32 0, i32* %t6800
  %t6801 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 671, i64 0
  store i32 0, i32* %t6801
  %t6802 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 671, i64 1
  store i32 0, i32* %t6802
  %t6803 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 671, i64 2
  store i32 0, i32* %t6803
  %t6804 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 671, i64 3
  store i32 0, i32* %t6804
  %t6805 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 672, i64 0
  store i32 0, i32* %t6805
  %t6806 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 672, i64 1
  store i32 0, i32* %t6806
  %t6807 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 672, i64 2
  store i32 0, i32* %t6807
  %t6808 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 672, i64 3
  store i32 0, i32* %t6808
  %t6809 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 673, i64 0
  store i32 0, i32* %t6809
  %t6810 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 673, i64 1
  store i32 0, i32* %t6810
  %t6811 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 673, i64 2
  store i32 0, i32* %t6811
  %t6812 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 673, i64 3
  store i32 0, i32* %t6812
  %t6813 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 674, i64 0
  store i32 0, i32* %t6813
  %t6814 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 674, i64 1
  store i32 0, i32* %t6814
  %t6815 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 674, i64 2
  store i32 0, i32* %t6815
  %t6816 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 674, i64 3
  store i32 0, i32* %t6816
  %t6817 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 675, i64 0
  store i32 0, i32* %t6817
  %t6818 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 675, i64 1
  store i32 0, i32* %t6818
  %t6819 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 675, i64 2
  store i32 0, i32* %t6819
  %t6820 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 675, i64 3
  store i32 0, i32* %t6820
  %t6821 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 676, i64 0
  store i32 0, i32* %t6821
  %t6822 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 676, i64 1
  store i32 0, i32* %t6822
  %t6823 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 676, i64 2
  store i32 0, i32* %t6823
  %t6824 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 676, i64 3
  store i32 0, i32* %t6824
  %t6825 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 677, i64 0
  store i32 0, i32* %t6825
  %t6826 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 677, i64 1
  store i32 0, i32* %t6826
  %t6827 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 677, i64 2
  store i32 0, i32* %t6827
  %t6828 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 677, i64 3
  store i32 0, i32* %t6828
  %t6829 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 678, i64 0
  store i32 0, i32* %t6829
  %t6830 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 678, i64 1
  store i32 0, i32* %t6830
  %t6831 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 678, i64 2
  store i32 0, i32* %t6831
  %t6832 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 678, i64 3
  store i32 0, i32* %t6832
  %t6833 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 679, i64 0
  store i32 0, i32* %t6833
  %t6834 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 679, i64 1
  store i32 0, i32* %t6834
  %t6835 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 679, i64 2
  store i32 0, i32* %t6835
  %t6836 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 679, i64 3
  store i32 0, i32* %t6836
  %t6837 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 680, i64 0
  store i32 0, i32* %t6837
  %t6838 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 680, i64 1
  store i32 0, i32* %t6838
  %t6839 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 680, i64 2
  store i32 0, i32* %t6839
  %t6840 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 680, i64 3
  store i32 0, i32* %t6840
  %t6841 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 681, i64 0
  store i32 0, i32* %t6841
  %t6842 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 681, i64 1
  store i32 0, i32* %t6842
  %t6843 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 681, i64 2
  store i32 0, i32* %t6843
  %t6844 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 681, i64 3
  store i32 0, i32* %t6844
  %t6845 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 682, i64 0
  store i32 0, i32* %t6845
  %t6846 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 682, i64 1
  store i32 0, i32* %t6846
  %t6847 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 682, i64 2
  store i32 0, i32* %t6847
  %t6848 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 682, i64 3
  store i32 0, i32* %t6848
  %t6849 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 683, i64 0
  store i32 0, i32* %t6849
  %t6850 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 683, i64 1
  store i32 0, i32* %t6850
  %t6851 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 683, i64 2
  store i32 0, i32* %t6851
  %t6852 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 683, i64 3
  store i32 0, i32* %t6852
  %t6853 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 684, i64 0
  store i32 0, i32* %t6853
  %t6854 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 684, i64 1
  store i32 0, i32* %t6854
  %t6855 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 684, i64 2
  store i32 0, i32* %t6855
  %t6856 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 684, i64 3
  store i32 0, i32* %t6856
  %t6857 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 685, i64 0
  store i32 0, i32* %t6857
  %t6858 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 685, i64 1
  store i32 0, i32* %t6858
  %t6859 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 685, i64 2
  store i32 0, i32* %t6859
  %t6860 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 685, i64 3
  store i32 0, i32* %t6860
  %t6861 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 686, i64 0
  store i32 0, i32* %t6861
  %t6862 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 686, i64 1
  store i32 0, i32* %t6862
  %t6863 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 686, i64 2
  store i32 0, i32* %t6863
  %t6864 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 686, i64 3
  store i32 0, i32* %t6864
  %t6865 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 687, i64 0
  store i32 0, i32* %t6865
  %t6866 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 687, i64 1
  store i32 0, i32* %t6866
  %t6867 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 687, i64 2
  store i32 0, i32* %t6867
  %t6868 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 687, i64 3
  store i32 0, i32* %t6868
  %t6869 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 688, i64 0
  store i32 0, i32* %t6869
  %t6870 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 688, i64 1
  store i32 0, i32* %t6870
  %t6871 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 688, i64 2
  store i32 0, i32* %t6871
  %t6872 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 688, i64 3
  store i32 0, i32* %t6872
  %t6873 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 689, i64 0
  store i32 0, i32* %t6873
  %t6874 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 689, i64 1
  store i32 0, i32* %t6874
  %t6875 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 689, i64 2
  store i32 0, i32* %t6875
  %t6876 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 689, i64 3
  store i32 0, i32* %t6876
  %t6877 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 690, i64 0
  store i32 0, i32* %t6877
  %t6878 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 690, i64 1
  store i32 0, i32* %t6878
  %t6879 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 690, i64 2
  store i32 0, i32* %t6879
  %t6880 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 690, i64 3
  store i32 0, i32* %t6880
  %t6881 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 691, i64 0
  store i32 0, i32* %t6881
  %t6882 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 691, i64 1
  store i32 0, i32* %t6882
  %t6883 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 691, i64 2
  store i32 0, i32* %t6883
  %t6884 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 691, i64 3
  store i32 0, i32* %t6884
  %t6885 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 692, i64 0
  store i32 0, i32* %t6885
  %t6886 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 692, i64 1
  store i32 0, i32* %t6886
  %t6887 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 692, i64 2
  store i32 0, i32* %t6887
  %t6888 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 692, i64 3
  store i32 0, i32* %t6888
  %t6889 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 693, i64 0
  store i32 0, i32* %t6889
  %t6890 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 693, i64 1
  store i32 0, i32* %t6890
  %t6891 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 693, i64 2
  store i32 0, i32* %t6891
  %t6892 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 693, i64 3
  store i32 0, i32* %t6892
  %t6893 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 694, i64 0
  store i32 0, i32* %t6893
  %t6894 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 694, i64 1
  store i32 0, i32* %t6894
  %t6895 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 694, i64 2
  store i32 0, i32* %t6895
  %t6896 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 694, i64 3
  store i32 0, i32* %t6896
  %t6897 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 695, i64 0
  store i32 0, i32* %t6897
  %t6898 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 695, i64 1
  store i32 0, i32* %t6898
  %t6899 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 695, i64 2
  store i32 0, i32* %t6899
  %t6900 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 695, i64 3
  store i32 0, i32* %t6900
  %t6901 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 696, i64 0
  store i32 0, i32* %t6901
  %t6902 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 696, i64 1
  store i32 0, i32* %t6902
  %t6903 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 696, i64 2
  store i32 0, i32* %t6903
  %t6904 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 696, i64 3
  store i32 0, i32* %t6904
  %t6905 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 697, i64 0
  store i32 0, i32* %t6905
  %t6906 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 697, i64 1
  store i32 0, i32* %t6906
  %t6907 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 697, i64 2
  store i32 0, i32* %t6907
  %t6908 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 697, i64 3
  store i32 0, i32* %t6908
  %t6909 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 698, i64 0
  store i32 0, i32* %t6909
  %t6910 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 698, i64 1
  store i32 0, i32* %t6910
  %t6911 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 698, i64 2
  store i32 0, i32* %t6911
  %t6912 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 698, i64 3
  store i32 0, i32* %t6912
  %t6913 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 699, i64 0
  store i32 0, i32* %t6913
  %t6914 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 699, i64 1
  store i32 0, i32* %t6914
  %t6915 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 699, i64 2
  store i32 0, i32* %t6915
  %t6916 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 699, i64 3
  store i32 0, i32* %t6916
  %t6917 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 700, i64 0
  store i32 0, i32* %t6917
  %t6918 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 700, i64 1
  store i32 0, i32* %t6918
  %t6919 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 700, i64 2
  store i32 0, i32* %t6919
  %t6920 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 700, i64 3
  store i32 0, i32* %t6920
  %t6921 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 701, i64 0
  store i32 0, i32* %t6921
  %t6922 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 701, i64 1
  store i32 0, i32* %t6922
  %t6923 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 701, i64 2
  store i32 0, i32* %t6923
  %t6924 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 701, i64 3
  store i32 0, i32* %t6924
  %t6925 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 702, i64 0
  store i32 0, i32* %t6925
  %t6926 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 702, i64 1
  store i32 0, i32* %t6926
  %t6927 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 702, i64 2
  store i32 0, i32* %t6927
  %t6928 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 702, i64 3
  store i32 0, i32* %t6928
  %t6929 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 703, i64 0
  store i32 0, i32* %t6929
  %t6930 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 703, i64 1
  store i32 0, i32* %t6930
  %t6931 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 703, i64 2
  store i32 0, i32* %t6931
  %t6932 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 703, i64 3
  store i32 0, i32* %t6932
  %t6933 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 704, i64 0
  store i32 0, i32* %t6933
  %t6934 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 704, i64 1
  store i32 0, i32* %t6934
  %t6935 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 704, i64 2
  store i32 0, i32* %t6935
  %t6936 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 704, i64 3
  store i32 0, i32* %t6936
  %t6937 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 705, i64 0
  store i32 0, i32* %t6937
  %t6938 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 705, i64 1
  store i32 0, i32* %t6938
  %t6939 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 705, i64 2
  store i32 0, i32* %t6939
  %t6940 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 705, i64 3
  store i32 0, i32* %t6940
  %t6941 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 706, i64 0
  store i32 0, i32* %t6941
  %t6942 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 706, i64 1
  store i32 0, i32* %t6942
  %t6943 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 706, i64 2
  store i32 0, i32* %t6943
  %t6944 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 706, i64 3
  store i32 0, i32* %t6944
  %t6945 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 707, i64 0
  store i32 0, i32* %t6945
  %t6946 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 707, i64 1
  store i32 0, i32* %t6946
  %t6947 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 707, i64 2
  store i32 0, i32* %t6947
  %t6948 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 707, i64 3
  store i32 0, i32* %t6948
  %t6949 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 708, i64 0
  store i32 0, i32* %t6949
  %t6950 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 708, i64 1
  store i32 0, i32* %t6950
  %t6951 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 708, i64 2
  store i32 0, i32* %t6951
  %t6952 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 708, i64 3
  store i32 0, i32* %t6952
  %t6953 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 709, i64 0
  store i32 0, i32* %t6953
  %t6954 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 709, i64 1
  store i32 0, i32* %t6954
  %t6955 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 709, i64 2
  store i32 0, i32* %t6955
  %t6956 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 709, i64 3
  store i32 0, i32* %t6956
  %t6957 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 710, i64 0
  store i32 0, i32* %t6957
  %t6958 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 710, i64 1
  store i32 0, i32* %t6958
  %t6959 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 710, i64 2
  store i32 0, i32* %t6959
  %t6960 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 710, i64 3
  store i32 0, i32* %t6960
  %t6961 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 711, i64 0
  store i32 0, i32* %t6961
  %t6962 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 711, i64 1
  store i32 0, i32* %t6962
  %t6963 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 711, i64 2
  store i32 0, i32* %t6963
  %t6964 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 711, i64 3
  store i32 0, i32* %t6964
  %t6965 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 712, i64 0
  store i32 0, i32* %t6965
  %t6966 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 712, i64 1
  store i32 0, i32* %t6966
  %t6967 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 712, i64 2
  store i32 0, i32* %t6967
  %t6968 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 712, i64 3
  store i32 0, i32* %t6968
  %t6969 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 713, i64 0
  store i32 0, i32* %t6969
  %t6970 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 713, i64 1
  store i32 0, i32* %t6970
  %t6971 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 713, i64 2
  store i32 0, i32* %t6971
  %t6972 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 713, i64 3
  store i32 0, i32* %t6972
  %t6973 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 714, i64 0
  store i32 0, i32* %t6973
  %t6974 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 714, i64 1
  store i32 0, i32* %t6974
  %t6975 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 714, i64 2
  store i32 0, i32* %t6975
  %t6976 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 714, i64 3
  store i32 0, i32* %t6976
  %t6977 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 715, i64 0
  store i32 0, i32* %t6977
  %t6978 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 715, i64 1
  store i32 0, i32* %t6978
  %t6979 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 715, i64 2
  store i32 0, i32* %t6979
  %t6980 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 715, i64 3
  store i32 0, i32* %t6980
  %t6981 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 716, i64 0
  store i32 0, i32* %t6981
  %t6982 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 716, i64 1
  store i32 0, i32* %t6982
  %t6983 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 716, i64 2
  store i32 0, i32* %t6983
  %t6984 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 716, i64 3
  store i32 0, i32* %t6984
  %t6985 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 717, i64 0
  store i32 0, i32* %t6985
  %t6986 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 717, i64 1
  store i32 0, i32* %t6986
  %t6987 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 717, i64 2
  store i32 0, i32* %t6987
  %t6988 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 717, i64 3
  store i32 0, i32* %t6988
  %t6989 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 718, i64 0
  store i32 0, i32* %t6989
  %t6990 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 718, i64 1
  store i32 0, i32* %t6990
  %t6991 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 718, i64 2
  store i32 0, i32* %t6991
  %t6992 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 718, i64 3
  store i32 0, i32* %t6992
  %t6993 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 719, i64 0
  store i32 0, i32* %t6993
  %t6994 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 719, i64 1
  store i32 0, i32* %t6994
  %t6995 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 719, i64 2
  store i32 0, i32* %t6995
  %t6996 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 719, i64 3
  store i32 0, i32* %t6996
  %t6997 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 720, i64 0
  store i32 0, i32* %t6997
  %t6998 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 720, i64 1
  store i32 0, i32* %t6998
  %t6999 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 720, i64 2
  store i32 0, i32* %t6999
  %t7000 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 720, i64 3
  store i32 0, i32* %t7000
  %t7001 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 721, i64 0
  store i32 0, i32* %t7001
  %t7002 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 721, i64 1
  store i32 0, i32* %t7002
  %t7003 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 721, i64 2
  store i32 0, i32* %t7003
  %t7004 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 721, i64 3
  store i32 0, i32* %t7004
  %t7005 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 722, i64 0
  store i32 0, i32* %t7005
  %t7006 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 722, i64 1
  store i32 0, i32* %t7006
  %t7007 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 722, i64 2
  store i32 0, i32* %t7007
  %t7008 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 722, i64 3
  store i32 0, i32* %t7008
  %t7009 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 723, i64 0
  store i32 0, i32* %t7009
  %t7010 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 723, i64 1
  store i32 0, i32* %t7010
  %t7011 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 723, i64 2
  store i32 0, i32* %t7011
  %t7012 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 723, i64 3
  store i32 0, i32* %t7012
  %t7013 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 724, i64 0
  store i32 0, i32* %t7013
  %t7014 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 724, i64 1
  store i32 0, i32* %t7014
  %t7015 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 724, i64 2
  store i32 0, i32* %t7015
  %t7016 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 724, i64 3
  store i32 0, i32* %t7016
  %t7017 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 725, i64 0
  store i32 0, i32* %t7017
  %t7018 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 725, i64 1
  store i32 0, i32* %t7018
  %t7019 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 725, i64 2
  store i32 0, i32* %t7019
  %t7020 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 725, i64 3
  store i32 0, i32* %t7020
  %t7021 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 726, i64 0
  store i32 0, i32* %t7021
  %t7022 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 726, i64 1
  store i32 0, i32* %t7022
  %t7023 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 726, i64 2
  store i32 0, i32* %t7023
  %t7024 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 726, i64 3
  store i32 0, i32* %t7024
  %t7025 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 727, i64 0
  store i32 0, i32* %t7025
  %t7026 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 727, i64 1
  store i32 0, i32* %t7026
  %t7027 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 727, i64 2
  store i32 0, i32* %t7027
  %t7028 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 727, i64 3
  store i32 0, i32* %t7028
  %t7029 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 728, i64 0
  store i32 0, i32* %t7029
  %t7030 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 728, i64 1
  store i32 0, i32* %t7030
  %t7031 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 728, i64 2
  store i32 0, i32* %t7031
  %t7032 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 728, i64 3
  store i32 0, i32* %t7032
  %t7033 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 729, i64 0
  store i32 0, i32* %t7033
  %t7034 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 729, i64 1
  store i32 0, i32* %t7034
  %t7035 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 729, i64 2
  store i32 0, i32* %t7035
  %t7036 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 729, i64 3
  store i32 0, i32* %t7036
  %t7037 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 730, i64 0
  store i32 0, i32* %t7037
  %t7038 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 730, i64 1
  store i32 0, i32* %t7038
  %t7039 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 730, i64 2
  store i32 0, i32* %t7039
  %t7040 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 730, i64 3
  store i32 0, i32* %t7040
  %t7041 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 731, i64 0
  store i32 0, i32* %t7041
  %t7042 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 731, i64 1
  store i32 0, i32* %t7042
  %t7043 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 731, i64 2
  store i32 0, i32* %t7043
  %t7044 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 731, i64 3
  store i32 0, i32* %t7044
  %t7045 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 732, i64 0
  store i32 0, i32* %t7045
  %t7046 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 732, i64 1
  store i32 0, i32* %t7046
  %t7047 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 732, i64 2
  store i32 0, i32* %t7047
  %t7048 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 732, i64 3
  store i32 0, i32* %t7048
  %t7049 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 733, i64 0
  store i32 0, i32* %t7049
  %t7050 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 733, i64 1
  store i32 0, i32* %t7050
  %t7051 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 733, i64 2
  store i32 0, i32* %t7051
  %t7052 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 733, i64 3
  store i32 0, i32* %t7052
  %t7053 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 734, i64 0
  store i32 0, i32* %t7053
  %t7054 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 734, i64 1
  store i32 0, i32* %t7054
  %t7055 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 734, i64 2
  store i32 0, i32* %t7055
  %t7056 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 734, i64 3
  store i32 0, i32* %t7056
  %t7057 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 735, i64 0
  store i32 0, i32* %t7057
  %t7058 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 735, i64 1
  store i32 0, i32* %t7058
  %t7059 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 735, i64 2
  store i32 0, i32* %t7059
  %t7060 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 735, i64 3
  store i32 0, i32* %t7060
  %t7061 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 736, i64 0
  store i32 0, i32* %t7061
  %t7062 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 736, i64 1
  store i32 0, i32* %t7062
  %t7063 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 736, i64 2
  store i32 0, i32* %t7063
  %t7064 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 736, i64 3
  store i32 0, i32* %t7064
  %t7065 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 737, i64 0
  store i32 0, i32* %t7065
  %t7066 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 737, i64 1
  store i32 0, i32* %t7066
  %t7067 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 737, i64 2
  store i32 0, i32* %t7067
  %t7068 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 737, i64 3
  store i32 0, i32* %t7068
  %t7069 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 738, i64 0
  store i32 0, i32* %t7069
  %t7070 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 738, i64 1
  store i32 0, i32* %t7070
  %t7071 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 738, i64 2
  store i32 0, i32* %t7071
  %t7072 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 738, i64 3
  store i32 0, i32* %t7072
  %t7073 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 739, i64 0
  store i32 0, i32* %t7073
  %t7074 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 739, i64 1
  store i32 0, i32* %t7074
  %t7075 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 739, i64 2
  store i32 0, i32* %t7075
  %t7076 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 739, i64 3
  store i32 0, i32* %t7076
  %t7077 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 740, i64 0
  store i32 0, i32* %t7077
  %t7078 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 740, i64 1
  store i32 0, i32* %t7078
  %t7079 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 740, i64 2
  store i32 0, i32* %t7079
  %t7080 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 740, i64 3
  store i32 0, i32* %t7080
  %t7081 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 741, i64 0
  store i32 0, i32* %t7081
  %t7082 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 741, i64 1
  store i32 0, i32* %t7082
  %t7083 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 741, i64 2
  store i32 0, i32* %t7083
  %t7084 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 741, i64 3
  store i32 0, i32* %t7084
  %t7085 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 742, i64 0
  store i32 0, i32* %t7085
  %t7086 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 742, i64 1
  store i32 0, i32* %t7086
  %t7087 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 742, i64 2
  store i32 0, i32* %t7087
  %t7088 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 742, i64 3
  store i32 0, i32* %t7088
  %t7089 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 743, i64 0
  store i32 0, i32* %t7089
  %t7090 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 743, i64 1
  store i32 0, i32* %t7090
  %t7091 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 743, i64 2
  store i32 0, i32* %t7091
  %t7092 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 743, i64 3
  store i32 0, i32* %t7092
  %t7093 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 744, i64 0
  store i32 0, i32* %t7093
  %t7094 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 744, i64 1
  store i32 0, i32* %t7094
  %t7095 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 744, i64 2
  store i32 0, i32* %t7095
  %t7096 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 744, i64 3
  store i32 0, i32* %t7096
  %t7097 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 745, i64 0
  store i32 0, i32* %t7097
  %t7098 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 745, i64 1
  store i32 0, i32* %t7098
  %t7099 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 745, i64 2
  store i32 0, i32* %t7099
  %t7100 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 745, i64 3
  store i32 0, i32* %t7100
  %t7101 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 746, i64 0
  store i32 0, i32* %t7101
  %t7102 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 746, i64 1
  store i32 0, i32* %t7102
  %t7103 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 746, i64 2
  store i32 0, i32* %t7103
  %t7104 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 746, i64 3
  store i32 0, i32* %t7104
  %t7105 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 747, i64 0
  store i32 0, i32* %t7105
  %t7106 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 747, i64 1
  store i32 0, i32* %t7106
  %t7107 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 747, i64 2
  store i32 0, i32* %t7107
  %t7108 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 747, i64 3
  store i32 0, i32* %t7108
  %t7109 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 748, i64 0
  store i32 0, i32* %t7109
  %t7110 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 748, i64 1
  store i32 0, i32* %t7110
  %t7111 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 748, i64 2
  store i32 0, i32* %t7111
  %t7112 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 748, i64 3
  store i32 0, i32* %t7112
  %t7113 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 749, i64 0
  store i32 0, i32* %t7113
  %t7114 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 749, i64 1
  store i32 0, i32* %t7114
  %t7115 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 749, i64 2
  store i32 0, i32* %t7115
  %t7116 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 749, i64 3
  store i32 0, i32* %t7116
  %t7117 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 750, i64 0
  store i32 0, i32* %t7117
  %t7118 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 750, i64 1
  store i32 0, i32* %t7118
  %t7119 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 750, i64 2
  store i32 0, i32* %t7119
  %t7120 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 750, i64 3
  store i32 0, i32* %t7120
  %t7121 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 751, i64 0
  store i32 0, i32* %t7121
  %t7122 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 751, i64 1
  store i32 0, i32* %t7122
  %t7123 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 751, i64 2
  store i32 0, i32* %t7123
  %t7124 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 751, i64 3
  store i32 0, i32* %t7124
  %t7125 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 752, i64 0
  store i32 0, i32* %t7125
  %t7126 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 752, i64 1
  store i32 0, i32* %t7126
  %t7127 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 752, i64 2
  store i32 0, i32* %t7127
  %t7128 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 752, i64 3
  store i32 0, i32* %t7128
  %t7129 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 753, i64 0
  store i32 0, i32* %t7129
  %t7130 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 753, i64 1
  store i32 0, i32* %t7130
  %t7131 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 753, i64 2
  store i32 0, i32* %t7131
  %t7132 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 753, i64 3
  store i32 0, i32* %t7132
  %t7133 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 754, i64 0
  store i32 0, i32* %t7133
  %t7134 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 754, i64 1
  store i32 0, i32* %t7134
  %t7135 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 754, i64 2
  store i32 0, i32* %t7135
  %t7136 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 754, i64 3
  store i32 0, i32* %t7136
  %t7137 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 755, i64 0
  store i32 0, i32* %t7137
  %t7138 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 755, i64 1
  store i32 0, i32* %t7138
  %t7139 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 755, i64 2
  store i32 0, i32* %t7139
  %t7140 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 755, i64 3
  store i32 0, i32* %t7140
  %t7141 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 756, i64 0
  store i32 0, i32* %t7141
  %t7142 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 756, i64 1
  store i32 0, i32* %t7142
  %t7143 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 756, i64 2
  store i32 0, i32* %t7143
  %t7144 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 756, i64 3
  store i32 0, i32* %t7144
  %t7145 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 757, i64 0
  store i32 0, i32* %t7145
  %t7146 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 757, i64 1
  store i32 0, i32* %t7146
  %t7147 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 757, i64 2
  store i32 0, i32* %t7147
  %t7148 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 757, i64 3
  store i32 0, i32* %t7148
  %t7149 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 758, i64 0
  store i32 0, i32* %t7149
  %t7150 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 758, i64 1
  store i32 0, i32* %t7150
  %t7151 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 758, i64 2
  store i32 0, i32* %t7151
  %t7152 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 758, i64 3
  store i32 0, i32* %t7152
  %t7153 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 759, i64 0
  store i32 0, i32* %t7153
  %t7154 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 759, i64 1
  store i32 0, i32* %t7154
  %t7155 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 759, i64 2
  store i32 0, i32* %t7155
  %t7156 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 759, i64 3
  store i32 0, i32* %t7156
  %t7157 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 760, i64 0
  store i32 0, i32* %t7157
  %t7158 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 760, i64 1
  store i32 0, i32* %t7158
  %t7159 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 760, i64 2
  store i32 0, i32* %t7159
  %t7160 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 760, i64 3
  store i32 0, i32* %t7160
  %t7161 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 761, i64 0
  store i32 0, i32* %t7161
  %t7162 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 761, i64 1
  store i32 0, i32* %t7162
  %t7163 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 761, i64 2
  store i32 0, i32* %t7163
  %t7164 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 761, i64 3
  store i32 0, i32* %t7164
  %t7165 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 762, i64 0
  store i32 0, i32* %t7165
  %t7166 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 762, i64 1
  store i32 0, i32* %t7166
  %t7167 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 762, i64 2
  store i32 0, i32* %t7167
  %t7168 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 762, i64 3
  store i32 0, i32* %t7168
  %t7169 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 763, i64 0
  store i32 0, i32* %t7169
  %t7170 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 763, i64 1
  store i32 0, i32* %t7170
  %t7171 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 763, i64 2
  store i32 0, i32* %t7171
  %t7172 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 763, i64 3
  store i32 0, i32* %t7172
  %t7173 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 764, i64 0
  store i32 0, i32* %t7173
  %t7174 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 764, i64 1
  store i32 0, i32* %t7174
  %t7175 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 764, i64 2
  store i32 0, i32* %t7175
  %t7176 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 764, i64 3
  store i32 0, i32* %t7176
  %t7177 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 765, i64 0
  store i32 0, i32* %t7177
  %t7178 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 765, i64 1
  store i32 0, i32* %t7178
  %t7179 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 765, i64 2
  store i32 0, i32* %t7179
  %t7180 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 765, i64 3
  store i32 0, i32* %t7180
  %t7181 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 766, i64 0
  store i32 0, i32* %t7181
  %t7182 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 766, i64 1
  store i32 0, i32* %t7182
  %t7183 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 766, i64 2
  store i32 0, i32* %t7183
  %t7184 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 766, i64 3
  store i32 0, i32* %t7184
  %t7185 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 767, i64 0
  store i32 0, i32* %t7185
  %t7186 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 767, i64 1
  store i32 0, i32* %t7186
  %t7187 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 767, i64 2
  store i32 0, i32* %t7187
  %t7188 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 767, i64 3
  store i32 0, i32* %t7188
  %t7189 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 768, i64 0
  store i32 0, i32* %t7189
  %t7190 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 768, i64 1
  store i32 0, i32* %t7190
  %t7191 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 768, i64 2
  store i32 0, i32* %t7191
  %t7192 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 768, i64 3
  store i32 0, i32* %t7192
  %t7193 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 769, i64 0
  store i32 0, i32* %t7193
  %t7194 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 769, i64 1
  store i32 0, i32* %t7194
  %t7195 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 769, i64 2
  store i32 0, i32* %t7195
  %t7196 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 769, i64 3
  store i32 0, i32* %t7196
  %t7197 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 770, i64 0
  store i32 0, i32* %t7197
  %t7198 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 770, i64 1
  store i32 0, i32* %t7198
  %t7199 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 770, i64 2
  store i32 0, i32* %t7199
  %t7200 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 770, i64 3
  store i32 0, i32* %t7200
  %t7201 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 771, i64 0
  store i32 0, i32* %t7201
  %t7202 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 771, i64 1
  store i32 0, i32* %t7202
  %t7203 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 771, i64 2
  store i32 0, i32* %t7203
  %t7204 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 771, i64 3
  store i32 0, i32* %t7204
  %t7205 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 772, i64 0
  store i32 0, i32* %t7205
  %t7206 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 772, i64 1
  store i32 0, i32* %t7206
  %t7207 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 772, i64 2
  store i32 0, i32* %t7207
  %t7208 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 772, i64 3
  store i32 0, i32* %t7208
  %t7209 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 773, i64 0
  store i32 0, i32* %t7209
  %t7210 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 773, i64 1
  store i32 0, i32* %t7210
  %t7211 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 773, i64 2
  store i32 0, i32* %t7211
  %t7212 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 773, i64 3
  store i32 0, i32* %t7212
  %t7213 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 774, i64 0
  store i32 0, i32* %t7213
  %t7214 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 774, i64 1
  store i32 0, i32* %t7214
  %t7215 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 774, i64 2
  store i32 0, i32* %t7215
  %t7216 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 774, i64 3
  store i32 0, i32* %t7216
  %t7217 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 775, i64 0
  store i32 0, i32* %t7217
  %t7218 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 775, i64 1
  store i32 0, i32* %t7218
  %t7219 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 775, i64 2
  store i32 0, i32* %t7219
  %t7220 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 775, i64 3
  store i32 0, i32* %t7220
  %t7221 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 776, i64 0
  store i32 0, i32* %t7221
  %t7222 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 776, i64 1
  store i32 0, i32* %t7222
  %t7223 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 776, i64 2
  store i32 0, i32* %t7223
  %t7224 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 776, i64 3
  store i32 0, i32* %t7224
  %t7225 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 777, i64 0
  store i32 0, i32* %t7225
  %t7226 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 777, i64 1
  store i32 0, i32* %t7226
  %t7227 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 777, i64 2
  store i32 0, i32* %t7227
  %t7228 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 777, i64 3
  store i32 0, i32* %t7228
  %t7229 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 778, i64 0
  store i32 0, i32* %t7229
  %t7230 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 778, i64 1
  store i32 0, i32* %t7230
  %t7231 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 778, i64 2
  store i32 0, i32* %t7231
  %t7232 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 778, i64 3
  store i32 0, i32* %t7232
  %t7233 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 779, i64 0
  store i32 0, i32* %t7233
  %t7234 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 779, i64 1
  store i32 0, i32* %t7234
  %t7235 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 779, i64 2
  store i32 0, i32* %t7235
  %t7236 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 779, i64 3
  store i32 0, i32* %t7236
  %t7237 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 780, i64 0
  store i32 0, i32* %t7237
  %t7238 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 780, i64 1
  store i32 0, i32* %t7238
  %t7239 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 780, i64 2
  store i32 0, i32* %t7239
  %t7240 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 780, i64 3
  store i32 0, i32* %t7240
  %t7241 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 781, i64 0
  store i32 0, i32* %t7241
  %t7242 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 781, i64 1
  store i32 0, i32* %t7242
  %t7243 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 781, i64 2
  store i32 0, i32* %t7243
  %t7244 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 781, i64 3
  store i32 0, i32* %t7244
  %t7245 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 782, i64 0
  store i32 0, i32* %t7245
  %t7246 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 782, i64 1
  store i32 0, i32* %t7246
  %t7247 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 782, i64 2
  store i32 0, i32* %t7247
  %t7248 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 782, i64 3
  store i32 0, i32* %t7248
  %t7249 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 783, i64 0
  store i32 0, i32* %t7249
  %t7250 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 783, i64 1
  store i32 0, i32* %t7250
  %t7251 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 783, i64 2
  store i32 0, i32* %t7251
  %t7252 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 783, i64 3
  store i32 0, i32* %t7252
  %t7253 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 784, i64 0
  store i32 0, i32* %t7253
  %t7254 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 784, i64 1
  store i32 0, i32* %t7254
  %t7255 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 784, i64 2
  store i32 0, i32* %t7255
  %t7256 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 784, i64 3
  store i32 0, i32* %t7256
  %t7257 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 785, i64 0
  store i32 0, i32* %t7257
  %t7258 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 785, i64 1
  store i32 0, i32* %t7258
  %t7259 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 785, i64 2
  store i32 0, i32* %t7259
  %t7260 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 785, i64 3
  store i32 0, i32* %t7260
  %t7261 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 786, i64 0
  store i32 0, i32* %t7261
  %t7262 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 786, i64 1
  store i32 0, i32* %t7262
  %t7263 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 786, i64 2
  store i32 0, i32* %t7263
  %t7264 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 786, i64 3
  store i32 0, i32* %t7264
  %t7265 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 787, i64 0
  store i32 0, i32* %t7265
  %t7266 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 787, i64 1
  store i32 0, i32* %t7266
  %t7267 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 787, i64 2
  store i32 0, i32* %t7267
  %t7268 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 787, i64 3
  store i32 0, i32* %t7268
  %t7269 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 788, i64 0
  store i32 0, i32* %t7269
  %t7270 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 788, i64 1
  store i32 0, i32* %t7270
  %t7271 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 788, i64 2
  store i32 0, i32* %t7271
  %t7272 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 788, i64 3
  store i32 0, i32* %t7272
  %t7273 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 789, i64 0
  store i32 0, i32* %t7273
  %t7274 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 789, i64 1
  store i32 0, i32* %t7274
  %t7275 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 789, i64 2
  store i32 0, i32* %t7275
  %t7276 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 789, i64 3
  store i32 0, i32* %t7276
  %t7277 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 790, i64 0
  store i32 0, i32* %t7277
  %t7278 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 790, i64 1
  store i32 0, i32* %t7278
  %t7279 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 790, i64 2
  store i32 0, i32* %t7279
  %t7280 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 790, i64 3
  store i32 0, i32* %t7280
  %t7281 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 791, i64 0
  store i32 0, i32* %t7281
  %t7282 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 791, i64 1
  store i32 0, i32* %t7282
  %t7283 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 791, i64 2
  store i32 0, i32* %t7283
  %t7284 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 791, i64 3
  store i32 0, i32* %t7284
  %t7285 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 792, i64 0
  store i32 0, i32* %t7285
  %t7286 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 792, i64 1
  store i32 0, i32* %t7286
  %t7287 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 792, i64 2
  store i32 0, i32* %t7287
  %t7288 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 792, i64 3
  store i32 0, i32* %t7288
  %t7289 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 793, i64 0
  store i32 0, i32* %t7289
  %t7290 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 793, i64 1
  store i32 0, i32* %t7290
  %t7291 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 793, i64 2
  store i32 0, i32* %t7291
  %t7292 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 793, i64 3
  store i32 0, i32* %t7292
  %t7293 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 794, i64 0
  store i32 0, i32* %t7293
  %t7294 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 794, i64 1
  store i32 0, i32* %t7294
  %t7295 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 794, i64 2
  store i32 0, i32* %t7295
  %t7296 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 794, i64 3
  store i32 0, i32* %t7296
  %t7297 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 795, i64 0
  store i32 0, i32* %t7297
  %t7298 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 795, i64 1
  store i32 0, i32* %t7298
  %t7299 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 795, i64 2
  store i32 0, i32* %t7299
  %t7300 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 795, i64 3
  store i32 0, i32* %t7300
  %t7301 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 796, i64 0
  store i32 0, i32* %t7301
  %t7302 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 796, i64 1
  store i32 0, i32* %t7302
  %t7303 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 796, i64 2
  store i32 0, i32* %t7303
  %t7304 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 796, i64 3
  store i32 0, i32* %t7304
  %t7305 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 797, i64 0
  store i32 0, i32* %t7305
  %t7306 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 797, i64 1
  store i32 0, i32* %t7306
  %t7307 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 797, i64 2
  store i32 0, i32* %t7307
  %t7308 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 797, i64 3
  store i32 0, i32* %t7308
  %t7309 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 798, i64 0
  store i32 0, i32* %t7309
  %t7310 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 798, i64 1
  store i32 0, i32* %t7310
  %t7311 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 798, i64 2
  store i32 0, i32* %t7311
  %t7312 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 798, i64 3
  store i32 0, i32* %t7312
  %t7313 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 799, i64 0
  store i32 0, i32* %t7313
  %t7314 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 799, i64 1
  store i32 0, i32* %t7314
  %t7315 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 799, i64 2
  store i32 0, i32* %t7315
  %t7316 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 799, i64 3
  store i32 0, i32* %t7316
  %t7317 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 800, i64 0
  store i32 0, i32* %t7317
  %t7318 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 800, i64 1
  store i32 0, i32* %t7318
  %t7319 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 800, i64 2
  store i32 0, i32* %t7319
  %t7320 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 800, i64 3
  store i32 0, i32* %t7320
  %t7321 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 801, i64 0
  store i32 0, i32* %t7321
  %t7322 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 801, i64 1
  store i32 0, i32* %t7322
  %t7323 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 801, i64 2
  store i32 0, i32* %t7323
  %t7324 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 801, i64 3
  store i32 0, i32* %t7324
  %t7325 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 802, i64 0
  store i32 0, i32* %t7325
  %t7326 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 802, i64 1
  store i32 0, i32* %t7326
  %t7327 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 802, i64 2
  store i32 0, i32* %t7327
  %t7328 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 802, i64 3
  store i32 0, i32* %t7328
  %t7329 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 803, i64 0
  store i32 0, i32* %t7329
  %t7330 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 803, i64 1
  store i32 0, i32* %t7330
  %t7331 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 803, i64 2
  store i32 0, i32* %t7331
  %t7332 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 803, i64 3
  store i32 0, i32* %t7332
  %t7333 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 804, i64 0
  store i32 0, i32* %t7333
  %t7334 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 804, i64 1
  store i32 0, i32* %t7334
  %t7335 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 804, i64 2
  store i32 0, i32* %t7335
  %t7336 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 804, i64 3
  store i32 0, i32* %t7336
  %t7337 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 805, i64 0
  store i32 0, i32* %t7337
  %t7338 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 805, i64 1
  store i32 0, i32* %t7338
  %t7339 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 805, i64 2
  store i32 0, i32* %t7339
  %t7340 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 805, i64 3
  store i32 0, i32* %t7340
  %t7341 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 806, i64 0
  store i32 0, i32* %t7341
  %t7342 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 806, i64 1
  store i32 0, i32* %t7342
  %t7343 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 806, i64 2
  store i32 0, i32* %t7343
  %t7344 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 806, i64 3
  store i32 0, i32* %t7344
  %t7345 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 807, i64 0
  store i32 0, i32* %t7345
  %t7346 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 807, i64 1
  store i32 0, i32* %t7346
  %t7347 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 807, i64 2
  store i32 0, i32* %t7347
  %t7348 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 807, i64 3
  store i32 0, i32* %t7348
  %t7349 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 808, i64 0
  store i32 0, i32* %t7349
  %t7350 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 808, i64 1
  store i32 0, i32* %t7350
  %t7351 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 808, i64 2
  store i32 0, i32* %t7351
  %t7352 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 808, i64 3
  store i32 0, i32* %t7352
  %t7353 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 809, i64 0
  store i32 0, i32* %t7353
  %t7354 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 809, i64 1
  store i32 0, i32* %t7354
  %t7355 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 809, i64 2
  store i32 0, i32* %t7355
  %t7356 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 809, i64 3
  store i32 0, i32* %t7356
  %t7357 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 810, i64 0
  store i32 0, i32* %t7357
  %t7358 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 810, i64 1
  store i32 0, i32* %t7358
  %t7359 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 810, i64 2
  store i32 0, i32* %t7359
  %t7360 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 810, i64 3
  store i32 0, i32* %t7360
  %t7361 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 811, i64 0
  store i32 0, i32* %t7361
  %t7362 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 811, i64 1
  store i32 0, i32* %t7362
  %t7363 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 811, i64 2
  store i32 0, i32* %t7363
  %t7364 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 811, i64 3
  store i32 0, i32* %t7364
  %t7365 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 812, i64 0
  store i32 0, i32* %t7365
  %t7366 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 812, i64 1
  store i32 0, i32* %t7366
  %t7367 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 812, i64 2
  store i32 0, i32* %t7367
  %t7368 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 812, i64 3
  store i32 0, i32* %t7368
  %t7369 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 813, i64 0
  store i32 0, i32* %t7369
  %t7370 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 813, i64 1
  store i32 0, i32* %t7370
  %t7371 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 813, i64 2
  store i32 0, i32* %t7371
  %t7372 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 813, i64 3
  store i32 0, i32* %t7372
  %t7373 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 814, i64 0
  store i32 0, i32* %t7373
  %t7374 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 814, i64 1
  store i32 0, i32* %t7374
  %t7375 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 814, i64 2
  store i32 0, i32* %t7375
  %t7376 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 814, i64 3
  store i32 0, i32* %t7376
  %t7377 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 815, i64 0
  store i32 0, i32* %t7377
  %t7378 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 815, i64 1
  store i32 0, i32* %t7378
  %t7379 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 815, i64 2
  store i32 0, i32* %t7379
  %t7380 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 815, i64 3
  store i32 0, i32* %t7380
  %t7381 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 816, i64 0
  store i32 0, i32* %t7381
  %t7382 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 816, i64 1
  store i32 0, i32* %t7382
  %t7383 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 816, i64 2
  store i32 0, i32* %t7383
  %t7384 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 816, i64 3
  store i32 0, i32* %t7384
  %t7385 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 817, i64 0
  store i32 0, i32* %t7385
  %t7386 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 817, i64 1
  store i32 0, i32* %t7386
  %t7387 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 817, i64 2
  store i32 0, i32* %t7387
  %t7388 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 817, i64 3
  store i32 0, i32* %t7388
  %t7389 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 818, i64 0
  store i32 0, i32* %t7389
  %t7390 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 818, i64 1
  store i32 0, i32* %t7390
  %t7391 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 818, i64 2
  store i32 0, i32* %t7391
  %t7392 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 818, i64 3
  store i32 0, i32* %t7392
  %t7393 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 819, i64 0
  store i32 0, i32* %t7393
  %t7394 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 819, i64 1
  store i32 0, i32* %t7394
  %t7395 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 819, i64 2
  store i32 0, i32* %t7395
  %t7396 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 819, i64 3
  store i32 0, i32* %t7396
  %t7397 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 820, i64 0
  store i32 0, i32* %t7397
  %t7398 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 820, i64 1
  store i32 0, i32* %t7398
  %t7399 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 820, i64 2
  store i32 0, i32* %t7399
  %t7400 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 820, i64 3
  store i32 0, i32* %t7400
  %t7401 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 821, i64 0
  store i32 0, i32* %t7401
  %t7402 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 821, i64 1
  store i32 0, i32* %t7402
  %t7403 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 821, i64 2
  store i32 0, i32* %t7403
  %t7404 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 821, i64 3
  store i32 0, i32* %t7404
  %t7405 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 822, i64 0
  store i32 0, i32* %t7405
  %t7406 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 822, i64 1
  store i32 0, i32* %t7406
  %t7407 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 822, i64 2
  store i32 0, i32* %t7407
  %t7408 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 822, i64 3
  store i32 0, i32* %t7408
  %t7409 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 823, i64 0
  store i32 0, i32* %t7409
  %t7410 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 823, i64 1
  store i32 0, i32* %t7410
  %t7411 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 823, i64 2
  store i32 0, i32* %t7411
  %t7412 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 823, i64 3
  store i32 0, i32* %t7412
  %t7413 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 824, i64 0
  store i32 0, i32* %t7413
  %t7414 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 824, i64 1
  store i32 0, i32* %t7414
  %t7415 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 824, i64 2
  store i32 0, i32* %t7415
  %t7416 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 824, i64 3
  store i32 0, i32* %t7416
  %t7417 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 825, i64 0
  store i32 0, i32* %t7417
  %t7418 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 825, i64 1
  store i32 0, i32* %t7418
  %t7419 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 825, i64 2
  store i32 0, i32* %t7419
  %t7420 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 825, i64 3
  store i32 0, i32* %t7420
  %t7421 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 826, i64 0
  store i32 0, i32* %t7421
  %t7422 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 826, i64 1
  store i32 0, i32* %t7422
  %t7423 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 826, i64 2
  store i32 0, i32* %t7423
  %t7424 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 826, i64 3
  store i32 0, i32* %t7424
  %t7425 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 827, i64 0
  store i32 0, i32* %t7425
  %t7426 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 827, i64 1
  store i32 0, i32* %t7426
  %t7427 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 827, i64 2
  store i32 0, i32* %t7427
  %t7428 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 827, i64 3
  store i32 0, i32* %t7428
  %t7429 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 828, i64 0
  store i32 0, i32* %t7429
  %t7430 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 828, i64 1
  store i32 0, i32* %t7430
  %t7431 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 828, i64 2
  store i32 0, i32* %t7431
  %t7432 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 828, i64 3
  store i32 0, i32* %t7432
  %t7433 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 829, i64 0
  store i32 0, i32* %t7433
  %t7434 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 829, i64 1
  store i32 0, i32* %t7434
  %t7435 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 829, i64 2
  store i32 0, i32* %t7435
  %t7436 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 829, i64 3
  store i32 0, i32* %t7436
  %t7437 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 830, i64 0
  store i32 0, i32* %t7437
  %t7438 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 830, i64 1
  store i32 0, i32* %t7438
  %t7439 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 830, i64 2
  store i32 0, i32* %t7439
  %t7440 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 830, i64 3
  store i32 0, i32* %t7440
  %t7441 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 831, i64 0
  store i32 0, i32* %t7441
  %t7442 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 831, i64 1
  store i32 0, i32* %t7442
  %t7443 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 831, i64 2
  store i32 0, i32* %t7443
  %t7444 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 831, i64 3
  store i32 0, i32* %t7444
  %t7445 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 832, i64 0
  store i32 0, i32* %t7445
  %t7446 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 832, i64 1
  store i32 0, i32* %t7446
  %t7447 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 832, i64 2
  store i32 0, i32* %t7447
  %t7448 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 832, i64 3
  store i32 0, i32* %t7448
  %t7449 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 833, i64 0
  store i32 0, i32* %t7449
  %t7450 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 833, i64 1
  store i32 0, i32* %t7450
  %t7451 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 833, i64 2
  store i32 0, i32* %t7451
  %t7452 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 833, i64 3
  store i32 0, i32* %t7452
  %t7453 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 834, i64 0
  store i32 0, i32* %t7453
  %t7454 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 834, i64 1
  store i32 0, i32* %t7454
  %t7455 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 834, i64 2
  store i32 0, i32* %t7455
  %t7456 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 834, i64 3
  store i32 0, i32* %t7456
  %t7457 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 835, i64 0
  store i32 0, i32* %t7457
  %t7458 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 835, i64 1
  store i32 0, i32* %t7458
  %t7459 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 835, i64 2
  store i32 0, i32* %t7459
  %t7460 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 835, i64 3
  store i32 0, i32* %t7460
  %t7461 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 836, i64 0
  store i32 0, i32* %t7461
  %t7462 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 836, i64 1
  store i32 0, i32* %t7462
  %t7463 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 836, i64 2
  store i32 0, i32* %t7463
  %t7464 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 836, i64 3
  store i32 0, i32* %t7464
  %t7465 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 837, i64 0
  store i32 0, i32* %t7465
  %t7466 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 837, i64 1
  store i32 0, i32* %t7466
  %t7467 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 837, i64 2
  store i32 0, i32* %t7467
  %t7468 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 837, i64 3
  store i32 0, i32* %t7468
  %t7469 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 838, i64 0
  store i32 0, i32* %t7469
  %t7470 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 838, i64 1
  store i32 0, i32* %t7470
  %t7471 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 838, i64 2
  store i32 0, i32* %t7471
  %t7472 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 838, i64 3
  store i32 0, i32* %t7472
  %t7473 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 839, i64 0
  store i32 0, i32* %t7473
  %t7474 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 839, i64 1
  store i32 0, i32* %t7474
  %t7475 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 839, i64 2
  store i32 0, i32* %t7475
  %t7476 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 839, i64 3
  store i32 0, i32* %t7476
  %t7477 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 840, i64 0
  store i32 0, i32* %t7477
  %t7478 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 840, i64 1
  store i32 0, i32* %t7478
  %t7479 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 840, i64 2
  store i32 0, i32* %t7479
  %t7480 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 840, i64 3
  store i32 0, i32* %t7480
  %t7481 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 841, i64 0
  store i32 0, i32* %t7481
  %t7482 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 841, i64 1
  store i32 0, i32* %t7482
  %t7483 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 841, i64 2
  store i32 0, i32* %t7483
  %t7484 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 841, i64 3
  store i32 0, i32* %t7484
  %t7485 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 842, i64 0
  store i32 0, i32* %t7485
  %t7486 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 842, i64 1
  store i32 0, i32* %t7486
  %t7487 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 842, i64 2
  store i32 0, i32* %t7487
  %t7488 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 842, i64 3
  store i32 0, i32* %t7488
  %t7489 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 843, i64 0
  store i32 0, i32* %t7489
  %t7490 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 843, i64 1
  store i32 0, i32* %t7490
  %t7491 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 843, i64 2
  store i32 0, i32* %t7491
  %t7492 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 843, i64 3
  store i32 0, i32* %t7492
  %t7493 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 844, i64 0
  store i32 0, i32* %t7493
  %t7494 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 844, i64 1
  store i32 0, i32* %t7494
  %t7495 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 844, i64 2
  store i32 0, i32* %t7495
  %t7496 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 844, i64 3
  store i32 0, i32* %t7496
  %t7497 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 845, i64 0
  store i32 0, i32* %t7497
  %t7498 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 845, i64 1
  store i32 0, i32* %t7498
  %t7499 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 845, i64 2
  store i32 0, i32* %t7499
  %t7500 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 845, i64 3
  store i32 0, i32* %t7500
  %t7501 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 846, i64 0
  store i32 0, i32* %t7501
  %t7502 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 846, i64 1
  store i32 0, i32* %t7502
  %t7503 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 846, i64 2
  store i32 0, i32* %t7503
  %t7504 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 846, i64 3
  store i32 0, i32* %t7504
  %t7505 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 847, i64 0
  store i32 0, i32* %t7505
  %t7506 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 847, i64 1
  store i32 0, i32* %t7506
  %t7507 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 847, i64 2
  store i32 0, i32* %t7507
  %t7508 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 847, i64 3
  store i32 0, i32* %t7508
  %t7509 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 848, i64 0
  store i32 0, i32* %t7509
  %t7510 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 848, i64 1
  store i32 0, i32* %t7510
  %t7511 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 848, i64 2
  store i32 0, i32* %t7511
  %t7512 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 848, i64 3
  store i32 0, i32* %t7512
  %t7513 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 849, i64 0
  store i32 0, i32* %t7513
  %t7514 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 849, i64 1
  store i32 0, i32* %t7514
  %t7515 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 849, i64 2
  store i32 0, i32* %t7515
  %t7516 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 849, i64 3
  store i32 0, i32* %t7516
  %t7517 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 850, i64 0
  store i32 0, i32* %t7517
  %t7518 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 850, i64 1
  store i32 0, i32* %t7518
  %t7519 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 850, i64 2
  store i32 0, i32* %t7519
  %t7520 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 850, i64 3
  store i32 0, i32* %t7520
  %t7521 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 851, i64 0
  store i32 0, i32* %t7521
  %t7522 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 851, i64 1
  store i32 0, i32* %t7522
  %t7523 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 851, i64 2
  store i32 0, i32* %t7523
  %t7524 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 851, i64 3
  store i32 0, i32* %t7524
  %t7525 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 852, i64 0
  store i32 0, i32* %t7525
  %t7526 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 852, i64 1
  store i32 0, i32* %t7526
  %t7527 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 852, i64 2
  store i32 0, i32* %t7527
  %t7528 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 852, i64 3
  store i32 0, i32* %t7528
  %t7529 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 853, i64 0
  store i32 0, i32* %t7529
  %t7530 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 853, i64 1
  store i32 0, i32* %t7530
  %t7531 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 853, i64 2
  store i32 0, i32* %t7531
  %t7532 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 853, i64 3
  store i32 0, i32* %t7532
  %t7533 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 854, i64 0
  store i32 0, i32* %t7533
  %t7534 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 854, i64 1
  store i32 0, i32* %t7534
  %t7535 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 854, i64 2
  store i32 0, i32* %t7535
  %t7536 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 854, i64 3
  store i32 0, i32* %t7536
  %t7537 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 855, i64 0
  store i32 0, i32* %t7537
  %t7538 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 855, i64 1
  store i32 0, i32* %t7538
  %t7539 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 855, i64 2
  store i32 0, i32* %t7539
  %t7540 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 855, i64 3
  store i32 0, i32* %t7540
  %t7541 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 856, i64 0
  store i32 0, i32* %t7541
  %t7542 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 856, i64 1
  store i32 0, i32* %t7542
  %t7543 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 856, i64 2
  store i32 0, i32* %t7543
  %t7544 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 856, i64 3
  store i32 0, i32* %t7544
  %t7545 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 857, i64 0
  store i32 0, i32* %t7545
  %t7546 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 857, i64 1
  store i32 0, i32* %t7546
  %t7547 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 857, i64 2
  store i32 0, i32* %t7547
  %t7548 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 857, i64 3
  store i32 0, i32* %t7548
  %t7549 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 858, i64 0
  store i32 0, i32* %t7549
  %t7550 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 858, i64 1
  store i32 0, i32* %t7550
  %t7551 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 858, i64 2
  store i32 0, i32* %t7551
  %t7552 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 858, i64 3
  store i32 0, i32* %t7552
  %t7553 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 859, i64 0
  store i32 0, i32* %t7553
  %t7554 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 859, i64 1
  store i32 0, i32* %t7554
  %t7555 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 859, i64 2
  store i32 0, i32* %t7555
  %t7556 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 859, i64 3
  store i32 0, i32* %t7556
  %t7557 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 860, i64 0
  store i32 0, i32* %t7557
  %t7558 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 860, i64 1
  store i32 0, i32* %t7558
  %t7559 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 860, i64 2
  store i32 0, i32* %t7559
  %t7560 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 860, i64 3
  store i32 0, i32* %t7560
  %t7561 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 861, i64 0
  store i32 0, i32* %t7561
  %t7562 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 861, i64 1
  store i32 0, i32* %t7562
  %t7563 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 861, i64 2
  store i32 0, i32* %t7563
  %t7564 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 861, i64 3
  store i32 0, i32* %t7564
  %t7565 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 862, i64 0
  store i32 0, i32* %t7565
  %t7566 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 862, i64 1
  store i32 0, i32* %t7566
  %t7567 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 862, i64 2
  store i32 0, i32* %t7567
  %t7568 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 862, i64 3
  store i32 0, i32* %t7568
  %t7569 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 863, i64 0
  store i32 0, i32* %t7569
  %t7570 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 863, i64 1
  store i32 0, i32* %t7570
  %t7571 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 863, i64 2
  store i32 0, i32* %t7571
  %t7572 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 863, i64 3
  store i32 0, i32* %t7572
  %t7573 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 864, i64 0
  store i32 0, i32* %t7573
  %t7574 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 864, i64 1
  store i32 0, i32* %t7574
  %t7575 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 864, i64 2
  store i32 0, i32* %t7575
  %t7576 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 864, i64 3
  store i32 0, i32* %t7576
  %t7577 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 865, i64 0
  store i32 0, i32* %t7577
  %t7578 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 865, i64 1
  store i32 0, i32* %t7578
  %t7579 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 865, i64 2
  store i32 0, i32* %t7579
  %t7580 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 865, i64 3
  store i32 0, i32* %t7580
  %t7581 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 866, i64 0
  store i32 0, i32* %t7581
  %t7582 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 866, i64 1
  store i32 0, i32* %t7582
  %t7583 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 866, i64 2
  store i32 0, i32* %t7583
  %t7584 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 866, i64 3
  store i32 0, i32* %t7584
  %t7585 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 867, i64 0
  store i32 0, i32* %t7585
  %t7586 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 867, i64 1
  store i32 0, i32* %t7586
  %t7587 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 867, i64 2
  store i32 0, i32* %t7587
  %t7588 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 867, i64 3
  store i32 0, i32* %t7588
  %t7589 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 868, i64 0
  store i32 0, i32* %t7589
  %t7590 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 868, i64 1
  store i32 0, i32* %t7590
  %t7591 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 868, i64 2
  store i32 0, i32* %t7591
  %t7592 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 868, i64 3
  store i32 0, i32* %t7592
  %t7593 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 869, i64 0
  store i32 0, i32* %t7593
  %t7594 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 869, i64 1
  store i32 0, i32* %t7594
  %t7595 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 869, i64 2
  store i32 0, i32* %t7595
  %t7596 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 869, i64 3
  store i32 0, i32* %t7596
  %t7597 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 870, i64 0
  store i32 0, i32* %t7597
  %t7598 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 870, i64 1
  store i32 0, i32* %t7598
  %t7599 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 870, i64 2
  store i32 0, i32* %t7599
  %t7600 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 870, i64 3
  store i32 0, i32* %t7600
  %t7601 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 871, i64 0
  store i32 0, i32* %t7601
  %t7602 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 871, i64 1
  store i32 0, i32* %t7602
  %t7603 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 871, i64 2
  store i32 0, i32* %t7603
  %t7604 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 871, i64 3
  store i32 0, i32* %t7604
  %t7605 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 872, i64 0
  store i32 0, i32* %t7605
  %t7606 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 872, i64 1
  store i32 0, i32* %t7606
  %t7607 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 872, i64 2
  store i32 0, i32* %t7607
  %t7608 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 872, i64 3
  store i32 0, i32* %t7608
  %t7609 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 873, i64 0
  store i32 0, i32* %t7609
  %t7610 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 873, i64 1
  store i32 0, i32* %t7610
  %t7611 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 873, i64 2
  store i32 0, i32* %t7611
  %t7612 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 873, i64 3
  store i32 0, i32* %t7612
  %t7613 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 874, i64 0
  store i32 0, i32* %t7613
  %t7614 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 874, i64 1
  store i32 0, i32* %t7614
  %t7615 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 874, i64 2
  store i32 0, i32* %t7615
  %t7616 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 874, i64 3
  store i32 0, i32* %t7616
  %t7617 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 875, i64 0
  store i32 0, i32* %t7617
  %t7618 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 875, i64 1
  store i32 0, i32* %t7618
  %t7619 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 875, i64 2
  store i32 0, i32* %t7619
  %t7620 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 875, i64 3
  store i32 0, i32* %t7620
  %t7621 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 876, i64 0
  store i32 0, i32* %t7621
  %t7622 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 876, i64 1
  store i32 0, i32* %t7622
  %t7623 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 876, i64 2
  store i32 0, i32* %t7623
  %t7624 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 876, i64 3
  store i32 0, i32* %t7624
  %t7625 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 877, i64 0
  store i32 0, i32* %t7625
  %t7626 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 877, i64 1
  store i32 0, i32* %t7626
  %t7627 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 877, i64 2
  store i32 0, i32* %t7627
  %t7628 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 877, i64 3
  store i32 0, i32* %t7628
  %t7629 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 878, i64 0
  store i32 0, i32* %t7629
  %t7630 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 878, i64 1
  store i32 0, i32* %t7630
  %t7631 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 878, i64 2
  store i32 0, i32* %t7631
  %t7632 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 878, i64 3
  store i32 0, i32* %t7632
  %t7633 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 879, i64 0
  store i32 0, i32* %t7633
  %t7634 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 879, i64 1
  store i32 0, i32* %t7634
  %t7635 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 879, i64 2
  store i32 0, i32* %t7635
  %t7636 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 879, i64 3
  store i32 0, i32* %t7636
  %t7637 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 880, i64 0
  store i32 0, i32* %t7637
  %t7638 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 880, i64 1
  store i32 0, i32* %t7638
  %t7639 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 880, i64 2
  store i32 0, i32* %t7639
  %t7640 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 880, i64 3
  store i32 0, i32* %t7640
  %t7641 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 881, i64 0
  store i32 0, i32* %t7641
  %t7642 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 881, i64 1
  store i32 0, i32* %t7642
  %t7643 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 881, i64 2
  store i32 0, i32* %t7643
  %t7644 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 881, i64 3
  store i32 0, i32* %t7644
  %t7645 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 882, i64 0
  store i32 0, i32* %t7645
  %t7646 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 882, i64 1
  store i32 0, i32* %t7646
  %t7647 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 882, i64 2
  store i32 0, i32* %t7647
  %t7648 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 882, i64 3
  store i32 0, i32* %t7648
  %t7649 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 883, i64 0
  store i32 0, i32* %t7649
  %t7650 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 883, i64 1
  store i32 0, i32* %t7650
  %t7651 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 883, i64 2
  store i32 0, i32* %t7651
  %t7652 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 883, i64 3
  store i32 0, i32* %t7652
  %t7653 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 884, i64 0
  store i32 0, i32* %t7653
  %t7654 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 884, i64 1
  store i32 0, i32* %t7654
  %t7655 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 884, i64 2
  store i32 0, i32* %t7655
  %t7656 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 884, i64 3
  store i32 0, i32* %t7656
  %t7657 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 885, i64 0
  store i32 0, i32* %t7657
  %t7658 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 885, i64 1
  store i32 0, i32* %t7658
  %t7659 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 885, i64 2
  store i32 0, i32* %t7659
  %t7660 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 885, i64 3
  store i32 0, i32* %t7660
  %t7661 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 886, i64 0
  store i32 0, i32* %t7661
  %t7662 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 886, i64 1
  store i32 0, i32* %t7662
  %t7663 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 886, i64 2
  store i32 0, i32* %t7663
  %t7664 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 886, i64 3
  store i32 0, i32* %t7664
  %t7665 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 887, i64 0
  store i32 0, i32* %t7665
  %t7666 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 887, i64 1
  store i32 0, i32* %t7666
  %t7667 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 887, i64 2
  store i32 0, i32* %t7667
  %t7668 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 887, i64 3
  store i32 0, i32* %t7668
  %t7669 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 888, i64 0
  store i32 0, i32* %t7669
  %t7670 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 888, i64 1
  store i32 0, i32* %t7670
  %t7671 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 888, i64 2
  store i32 0, i32* %t7671
  %t7672 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 888, i64 3
  store i32 0, i32* %t7672
  %t7673 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 889, i64 0
  store i32 0, i32* %t7673
  %t7674 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 889, i64 1
  store i32 0, i32* %t7674
  %t7675 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 889, i64 2
  store i32 0, i32* %t7675
  %t7676 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 889, i64 3
  store i32 0, i32* %t7676
  %t7677 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 890, i64 0
  store i32 0, i32* %t7677
  %t7678 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 890, i64 1
  store i32 0, i32* %t7678
  %t7679 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 890, i64 2
  store i32 0, i32* %t7679
  %t7680 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 890, i64 3
  store i32 0, i32* %t7680
  %t7681 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 891, i64 0
  store i32 0, i32* %t7681
  %t7682 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 891, i64 1
  store i32 0, i32* %t7682
  %t7683 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 891, i64 2
  store i32 0, i32* %t7683
  %t7684 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 891, i64 3
  store i32 0, i32* %t7684
  %t7685 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 892, i64 0
  store i32 0, i32* %t7685
  %t7686 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 892, i64 1
  store i32 0, i32* %t7686
  %t7687 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 892, i64 2
  store i32 0, i32* %t7687
  %t7688 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 892, i64 3
  store i32 0, i32* %t7688
  %t7689 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 893, i64 0
  store i32 0, i32* %t7689
  %t7690 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 893, i64 1
  store i32 0, i32* %t7690
  %t7691 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 893, i64 2
  store i32 0, i32* %t7691
  %t7692 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 893, i64 3
  store i32 0, i32* %t7692
  %t7693 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 894, i64 0
  store i32 0, i32* %t7693
  %t7694 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 894, i64 1
  store i32 0, i32* %t7694
  %t7695 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 894, i64 2
  store i32 0, i32* %t7695
  %t7696 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 894, i64 3
  store i32 0, i32* %t7696
  %t7697 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 895, i64 0
  store i32 0, i32* %t7697
  %t7698 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 895, i64 1
  store i32 0, i32* %t7698
  %t7699 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 895, i64 2
  store i32 0, i32* %t7699
  %t7700 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 895, i64 3
  store i32 0, i32* %t7700
  %t7701 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 896, i64 0
  store i32 0, i32* %t7701
  %t7702 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 896, i64 1
  store i32 0, i32* %t7702
  %t7703 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 896, i64 2
  store i32 0, i32* %t7703
  %t7704 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 896, i64 3
  store i32 0, i32* %t7704
  %t7705 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 897, i64 0
  store i32 0, i32* %t7705
  %t7706 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 897, i64 1
  store i32 0, i32* %t7706
  %t7707 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 897, i64 2
  store i32 0, i32* %t7707
  %t7708 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 897, i64 3
  store i32 0, i32* %t7708
  %t7709 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 898, i64 0
  store i32 0, i32* %t7709
  %t7710 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 898, i64 1
  store i32 0, i32* %t7710
  %t7711 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 898, i64 2
  store i32 0, i32* %t7711
  %t7712 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 898, i64 3
  store i32 0, i32* %t7712
  %t7713 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 899, i64 0
  store i32 0, i32* %t7713
  %t7714 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 899, i64 1
  store i32 0, i32* %t7714
  %t7715 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 899, i64 2
  store i32 0, i32* %t7715
  %t7716 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 899, i64 3
  store i32 0, i32* %t7716
  %t7717 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 900, i64 0
  store i32 0, i32* %t7717
  %t7718 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 900, i64 1
  store i32 0, i32* %t7718
  %t7719 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 900, i64 2
  store i32 0, i32* %t7719
  %t7720 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 900, i64 3
  store i32 0, i32* %t7720
  %t7721 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 901, i64 0
  store i32 0, i32* %t7721
  %t7722 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 901, i64 1
  store i32 0, i32* %t7722
  %t7723 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 901, i64 2
  store i32 0, i32* %t7723
  %t7724 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 901, i64 3
  store i32 0, i32* %t7724
  %t7725 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 902, i64 0
  store i32 0, i32* %t7725
  %t7726 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 902, i64 1
  store i32 0, i32* %t7726
  %t7727 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 902, i64 2
  store i32 0, i32* %t7727
  %t7728 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 902, i64 3
  store i32 0, i32* %t7728
  %t7729 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 903, i64 0
  store i32 0, i32* %t7729
  %t7730 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 903, i64 1
  store i32 0, i32* %t7730
  %t7731 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 903, i64 2
  store i32 0, i32* %t7731
  %t7732 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 903, i64 3
  store i32 0, i32* %t7732
  %t7733 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 904, i64 0
  store i32 0, i32* %t7733
  %t7734 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 904, i64 1
  store i32 0, i32* %t7734
  %t7735 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 904, i64 2
  store i32 0, i32* %t7735
  %t7736 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 904, i64 3
  store i32 0, i32* %t7736
  %t7737 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 905, i64 0
  store i32 0, i32* %t7737
  %t7738 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 905, i64 1
  store i32 0, i32* %t7738
  %t7739 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 905, i64 2
  store i32 0, i32* %t7739
  %t7740 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 905, i64 3
  store i32 0, i32* %t7740
  %t7741 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 906, i64 0
  store i32 0, i32* %t7741
  %t7742 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 906, i64 1
  store i32 0, i32* %t7742
  %t7743 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 906, i64 2
  store i32 0, i32* %t7743
  %t7744 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 906, i64 3
  store i32 0, i32* %t7744
  %t7745 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 907, i64 0
  store i32 0, i32* %t7745
  %t7746 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 907, i64 1
  store i32 0, i32* %t7746
  %t7747 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 907, i64 2
  store i32 0, i32* %t7747
  %t7748 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 907, i64 3
  store i32 0, i32* %t7748
  %t7749 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 908, i64 0
  store i32 0, i32* %t7749
  %t7750 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 908, i64 1
  store i32 0, i32* %t7750
  %t7751 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 908, i64 2
  store i32 0, i32* %t7751
  %t7752 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 908, i64 3
  store i32 0, i32* %t7752
  %t7753 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 909, i64 0
  store i32 0, i32* %t7753
  %t7754 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 909, i64 1
  store i32 0, i32* %t7754
  %t7755 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 909, i64 2
  store i32 0, i32* %t7755
  %t7756 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 909, i64 3
  store i32 0, i32* %t7756
  %t7757 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 910, i64 0
  store i32 0, i32* %t7757
  %t7758 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 910, i64 1
  store i32 0, i32* %t7758
  %t7759 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 910, i64 2
  store i32 0, i32* %t7759
  %t7760 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 910, i64 3
  store i32 0, i32* %t7760
  %t7761 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 911, i64 0
  store i32 0, i32* %t7761
  %t7762 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 911, i64 1
  store i32 0, i32* %t7762
  %t7763 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 911, i64 2
  store i32 0, i32* %t7763
  %t7764 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 911, i64 3
  store i32 0, i32* %t7764
  %t7765 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 912, i64 0
  store i32 0, i32* %t7765
  %t7766 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 912, i64 1
  store i32 0, i32* %t7766
  %t7767 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 912, i64 2
  store i32 0, i32* %t7767
  %t7768 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 912, i64 3
  store i32 0, i32* %t7768
  %t7769 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 913, i64 0
  store i32 0, i32* %t7769
  %t7770 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 913, i64 1
  store i32 0, i32* %t7770
  %t7771 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 913, i64 2
  store i32 0, i32* %t7771
  %t7772 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 913, i64 3
  store i32 0, i32* %t7772
  %t7773 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 914, i64 0
  store i32 0, i32* %t7773
  %t7774 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 914, i64 1
  store i32 0, i32* %t7774
  %t7775 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 914, i64 2
  store i32 0, i32* %t7775
  %t7776 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 914, i64 3
  store i32 0, i32* %t7776
  %t7777 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 915, i64 0
  store i32 0, i32* %t7777
  %t7778 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 915, i64 1
  store i32 0, i32* %t7778
  %t7779 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 915, i64 2
  store i32 0, i32* %t7779
  %t7780 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 915, i64 3
  store i32 0, i32* %t7780
  %t7781 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 916, i64 0
  store i32 0, i32* %t7781
  %t7782 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 916, i64 1
  store i32 0, i32* %t7782
  %t7783 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 916, i64 2
  store i32 0, i32* %t7783
  %t7784 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 916, i64 3
  store i32 0, i32* %t7784
  %t7785 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 917, i64 0
  store i32 0, i32* %t7785
  %t7786 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 917, i64 1
  store i32 0, i32* %t7786
  %t7787 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 917, i64 2
  store i32 0, i32* %t7787
  %t7788 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 917, i64 3
  store i32 0, i32* %t7788
  %t7789 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 918, i64 0
  store i32 0, i32* %t7789
  %t7790 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 918, i64 1
  store i32 0, i32* %t7790
  %t7791 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 918, i64 2
  store i32 0, i32* %t7791
  %t7792 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 918, i64 3
  store i32 0, i32* %t7792
  %t7793 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 919, i64 0
  store i32 0, i32* %t7793
  %t7794 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 919, i64 1
  store i32 0, i32* %t7794
  %t7795 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 919, i64 2
  store i32 0, i32* %t7795
  %t7796 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 919, i64 3
  store i32 0, i32* %t7796
  %t7797 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 920, i64 0
  store i32 0, i32* %t7797
  %t7798 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 920, i64 1
  store i32 0, i32* %t7798
  %t7799 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 920, i64 2
  store i32 0, i32* %t7799
  %t7800 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 920, i64 3
  store i32 0, i32* %t7800
  %t7801 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 921, i64 0
  store i32 0, i32* %t7801
  %t7802 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 921, i64 1
  store i32 0, i32* %t7802
  %t7803 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 921, i64 2
  store i32 0, i32* %t7803
  %t7804 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 921, i64 3
  store i32 0, i32* %t7804
  %t7805 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 922, i64 0
  store i32 0, i32* %t7805
  %t7806 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 922, i64 1
  store i32 0, i32* %t7806
  %t7807 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 922, i64 2
  store i32 0, i32* %t7807
  %t7808 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 922, i64 3
  store i32 0, i32* %t7808
  %t7809 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 923, i64 0
  store i32 0, i32* %t7809
  %t7810 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 923, i64 1
  store i32 0, i32* %t7810
  %t7811 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 923, i64 2
  store i32 0, i32* %t7811
  %t7812 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 923, i64 3
  store i32 0, i32* %t7812
  %t7813 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 924, i64 0
  store i32 0, i32* %t7813
  %t7814 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 924, i64 1
  store i32 0, i32* %t7814
  %t7815 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 924, i64 2
  store i32 0, i32* %t7815
  %t7816 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 924, i64 3
  store i32 0, i32* %t7816
  %t7817 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 925, i64 0
  store i32 0, i32* %t7817
  %t7818 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 925, i64 1
  store i32 0, i32* %t7818
  %t7819 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 925, i64 2
  store i32 0, i32* %t7819
  %t7820 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 925, i64 3
  store i32 0, i32* %t7820
  %t7821 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 926, i64 0
  store i32 0, i32* %t7821
  %t7822 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 926, i64 1
  store i32 0, i32* %t7822
  %t7823 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 926, i64 2
  store i32 0, i32* %t7823
  %t7824 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 926, i64 3
  store i32 0, i32* %t7824
  %t7825 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 927, i64 0
  store i32 0, i32* %t7825
  %t7826 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 927, i64 1
  store i32 0, i32* %t7826
  %t7827 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 927, i64 2
  store i32 0, i32* %t7827
  %t7828 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 927, i64 3
  store i32 0, i32* %t7828
  %t7829 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 928, i64 0
  store i32 0, i32* %t7829
  %t7830 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 928, i64 1
  store i32 0, i32* %t7830
  %t7831 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 928, i64 2
  store i32 0, i32* %t7831
  %t7832 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 928, i64 3
  store i32 0, i32* %t7832
  %t7833 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 929, i64 0
  store i32 0, i32* %t7833
  %t7834 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 929, i64 1
  store i32 0, i32* %t7834
  %t7835 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 929, i64 2
  store i32 0, i32* %t7835
  %t7836 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 929, i64 3
  store i32 0, i32* %t7836
  %t7837 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 930, i64 0
  store i32 0, i32* %t7837
  %t7838 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 930, i64 1
  store i32 0, i32* %t7838
  %t7839 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 930, i64 2
  store i32 0, i32* %t7839
  %t7840 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 930, i64 3
  store i32 0, i32* %t7840
  %t7841 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 931, i64 0
  store i32 0, i32* %t7841
  %t7842 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 931, i64 1
  store i32 0, i32* %t7842
  %t7843 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 931, i64 2
  store i32 0, i32* %t7843
  %t7844 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 931, i64 3
  store i32 0, i32* %t7844
  %t7845 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 932, i64 0
  store i32 0, i32* %t7845
  %t7846 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 932, i64 1
  store i32 0, i32* %t7846
  %t7847 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 932, i64 2
  store i32 0, i32* %t7847
  %t7848 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 932, i64 3
  store i32 0, i32* %t7848
  %t7849 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 933, i64 0
  store i32 0, i32* %t7849
  %t7850 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 933, i64 1
  store i32 0, i32* %t7850
  %t7851 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 933, i64 2
  store i32 0, i32* %t7851
  %t7852 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 933, i64 3
  store i32 0, i32* %t7852
  %t7853 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 934, i64 0
  store i32 0, i32* %t7853
  %t7854 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 934, i64 1
  store i32 0, i32* %t7854
  %t7855 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 934, i64 2
  store i32 0, i32* %t7855
  %t7856 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 934, i64 3
  store i32 0, i32* %t7856
  %t7857 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 935, i64 0
  store i32 0, i32* %t7857
  %t7858 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 935, i64 1
  store i32 0, i32* %t7858
  %t7859 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 935, i64 2
  store i32 0, i32* %t7859
  %t7860 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 935, i64 3
  store i32 0, i32* %t7860
  %t7861 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 936, i64 0
  store i32 0, i32* %t7861
  %t7862 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 936, i64 1
  store i32 0, i32* %t7862
  %t7863 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 936, i64 2
  store i32 0, i32* %t7863
  %t7864 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 936, i64 3
  store i32 0, i32* %t7864
  %t7865 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 937, i64 0
  store i32 0, i32* %t7865
  %t7866 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 937, i64 1
  store i32 0, i32* %t7866
  %t7867 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 937, i64 2
  store i32 0, i32* %t7867
  %t7868 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 937, i64 3
  store i32 0, i32* %t7868
  %t7869 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 938, i64 0
  store i32 0, i32* %t7869
  %t7870 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 938, i64 1
  store i32 0, i32* %t7870
  %t7871 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 938, i64 2
  store i32 0, i32* %t7871
  %t7872 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 938, i64 3
  store i32 0, i32* %t7872
  %t7873 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 939, i64 0
  store i32 0, i32* %t7873
  %t7874 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 939, i64 1
  store i32 0, i32* %t7874
  %t7875 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 939, i64 2
  store i32 0, i32* %t7875
  %t7876 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 939, i64 3
  store i32 0, i32* %t7876
  %t7877 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 940, i64 0
  store i32 0, i32* %t7877
  %t7878 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 940, i64 1
  store i32 0, i32* %t7878
  %t7879 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 940, i64 2
  store i32 0, i32* %t7879
  %t7880 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 940, i64 3
  store i32 0, i32* %t7880
  %t7881 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 941, i64 0
  store i32 0, i32* %t7881
  %t7882 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 941, i64 1
  store i32 0, i32* %t7882
  %t7883 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 941, i64 2
  store i32 0, i32* %t7883
  %t7884 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 941, i64 3
  store i32 0, i32* %t7884
  %t7885 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 942, i64 0
  store i32 0, i32* %t7885
  %t7886 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 942, i64 1
  store i32 0, i32* %t7886
  %t7887 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 942, i64 2
  store i32 0, i32* %t7887
  %t7888 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 942, i64 3
  store i32 0, i32* %t7888
  %t7889 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 943, i64 0
  store i32 0, i32* %t7889
  %t7890 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 943, i64 1
  store i32 0, i32* %t7890
  %t7891 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 943, i64 2
  store i32 0, i32* %t7891
  %t7892 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 943, i64 3
  store i32 0, i32* %t7892
  %t7893 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 944, i64 0
  store i32 0, i32* %t7893
  %t7894 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 944, i64 1
  store i32 0, i32* %t7894
  %t7895 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 944, i64 2
  store i32 0, i32* %t7895
  %t7896 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 944, i64 3
  store i32 0, i32* %t7896
  %t7897 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 945, i64 0
  store i32 0, i32* %t7897
  %t7898 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 945, i64 1
  store i32 0, i32* %t7898
  %t7899 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 945, i64 2
  store i32 0, i32* %t7899
  %t7900 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 945, i64 3
  store i32 0, i32* %t7900
  %t7901 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 946, i64 0
  store i32 0, i32* %t7901
  %t7902 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 946, i64 1
  store i32 0, i32* %t7902
  %t7903 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 946, i64 2
  store i32 0, i32* %t7903
  %t7904 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 946, i64 3
  store i32 0, i32* %t7904
  %t7905 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 947, i64 0
  store i32 0, i32* %t7905
  %t7906 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 947, i64 1
  store i32 0, i32* %t7906
  %t7907 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 947, i64 2
  store i32 0, i32* %t7907
  %t7908 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 947, i64 3
  store i32 0, i32* %t7908
  %t7909 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 948, i64 0
  store i32 0, i32* %t7909
  %t7910 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 948, i64 1
  store i32 0, i32* %t7910
  %t7911 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 948, i64 2
  store i32 0, i32* %t7911
  %t7912 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 948, i64 3
  store i32 0, i32* %t7912
  %t7913 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 949, i64 0
  store i32 0, i32* %t7913
  %t7914 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 949, i64 1
  store i32 0, i32* %t7914
  %t7915 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 949, i64 2
  store i32 0, i32* %t7915
  %t7916 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 949, i64 3
  store i32 0, i32* %t7916
  %t7917 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 950, i64 0
  store i32 0, i32* %t7917
  %t7918 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 950, i64 1
  store i32 0, i32* %t7918
  %t7919 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 950, i64 2
  store i32 0, i32* %t7919
  %t7920 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 950, i64 3
  store i32 0, i32* %t7920
  %t7921 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 951, i64 0
  store i32 0, i32* %t7921
  %t7922 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 951, i64 1
  store i32 0, i32* %t7922
  %t7923 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 951, i64 2
  store i32 0, i32* %t7923
  %t7924 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 951, i64 3
  store i32 0, i32* %t7924
  %t7925 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 952, i64 0
  store i32 0, i32* %t7925
  %t7926 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 952, i64 1
  store i32 0, i32* %t7926
  %t7927 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 952, i64 2
  store i32 0, i32* %t7927
  %t7928 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 952, i64 3
  store i32 0, i32* %t7928
  %t7929 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 953, i64 0
  store i32 0, i32* %t7929
  %t7930 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 953, i64 1
  store i32 0, i32* %t7930
  %t7931 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 953, i64 2
  store i32 0, i32* %t7931
  %t7932 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 953, i64 3
  store i32 0, i32* %t7932
  %t7933 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 954, i64 0
  store i32 0, i32* %t7933
  %t7934 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 954, i64 1
  store i32 0, i32* %t7934
  %t7935 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 954, i64 2
  store i32 0, i32* %t7935
  %t7936 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 954, i64 3
  store i32 0, i32* %t7936
  %t7937 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 955, i64 0
  store i32 0, i32* %t7937
  %t7938 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 955, i64 1
  store i32 0, i32* %t7938
  %t7939 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 955, i64 2
  store i32 0, i32* %t7939
  %t7940 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 955, i64 3
  store i32 0, i32* %t7940
  %t7941 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 956, i64 0
  store i32 0, i32* %t7941
  %t7942 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 956, i64 1
  store i32 0, i32* %t7942
  %t7943 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 956, i64 2
  store i32 0, i32* %t7943
  %t7944 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 956, i64 3
  store i32 0, i32* %t7944
  %t7945 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 957, i64 0
  store i32 0, i32* %t7945
  %t7946 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 957, i64 1
  store i32 0, i32* %t7946
  %t7947 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 957, i64 2
  store i32 0, i32* %t7947
  %t7948 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 957, i64 3
  store i32 0, i32* %t7948
  %t7949 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 958, i64 0
  store i32 0, i32* %t7949
  %t7950 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 958, i64 1
  store i32 0, i32* %t7950
  %t7951 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 958, i64 2
  store i32 0, i32* %t7951
  %t7952 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 958, i64 3
  store i32 0, i32* %t7952
  %t7953 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 959, i64 0
  store i32 0, i32* %t7953
  %t7954 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 959, i64 1
  store i32 0, i32* %t7954
  %t7955 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 959, i64 2
  store i32 0, i32* %t7955
  %t7956 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 959, i64 3
  store i32 0, i32* %t7956
  %t7957 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 960, i64 0
  store i32 0, i32* %t7957
  %t7958 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 960, i64 1
  store i32 0, i32* %t7958
  %t7959 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 960, i64 2
  store i32 0, i32* %t7959
  %t7960 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 960, i64 3
  store i32 0, i32* %t7960
  %t7961 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 961, i64 0
  store i32 0, i32* %t7961
  %t7962 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 961, i64 1
  store i32 0, i32* %t7962
  %t7963 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 961, i64 2
  store i32 0, i32* %t7963
  %t7964 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 961, i64 3
  store i32 0, i32* %t7964
  %t7965 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 962, i64 0
  store i32 0, i32* %t7965
  %t7966 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 962, i64 1
  store i32 0, i32* %t7966
  %t7967 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 962, i64 2
  store i32 0, i32* %t7967
  %t7968 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 962, i64 3
  store i32 0, i32* %t7968
  %t7969 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 963, i64 0
  store i32 0, i32* %t7969
  %t7970 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 963, i64 1
  store i32 0, i32* %t7970
  %t7971 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 963, i64 2
  store i32 0, i32* %t7971
  %t7972 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 963, i64 3
  store i32 0, i32* %t7972
  %t7973 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 964, i64 0
  store i32 0, i32* %t7973
  %t7974 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 964, i64 1
  store i32 0, i32* %t7974
  %t7975 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 964, i64 2
  store i32 0, i32* %t7975
  %t7976 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 964, i64 3
  store i32 0, i32* %t7976
  %t7977 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 965, i64 0
  store i32 0, i32* %t7977
  %t7978 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 965, i64 1
  store i32 0, i32* %t7978
  %t7979 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 965, i64 2
  store i32 0, i32* %t7979
  %t7980 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 965, i64 3
  store i32 0, i32* %t7980
  %t7981 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 966, i64 0
  store i32 0, i32* %t7981
  %t7982 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 966, i64 1
  store i32 0, i32* %t7982
  %t7983 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 966, i64 2
  store i32 0, i32* %t7983
  %t7984 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 966, i64 3
  store i32 0, i32* %t7984
  %t7985 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 967, i64 0
  store i32 0, i32* %t7985
  %t7986 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 967, i64 1
  store i32 0, i32* %t7986
  %t7987 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 967, i64 2
  store i32 0, i32* %t7987
  %t7988 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 967, i64 3
  store i32 0, i32* %t7988
  %t7989 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 968, i64 0
  store i32 0, i32* %t7989
  %t7990 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 968, i64 1
  store i32 0, i32* %t7990
  %t7991 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 968, i64 2
  store i32 0, i32* %t7991
  %t7992 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 968, i64 3
  store i32 0, i32* %t7992
  %t7993 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 969, i64 0
  store i32 0, i32* %t7993
  %t7994 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 969, i64 1
  store i32 0, i32* %t7994
  %t7995 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 969, i64 2
  store i32 0, i32* %t7995
  %t7996 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 969, i64 3
  store i32 0, i32* %t7996
  %t7997 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 970, i64 0
  store i32 0, i32* %t7997
  %t7998 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 970, i64 1
  store i32 0, i32* %t7998
  %t7999 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 970, i64 2
  store i32 0, i32* %t7999
  %t8000 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 970, i64 3
  store i32 0, i32* %t8000
  %t8001 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 971, i64 0
  store i32 0, i32* %t8001
  %t8002 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 971, i64 1
  store i32 0, i32* %t8002
  %t8003 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 971, i64 2
  store i32 0, i32* %t8003
  %t8004 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 971, i64 3
  store i32 0, i32* %t8004
  %t8005 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 972, i64 0
  store i32 0, i32* %t8005
  %t8006 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 972, i64 1
  store i32 0, i32* %t8006
  %t8007 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 972, i64 2
  store i32 0, i32* %t8007
  %t8008 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 972, i64 3
  store i32 0, i32* %t8008
  %t8009 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 973, i64 0
  store i32 0, i32* %t8009
  %t8010 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 973, i64 1
  store i32 0, i32* %t8010
  %t8011 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 973, i64 2
  store i32 0, i32* %t8011
  %t8012 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 973, i64 3
  store i32 0, i32* %t8012
  %t8013 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 974, i64 0
  store i32 0, i32* %t8013
  %t8014 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 974, i64 1
  store i32 0, i32* %t8014
  %t8015 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 974, i64 2
  store i32 0, i32* %t8015
  %t8016 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 974, i64 3
  store i32 0, i32* %t8016
  %t8017 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 975, i64 0
  store i32 0, i32* %t8017
  %t8018 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 975, i64 1
  store i32 0, i32* %t8018
  %t8019 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 975, i64 2
  store i32 0, i32* %t8019
  %t8020 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 975, i64 3
  store i32 0, i32* %t8020
  %t8021 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 976, i64 0
  store i32 0, i32* %t8021
  %t8022 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 976, i64 1
  store i32 0, i32* %t8022
  %t8023 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 976, i64 2
  store i32 0, i32* %t8023
  %t8024 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 976, i64 3
  store i32 0, i32* %t8024
  %t8025 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 977, i64 0
  store i32 0, i32* %t8025
  %t8026 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 977, i64 1
  store i32 0, i32* %t8026
  %t8027 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 977, i64 2
  store i32 0, i32* %t8027
  %t8028 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 977, i64 3
  store i32 0, i32* %t8028
  %t8029 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 978, i64 0
  store i32 0, i32* %t8029
  %t8030 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 978, i64 1
  store i32 0, i32* %t8030
  %t8031 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 978, i64 2
  store i32 0, i32* %t8031
  %t8032 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 978, i64 3
  store i32 0, i32* %t8032
  %t8033 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 979, i64 0
  store i32 0, i32* %t8033
  %t8034 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 979, i64 1
  store i32 0, i32* %t8034
  %t8035 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 979, i64 2
  store i32 0, i32* %t8035
  %t8036 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 979, i64 3
  store i32 0, i32* %t8036
  %t8037 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 980, i64 0
  store i32 0, i32* %t8037
  %t8038 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 980, i64 1
  store i32 0, i32* %t8038
  %t8039 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 980, i64 2
  store i32 0, i32* %t8039
  %t8040 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 980, i64 3
  store i32 0, i32* %t8040
  %t8041 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 981, i64 0
  store i32 0, i32* %t8041
  %t8042 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 981, i64 1
  store i32 0, i32* %t8042
  %t8043 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 981, i64 2
  store i32 0, i32* %t8043
  %t8044 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 981, i64 3
  store i32 0, i32* %t8044
  %t8045 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 982, i64 0
  store i32 0, i32* %t8045
  %t8046 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 982, i64 1
  store i32 0, i32* %t8046
  %t8047 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 982, i64 2
  store i32 0, i32* %t8047
  %t8048 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 982, i64 3
  store i32 0, i32* %t8048
  %t8049 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 983, i64 0
  store i32 0, i32* %t8049
  %t8050 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 983, i64 1
  store i32 0, i32* %t8050
  %t8051 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 983, i64 2
  store i32 0, i32* %t8051
  %t8052 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 983, i64 3
  store i32 0, i32* %t8052
  %t8053 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 984, i64 0
  store i32 0, i32* %t8053
  %t8054 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 984, i64 1
  store i32 0, i32* %t8054
  %t8055 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 984, i64 2
  store i32 0, i32* %t8055
  %t8056 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 984, i64 3
  store i32 0, i32* %t8056
  %t8057 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 985, i64 0
  store i32 0, i32* %t8057
  %t8058 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 985, i64 1
  store i32 0, i32* %t8058
  %t8059 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 985, i64 2
  store i32 0, i32* %t8059
  %t8060 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 985, i64 3
  store i32 0, i32* %t8060
  %t8061 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 986, i64 0
  store i32 0, i32* %t8061
  %t8062 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 986, i64 1
  store i32 0, i32* %t8062
  %t8063 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 986, i64 2
  store i32 0, i32* %t8063
  %t8064 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 986, i64 3
  store i32 0, i32* %t8064
  %t8065 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 987, i64 0
  store i32 0, i32* %t8065
  %t8066 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 987, i64 1
  store i32 0, i32* %t8066
  %t8067 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 987, i64 2
  store i32 0, i32* %t8067
  %t8068 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 987, i64 3
  store i32 0, i32* %t8068
  %t8069 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 988, i64 0
  store i32 0, i32* %t8069
  %t8070 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 988, i64 1
  store i32 0, i32* %t8070
  %t8071 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 988, i64 2
  store i32 0, i32* %t8071
  %t8072 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 988, i64 3
  store i32 0, i32* %t8072
  %t8073 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 989, i64 0
  store i32 0, i32* %t8073
  %t8074 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 989, i64 1
  store i32 0, i32* %t8074
  %t8075 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 989, i64 2
  store i32 0, i32* %t8075
  %t8076 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 989, i64 3
  store i32 0, i32* %t8076
  %t8077 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 990, i64 0
  store i32 0, i32* %t8077
  %t8078 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 990, i64 1
  store i32 0, i32* %t8078
  %t8079 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 990, i64 2
  store i32 0, i32* %t8079
  %t8080 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 990, i64 3
  store i32 0, i32* %t8080
  %t8081 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 991, i64 0
  store i32 0, i32* %t8081
  %t8082 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 991, i64 1
  store i32 0, i32* %t8082
  %t8083 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 991, i64 2
  store i32 0, i32* %t8083
  %t8084 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 991, i64 3
  store i32 0, i32* %t8084
  %t8085 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 992, i64 0
  store i32 0, i32* %t8085
  %t8086 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 992, i64 1
  store i32 0, i32* %t8086
  %t8087 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 992, i64 2
  store i32 0, i32* %t8087
  %t8088 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 992, i64 3
  store i32 0, i32* %t8088
  %t8089 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 993, i64 0
  store i32 0, i32* %t8089
  %t8090 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 993, i64 1
  store i32 0, i32* %t8090
  %t8091 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 993, i64 2
  store i32 0, i32* %t8091
  %t8092 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 993, i64 3
  store i32 0, i32* %t8092
  %t8093 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 994, i64 0
  store i32 0, i32* %t8093
  %t8094 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 994, i64 1
  store i32 0, i32* %t8094
  %t8095 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 994, i64 2
  store i32 0, i32* %t8095
  %t8096 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 994, i64 3
  store i32 0, i32* %t8096
  %t8097 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 995, i64 0
  store i32 0, i32* %t8097
  %t8098 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 995, i64 1
  store i32 0, i32* %t8098
  %t8099 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 995, i64 2
  store i32 0, i32* %t8099
  %t8100 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 995, i64 3
  store i32 0, i32* %t8100
  %t8101 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 996, i64 0
  store i32 0, i32* %t8101
  %t8102 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 996, i64 1
  store i32 0, i32* %t8102
  %t8103 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 996, i64 2
  store i32 0, i32* %t8103
  %t8104 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 996, i64 3
  store i32 0, i32* %t8104
  %t8105 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 997, i64 0
  store i32 0, i32* %t8105
  %t8106 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 997, i64 1
  store i32 0, i32* %t8106
  %t8107 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 997, i64 2
  store i32 0, i32* %t8107
  %t8108 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 997, i64 3
  store i32 0, i32* %t8108
  %t8109 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 998, i64 0
  store i32 0, i32* %t8109
  %t8110 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 998, i64 1
  store i32 0, i32* %t8110
  %t8111 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 998, i64 2
  store i32 0, i32* %t8111
  %t8112 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 998, i64 3
  store i32 0, i32* %t8112
  %t8113 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 999, i64 0
  store i32 0, i32* %t8113
  %t8114 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 999, i64 1
  store i32 0, i32* %t8114
  %t8115 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 999, i64 2
  store i32 0, i32* %t8115
  %t8116 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 999, i64 3
  store i32 0, i32* %t8116
  %t8117 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1000, i64 0
  store i32 0, i32* %t8117
  %t8118 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1000, i64 1
  store i32 0, i32* %t8118
  %t8119 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1000, i64 2
  store i32 0, i32* %t8119
  %t8120 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1000, i64 3
  store i32 0, i32* %t8120
  %t8121 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1001, i64 0
  store i32 0, i32* %t8121
  %t8122 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1001, i64 1
  store i32 0, i32* %t8122
  %t8123 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1001, i64 2
  store i32 0, i32* %t8123
  %t8124 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1001, i64 3
  store i32 0, i32* %t8124
  %t8125 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1002, i64 0
  store i32 0, i32* %t8125
  %t8126 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1002, i64 1
  store i32 0, i32* %t8126
  %t8127 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1002, i64 2
  store i32 0, i32* %t8127
  %t8128 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1002, i64 3
  store i32 0, i32* %t8128
  %t8129 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1003, i64 0
  store i32 0, i32* %t8129
  %t8130 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1003, i64 1
  store i32 0, i32* %t8130
  %t8131 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1003, i64 2
  store i32 0, i32* %t8131
  %t8132 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1003, i64 3
  store i32 0, i32* %t8132
  %t8133 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1004, i64 0
  store i32 0, i32* %t8133
  %t8134 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1004, i64 1
  store i32 0, i32* %t8134
  %t8135 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1004, i64 2
  store i32 0, i32* %t8135
  %t8136 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1004, i64 3
  store i32 0, i32* %t8136
  %t8137 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1005, i64 0
  store i32 0, i32* %t8137
  %t8138 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1005, i64 1
  store i32 0, i32* %t8138
  %t8139 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1005, i64 2
  store i32 0, i32* %t8139
  %t8140 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1005, i64 3
  store i32 0, i32* %t8140
  %t8141 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1006, i64 0
  store i32 0, i32* %t8141
  %t8142 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1006, i64 1
  store i32 0, i32* %t8142
  %t8143 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1006, i64 2
  store i32 0, i32* %t8143
  %t8144 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1006, i64 3
  store i32 0, i32* %t8144
  %t8145 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1007, i64 0
  store i32 0, i32* %t8145
  %t8146 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1007, i64 1
  store i32 0, i32* %t8146
  %t8147 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1007, i64 2
  store i32 0, i32* %t8147
  %t8148 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1007, i64 3
  store i32 0, i32* %t8148
  %t8149 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1008, i64 0
  store i32 0, i32* %t8149
  %t8150 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1008, i64 1
  store i32 0, i32* %t8150
  %t8151 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1008, i64 2
  store i32 0, i32* %t8151
  %t8152 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1008, i64 3
  store i32 0, i32* %t8152
  %t8153 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1009, i64 0
  store i32 0, i32* %t8153
  %t8154 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1009, i64 1
  store i32 0, i32* %t8154
  %t8155 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1009, i64 2
  store i32 0, i32* %t8155
  %t8156 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1009, i64 3
  store i32 0, i32* %t8156
  %t8157 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1010, i64 0
  store i32 0, i32* %t8157
  %t8158 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1010, i64 1
  store i32 0, i32* %t8158
  %t8159 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1010, i64 2
  store i32 0, i32* %t8159
  %t8160 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1010, i64 3
  store i32 0, i32* %t8160
  %t8161 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1011, i64 0
  store i32 0, i32* %t8161
  %t8162 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1011, i64 1
  store i32 0, i32* %t8162
  %t8163 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1011, i64 2
  store i32 0, i32* %t8163
  %t8164 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1011, i64 3
  store i32 0, i32* %t8164
  %t8165 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1012, i64 0
  store i32 0, i32* %t8165
  %t8166 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1012, i64 1
  store i32 0, i32* %t8166
  %t8167 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1012, i64 2
  store i32 0, i32* %t8167
  %t8168 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1012, i64 3
  store i32 0, i32* %t8168
  %t8169 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1013, i64 0
  store i32 0, i32* %t8169
  %t8170 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1013, i64 1
  store i32 0, i32* %t8170
  %t8171 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1013, i64 2
  store i32 0, i32* %t8171
  %t8172 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1013, i64 3
  store i32 0, i32* %t8172
  %t8173 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1014, i64 0
  store i32 0, i32* %t8173
  %t8174 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1014, i64 1
  store i32 0, i32* %t8174
  %t8175 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1014, i64 2
  store i32 0, i32* %t8175
  %t8176 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1014, i64 3
  store i32 0, i32* %t8176
  %t8177 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1015, i64 0
  store i32 0, i32* %t8177
  %t8178 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1015, i64 1
  store i32 0, i32* %t8178
  %t8179 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1015, i64 2
  store i32 0, i32* %t8179
  %t8180 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1015, i64 3
  store i32 0, i32* %t8180
  %t8181 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1016, i64 0
  store i32 0, i32* %t8181
  %t8182 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1016, i64 1
  store i32 0, i32* %t8182
  %t8183 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1016, i64 2
  store i32 0, i32* %t8183
  %t8184 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1016, i64 3
  store i32 0, i32* %t8184
  %t8185 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1017, i64 0
  store i32 0, i32* %t8185
  %t8186 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1017, i64 1
  store i32 0, i32* %t8186
  %t8187 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1017, i64 2
  store i32 0, i32* %t8187
  %t8188 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1017, i64 3
  store i32 0, i32* %t8188
  %t8189 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1018, i64 0
  store i32 0, i32* %t8189
  %t8190 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1018, i64 1
  store i32 0, i32* %t8190
  %t8191 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1018, i64 2
  store i32 0, i32* %t8191
  %t8192 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1018, i64 3
  store i32 0, i32* %t8192
  %t8193 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1019, i64 0
  store i32 0, i32* %t8193
  %t8194 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1019, i64 1
  store i32 0, i32* %t8194
  %t8195 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1019, i64 2
  store i32 0, i32* %t8195
  %t8196 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1019, i64 3
  store i32 0, i32* %t8196
  %t8197 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1020, i64 0
  store i32 0, i32* %t8197
  %t8198 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1020, i64 1
  store i32 0, i32* %t8198
  %t8199 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1020, i64 2
  store i32 0, i32* %t8199
  %t8200 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1020, i64 3
  store i32 0, i32* %t8200
  %t8201 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1021, i64 0
  store i32 0, i32* %t8201
  %t8202 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1021, i64 1
  store i32 0, i32* %t8202
  %t8203 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1021, i64 2
  store i32 0, i32* %t8203
  %t8204 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1021, i64 3
  store i32 0, i32* %t8204
  %t8205 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1022, i64 0
  store i32 0, i32* %t8205
  %t8206 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1022, i64 1
  store i32 0, i32* %t8206
  %t8207 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1022, i64 2
  store i32 0, i32* %t8207
  %t8208 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1022, i64 3
  store i32 0, i32* %t8208
  %t8209 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1023, i64 0
  store i32 0, i32* %t8209
  %t8210 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1023, i64 1
  store i32 0, i32* %t8210
  %t8211 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1023, i64 2
  store i32 0, i32* %t8211
  %t8212 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 1023, i64 3
  store i32 0, i32* %t8212
  %t8213 = sext i32 0 to i64
  %t8214 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 %t8213
  %.v1 = getelementptr [4 x i32], [4 x i32]* %t8214, i32 0, i32 0
  %.v2 = call i32 @f1(i32* %.v1)
  call void @putint(i32 %.v2)
  call void @putch(i32 10)
  %t8217 = sext i32 2 to i64
  %t8218 = sext i32 0 to i64
  %t8219 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %c, i64 0, i64 %t8217, i64 %t8218
  %.v3 = load i32, i32* %t8219
  ret i32 %.v3
}

