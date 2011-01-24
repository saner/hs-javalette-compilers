{-# OPTIONS_GHC -fno-warn-overlapping-patterns #-}
module JavaletteParser where
import JavaletteLexer

-- parser produced by Happy Version 1.18.5

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39
	= HappyTerminal (PosToken)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24
	| HappyAbsSyn25 t25
	| HappyAbsSyn26 t26
	| HappyAbsSyn27 t27
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29
	| HappyAbsSyn30 t30
	| HappyAbsSyn31 t31
	| HappyAbsSyn32 t32
	| HappyAbsSyn33 t33
	| HappyAbsSyn34 t34
	| HappyAbsSyn35 t35
	| HappyAbsSyn36 t36
	| HappyAbsSyn37 t37
	| HappyAbsSyn38 t38
	| HappyAbsSyn39 t39

action_0 (40) = happyShift action_5
action_0 (41) = happyShift action_6
action_0 (42) = happyShift action_7
action_0 (43) = happyShift action_8
action_0 (4) = happyGoto action_9
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (22) = happyGoto action_4
action_0 _ = happyReduce_3

action_1 (40) = happyShift action_5
action_1 (41) = happyShift action_6
action_1 (42) = happyShift action_7
action_1 (43) = happyShift action_8
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (22) = happyGoto action_4
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 (40) = happyShift action_5
action_3 (41) = happyShift action_6
action_3 (42) = happyShift action_7
action_3 (43) = happyShift action_8
action_3 (5) = happyGoto action_11
action_3 (6) = happyGoto action_3
action_3 (22) = happyGoto action_4
action_3 _ = happyReduce_3

action_4 (80) = happyShift action_10
action_4 _ = happyFail

action_5 _ = happyReduce_36

action_6 _ = happyReduce_37

action_7 _ = happyReduce_38

action_8 _ = happyReduce_39

action_9 (81) = happyAccept
action_9 _ = happyFail

action_10 (49) = happyShift action_12
action_10 _ = happyFail

action_11 _ = happyReduce_2

action_12 (40) = happyShift action_5
action_12 (41) = happyShift action_6
action_12 (42) = happyShift action_7
action_12 (43) = happyShift action_8
action_12 (7) = happyGoto action_13
action_12 (8) = happyGoto action_14
action_12 (22) = happyGoto action_15
action_12 _ = happyReduce_8

action_13 (50) = happyShift action_19
action_13 _ = happyFail

action_14 (55) = happyShift action_18
action_14 _ = happyReduce_6

action_15 (80) = happyShift action_17
action_15 (39) = happyGoto action_16
action_15 _ = happyFail

action_16 _ = happyReduce_9

action_17 (53) = happyShift action_23
action_17 _ = happyReduce_87

action_18 (40) = happyShift action_5
action_18 (41) = happyShift action_6
action_18 (42) = happyShift action_7
action_18 (43) = happyShift action_8
action_18 (7) = happyGoto action_22
action_18 (8) = happyGoto action_14
action_18 (22) = happyGoto action_15
action_18 _ = happyReduce_8

action_19 (51) = happyShift action_20
action_19 (53) = happyShift action_21
action_19 _ = happyFail

action_20 (40) = happyShift action_5
action_20 (41) = happyShift action_6
action_20 (42) = happyShift action_7
action_20 (43) = happyShift action_8
action_20 (44) = happyShift action_55
action_20 (45) = happyShift action_56
action_20 (46) = happyShift action_57
action_20 (47) = happyShift action_58
action_20 (48) = happyShift action_59
action_20 (49) = happyShift action_60
action_20 (51) = happyShift action_61
action_20 (69) = happyShift action_62
action_20 (70) = happyShift action_63
action_20 (74) = happyShift action_64
action_20 (75) = happyShift action_65
action_20 (77) = happyShift action_66
action_20 (78) = happyShift action_67
action_20 (79) = happyShift action_68
action_20 (80) = happyShift action_69
action_20 (9) = happyGoto action_29
action_20 (10) = happyGoto action_30
action_20 (11) = happyGoto action_31
action_20 (12) = happyGoto action_32
action_20 (16) = happyGoto action_33
action_20 (17) = happyGoto action_34
action_20 (18) = happyGoto action_35
action_20 (19) = happyGoto action_36
action_20 (20) = happyGoto action_37
action_20 (21) = happyGoto action_38
action_20 (22) = happyGoto action_28
action_20 (23) = happyGoto action_39
action_20 (24) = happyGoto action_40
action_20 (25) = happyGoto action_41
action_20 (26) = happyGoto action_42
action_20 (27) = happyGoto action_43
action_20 (28) = happyGoto action_44
action_20 (29) = happyGoto action_45
action_20 (30) = happyGoto action_46
action_20 (31) = happyGoto action_47
action_20 (32) = happyGoto action_48
action_20 (33) = happyGoto action_49
action_20 (34) = happyGoto action_50
action_20 (35) = happyGoto action_51
action_20 (37) = happyGoto action_52
action_20 (38) = happyGoto action_53
action_20 (39) = happyGoto action_54
action_20 _ = happyReduce_20

action_21 (40) = happyShift action_5
action_21 (41) = happyShift action_6
action_21 (42) = happyShift action_7
action_21 (43) = happyShift action_8
action_21 (12) = happyGoto action_26
action_21 (13) = happyGoto action_27
action_21 (22) = happyGoto action_28
action_21 _ = happyReduce_22

action_22 _ = happyReduce_7

action_23 (46) = happyShift action_24
action_23 (80) = happyShift action_25
action_23 _ = happyFail

action_24 (54) = happyShift action_112
action_24 _ = happyFail

action_25 (54) = happyShift action_111
action_25 _ = happyFail

action_26 (40) = happyShift action_5
action_26 (41) = happyShift action_6
action_26 (42) = happyShift action_7
action_26 (43) = happyShift action_8
action_26 (12) = happyGoto action_26
action_26 (13) = happyGoto action_110
action_26 (22) = happyGoto action_28
action_26 _ = happyReduce_22

action_27 (57) = happyShift action_109
action_27 _ = happyFail

action_28 (80) = happyShift action_17
action_28 (14) = happyGoto action_106
action_28 (15) = happyGoto action_107
action_28 (39) = happyGoto action_108
action_28 _ = happyFail

action_29 (40) = happyShift action_5
action_29 (41) = happyShift action_6
action_29 (42) = happyShift action_7
action_29 (43) = happyShift action_8
action_29 (44) = happyShift action_55
action_29 (45) = happyShift action_56
action_29 (46) = happyShift action_57
action_29 (47) = happyShift action_58
action_29 (48) = happyShift action_59
action_29 (49) = happyShift action_60
action_29 (51) = happyShift action_61
action_29 (69) = happyShift action_62
action_29 (70) = happyShift action_63
action_29 (74) = happyShift action_64
action_29 (75) = happyShift action_65
action_29 (77) = happyShift action_66
action_29 (78) = happyShift action_67
action_29 (79) = happyShift action_68
action_29 (80) = happyShift action_69
action_29 (9) = happyGoto action_29
action_29 (10) = happyGoto action_30
action_29 (11) = happyGoto action_105
action_29 (12) = happyGoto action_32
action_29 (16) = happyGoto action_33
action_29 (17) = happyGoto action_34
action_29 (18) = happyGoto action_35
action_29 (19) = happyGoto action_36
action_29 (20) = happyGoto action_37
action_29 (21) = happyGoto action_38
action_29 (22) = happyGoto action_28
action_29 (23) = happyGoto action_39
action_29 (24) = happyGoto action_40
action_29 (25) = happyGoto action_41
action_29 (26) = happyGoto action_42
action_29 (27) = happyGoto action_43
action_29 (28) = happyGoto action_44
action_29 (29) = happyGoto action_45
action_29 (30) = happyGoto action_46
action_29 (31) = happyGoto action_47
action_29 (32) = happyGoto action_48
action_29 (33) = happyGoto action_49
action_29 (34) = happyGoto action_50
action_29 (35) = happyGoto action_51
action_29 (37) = happyGoto action_52
action_29 (38) = happyGoto action_53
action_29 (39) = happyGoto action_54
action_29 _ = happyReduce_20

action_30 _ = happyReduce_10

action_31 (52) = happyShift action_104
action_31 _ = happyFail

action_32 _ = happyReduce_11

action_33 _ = happyReduce_12

action_34 _ = happyReduce_13

action_35 _ = happyReduce_14

action_36 _ = happyReduce_15

action_37 _ = happyReduce_16

action_38 _ = happyReduce_17

action_39 (56) = happyShift action_103
action_39 _ = happyFail

action_40 (56) = happyShift action_102
action_40 _ = happyFail

action_41 _ = happyReduce_42

action_42 (61) = happyShift action_101
action_42 _ = happyReduce_40

action_43 (62) = happyShift action_100
action_43 _ = happyReduce_46

action_44 (63) = happyShift action_98
action_44 (64) = happyShift action_99
action_44 _ = happyReduce_48

action_45 (65) = happyShift action_94
action_45 (66) = happyShift action_95
action_45 (67) = happyShift action_96
action_45 (68) = happyShift action_97
action_45 _ = happyReduce_50

action_46 (69) = happyShift action_92
action_46 (70) = happyShift action_93
action_46 _ = happyReduce_53

action_47 (71) = happyShift action_89
action_47 (72) = happyShift action_90
action_47 (73) = happyShift action_91
action_47 _ = happyReduce_58

action_48 _ = happyReduce_61

action_49 _ = happyReduce_65

action_50 _ = happyReduce_68

action_51 _ = happyReduce_71

action_52 _ = happyReduce_70

action_53 _ = happyReduce_77

action_54 (58) = happyShift action_86
action_54 (59) = happyShift action_87
action_54 (60) = happyShift action_88
action_54 _ = happyReduce_76

action_55 _ = happyReduce_85

action_56 _ = happyReduce_86

action_57 _ = happyReduce_82

action_58 _ = happyReduce_83

action_59 _ = happyReduce_84

action_60 (40) = happyShift action_83
action_60 (41) = happyShift action_84
action_60 (42) = happyShift action_85
action_60 (44) = happyShift action_55
action_60 (45) = happyShift action_56
action_60 (46) = happyShift action_57
action_60 (47) = happyShift action_58
action_60 (48) = happyShift action_59
action_60 (49) = happyShift action_60
action_60 (69) = happyShift action_62
action_60 (70) = happyShift action_63
action_60 (74) = happyShift action_64
action_60 (80) = happyShift action_69
action_60 (23) = happyGoto action_82
action_60 (24) = happyGoto action_72
action_60 (25) = happyGoto action_41
action_60 (26) = happyGoto action_42
action_60 (27) = happyGoto action_43
action_60 (28) = happyGoto action_44
action_60 (29) = happyGoto action_45
action_60 (30) = happyGoto action_46
action_60 (31) = happyGoto action_47
action_60 (32) = happyGoto action_48
action_60 (33) = happyGoto action_49
action_60 (34) = happyGoto action_50
action_60 (35) = happyGoto action_51
action_60 (37) = happyGoto action_52
action_60 (38) = happyGoto action_53
action_60 (39) = happyGoto action_54
action_60 _ = happyFail

action_61 (40) = happyShift action_5
action_61 (41) = happyShift action_6
action_61 (42) = happyShift action_7
action_61 (43) = happyShift action_8
action_61 (44) = happyShift action_55
action_61 (45) = happyShift action_56
action_61 (46) = happyShift action_57
action_61 (47) = happyShift action_58
action_61 (48) = happyShift action_59
action_61 (49) = happyShift action_60
action_61 (51) = happyShift action_61
action_61 (69) = happyShift action_62
action_61 (70) = happyShift action_63
action_61 (74) = happyShift action_64
action_61 (75) = happyShift action_65
action_61 (77) = happyShift action_66
action_61 (78) = happyShift action_67
action_61 (79) = happyShift action_68
action_61 (80) = happyShift action_69
action_61 (9) = happyGoto action_29
action_61 (10) = happyGoto action_30
action_61 (11) = happyGoto action_81
action_61 (12) = happyGoto action_32
action_61 (16) = happyGoto action_33
action_61 (17) = happyGoto action_34
action_61 (18) = happyGoto action_35
action_61 (19) = happyGoto action_36
action_61 (20) = happyGoto action_37
action_61 (21) = happyGoto action_38
action_61 (22) = happyGoto action_28
action_61 (23) = happyGoto action_39
action_61 (24) = happyGoto action_40
action_61 (25) = happyGoto action_41
action_61 (26) = happyGoto action_42
action_61 (27) = happyGoto action_43
action_61 (28) = happyGoto action_44
action_61 (29) = happyGoto action_45
action_61 (30) = happyGoto action_46
action_61 (31) = happyGoto action_47
action_61 (32) = happyGoto action_48
action_61 (33) = happyGoto action_49
action_61 (34) = happyGoto action_50
action_61 (35) = happyGoto action_51
action_61 (37) = happyGoto action_52
action_61 (38) = happyGoto action_53
action_61 (39) = happyGoto action_54
action_61 _ = happyReduce_20

action_62 (44) = happyShift action_55
action_62 (45) = happyShift action_56
action_62 (46) = happyShift action_57
action_62 (47) = happyShift action_58
action_62 (48) = happyShift action_59
action_62 (49) = happyShift action_60
action_62 (69) = happyShift action_62
action_62 (70) = happyShift action_63
action_62 (74) = happyShift action_64
action_62 (80) = happyShift action_69
action_62 (32) = happyGoto action_80
action_62 (33) = happyGoto action_49
action_62 (34) = happyGoto action_50
action_62 (35) = happyGoto action_51
action_62 (37) = happyGoto action_52
action_62 (38) = happyGoto action_53
action_62 (39) = happyGoto action_78
action_62 _ = happyFail

action_63 (44) = happyShift action_55
action_63 (45) = happyShift action_56
action_63 (46) = happyShift action_57
action_63 (47) = happyShift action_58
action_63 (48) = happyShift action_59
action_63 (49) = happyShift action_60
action_63 (69) = happyShift action_62
action_63 (70) = happyShift action_63
action_63 (74) = happyShift action_64
action_63 (80) = happyShift action_69
action_63 (32) = happyGoto action_79
action_63 (33) = happyGoto action_49
action_63 (34) = happyGoto action_50
action_63 (35) = happyGoto action_51
action_63 (37) = happyGoto action_52
action_63 (38) = happyGoto action_53
action_63 (39) = happyGoto action_78
action_63 _ = happyFail

action_64 (44) = happyShift action_55
action_64 (45) = happyShift action_56
action_64 (46) = happyShift action_57
action_64 (47) = happyShift action_58
action_64 (48) = happyShift action_59
action_64 (49) = happyShift action_60
action_64 (80) = happyShift action_69
action_64 (34) = happyGoto action_77
action_64 (35) = happyGoto action_51
action_64 (37) = happyGoto action_52
action_64 (38) = happyGoto action_53
action_64 (39) = happyGoto action_78
action_64 _ = happyFail

action_65 (49) = happyShift action_76
action_65 _ = happyFail

action_66 (49) = happyShift action_75
action_66 _ = happyFail

action_67 (49) = happyShift action_74
action_67 _ = happyFail

action_68 (44) = happyShift action_55
action_68 (45) = happyShift action_56
action_68 (46) = happyShift action_57
action_68 (47) = happyShift action_58
action_68 (48) = happyShift action_59
action_68 (49) = happyShift action_60
action_68 (56) = happyShift action_73
action_68 (69) = happyShift action_62
action_68 (70) = happyShift action_63
action_68 (74) = happyShift action_64
action_68 (80) = happyShift action_69
action_68 (23) = happyGoto action_71
action_68 (24) = happyGoto action_72
action_68 (25) = happyGoto action_41
action_68 (26) = happyGoto action_42
action_68 (27) = happyGoto action_43
action_68 (28) = happyGoto action_44
action_68 (29) = happyGoto action_45
action_68 (30) = happyGoto action_46
action_68 (31) = happyGoto action_47
action_68 (32) = happyGoto action_48
action_68 (33) = happyGoto action_49
action_68 (34) = happyGoto action_50
action_68 (35) = happyGoto action_51
action_68 (37) = happyGoto action_52
action_68 (38) = happyGoto action_53
action_68 (39) = happyGoto action_54
action_68 _ = happyFail

action_69 (49) = happyShift action_70
action_69 (53) = happyShift action_23
action_69 _ = happyReduce_87

action_70 (44) = happyShift action_55
action_70 (45) = happyShift action_56
action_70 (46) = happyShift action_57
action_70 (47) = happyShift action_58
action_70 (48) = happyShift action_59
action_70 (49) = happyShift action_60
action_70 (69) = happyShift action_62
action_70 (70) = happyShift action_63
action_70 (74) = happyShift action_64
action_70 (80) = happyShift action_69
action_70 (23) = happyGoto action_141
action_70 (24) = happyGoto action_72
action_70 (25) = happyGoto action_41
action_70 (26) = happyGoto action_42
action_70 (27) = happyGoto action_43
action_70 (28) = happyGoto action_44
action_70 (29) = happyGoto action_45
action_70 (30) = happyGoto action_46
action_70 (31) = happyGoto action_47
action_70 (32) = happyGoto action_48
action_70 (33) = happyGoto action_49
action_70 (34) = happyGoto action_50
action_70 (35) = happyGoto action_51
action_70 (36) = happyGoto action_142
action_70 (37) = happyGoto action_52
action_70 (38) = happyGoto action_53
action_70 (39) = happyGoto action_54
action_70 _ = happyReduce_75

action_71 (56) = happyShift action_140
action_71 _ = happyFail

action_72 _ = happyReduce_41

action_73 _ = happyReduce_33

action_74 (80) = happyShift action_17
action_74 (25) = happyGoto action_138
action_74 (39) = happyGoto action_139
action_74 _ = happyFail

action_75 (44) = happyShift action_55
action_75 (45) = happyShift action_56
action_75 (46) = happyShift action_57
action_75 (47) = happyShift action_58
action_75 (48) = happyShift action_59
action_75 (49) = happyShift action_60
action_75 (69) = happyShift action_62
action_75 (70) = happyShift action_63
action_75 (74) = happyShift action_64
action_75 (80) = happyShift action_69
action_75 (23) = happyGoto action_137
action_75 (24) = happyGoto action_72
action_75 (25) = happyGoto action_41
action_75 (26) = happyGoto action_42
action_75 (27) = happyGoto action_43
action_75 (28) = happyGoto action_44
action_75 (29) = happyGoto action_45
action_75 (30) = happyGoto action_46
action_75 (31) = happyGoto action_47
action_75 (32) = happyGoto action_48
action_75 (33) = happyGoto action_49
action_75 (34) = happyGoto action_50
action_75 (35) = happyGoto action_51
action_75 (37) = happyGoto action_52
action_75 (38) = happyGoto action_53
action_75 (39) = happyGoto action_54
action_75 _ = happyFail

action_76 (44) = happyShift action_55
action_76 (45) = happyShift action_56
action_76 (46) = happyShift action_57
action_76 (47) = happyShift action_58
action_76 (48) = happyShift action_59
action_76 (49) = happyShift action_60
action_76 (69) = happyShift action_62
action_76 (70) = happyShift action_63
action_76 (74) = happyShift action_64
action_76 (80) = happyShift action_69
action_76 (23) = happyGoto action_136
action_76 (24) = happyGoto action_72
action_76 (25) = happyGoto action_41
action_76 (26) = happyGoto action_42
action_76 (27) = happyGoto action_43
action_76 (28) = happyGoto action_44
action_76 (29) = happyGoto action_45
action_76 (30) = happyGoto action_46
action_76 (31) = happyGoto action_47
action_76 (32) = happyGoto action_48
action_76 (33) = happyGoto action_49
action_76 (34) = happyGoto action_50
action_76 (35) = happyGoto action_51
action_76 (37) = happyGoto action_52
action_76 (38) = happyGoto action_53
action_76 (39) = happyGoto action_54
action_76 _ = happyFail

action_77 _ = happyReduce_69

action_78 _ = happyReduce_76

action_79 _ = happyReduce_67

action_80 _ = happyReduce_66

action_81 (52) = happyShift action_135
action_81 _ = happyFail

action_82 (50) = happyShift action_134
action_82 _ = happyFail

action_83 (50) = happyShift action_133
action_83 _ = happyFail

action_84 (50) = happyShift action_132
action_84 _ = happyFail

action_85 (50) = happyShift action_131
action_85 _ = happyFail

action_86 (44) = happyShift action_55
action_86 (45) = happyShift action_56
action_86 (46) = happyShift action_57
action_86 (47) = happyShift action_58
action_86 (48) = happyShift action_59
action_86 (49) = happyShift action_60
action_86 (69) = happyShift action_62
action_86 (70) = happyShift action_63
action_86 (74) = happyShift action_64
action_86 (80) = happyShift action_69
action_86 (30) = happyGoto action_130
action_86 (31) = happyGoto action_47
action_86 (32) = happyGoto action_48
action_86 (33) = happyGoto action_49
action_86 (34) = happyGoto action_50
action_86 (35) = happyGoto action_51
action_86 (37) = happyGoto action_52
action_86 (38) = happyGoto action_53
action_86 (39) = happyGoto action_78
action_86 _ = happyFail

action_87 _ = happyReduce_44

action_88 _ = happyReduce_45

action_89 (44) = happyShift action_55
action_89 (45) = happyShift action_56
action_89 (46) = happyShift action_57
action_89 (47) = happyShift action_58
action_89 (48) = happyShift action_59
action_89 (49) = happyShift action_60
action_89 (69) = happyShift action_62
action_89 (70) = happyShift action_63
action_89 (74) = happyShift action_64
action_89 (80) = happyShift action_69
action_89 (32) = happyGoto action_129
action_89 (33) = happyGoto action_49
action_89 (34) = happyGoto action_50
action_89 (35) = happyGoto action_51
action_89 (37) = happyGoto action_52
action_89 (38) = happyGoto action_53
action_89 (39) = happyGoto action_78
action_89 _ = happyFail

action_90 (44) = happyShift action_55
action_90 (45) = happyShift action_56
action_90 (46) = happyShift action_57
action_90 (47) = happyShift action_58
action_90 (48) = happyShift action_59
action_90 (49) = happyShift action_60
action_90 (69) = happyShift action_62
action_90 (70) = happyShift action_63
action_90 (74) = happyShift action_64
action_90 (80) = happyShift action_69
action_90 (32) = happyGoto action_128
action_90 (33) = happyGoto action_49
action_90 (34) = happyGoto action_50
action_90 (35) = happyGoto action_51
action_90 (37) = happyGoto action_52
action_90 (38) = happyGoto action_53
action_90 (39) = happyGoto action_78
action_90 _ = happyFail

action_91 (44) = happyShift action_55
action_91 (45) = happyShift action_56
action_91 (46) = happyShift action_57
action_91 (47) = happyShift action_58
action_91 (48) = happyShift action_59
action_91 (49) = happyShift action_60
action_91 (69) = happyShift action_62
action_91 (70) = happyShift action_63
action_91 (74) = happyShift action_64
action_91 (80) = happyShift action_69
action_91 (32) = happyGoto action_127
action_91 (33) = happyGoto action_49
action_91 (34) = happyGoto action_50
action_91 (35) = happyGoto action_51
action_91 (37) = happyGoto action_52
action_91 (38) = happyGoto action_53
action_91 (39) = happyGoto action_78
action_91 _ = happyFail

action_92 (44) = happyShift action_55
action_92 (45) = happyShift action_56
action_92 (46) = happyShift action_57
action_92 (47) = happyShift action_58
action_92 (48) = happyShift action_59
action_92 (49) = happyShift action_60
action_92 (69) = happyShift action_62
action_92 (70) = happyShift action_63
action_92 (74) = happyShift action_64
action_92 (80) = happyShift action_69
action_92 (31) = happyGoto action_126
action_92 (32) = happyGoto action_48
action_92 (33) = happyGoto action_49
action_92 (34) = happyGoto action_50
action_92 (35) = happyGoto action_51
action_92 (37) = happyGoto action_52
action_92 (38) = happyGoto action_53
action_92 (39) = happyGoto action_78
action_92 _ = happyFail

action_93 (44) = happyShift action_55
action_93 (45) = happyShift action_56
action_93 (46) = happyShift action_57
action_93 (47) = happyShift action_58
action_93 (48) = happyShift action_59
action_93 (49) = happyShift action_60
action_93 (69) = happyShift action_62
action_93 (70) = happyShift action_63
action_93 (74) = happyShift action_64
action_93 (80) = happyShift action_69
action_93 (31) = happyGoto action_125
action_93 (32) = happyGoto action_48
action_93 (33) = happyGoto action_49
action_93 (34) = happyGoto action_50
action_93 (35) = happyGoto action_51
action_93 (37) = happyGoto action_52
action_93 (38) = happyGoto action_53
action_93 (39) = happyGoto action_78
action_93 _ = happyFail

action_94 (44) = happyShift action_55
action_94 (45) = happyShift action_56
action_94 (46) = happyShift action_57
action_94 (47) = happyShift action_58
action_94 (48) = happyShift action_59
action_94 (49) = happyShift action_60
action_94 (69) = happyShift action_62
action_94 (70) = happyShift action_63
action_94 (74) = happyShift action_64
action_94 (80) = happyShift action_69
action_94 (30) = happyGoto action_124
action_94 (31) = happyGoto action_47
action_94 (32) = happyGoto action_48
action_94 (33) = happyGoto action_49
action_94 (34) = happyGoto action_50
action_94 (35) = happyGoto action_51
action_94 (37) = happyGoto action_52
action_94 (38) = happyGoto action_53
action_94 (39) = happyGoto action_78
action_94 _ = happyFail

action_95 (44) = happyShift action_55
action_95 (45) = happyShift action_56
action_95 (46) = happyShift action_57
action_95 (47) = happyShift action_58
action_95 (48) = happyShift action_59
action_95 (49) = happyShift action_60
action_95 (69) = happyShift action_62
action_95 (70) = happyShift action_63
action_95 (74) = happyShift action_64
action_95 (80) = happyShift action_69
action_95 (30) = happyGoto action_123
action_95 (31) = happyGoto action_47
action_95 (32) = happyGoto action_48
action_95 (33) = happyGoto action_49
action_95 (34) = happyGoto action_50
action_95 (35) = happyGoto action_51
action_95 (37) = happyGoto action_52
action_95 (38) = happyGoto action_53
action_95 (39) = happyGoto action_78
action_95 _ = happyFail

action_96 (44) = happyShift action_55
action_96 (45) = happyShift action_56
action_96 (46) = happyShift action_57
action_96 (47) = happyShift action_58
action_96 (48) = happyShift action_59
action_96 (49) = happyShift action_60
action_96 (69) = happyShift action_62
action_96 (70) = happyShift action_63
action_96 (74) = happyShift action_64
action_96 (80) = happyShift action_69
action_96 (30) = happyGoto action_122
action_96 (31) = happyGoto action_47
action_96 (32) = happyGoto action_48
action_96 (33) = happyGoto action_49
action_96 (34) = happyGoto action_50
action_96 (35) = happyGoto action_51
action_96 (37) = happyGoto action_52
action_96 (38) = happyGoto action_53
action_96 (39) = happyGoto action_78
action_96 _ = happyFail

action_97 (44) = happyShift action_55
action_97 (45) = happyShift action_56
action_97 (46) = happyShift action_57
action_97 (47) = happyShift action_58
action_97 (48) = happyShift action_59
action_97 (49) = happyShift action_60
action_97 (69) = happyShift action_62
action_97 (70) = happyShift action_63
action_97 (74) = happyShift action_64
action_97 (80) = happyShift action_69
action_97 (30) = happyGoto action_121
action_97 (31) = happyGoto action_47
action_97 (32) = happyGoto action_48
action_97 (33) = happyGoto action_49
action_97 (34) = happyGoto action_50
action_97 (35) = happyGoto action_51
action_97 (37) = happyGoto action_52
action_97 (38) = happyGoto action_53
action_97 (39) = happyGoto action_78
action_97 _ = happyFail

action_98 (44) = happyShift action_55
action_98 (45) = happyShift action_56
action_98 (46) = happyShift action_57
action_98 (47) = happyShift action_58
action_98 (48) = happyShift action_59
action_98 (49) = happyShift action_60
action_98 (69) = happyShift action_62
action_98 (70) = happyShift action_63
action_98 (74) = happyShift action_64
action_98 (80) = happyShift action_69
action_98 (29) = happyGoto action_120
action_98 (30) = happyGoto action_46
action_98 (31) = happyGoto action_47
action_98 (32) = happyGoto action_48
action_98 (33) = happyGoto action_49
action_98 (34) = happyGoto action_50
action_98 (35) = happyGoto action_51
action_98 (37) = happyGoto action_52
action_98 (38) = happyGoto action_53
action_98 (39) = happyGoto action_78
action_98 _ = happyFail

action_99 (44) = happyShift action_55
action_99 (45) = happyShift action_56
action_99 (46) = happyShift action_57
action_99 (47) = happyShift action_58
action_99 (48) = happyShift action_59
action_99 (49) = happyShift action_60
action_99 (69) = happyShift action_62
action_99 (70) = happyShift action_63
action_99 (74) = happyShift action_64
action_99 (80) = happyShift action_69
action_99 (29) = happyGoto action_119
action_99 (30) = happyGoto action_46
action_99 (31) = happyGoto action_47
action_99 (32) = happyGoto action_48
action_99 (33) = happyGoto action_49
action_99 (34) = happyGoto action_50
action_99 (35) = happyGoto action_51
action_99 (37) = happyGoto action_52
action_99 (38) = happyGoto action_53
action_99 (39) = happyGoto action_78
action_99 _ = happyFail

action_100 (44) = happyShift action_55
action_100 (45) = happyShift action_56
action_100 (46) = happyShift action_57
action_100 (47) = happyShift action_58
action_100 (48) = happyShift action_59
action_100 (49) = happyShift action_60
action_100 (69) = happyShift action_62
action_100 (70) = happyShift action_63
action_100 (74) = happyShift action_64
action_100 (80) = happyShift action_69
action_100 (28) = happyGoto action_118
action_100 (29) = happyGoto action_45
action_100 (30) = happyGoto action_46
action_100 (31) = happyGoto action_47
action_100 (32) = happyGoto action_48
action_100 (33) = happyGoto action_49
action_100 (34) = happyGoto action_50
action_100 (35) = happyGoto action_51
action_100 (37) = happyGoto action_52
action_100 (38) = happyGoto action_53
action_100 (39) = happyGoto action_78
action_100 _ = happyFail

action_101 (44) = happyShift action_55
action_101 (45) = happyShift action_56
action_101 (46) = happyShift action_57
action_101 (47) = happyShift action_58
action_101 (48) = happyShift action_59
action_101 (49) = happyShift action_60
action_101 (69) = happyShift action_62
action_101 (70) = happyShift action_63
action_101 (74) = happyShift action_64
action_101 (80) = happyShift action_69
action_101 (27) = happyGoto action_117
action_101 (28) = happyGoto action_44
action_101 (29) = happyGoto action_45
action_101 (30) = happyGoto action_46
action_101 (31) = happyGoto action_47
action_101 (32) = happyGoto action_48
action_101 (33) = happyGoto action_49
action_101 (34) = happyGoto action_50
action_101 (35) = happyGoto action_51
action_101 (37) = happyGoto action_52
action_101 (38) = happyGoto action_53
action_101 (39) = happyGoto action_78
action_101 _ = happyFail

action_102 _ = happyReduce_28

action_103 _ = happyReduce_35

action_104 _ = happyReduce_5

action_105 _ = happyReduce_19

action_106 (56) = happyShift action_116
action_106 _ = happyFail

action_107 (55) = happyShift action_115
action_107 _ = happyReduce_24

action_108 (58) = happyShift action_114
action_108 _ = happyReduce_26

action_109 (40) = happyShift action_5
action_109 (41) = happyShift action_6
action_109 (42) = happyShift action_7
action_109 (43) = happyShift action_8
action_109 (5) = happyGoto action_113
action_109 (6) = happyGoto action_3
action_109 (22) = happyGoto action_4
action_109 _ = happyReduce_3

action_110 _ = happyReduce_23

action_111 _ = happyReduce_89

action_112 _ = happyReduce_88

action_113 (54) = happyShift action_153
action_113 _ = happyFail

action_114 (44) = happyShift action_55
action_114 (45) = happyShift action_56
action_114 (46) = happyShift action_57
action_114 (47) = happyShift action_58
action_114 (48) = happyShift action_59
action_114 (49) = happyShift action_60
action_114 (69) = happyShift action_62
action_114 (70) = happyShift action_63
action_114 (74) = happyShift action_64
action_114 (80) = happyShift action_69
action_114 (23) = happyGoto action_152
action_114 (24) = happyGoto action_72
action_114 (25) = happyGoto action_41
action_114 (26) = happyGoto action_42
action_114 (27) = happyGoto action_43
action_114 (28) = happyGoto action_44
action_114 (29) = happyGoto action_45
action_114 (30) = happyGoto action_46
action_114 (31) = happyGoto action_47
action_114 (32) = happyGoto action_48
action_114 (33) = happyGoto action_49
action_114 (34) = happyGoto action_50
action_114 (35) = happyGoto action_51
action_114 (37) = happyGoto action_52
action_114 (38) = happyGoto action_53
action_114 (39) = happyGoto action_54
action_114 _ = happyFail

action_115 (80) = happyShift action_17
action_115 (14) = happyGoto action_151
action_115 (15) = happyGoto action_107
action_115 (39) = happyGoto action_108
action_115 _ = happyFail

action_116 _ = happyReduce_21

action_117 (62) = happyShift action_100
action_117 _ = happyReduce_47

action_118 (63) = happyShift action_98
action_118 (64) = happyShift action_99
action_118 _ = happyReduce_49

action_119 (65) = happyShift action_94
action_119 (66) = happyShift action_95
action_119 (67) = happyShift action_96
action_119 (68) = happyShift action_97
action_119 _ = happyReduce_52

action_120 (65) = happyShift action_94
action_120 (66) = happyShift action_95
action_120 (67) = happyShift action_96
action_120 (68) = happyShift action_97
action_120 _ = happyReduce_51

action_121 (69) = happyShift action_92
action_121 (70) = happyShift action_93
action_121 _ = happyReduce_57

action_122 (69) = happyShift action_92
action_122 (70) = happyShift action_93
action_122 _ = happyReduce_56

action_123 (69) = happyShift action_92
action_123 (70) = happyShift action_93
action_123 _ = happyReduce_55

action_124 (69) = happyShift action_92
action_124 (70) = happyShift action_93
action_124 _ = happyReduce_54

action_125 (71) = happyShift action_89
action_125 (72) = happyShift action_90
action_125 (73) = happyShift action_91
action_125 _ = happyReduce_60

action_126 (71) = happyShift action_89
action_126 (72) = happyShift action_90
action_126 (73) = happyShift action_91
action_126 _ = happyReduce_59

action_127 _ = happyReduce_62

action_128 _ = happyReduce_64

action_129 _ = happyReduce_63

action_130 (69) = happyShift action_92
action_130 (70) = happyShift action_93
action_130 _ = happyReduce_43

action_131 (44) = happyShift action_55
action_131 (45) = happyShift action_56
action_131 (46) = happyShift action_57
action_131 (47) = happyShift action_58
action_131 (48) = happyShift action_59
action_131 (49) = happyShift action_60
action_131 (74) = happyShift action_64
action_131 (80) = happyShift action_69
action_131 (33) = happyGoto action_150
action_131 (34) = happyGoto action_50
action_131 (35) = happyGoto action_51
action_131 (37) = happyGoto action_52
action_131 (38) = happyGoto action_53
action_131 (39) = happyGoto action_78
action_131 _ = happyFail

action_132 (44) = happyShift action_55
action_132 (45) = happyShift action_56
action_132 (46) = happyShift action_57
action_132 (47) = happyShift action_58
action_132 (48) = happyShift action_59
action_132 (49) = happyShift action_60
action_132 (74) = happyShift action_64
action_132 (80) = happyShift action_69
action_132 (33) = happyGoto action_149
action_132 (34) = happyGoto action_50
action_132 (35) = happyGoto action_51
action_132 (37) = happyGoto action_52
action_132 (38) = happyGoto action_53
action_132 (39) = happyGoto action_78
action_132 _ = happyFail

action_133 (44) = happyShift action_55
action_133 (45) = happyShift action_56
action_133 (46) = happyShift action_57
action_133 (47) = happyShift action_58
action_133 (48) = happyShift action_59
action_133 (49) = happyShift action_60
action_133 (74) = happyShift action_64
action_133 (80) = happyShift action_69
action_133 (33) = happyGoto action_148
action_133 (34) = happyGoto action_50
action_133 (35) = happyGoto action_51
action_133 (37) = happyGoto action_52
action_133 (38) = happyGoto action_53
action_133 (39) = happyGoto action_78
action_133 _ = happyFail

action_134 _ = happyReduce_78

action_135 _ = happyReduce_18

action_136 (50) = happyShift action_147
action_136 _ = happyFail

action_137 (50) = happyShift action_146
action_137 _ = happyFail

action_138 (56) = happyShift action_145
action_138 _ = happyFail

action_139 (58) = happyShift action_86
action_139 (59) = happyShift action_87
action_139 (60) = happyShift action_88
action_139 _ = happyFail

action_140 _ = happyReduce_34

action_141 (55) = happyShift action_144
action_141 _ = happyReduce_73

action_142 (50) = happyShift action_143
action_142 _ = happyFail

action_143 _ = happyReduce_72

action_144 (44) = happyShift action_55
action_144 (45) = happyShift action_56
action_144 (46) = happyShift action_57
action_144 (47) = happyShift action_58
action_144 (48) = happyShift action_59
action_144 (49) = happyShift action_60
action_144 (69) = happyShift action_62
action_144 (70) = happyShift action_63
action_144 (74) = happyShift action_64
action_144 (80) = happyShift action_69
action_144 (23) = happyGoto action_141
action_144 (24) = happyGoto action_72
action_144 (25) = happyGoto action_41
action_144 (26) = happyGoto action_42
action_144 (27) = happyGoto action_43
action_144 (28) = happyGoto action_44
action_144 (29) = happyGoto action_45
action_144 (30) = happyGoto action_46
action_144 (31) = happyGoto action_47
action_144 (32) = happyGoto action_48
action_144 (33) = happyGoto action_49
action_144 (34) = happyGoto action_50
action_144 (35) = happyGoto action_51
action_144 (36) = happyGoto action_158
action_144 (37) = happyGoto action_52
action_144 (38) = happyGoto action_53
action_144 (39) = happyGoto action_54
action_144 _ = happyReduce_75

action_145 (44) = happyShift action_55
action_145 (45) = happyShift action_56
action_145 (46) = happyShift action_57
action_145 (47) = happyShift action_58
action_145 (48) = happyShift action_59
action_145 (49) = happyShift action_60
action_145 (69) = happyShift action_62
action_145 (70) = happyShift action_63
action_145 (74) = happyShift action_64
action_145 (80) = happyShift action_69
action_145 (23) = happyGoto action_157
action_145 (24) = happyGoto action_72
action_145 (25) = happyGoto action_41
action_145 (26) = happyGoto action_42
action_145 (27) = happyGoto action_43
action_145 (28) = happyGoto action_44
action_145 (29) = happyGoto action_45
action_145 (30) = happyGoto action_46
action_145 (31) = happyGoto action_47
action_145 (32) = happyGoto action_48
action_145 (33) = happyGoto action_49
action_145 (34) = happyGoto action_50
action_145 (35) = happyGoto action_51
action_145 (37) = happyGoto action_52
action_145 (38) = happyGoto action_53
action_145 (39) = happyGoto action_54
action_145 _ = happyFail

action_146 (40) = happyShift action_5
action_146 (41) = happyShift action_6
action_146 (42) = happyShift action_7
action_146 (43) = happyShift action_8
action_146 (44) = happyShift action_55
action_146 (45) = happyShift action_56
action_146 (46) = happyShift action_57
action_146 (47) = happyShift action_58
action_146 (48) = happyShift action_59
action_146 (49) = happyShift action_60
action_146 (51) = happyShift action_61
action_146 (69) = happyShift action_62
action_146 (70) = happyShift action_63
action_146 (74) = happyShift action_64
action_146 (75) = happyShift action_65
action_146 (77) = happyShift action_66
action_146 (78) = happyShift action_67
action_146 (79) = happyShift action_68
action_146 (80) = happyShift action_69
action_146 (9) = happyGoto action_156
action_146 (10) = happyGoto action_30
action_146 (12) = happyGoto action_32
action_146 (16) = happyGoto action_33
action_146 (17) = happyGoto action_34
action_146 (18) = happyGoto action_35
action_146 (19) = happyGoto action_36
action_146 (20) = happyGoto action_37
action_146 (21) = happyGoto action_38
action_146 (22) = happyGoto action_28
action_146 (23) = happyGoto action_39
action_146 (24) = happyGoto action_40
action_146 (25) = happyGoto action_41
action_146 (26) = happyGoto action_42
action_146 (27) = happyGoto action_43
action_146 (28) = happyGoto action_44
action_146 (29) = happyGoto action_45
action_146 (30) = happyGoto action_46
action_146 (31) = happyGoto action_47
action_146 (32) = happyGoto action_48
action_146 (33) = happyGoto action_49
action_146 (34) = happyGoto action_50
action_146 (35) = happyGoto action_51
action_146 (37) = happyGoto action_52
action_146 (38) = happyGoto action_53
action_146 (39) = happyGoto action_54
action_146 _ = happyFail

action_147 (40) = happyShift action_5
action_147 (41) = happyShift action_6
action_147 (42) = happyShift action_7
action_147 (43) = happyShift action_8
action_147 (44) = happyShift action_55
action_147 (45) = happyShift action_56
action_147 (46) = happyShift action_57
action_147 (47) = happyShift action_58
action_147 (48) = happyShift action_59
action_147 (49) = happyShift action_60
action_147 (51) = happyShift action_61
action_147 (69) = happyShift action_62
action_147 (70) = happyShift action_63
action_147 (74) = happyShift action_64
action_147 (75) = happyShift action_65
action_147 (77) = happyShift action_66
action_147 (78) = happyShift action_67
action_147 (79) = happyShift action_68
action_147 (80) = happyShift action_69
action_147 (9) = happyGoto action_155
action_147 (10) = happyGoto action_30
action_147 (12) = happyGoto action_32
action_147 (16) = happyGoto action_33
action_147 (17) = happyGoto action_34
action_147 (18) = happyGoto action_35
action_147 (19) = happyGoto action_36
action_147 (20) = happyGoto action_37
action_147 (21) = happyGoto action_38
action_147 (22) = happyGoto action_28
action_147 (23) = happyGoto action_39
action_147 (24) = happyGoto action_40
action_147 (25) = happyGoto action_41
action_147 (26) = happyGoto action_42
action_147 (27) = happyGoto action_43
action_147 (28) = happyGoto action_44
action_147 (29) = happyGoto action_45
action_147 (30) = happyGoto action_46
action_147 (31) = happyGoto action_47
action_147 (32) = happyGoto action_48
action_147 (33) = happyGoto action_49
action_147 (34) = happyGoto action_50
action_147 (35) = happyGoto action_51
action_147 (37) = happyGoto action_52
action_147 (38) = happyGoto action_53
action_147 (39) = happyGoto action_54
action_147 _ = happyFail

action_148 _ = happyReduce_80

action_149 _ = happyReduce_81

action_150 _ = happyReduce_79

action_151 _ = happyReduce_25

action_152 _ = happyReduce_27

action_153 (51) = happyShift action_154
action_153 _ = happyFail

action_154 (40) = happyShift action_5
action_154 (41) = happyShift action_6
action_154 (42) = happyShift action_7
action_154 (43) = happyShift action_8
action_154 (44) = happyShift action_55
action_154 (45) = happyShift action_56
action_154 (46) = happyShift action_57
action_154 (47) = happyShift action_58
action_154 (48) = happyShift action_59
action_154 (49) = happyShift action_60
action_154 (51) = happyShift action_61
action_154 (69) = happyShift action_62
action_154 (70) = happyShift action_63
action_154 (74) = happyShift action_64
action_154 (75) = happyShift action_65
action_154 (77) = happyShift action_66
action_154 (78) = happyShift action_67
action_154 (79) = happyShift action_68
action_154 (80) = happyShift action_69
action_154 (9) = happyGoto action_29
action_154 (10) = happyGoto action_30
action_154 (11) = happyGoto action_161
action_154 (12) = happyGoto action_32
action_154 (16) = happyGoto action_33
action_154 (17) = happyGoto action_34
action_154 (18) = happyGoto action_35
action_154 (19) = happyGoto action_36
action_154 (20) = happyGoto action_37
action_154 (21) = happyGoto action_38
action_154 (22) = happyGoto action_28
action_154 (23) = happyGoto action_39
action_154 (24) = happyGoto action_40
action_154 (25) = happyGoto action_41
action_154 (26) = happyGoto action_42
action_154 (27) = happyGoto action_43
action_154 (28) = happyGoto action_44
action_154 (29) = happyGoto action_45
action_154 (30) = happyGoto action_46
action_154 (31) = happyGoto action_47
action_154 (32) = happyGoto action_48
action_154 (33) = happyGoto action_49
action_154 (34) = happyGoto action_50
action_154 (35) = happyGoto action_51
action_154 (37) = happyGoto action_52
action_154 (38) = happyGoto action_53
action_154 (39) = happyGoto action_54
action_154 _ = happyReduce_20

action_155 (76) = happyShift action_160
action_155 _ = happyReduce_29

action_156 _ = happyReduce_31

action_157 (56) = happyShift action_159
action_157 _ = happyFail

action_158 _ = happyReduce_74

action_159 (80) = happyShift action_17
action_159 (25) = happyGoto action_164
action_159 (39) = happyGoto action_139
action_159 _ = happyFail

action_160 (40) = happyShift action_5
action_160 (41) = happyShift action_6
action_160 (42) = happyShift action_7
action_160 (43) = happyShift action_8
action_160 (44) = happyShift action_55
action_160 (45) = happyShift action_56
action_160 (46) = happyShift action_57
action_160 (47) = happyShift action_58
action_160 (48) = happyShift action_59
action_160 (49) = happyShift action_60
action_160 (51) = happyShift action_61
action_160 (69) = happyShift action_62
action_160 (70) = happyShift action_63
action_160 (74) = happyShift action_64
action_160 (75) = happyShift action_65
action_160 (77) = happyShift action_66
action_160 (78) = happyShift action_67
action_160 (79) = happyShift action_68
action_160 (80) = happyShift action_69
action_160 (9) = happyGoto action_163
action_160 (10) = happyGoto action_30
action_160 (12) = happyGoto action_32
action_160 (16) = happyGoto action_33
action_160 (17) = happyGoto action_34
action_160 (18) = happyGoto action_35
action_160 (19) = happyGoto action_36
action_160 (20) = happyGoto action_37
action_160 (21) = happyGoto action_38
action_160 (22) = happyGoto action_28
action_160 (23) = happyGoto action_39
action_160 (24) = happyGoto action_40
action_160 (25) = happyGoto action_41
action_160 (26) = happyGoto action_42
action_160 (27) = happyGoto action_43
action_160 (28) = happyGoto action_44
action_160 (29) = happyGoto action_45
action_160 (30) = happyGoto action_46
action_160 (31) = happyGoto action_47
action_160 (32) = happyGoto action_48
action_160 (33) = happyGoto action_49
action_160 (34) = happyGoto action_50
action_160 (35) = happyGoto action_51
action_160 (37) = happyGoto action_52
action_160 (38) = happyGoto action_53
action_160 (39) = happyGoto action_54
action_160 _ = happyFail

action_161 (52) = happyShift action_162
action_161 _ = happyFail

action_162 _ = happyReduce_4

action_163 _ = happyReduce_30

action_164 (50) = happyShift action_165
action_164 _ = happyFail

action_165 (40) = happyShift action_5
action_165 (41) = happyShift action_6
action_165 (42) = happyShift action_7
action_165 (43) = happyShift action_8
action_165 (44) = happyShift action_55
action_165 (45) = happyShift action_56
action_165 (46) = happyShift action_57
action_165 (47) = happyShift action_58
action_165 (48) = happyShift action_59
action_165 (49) = happyShift action_60
action_165 (51) = happyShift action_61
action_165 (69) = happyShift action_62
action_165 (70) = happyShift action_63
action_165 (74) = happyShift action_64
action_165 (75) = happyShift action_65
action_165 (77) = happyShift action_66
action_165 (78) = happyShift action_67
action_165 (79) = happyShift action_68
action_165 (80) = happyShift action_69
action_165 (9) = happyGoto action_166
action_165 (10) = happyGoto action_30
action_165 (12) = happyGoto action_32
action_165 (16) = happyGoto action_33
action_165 (17) = happyGoto action_34
action_165 (18) = happyGoto action_35
action_165 (19) = happyGoto action_36
action_165 (20) = happyGoto action_37
action_165 (21) = happyGoto action_38
action_165 (22) = happyGoto action_28
action_165 (23) = happyGoto action_39
action_165 (24) = happyGoto action_40
action_165 (25) = happyGoto action_41
action_165 (26) = happyGoto action_42
action_165 (27) = happyGoto action_43
action_165 (28) = happyGoto action_44
action_165 (29) = happyGoto action_45
action_165 (30) = happyGoto action_46
action_165 (31) = happyGoto action_47
action_165 (32) = happyGoto action_48
action_165 (33) = happyGoto action_49
action_165 (34) = happyGoto action_50
action_165 (35) = happyGoto action_51
action_165 (37) = happyGoto action_52
action_165 (38) = happyGoto action_53
action_165 (39) = happyGoto action_54
action_165 _ = happyFail

action_166 _ = happyReduce_32

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Program happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  5 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_0  5 happyReduction_3
happyReduction_3  =  HappyAbsSyn5
		 ([]
	)

happyReduce_4 = happyReduce 13 6 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_12) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	(HappyAbsSyn22  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Pos (getPos happy_var_1) $ Function (unIdent happy_var_2) happy_var_1 happy_var_4 happy_var_12 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 8 6 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	(HappyAbsSyn22  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Pos (getPos happy_var_1) $ Function (unIdent happy_var_2) happy_var_1 happy_var_4 happy_var_7 [] []
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  7 happyReduction_6
happyReduction_6 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([ happy_var_1 ]
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  7 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 : happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_0  7 happyReduction_8
happyReduction_8  =  HappyAbsSyn7
		 ([]
	)

happyReduce_9 = happySpecReduce_2  8 happyReduction_9
happyReduction_9 (HappyAbsSyn39  happy_var_2)
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn8
		 ((happy_var_2, happy_var_1)
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  9 happyReduction_10
happyReduction_10 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  9 happyReduction_11
happyReduction_11 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  9 happyReduction_13
happyReduction_13 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  9 happyReduction_14
happyReduction_14 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  9 happyReduction_15
happyReduction_15 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  9 happyReduction_17
happyReduction_17 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn11  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn10
		 (Pos (getPos happy_var_1) $ StmtList happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  11 happyReduction_19
happyReduction_19 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 : happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_0  11 happyReduction_20
happyReduction_20  =  HappyAbsSyn11
		 ([]
	)

happyReduce_21 = happySpecReduce_3  12 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn12
		 (Pos (getPos happy_var_1) $ StmtVarsDecl happy_var_1 happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_0  13 happyReduction_22
happyReduction_22  =  HappyAbsSyn13
		 ([]
	)

happyReduce_23 = happySpecReduce_2  13 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 : happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  14 happyReduction_24
happyReduction_24 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 ([ happy_var_1 ]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  14 happyReduction_25
happyReduction_25 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1 : happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  15 happyReduction_26
happyReduction_26 (HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn15
		 (Pos (getPos happy_var_1) $ Decl happy_var_1 Nothing
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  15 happyReduction_27
happyReduction_27 (HappyAbsSyn23  happy_var_3)
	_
	(HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn15
		 (Pos (getPos happy_var_1) $ Decl happy_var_1 (Just happy_var_3)
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  16 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn16
		 (Pos (getPos happy_var_1) $ StmtAssig happy_var_1
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 5 17 happyReduction_29
happyReduction_29 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Pos (getPos happy_var_1) $ StmtIf happy_var_3 happy_var_5 $ Pos (getPos happy_var_1) StmtEmpty
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 7 17 happyReduction_30
happyReduction_30 ((HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Pos (getPos happy_var_1) $ StmtIf happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 5 18 happyReduction_31
happyReduction_31 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (Pos (getPos happy_var_1) $ StmtWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 9 19 happyReduction_32
happyReduction_32 ((HappyAbsSyn9  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn25  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn25  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Pos (getPos happy_var_1) $ StmtFor happy_var_3 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_2  20 happyReduction_33
happyReduction_33 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (Pos (getPos happy_var_1) $ StmtReturn Nothing
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  20 happyReduction_34
happyReduction_34 _
	(HappyAbsSyn23  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (Pos (getPos happy_var_1) $ StmtReturn (Just happy_var_2)
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  21 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn21
		 (Pos (getPos happy_var_1) $ StmtExp happy_var_1
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  22 happyReduction_36
happyReduction_36 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn22
		 (Pos (getPos happy_var_1) TypeInt
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  22 happyReduction_37
happyReduction_37 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn22
		 (Pos (getPos happy_var_1) TypeDouble
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  22 happyReduction_38
happyReduction_38 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn22
		 (Pos (getPos happy_var_1) TypeBoolean
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  22 happyReduction_39
happyReduction_39 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn22
		 (Pos (getPos happy_var_1) TypeVoid
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  23 happyReduction_40
happyReduction_40 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  23 happyReduction_41
happyReduction_41 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn23
		 (Pos (getPos happy_var_1) $ ExpAssig happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  24 happyReduction_42
happyReduction_42 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn24
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  25 happyReduction_43
happyReduction_43 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn25
		 (Pos (getPos happy_var_1) $ AssigEq happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  25 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn25
		 (Pos (getPos happy_var_1) $ AssigInc happy_var_1
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  25 happyReduction_45
happyReduction_45 _
	(HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn25
		 (Pos (getPos happy_var_1) $ AssigDec happy_var_1
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  26 happyReduction_46
happyReduction_46 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  26 happyReduction_47
happyReduction_47 (HappyAbsSyn27  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (Pos (getPos happy_var_2) $ ExpBinaryOp BoolOr happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  27 happyReduction_48
happyReduction_48 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 (happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  27 happyReduction_49
happyReduction_49 (HappyAbsSyn28  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (Pos (getPos happy_var_2) $ ExpBinaryOp BoolAnd happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  28 happyReduction_50
happyReduction_50 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  28 happyReduction_51
happyReduction_51 (HappyAbsSyn29  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Pos (getPos happy_var_2) $ ExpBinaryOp ComperEq happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  28 happyReduction_52
happyReduction_52 (HappyAbsSyn29  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Pos (getPos happy_var_2) $ ExpBinaryOp ComperNotEq happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  29 happyReduction_53
happyReduction_53 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  29 happyReduction_54
happyReduction_54 (HappyAbsSyn30  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (Pos (getPos happy_var_2) $ ExpBinaryOp RelaLe happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  29 happyReduction_55
happyReduction_55 (HappyAbsSyn30  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (Pos (getPos happy_var_2) $ ExpBinaryOp RelaGt happy_var_1 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  29 happyReduction_56
happyReduction_56 (HappyAbsSyn30  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (Pos (getPos happy_var_2) $ ExpBinaryOp RelaLeEq happy_var_1 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  29 happyReduction_57
happyReduction_57 (HappyAbsSyn30  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (Pos (getPos happy_var_2) $ ExpBinaryOp RelaGtEq happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  30 happyReduction_58
happyReduction_58 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  30 happyReduction_59
happyReduction_59 (HappyAbsSyn31  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (Pos (getPos happy_var_2) $ ExpBinaryOp AddiPlus happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  30 happyReduction_60
happyReduction_60 (HappyAbsSyn31  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (Pos (getPos happy_var_2) $ ExpBinaryOp AddiMinus happy_var_1 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  31 happyReduction_61
happyReduction_61 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  31 happyReduction_62
happyReduction_62 (HappyAbsSyn32  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (Pos (getPos happy_var_2) $ ExpBinaryOp MultiMulti happy_var_1 happy_var_3
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  31 happyReduction_63
happyReduction_63 (HappyAbsSyn32  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (Pos (getPos happy_var_2) $ ExpBinaryOp MultiDiv happy_var_1 happy_var_3
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_3  31 happyReduction_64
happyReduction_64 (HappyAbsSyn32  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (Pos (getPos happy_var_2) $ ExpBinaryOp MultiMod happy_var_1 happy_var_3
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  32 happyReduction_65
happyReduction_65 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_2  32 happyReduction_66
happyReduction_66 (HappyAbsSyn32  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn32
		 (Pos (getPos happy_var_1) $ ExpUnaryOp UnaryPlus happy_var_2
	)
happyReduction_66 _ _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_2  32 happyReduction_67
happyReduction_67 (HappyAbsSyn32  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn32
		 (Pos (getPos happy_var_1) $ ExpUnaryOp UnaryMinus happy_var_2
	)
happyReduction_67 _ _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  33 happyReduction_68
happyReduction_68 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_2  33 happyReduction_69
happyReduction_69 (HappyAbsSyn34  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (Pos (getPos happy_var_1) $ ExpUnaryOp UnaryNot happy_var_2
	)
happyReduction_69 _ _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_1  34 happyReduction_70
happyReduction_70 (HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn34
		 (happy_var_1
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  34 happyReduction_71
happyReduction_71 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn34
		 (happy_var_1
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happyReduce 4 35 happyReduction_72
happyReduction_72 (_ `HappyStk`
	(HappyAbsSyn36  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn35
		 (Pos (getPos happy_var_1) $ ExpCallFunc (unIdent happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_73 = happySpecReduce_1  36 happyReduction_73
happyReduction_73 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn36
		 ([ happy_var_1 ]
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_3  36 happyReduction_74
happyReduction_74 (HappyAbsSyn36  happy_var_3)
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn36
		 (happy_var_1 : happy_var_3
	)
happyReduction_74 _ _ _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_0  36 happyReduction_75
happyReduction_75  =  HappyAbsSyn36
		 ([]
	)

happyReduce_76 = happySpecReduce_1  37 happyReduction_76
happyReduction_76 (HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn37
		 (Pos (getPos happy_var_1) $ ExpVar happy_var_1
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_1  37 happyReduction_77
happyReduction_77 (HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_77 _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_3  37 happyReduction_78
happyReduction_78 _
	(HappyAbsSyn23  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (Pos (getPos happy_var_1) $ ExpExp happy_var_2
	)
happyReduction_78 _ _ _  = notHappyAtAll 

happyReduce_79 = happyReduce 4 37 happyReduction_79
happyReduction_79 ((HappyAbsSyn33  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn37
		 (Pos (getPos happy_var_1) $ ExpCast ToBoolean happy_var_4
	) `HappyStk` happyRest

happyReduce_80 = happyReduce 4 37 happyReduction_80
happyReduction_80 ((HappyAbsSyn33  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn37
		 (Pos (getPos happy_var_1) $ ExpCast ToInt happy_var_4
	) `HappyStk` happyRest

happyReduce_81 = happyReduce 4 37 happyReduction_81
happyReduction_81 ((HappyAbsSyn33  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn37
		 (Pos (getPos happy_var_1) $ ExpCast ToDouble happy_var_4
	) `HappyStk` happyRest

happyReduce_82 = happySpecReduce_1  38 happyReduction_82
happyReduction_82 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn38
		 (Pos (getPos happy_var_1) $ ExpInt (unInt happy_var_1)
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_1  38 happyReduction_83
happyReduction_83 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn38
		 (Pos (getPos happy_var_1) $ ExpDouble (unDouble happy_var_1)
	)
happyReduction_83 _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_1  38 happyReduction_84
happyReduction_84 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn38
		 (Pos (getPos happy_var_1) $ ExpString (unString happy_var_1)
	)
happyReduction_84 _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_1  38 happyReduction_85
happyReduction_85 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn38
		 (Pos (getPos happy_var_1) ExpFalse
	)
happyReduction_85 _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_1  38 happyReduction_86
happyReduction_86 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn38
		 (Pos (getPos happy_var_1) ExpTrue
	)
happyReduction_86 _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_1  39 happyReduction_87
happyReduction_87 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn39
		 (Pos (getPos happy_var_1) $ VarNormal (unIdentAndPos happy_var_1)
	)
happyReduction_87 _  = notHappyAtAll 

happyReduce_88 = happyReduce 4 39 happyReduction_88
happyReduction_88 (_ `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn39
		 (Pos (getPos happy_var_1) $ VarArray (unIdentAndPos happy_var_1) (Left (unInt happy_var_3))
	) `HappyStk` happyRest

happyReduce_89 = happyReduce 4 39 happyReduction_89
happyReduction_89 (_ `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn39
		 (Pos (getPos happy_var_1) $ VarArray (unIdentAndPos happy_var_1) (Right (unIdentAndPos happy_var_3))
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 81 81 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Pos _ TInt -> cont 40;
	Pos _ TDouble -> cont 41;
	Pos _ TBoolean -> cont 42;
	Pos _ TVoid -> cont 43;
	Pos _ TFalseLiteral -> cont 44;
	Pos _ TTrueLiteral -> cont 45;
	Pos _ (TIntLiteral _) -> cont 46;
	Pos _ (TDoubleLiteral _) -> cont 47;
	Pos _ (TStringLiteral _) -> cont 48;
	Pos _ TLeftParen -> cont 49;
	Pos _ TRightParen -> cont 50;
	Pos _ TLeftBrace -> cont 51;
	Pos _ TRightBrace -> cont 52;
	Pos _ TLeftSqBracket -> cont 53;
	Pos _ TRightSqBracket -> cont 54;
	Pos _ TComma -> cont 55;
	Pos _ TSemicolon -> cont 56;
	Pos _ TColon -> cont 57;
	Pos _ TAssignSign -> cont 58;
	Pos _ TIncrement -> cont 59;
	Pos _ TDecrement -> cont 60;
	Pos _ TOr -> cont 61;
	Pos _ TAnd -> cont 62;
	Pos _ TEqualsSign -> cont 63;
	Pos _ TNotEqualsSign -> cont 64;
	Pos _ TLessSign -> cont 65;
	Pos _ TGreaterSign -> cont 66;
	Pos _ TLeOrEqSign -> cont 67;
	Pos _ TGrOrEqSign -> cont 68;
	Pos _ TPlusSign -> cont 69;
	Pos _ TMinusSign -> cont 70;
	Pos _ TDivSign -> cont 71;
	Pos _ TModSign -> cont 72;
	Pos _ TMultiSign -> cont 73;
	Pos _ TNot -> cont 74;
	Pos _ TIf -> cont 75;
	Pos _ TElse -> cont 76;
	Pos _ TWhile -> cont 77;
	Pos _ TFor -> cont 78;
	Pos _ TReturn -> cont 79;
	Pos _ (TIdent _) -> cont 80;
	_ -> happyError' (tk:tks)
	}

happyError_ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(PosToken)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

javaletteParse tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


unWrap :: PosToken -> Token
unWrap (Pos pos token) = token

unIdent :: PosToken -> PosIdent
unIdent (Pos p (TIdent str)) = Pos p str

unIdentAndPos :: PosToken -> Ident
unIdentAndPos (Pos p (TIdent str)) = str

unInt :: PosToken -> Int
unInt (Pos p (TIntLiteral i)) = i

unDouble :: PosToken -> Double
unDouble (Pos p (TDoubleLiteral d)) = d

unString :: PosToken -> String
unString (Pos p (TStringLiteral s)) = s

getPos (Pos p t) = p



type Ident = String
type PosIdent = Pos Ident

type IntLiteral = Int
type PosIntLiteral = Pos IntLiteral

type DoubleLiteral = Double
type PosDobuleLiteral = Pos DoubleLiteral

type StringLiteral = String
type PosStringLiteral = Pos StringLiteral

data Type = TypeInt
			| TypeDouble
			| TypeBoolean
			| TypeVoid
			| TypeString
			| TypeAny
			deriving (Show, Eq)
type PosType = Pos Type

data Program = Program [PosFunction]
			deriving (Show, Eq)

data Function = Function PosIdent PosType [(PosVar, PosType)] [PosStmt] [PosStmt] [PosFunction]
			deriving (Show, Eq)
type PosFunction = Pos Function

data Stmt = StmtList [PosStmt]
		 | StmtVarsDecl PosType [PosDecl]
		 | StmtAssig PosAssig
		 | StmtIf PosExp PosStmt PosStmt
		 | StmtWhile PosExp PosStmt
		 | StmtFor PosAssig PosExp PosAssig PosStmt
		 | StmtReturn (Maybe PosExp)
		 | StmtExp PosExp
		 | StmtEmpty
			deriving (Show, Eq)
type PosStmt = Pos Stmt

data Decl = Decl PosVar (Maybe PosExp)
			deriving (Show, Eq)
type PosDecl = Pos Decl

data BinaryOp = BoolAnd | BoolOr
				| ComperEq | ComperNotEq
				| RelaLe | RelaLeEq | RelaGt | RelaGtEq
				| AddiPlus | AddiMinus
				| MultiMulti | MultiDiv | MultiMod
				deriving (Show, Eq)

data UnaryOp = UnaryNot | UnaryPlus | UnaryMinus
				deriving (Show, Eq)

data CastType = ToInt | ToDouble | ToBoolean
				deriving (Show, Eq)

data Exp = ExpList [PosExp]
		| ExpBinaryOp BinaryOp PosExp PosExp
		| ExpUnaryOp UnaryOp PosExp
		| ExpCallFunc PosIdent [PosExp]
		| ExpVar PosVar
		| ExpExp PosExp
		| ExpInt Int
		| ExpDouble Double
		| ExpString String
		| ExpTrue
		| ExpFalse
		| ExpCast CastType PosExp -- do castowania, zawiera typ konwersji oraz wyrazenie podlegajace jej
		| ExpAssig PosAssig
		deriving (Show, Eq)

type PosExp = Pos Exp

data Assig = AssigEq PosVar PosExp
		| AssigInc PosVar
		| AssigDec PosVar
		deriving (Show, Eq)

type PosAssig = Pos Assig


data Var = VarNormal Ident
		| VarArray Ident (Either Int Ident)
		deriving (Show, Eq)

type PosVar = Pos Var


-- obsluga bledow

tokenString :: Token -> String
tokenString token =
	case token of
		--TInt -> "int" pojawia sie blad parsowania w Haskellu bez powodu
        TDouble -> "double"
        TBoolean -> "boolean"
        TString -> "string"
        TVoid -> "void"
        TFalseLiteral -> "false"
        TTrueLiteral -> "true"
        TIntLiteral i -> "int " ++ (show i)
        TDoubleLiteral d -> "double " ++ (show d)
        TBooleanLiteral b -> "boolean " ++ (show b)
        TStringLiteral s -> "string " ++ (show s) 
        TIdent ident -> "identyfikator " ++ (show ident) 
        TLeftParen -> "("
        TRightParen ->  ")"
        TLeftSqBracket -> "["
        TRightSqBracket ->  "]"
        TLeftBrace -> "{"
        TRightBrace -> "}"
        TComma -> ","
        TSemicolon -> ";"
        TAssignSign -> "="
        TIncrement -> "++"
        TDecrement -> "--"
        TOr -> "||"
        TAnd -> "&&"
        TEqualsSign -> "=="
        TNotEqualsSign -> "!="
        TLessSign -> "<"
        TGreaterSign -> ">"
        TLeOrEqSign -> "<="
        TGrOrEqSign -> ">="
        TPlusSign -> "+"
        TMinusSign -> "-"
        TDivSign -> "/"
        TModSign -> "%"
        TMultiSign -> "*"
        TNot -> "!"
        TIf -> "if"
        TElse -> "else"
        TWhile -> "while"
        TFor -> "for"
        TReturn -> "return"
        TError e -> "error " ++ (show e)
        TEOF ->  "eof"

parseError :: [PosToken] -> a
parseError ((Pos (pos_l, pos_k) token):_) = do
	let tokenStr = tokenString token
	error $ "Blad parsowania w linii " ++ (show pos_l) ++
			" w kolumnie " ++ (show pos_k) ++ 
			" nieoczekiwany symbol: " ++ tokenStr
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 30 "templates\\GenericTemplate.hs" #-}








{-# LINE 51 "templates\\GenericTemplate.hs" #-}

{-# LINE 61 "templates\\GenericTemplate.hs" #-}

{-# LINE 70 "templates\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 148 "templates\\GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 246 "templates\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail  (1) tk old_st _ stk =
--	trace "failing" $ 
    	happyError_ tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 310 "templates\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
