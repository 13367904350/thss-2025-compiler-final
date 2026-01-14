@a1 = global i32 1
@a2 = global i32 2
@a3 = global i32 3
@a4 = global i32 4
@a5 = global i32 5
@a6 = global i32 6
@a7 = global i32 7
@a8 = global i32 8
@a9 = global i32 9
@a10 = global i32 10
@a11 = global i32 11
@a12 = global i32 12
@a13 = global i32 13
@a14 = global i32 14
@a15 = global i32 15
@a16 = global i32 16
@a17 = global i32 1
@a18 = global i32 2
@a19 = global i32 3
@a20 = global i32 4
@a21 = global i32 5
@a22 = global i32 6
@a23 = global i32 7
@a24 = global i32 8
@a25 = global i32 9
@a26 = global i32 10
@a27 = global i32 11
@a28 = global i32 12
@a29 = global i32 13
@a30 = global i32 14
@a31 = global i32 15
@a32 = global i32 16
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @func(i32 %a, i32 %b) {
entry:
  %k4 = alloca i32
  %k3 = alloca i32
  %k2 = alloca i32
  %k1 = alloca i32
  %j4 = alloca i32
  %j3 = alloca i32
  %j2 = alloca i32
  %j1 = alloca i32
  %i4 = alloca i32
  %i3 = alloca i32
  %i2 = alloca i32
  %i1 = alloca i32
  %h4 = alloca i32
  %h3 = alloca i32
  %h2 = alloca i32
  %h1 = alloca i32
  %g4 = alloca i32
  %g3 = alloca i32
  %g2 = alloca i32
  %g1 = alloca i32
  %f4 = alloca i32
  %f3 = alloca i32
  %f2 = alloca i32
  %f1 = alloca i32
  %e4 = alloca i32
  %e3 = alloca i32
  %e2 = alloca i32
  %e1 = alloca i32
  %d4 = alloca i32
  %d3 = alloca i32
  %d2 = alloca i32
  %d1 = alloca i32
  %c4 = alloca i32
  %c3 = alloca i32
  %c2 = alloca i32
  %c1 = alloca i32
  %i = alloca i32
  %b.addr = alloca i32
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  store i32 %b, i32* %b.addr
  %.v1 = load i32, i32* %a.addr
  %.v2 = load i32, i32* %b.addr
  %.v3 = add i32 %.v1, %.v2
  store i32 %.v3, i32* %i
  %.v4 = call i32 @getint()
  store i32 %.v4, i32* %c1
  %.v5 = call i32 @getint()
  store i32 %.v5, i32* %c2
  %.v6 = call i32 @getint()
  store i32 %.v6, i32* %c3
  %.v7 = call i32 @getint()
  store i32 %.v7, i32* %c4
  %.v8 = load i32, i32* %c1
  %.v9 = add i32 1, %.v8
  %.v10 = load i32, i32* @a1
  %.v11 = add i32 %.v9, %.v10
  store i32 %.v11, i32* %d1
  %.v12 = load i32, i32* %c2
  %.v13 = add i32 2, %.v12
  %.v14 = load i32, i32* @a2
  %.v15 = add i32 %.v13, %.v14
  store i32 %.v15, i32* %d2
  %.v16 = load i32, i32* %c3
  %.v17 = add i32 3, %.v16
  %.v18 = load i32, i32* @a3
  %.v19 = add i32 %.v17, %.v18
  store i32 %.v19, i32* %d3
  %.v20 = load i32, i32* %c4
  %.v21 = add i32 4, %.v20
  %.v22 = load i32, i32* @a4
  %.v23 = add i32 %.v21, %.v22
  store i32 %.v23, i32* %d4
  %.v24 = load i32, i32* %d1
  %.v25 = add i32 1, %.v24
  %.v26 = load i32, i32* @a5
  %.v27 = add i32 %.v25, %.v26
  store i32 %.v27, i32* %e1
  %.v28 = load i32, i32* %d2
  %.v29 = add i32 2, %.v28
  %.v30 = load i32, i32* @a6
  %.v31 = add i32 %.v29, %.v30
  store i32 %.v31, i32* %e2
  %.v32 = load i32, i32* %d3
  %.v33 = add i32 3, %.v32
  %.v34 = load i32, i32* @a7
  %.v35 = add i32 %.v33, %.v34
  store i32 %.v35, i32* %e3
  %.v36 = load i32, i32* %d4
  %.v37 = add i32 4, %.v36
  %.v38 = load i32, i32* @a8
  %.v39 = add i32 %.v37, %.v38
  store i32 %.v39, i32* %e4
  %.v40 = load i32, i32* %e1
  %.v41 = add i32 1, %.v40
  %.v42 = load i32, i32* @a9
  %.v43 = add i32 %.v41, %.v42
  store i32 %.v43, i32* %f1
  %.v44 = load i32, i32* %e2
  %.v45 = add i32 2, %.v44
  %.v46 = load i32, i32* @a10
  %.v47 = add i32 %.v45, %.v46
  store i32 %.v47, i32* %f2
  %.v48 = load i32, i32* %e3
  %.v49 = add i32 3, %.v48
  %.v50 = load i32, i32* @a11
  %.v51 = add i32 %.v49, %.v50
  store i32 %.v51, i32* %f3
  %.v52 = load i32, i32* %e4
  %.v53 = add i32 4, %.v52
  %.v54 = load i32, i32* @a12
  %.v55 = add i32 %.v53, %.v54
  store i32 %.v55, i32* %f4
  %.v56 = load i32, i32* %f1
  %.v57 = add i32 1, %.v56
  %.v58 = load i32, i32* @a13
  %.v59 = add i32 %.v57, %.v58
  store i32 %.v59, i32* %g1
  %.v60 = load i32, i32* %f2
  %.v61 = add i32 2, %.v60
  %.v62 = load i32, i32* @a14
  %.v63 = add i32 %.v61, %.v62
  store i32 %.v63, i32* %g2
  %.v64 = load i32, i32* %f3
  %.v65 = add i32 3, %.v64
  %.v66 = load i32, i32* @a15
  %.v67 = add i32 %.v65, %.v66
  store i32 %.v67, i32* %g3
  %.v68 = load i32, i32* %f4
  %.v69 = add i32 4, %.v68
  %.v70 = load i32, i32* @a16
  %.v71 = add i32 %.v69, %.v70
  store i32 %.v71, i32* %g4
  %.v72 = load i32, i32* %g1
  %.v73 = add i32 1, %.v72
  %.v74 = load i32, i32* @a17
  %.v75 = add i32 %.v73, %.v74
  store i32 %.v75, i32* %h1
  %.v76 = load i32, i32* %g2
  %.v77 = add i32 2, %.v76
  %.v78 = load i32, i32* @a18
  %.v79 = add i32 %.v77, %.v78
  store i32 %.v79, i32* %h2
  %.v80 = load i32, i32* %g3
  %.v81 = add i32 3, %.v80
  %.v82 = load i32, i32* @a19
  %.v83 = add i32 %.v81, %.v82
  store i32 %.v83, i32* %h3
  %.v84 = load i32, i32* %g4
  %.v85 = add i32 4, %.v84
  %.v86 = load i32, i32* @a20
  %.v87 = add i32 %.v85, %.v86
  store i32 %.v87, i32* %h4
  %.v88 = load i32, i32* %h1
  %.v89 = add i32 1, %.v88
  %.v90 = load i32, i32* @a21
  %.v91 = add i32 %.v89, %.v90
  store i32 %.v91, i32* %i1
  %.v92 = load i32, i32* %h2
  %.v93 = add i32 2, %.v92
  %.v94 = load i32, i32* @a22
  %.v95 = add i32 %.v93, %.v94
  store i32 %.v95, i32* %i2
  %.v96 = load i32, i32* %h3
  %.v97 = add i32 3, %.v96
  %.v98 = load i32, i32* @a23
  %.v99 = add i32 %.v97, %.v98
  store i32 %.v99, i32* %i3
  %.v100 = load i32, i32* %h4
  %.v101 = add i32 4, %.v100
  %.v102 = load i32, i32* @a24
  %.v103 = add i32 %.v101, %.v102
  store i32 %.v103, i32* %i4
  %.v104 = load i32, i32* %i1
  %.v105 = add i32 1, %.v104
  %.v106 = load i32, i32* @a25
  %.v107 = add i32 %.v105, %.v106
  store i32 %.v107, i32* %j1
  %.v108 = load i32, i32* %i2
  %.v109 = add i32 2, %.v108
  %.v110 = load i32, i32* @a26
  %.v111 = add i32 %.v109, %.v110
  store i32 %.v111, i32* %j2
  %.v112 = load i32, i32* %i3
  %.v113 = add i32 3, %.v112
  %.v114 = load i32, i32* @a27
  %.v115 = add i32 %.v113, %.v114
  store i32 %.v115, i32* %j3
  %.v116 = load i32, i32* %i4
  %.v117 = add i32 4, %.v116
  %.v118 = load i32, i32* @a28
  %.v119 = add i32 %.v117, %.v118
  store i32 %.v119, i32* %j4
  %.v120 = load i32, i32* %j1
  %.v121 = add i32 1, %.v120
  %.v122 = load i32, i32* @a29
  %.v123 = add i32 %.v121, %.v122
  store i32 %.v123, i32* %k1
  %.v124 = load i32, i32* %j2
  %.v125 = add i32 2, %.v124
  %.v126 = load i32, i32* @a30
  %.v127 = add i32 %.v125, %.v126
  store i32 %.v127, i32* %k2
  %.v128 = load i32, i32* %j3
  %.v129 = add i32 3, %.v128
  %.v130 = load i32, i32* @a31
  %.v131 = add i32 %.v129, %.v130
  store i32 %.v131, i32* %k3
  %.v132 = load i32, i32* %j4
  %.v133 = add i32 4, %.v132
  %.v134 = load i32, i32* @a32
  %.v135 = add i32 %.v133, %.v134
  store i32 %.v135, i32* %k4
  %.v136 = load i32, i32* %a.addr
  %.v137 = load i32, i32* %b.addr
  %.v138 = sub i32 %.v136, %.v137
  %.v139 = add i32 %.v138, 10
  store i32 %.v139, i32* %i
  %.v140 = load i32, i32* %j1
  %.v141 = add i32 1, %.v140
  %.v142 = load i32, i32* @a29
  %.v143 = add i32 %.v141, %.v142
  store i32 %.v143, i32* %k1
  %.v144 = load i32, i32* %j2
  %.v145 = add i32 2, %.v144
  %.v146 = load i32, i32* @a30
  %.v147 = add i32 %.v145, %.v146
  store i32 %.v147, i32* %k2
  %.v148 = load i32, i32* %j3
  %.v149 = add i32 3, %.v148
  %.v150 = load i32, i32* @a31
  %.v151 = add i32 %.v149, %.v150
  store i32 %.v151, i32* %k3
  %.v152 = load i32, i32* %j4
  %.v153 = add i32 4, %.v152
  %.v154 = load i32, i32* @a32
  %.v155 = add i32 %.v153, %.v154
  store i32 %.v155, i32* %k4
  %.v156 = load i32, i32* %i1
  %.v157 = add i32 1, %.v156
  %.v158 = load i32, i32* @a25
  %.v159 = add i32 %.v157, %.v158
  store i32 %.v159, i32* %j1
  %.v160 = load i32, i32* %i2
  %.v161 = add i32 2, %.v160
  %.v162 = load i32, i32* @a26
  %.v163 = add i32 %.v161, %.v162
  store i32 %.v163, i32* %j2
  %.v164 = load i32, i32* %i3
  %.v165 = add i32 3, %.v164
  %.v166 = load i32, i32* @a27
  %.v167 = add i32 %.v165, %.v166
  store i32 %.v167, i32* %j3
  %.v168 = load i32, i32* %i4
  %.v169 = add i32 4, %.v168
  %.v170 = load i32, i32* @a28
  %.v171 = add i32 %.v169, %.v170
  store i32 %.v171, i32* %j4
  %.v172 = load i32, i32* %h1
  %.v173 = add i32 1, %.v172
  %.v174 = load i32, i32* @a21
  %.v175 = add i32 %.v173, %.v174
  store i32 %.v175, i32* %i1
  %.v176 = load i32, i32* %h2
  %.v177 = add i32 2, %.v176
  %.v178 = load i32, i32* @a22
  %.v179 = add i32 %.v177, %.v178
  store i32 %.v179, i32* %i2
  %.v180 = load i32, i32* %h3
  %.v181 = add i32 3, %.v180
  %.v182 = load i32, i32* @a23
  %.v183 = add i32 %.v181, %.v182
  store i32 %.v183, i32* %i3
  %.v184 = load i32, i32* %h4
  %.v185 = add i32 4, %.v184
  %.v186 = load i32, i32* @a24
  %.v187 = add i32 %.v185, %.v186
  store i32 %.v187, i32* %i4
  %.v188 = load i32, i32* %g1
  %.v189 = add i32 1, %.v188
  %.v190 = load i32, i32* @a17
  %.v191 = add i32 %.v189, %.v190
  store i32 %.v191, i32* %h1
  %.v192 = load i32, i32* %g2
  %.v193 = add i32 2, %.v192
  %.v194 = load i32, i32* @a18
  %.v195 = add i32 %.v193, %.v194
  store i32 %.v195, i32* %h2
  %.v196 = load i32, i32* %g3
  %.v197 = add i32 3, %.v196
  %.v198 = load i32, i32* @a19
  %.v199 = add i32 %.v197, %.v198
  store i32 %.v199, i32* %h3
  %.v200 = load i32, i32* %g4
  %.v201 = add i32 4, %.v200
  %.v202 = load i32, i32* @a20
  %.v203 = add i32 %.v201, %.v202
  store i32 %.v203, i32* %h4
  %.v204 = load i32, i32* %f1
  %.v205 = add i32 1, %.v204
  %.v206 = load i32, i32* @a13
  %.v207 = add i32 %.v205, %.v206
  store i32 %.v207, i32* %g1
  %.v208 = load i32, i32* %f2
  %.v209 = add i32 2, %.v208
  %.v210 = load i32, i32* @a14
  %.v211 = add i32 %.v209, %.v210
  store i32 %.v211, i32* %g2
  %.v212 = load i32, i32* %f3
  %.v213 = add i32 3, %.v212
  %.v214 = load i32, i32* @a15
  %.v215 = add i32 %.v213, %.v214
  store i32 %.v215, i32* %g3
  %.v216 = load i32, i32* %f4
  %.v217 = add i32 4, %.v216
  %.v218 = load i32, i32* @a16
  %.v219 = add i32 %.v217, %.v218
  store i32 %.v219, i32* %g4
  %.v220 = load i32, i32* %e1
  %.v221 = add i32 1, %.v220
  %.v222 = load i32, i32* @a9
  %.v223 = add i32 %.v221, %.v222
  store i32 %.v223, i32* %f1
  %.v224 = load i32, i32* %e2
  %.v225 = add i32 2, %.v224
  %.v226 = load i32, i32* @a10
  %.v227 = add i32 %.v225, %.v226
  store i32 %.v227, i32* %f2
  %.v228 = load i32, i32* %e3
  %.v229 = add i32 3, %.v228
  %.v230 = load i32, i32* @a11
  %.v231 = add i32 %.v229, %.v230
  store i32 %.v231, i32* %f3
  %.v232 = load i32, i32* %e4
  %.v233 = add i32 4, %.v232
  %.v234 = load i32, i32* @a12
  %.v235 = add i32 %.v233, %.v234
  store i32 %.v235, i32* %f4
  %.v236 = load i32, i32* %d1
  %.v237 = add i32 1, %.v236
  %.v238 = load i32, i32* @a5
  %.v239 = add i32 %.v237, %.v238
  store i32 %.v239, i32* %e1
  %.v240 = load i32, i32* %d2
  %.v241 = add i32 2, %.v240
  %.v242 = load i32, i32* @a6
  %.v243 = add i32 %.v241, %.v242
  store i32 %.v243, i32* %e2
  %.v244 = load i32, i32* %d3
  %.v245 = add i32 3, %.v244
  %.v246 = load i32, i32* @a7
  %.v247 = add i32 %.v245, %.v246
  store i32 %.v247, i32* %e3
  %.v248 = load i32, i32* %d4
  %.v249 = add i32 4, %.v248
  %.v250 = load i32, i32* @a8
  %.v251 = add i32 %.v249, %.v250
  store i32 %.v251, i32* %e4
  %.v252 = load i32, i32* %c1
  %.v253 = add i32 1, %.v252
  %.v254 = load i32, i32* @a1
  %.v255 = add i32 %.v253, %.v254
  store i32 %.v255, i32* %d1
  %.v256 = load i32, i32* %c2
  %.v257 = add i32 2, %.v256
  %.v258 = load i32, i32* @a2
  %.v259 = add i32 %.v257, %.v258
  store i32 %.v259, i32* %d2
  %.v260 = load i32, i32* %c3
  %.v261 = add i32 3, %.v260
  %.v262 = load i32, i32* @a3
  %.v263 = add i32 %.v261, %.v262
  store i32 %.v263, i32* %d3
  %.v264 = load i32, i32* %c4
  %.v265 = add i32 4, %.v264
  %.v266 = load i32, i32* @a4
  %.v267 = add i32 %.v265, %.v266
  store i32 %.v267, i32* %d4
  %.v268 = load i32, i32* %c1
  %.v269 = add i32 1, %.v268
  %.v270 = load i32, i32* @a1
  %.v271 = add i32 %.v269, %.v270
  store i32 %.v271, i32* %d1
  %.v272 = load i32, i32* %c2
  %.v273 = add i32 2, %.v272
  %.v274 = load i32, i32* @a2
  %.v275 = add i32 %.v273, %.v274
  store i32 %.v275, i32* %d2
  %.v276 = load i32, i32* %c3
  %.v277 = add i32 3, %.v276
  %.v278 = load i32, i32* @a3
  %.v279 = add i32 %.v277, %.v278
  store i32 %.v279, i32* %d3
  %.v280 = load i32, i32* %c4
  %.v281 = add i32 4, %.v280
  %.v282 = load i32, i32* @a4
  %.v283 = add i32 %.v281, %.v282
  store i32 %.v283, i32* %d4
  %.v284 = load i32, i32* %i
  %.v285 = load i32, i32* %c1
  %.v286 = add i32 %.v284, %.v285
  %.v287 = load i32, i32* %c2
  %.v288 = add i32 %.v286, %.v287
  %.v289 = load i32, i32* %c3
  %.v290 = add i32 %.v288, %.v289
  %.v291 = load i32, i32* %c4
  %.v292 = add i32 %.v290, %.v291
  %.v293 = load i32, i32* %d1
  %.v294 = sub i32 %.v292, %.v293
  %.v295 = load i32, i32* %d2
  %.v296 = sub i32 %.v294, %.v295
  %.v297 = load i32, i32* %d3
  %.v298 = sub i32 %.v296, %.v297
  %.v299 = load i32, i32* %d4
  %.v300 = sub i32 %.v298, %.v299
  %.v301 = load i32, i32* %e1
  %.v302 = add i32 %.v300, %.v301
  %.v303 = load i32, i32* %e2
  %.v304 = add i32 %.v302, %.v303
  %.v305 = load i32, i32* %e3
  %.v306 = add i32 %.v304, %.v305
  %.v307 = load i32, i32* %e4
  %.v308 = add i32 %.v306, %.v307
  %.v309 = load i32, i32* %f1
  %.v310 = sub i32 %.v308, %.v309
  %.v311 = load i32, i32* %f2
  %.v312 = sub i32 %.v310, %.v311
  %.v313 = load i32, i32* %f3
  %.v314 = sub i32 %.v312, %.v313
  %.v315 = load i32, i32* %f4
  %.v316 = sub i32 %.v314, %.v315
  %.v317 = load i32, i32* %g1
  %.v318 = add i32 %.v316, %.v317
  %.v319 = load i32, i32* %g2
  %.v320 = add i32 %.v318, %.v319
  %.v321 = load i32, i32* %g3
  %.v322 = add i32 %.v320, %.v321
  %.v323 = load i32, i32* %g4
  %.v324 = add i32 %.v322, %.v323
  %.v325 = load i32, i32* %h1
  %.v326 = sub i32 %.v324, %.v325
  %.v327 = load i32, i32* %h2
  %.v328 = sub i32 %.v326, %.v327
  %.v329 = load i32, i32* %h3
  %.v330 = sub i32 %.v328, %.v329
  %.v331 = load i32, i32* %h4
  %.v332 = sub i32 %.v330, %.v331
  %.v333 = load i32, i32* %i1
  %.v334 = add i32 %.v332, %.v333
  %.v335 = load i32, i32* %i2
  %.v336 = add i32 %.v334, %.v335
  %.v337 = load i32, i32* %i3
  %.v338 = add i32 %.v336, %.v337
  %.v339 = load i32, i32* %i4
  %.v340 = add i32 %.v338, %.v339
  %.v341 = load i32, i32* %j1
  %.v342 = sub i32 %.v340, %.v341
  %.v343 = load i32, i32* %j2
  %.v344 = sub i32 %.v342, %.v343
  %.v345 = load i32, i32* %j3
  %.v346 = sub i32 %.v344, %.v345
  %.v347 = load i32, i32* %j4
  %.v348 = sub i32 %.v346, %.v347
  %.v349 = load i32, i32* %k1
  %.v350 = add i32 %.v348, %.v349
  %.v351 = load i32, i32* %k2
  %.v352 = add i32 %.v350, %.v351
  %.v353 = load i32, i32* %k3
  %.v354 = add i32 %.v352, %.v353
  %.v355 = load i32, i32* %k4
  %.v356 = add i32 %.v354, %.v355
  %.v357 = load i32, i32* @a1
  %.v358 = add i32 %.v356, %.v357
  %.v359 = load i32, i32* @a2
  %.v360 = sub i32 %.v358, %.v359
  %.v361 = load i32, i32* @a3
  %.v362 = add i32 %.v360, %.v361
  %.v363 = load i32, i32* @a4
  %.v364 = sub i32 %.v362, %.v363
  %.v365 = load i32, i32* @a5
  %.v366 = add i32 %.v364, %.v365
  %.v367 = load i32, i32* @a6
  %.v368 = sub i32 %.v366, %.v367
  %.v369 = load i32, i32* @a7
  %.v370 = add i32 %.v368, %.v369
  %.v371 = load i32, i32* @a8
  %.v372 = sub i32 %.v370, %.v371
  %.v373 = load i32, i32* @a9
  %.v374 = add i32 %.v372, %.v373
  %.v375 = load i32, i32* @a10
  %.v376 = sub i32 %.v374, %.v375
  %.v377 = load i32, i32* @a11
  %.v378 = add i32 %.v376, %.v377
  %.v379 = load i32, i32* @a12
  %.v380 = sub i32 %.v378, %.v379
  %.v381 = load i32, i32* @a13
  %.v382 = add i32 %.v380, %.v381
  %.v383 = load i32, i32* @a14
  %.v384 = sub i32 %.v382, %.v383
  %.v385 = load i32, i32* @a15
  %.v386 = add i32 %.v384, %.v385
  %.v387 = load i32, i32* @a16
  %.v388 = sub i32 %.v386, %.v387
  %.v389 = load i32, i32* @a17
  %.v390 = add i32 %.v388, %.v389
  %.v391 = load i32, i32* @a18
  %.v392 = sub i32 %.v390, %.v391
  %.v393 = load i32, i32* @a19
  %.v394 = add i32 %.v392, %.v393
  %.v395 = load i32, i32* @a20
  %.v396 = sub i32 %.v394, %.v395
  %.v397 = load i32, i32* @a21
  %.v398 = add i32 %.v396, %.v397
  %.v399 = load i32, i32* @a22
  %.v400 = sub i32 %.v398, %.v399
  %.v401 = load i32, i32* @a23
  %.v402 = add i32 %.v400, %.v401
  %.v403 = load i32, i32* @a24
  %.v404 = sub i32 %.v402, %.v403
  %.v405 = load i32, i32* @a25
  %.v406 = add i32 %.v404, %.v405
  %.v407 = load i32, i32* @a26
  %.v408 = sub i32 %.v406, %.v407
  %.v409 = load i32, i32* @a27
  %.v410 = add i32 %.v408, %.v409
  %.v411 = load i32, i32* @a28
  %.v412 = sub i32 %.v410, %.v411
  %.v413 = load i32, i32* @a29
  %.v414 = add i32 %.v412, %.v413
  %.v415 = load i32, i32* @a30
  %.v416 = sub i32 %.v414, %.v415
  %.v417 = load i32, i32* @a31
  %.v418 = add i32 %.v416, %.v417
  %.v419 = load i32, i32* @a32
  %.v420 = sub i32 %.v418, %.v419
  ret i32 %.v420
}

define i32 @main() {
entry:
  %b = alloca i32
  %a = alloca i32
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* %a
  %.v2 = load i32, i32* %a
  %.v3 = mul i32 2, 9
  %.v4 = add i32 %.v2, %.v3
  store i32 %.v4, i32* %b
  %.v5 = load i32, i32* %a
  %.v6 = load i32, i32* %b
  %.v7 = call i32 @func(i32 %.v5, i32 %.v6)
  store i32 %.v7, i32* %a
  %.v8 = load i32, i32* %a
  call void @putint(i32 %.v8)
  %.v9 = load i32, i32* %a
  ret i32 %.v9
}

