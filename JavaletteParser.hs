{-# OPTIONS_GHC -fno-warn-overlapping-patterns #-}
module JavaletteParser where
import JavaletteLexer

-- parser produced by Happy Version 1.18.5

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37
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

action_0 (38) = happyShift action_5
action_0 (39) = happyShift action_6
action_0 (40) = happyShift action_7
action_0 (41) = happyShift action_8
action_0 (4) = happyGoto action_9
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (21) = happyGoto action_4
action_0 _ = happyReduce_3

action_1 (38) = happyShift action_5
action_1 (39) = happyShift action_6
action_1 (40) = happyShift action_7
action_1 (41) = happyShift action_8
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (21) = happyGoto action_4
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 (38) = happyShift action_5
action_3 (39) = happyShift action_6
action_3 (40) = happyShift action_7
action_3 (41) = happyShift action_8
action_3 (5) = happyGoto action_11
action_3 (6) = happyGoto action_3
action_3 (21) = happyGoto action_4
action_3 _ = happyReduce_3

action_4 (75) = happyShift action_10
action_4 _ = happyFail

action_5 _ = happyReduce_33

action_6 _ = happyReduce_34

action_7 _ = happyReduce_35

action_8 _ = happyReduce_36

action_9 (76) = happyAccept
action_9 _ = happyFail

action_10 (47) = happyShift action_12
action_10 _ = happyFail

action_11 _ = happyReduce_2

action_12 (38) = happyShift action_5
action_12 (39) = happyShift action_6
action_12 (40) = happyShift action_7
action_12 (41) = happyShift action_8
action_12 (7) = happyGoto action_13
action_12 (8) = happyGoto action_14
action_12 (21) = happyGoto action_15
action_12 _ = happyReduce_7

action_13 (48) = happyShift action_18
action_13 _ = happyFail

action_14 (51) = happyShift action_17
action_14 _ = happyReduce_5

action_15 (75) = happyShift action_16
action_15 _ = happyFail

action_16 _ = happyReduce_8

action_17 (38) = happyShift action_5
action_17 (39) = happyShift action_6
action_17 (40) = happyShift action_7
action_17 (41) = happyShift action_8
action_17 (7) = happyGoto action_20
action_17 (8) = happyGoto action_14
action_17 (21) = happyGoto action_15
action_17 _ = happyReduce_7

action_18 (49) = happyShift action_19
action_18 _ = happyFail

action_19 (38) = happyShift action_5
action_19 (39) = happyShift action_6
action_19 (40) = happyShift action_7
action_19 (41) = happyShift action_8
action_19 (42) = happyShift action_47
action_19 (43) = happyShift action_48
action_19 (44) = happyShift action_49
action_19 (45) = happyShift action_50
action_19 (46) = happyShift action_51
action_19 (47) = happyShift action_52
action_19 (49) = happyShift action_53
action_19 (64) = happyShift action_54
action_19 (65) = happyShift action_55
action_19 (69) = happyShift action_56
action_19 (70) = happyShift action_57
action_19 (72) = happyShift action_58
action_19 (73) = happyShift action_59
action_19 (74) = happyShift action_60
action_19 (75) = happyShift action_61
action_19 (9) = happyGoto action_21
action_19 (10) = happyGoto action_22
action_19 (11) = happyGoto action_23
action_19 (12) = happyGoto action_24
action_19 (15) = happyGoto action_25
action_19 (16) = happyGoto action_26
action_19 (17) = happyGoto action_27
action_19 (18) = happyGoto action_28
action_19 (19) = happyGoto action_29
action_19 (20) = happyGoto action_30
action_19 (21) = happyGoto action_31
action_19 (22) = happyGoto action_32
action_19 (23) = happyGoto action_33
action_19 (24) = happyGoto action_34
action_19 (25) = happyGoto action_35
action_19 (26) = happyGoto action_36
action_19 (27) = happyGoto action_37
action_19 (28) = happyGoto action_38
action_19 (29) = happyGoto action_39
action_19 (30) = happyGoto action_40
action_19 (31) = happyGoto action_41
action_19 (32) = happyGoto action_42
action_19 (33) = happyGoto action_43
action_19 (34) = happyGoto action_44
action_19 (36) = happyGoto action_45
action_19 (37) = happyGoto action_46
action_19 _ = happyReduce_19

action_20 _ = happyReduce_6

action_21 (38) = happyShift action_5
action_21 (39) = happyShift action_6
action_21 (40) = happyShift action_7
action_21 (41) = happyShift action_8
action_21 (42) = happyShift action_47
action_21 (43) = happyShift action_48
action_21 (44) = happyShift action_49
action_21 (45) = happyShift action_50
action_21 (46) = happyShift action_51
action_21 (47) = happyShift action_52
action_21 (49) = happyShift action_53
action_21 (64) = happyShift action_54
action_21 (65) = happyShift action_55
action_21 (69) = happyShift action_56
action_21 (70) = happyShift action_57
action_21 (72) = happyShift action_58
action_21 (73) = happyShift action_59
action_21 (74) = happyShift action_60
action_21 (75) = happyShift action_61
action_21 (9) = happyGoto action_21
action_21 (10) = happyGoto action_22
action_21 (11) = happyGoto action_100
action_21 (12) = happyGoto action_24
action_21 (15) = happyGoto action_25
action_21 (16) = happyGoto action_26
action_21 (17) = happyGoto action_27
action_21 (18) = happyGoto action_28
action_21 (19) = happyGoto action_29
action_21 (20) = happyGoto action_30
action_21 (21) = happyGoto action_31
action_21 (22) = happyGoto action_32
action_21 (23) = happyGoto action_33
action_21 (24) = happyGoto action_34
action_21 (25) = happyGoto action_35
action_21 (26) = happyGoto action_36
action_21 (27) = happyGoto action_37
action_21 (28) = happyGoto action_38
action_21 (29) = happyGoto action_39
action_21 (30) = happyGoto action_40
action_21 (31) = happyGoto action_41
action_21 (32) = happyGoto action_42
action_21 (33) = happyGoto action_43
action_21 (34) = happyGoto action_44
action_21 (36) = happyGoto action_45
action_21 (37) = happyGoto action_46
action_21 _ = happyReduce_19

action_22 _ = happyReduce_9

action_23 (50) = happyShift action_99
action_23 _ = happyFail

action_24 _ = happyReduce_10

action_25 _ = happyReduce_11

action_26 _ = happyReduce_12

action_27 _ = happyReduce_13

action_28 _ = happyReduce_14

action_29 _ = happyReduce_15

action_30 _ = happyReduce_16

action_31 (75) = happyShift action_98
action_31 (13) = happyGoto action_96
action_31 (14) = happyGoto action_97
action_31 _ = happyFail

action_32 (52) = happyShift action_95
action_32 _ = happyFail

action_33 (52) = happyShift action_94
action_33 _ = happyFail

action_34 _ = happyReduce_39

action_35 (56) = happyShift action_93
action_35 _ = happyReduce_37

action_36 (57) = happyShift action_92
action_36 _ = happyReduce_43

action_37 (58) = happyShift action_90
action_37 (59) = happyShift action_91
action_37 _ = happyReduce_45

action_38 (60) = happyShift action_86
action_38 (61) = happyShift action_87
action_38 (62) = happyShift action_88
action_38 (63) = happyShift action_89
action_38 _ = happyReduce_47

action_39 (64) = happyShift action_84
action_39 (65) = happyShift action_85
action_39 _ = happyReduce_50

action_40 (66) = happyShift action_81
action_40 (67) = happyShift action_82
action_40 (68) = happyShift action_83
action_40 _ = happyReduce_55

action_41 _ = happyReduce_58

action_42 _ = happyReduce_62

action_43 _ = happyReduce_65

action_44 _ = happyReduce_68

action_45 _ = happyReduce_67

action_46 _ = happyReduce_74

action_47 _ = happyReduce_82

action_48 _ = happyReduce_83

action_49 _ = happyReduce_79

action_50 _ = happyReduce_80

action_51 _ = happyReduce_81

action_52 (38) = happyShift action_78
action_52 (39) = happyShift action_79
action_52 (40) = happyShift action_80
action_52 (42) = happyShift action_47
action_52 (43) = happyShift action_48
action_52 (44) = happyShift action_49
action_52 (45) = happyShift action_50
action_52 (46) = happyShift action_51
action_52 (47) = happyShift action_52
action_52 (64) = happyShift action_54
action_52 (65) = happyShift action_55
action_52 (69) = happyShift action_56
action_52 (75) = happyShift action_61
action_52 (22) = happyGoto action_77
action_52 (23) = happyGoto action_67
action_52 (24) = happyGoto action_34
action_52 (25) = happyGoto action_35
action_52 (26) = happyGoto action_36
action_52 (27) = happyGoto action_37
action_52 (28) = happyGoto action_38
action_52 (29) = happyGoto action_39
action_52 (30) = happyGoto action_40
action_52 (31) = happyGoto action_41
action_52 (32) = happyGoto action_42
action_52 (33) = happyGoto action_43
action_52 (34) = happyGoto action_44
action_52 (36) = happyGoto action_45
action_52 (37) = happyGoto action_46
action_52 _ = happyFail

action_53 (38) = happyShift action_5
action_53 (39) = happyShift action_6
action_53 (40) = happyShift action_7
action_53 (41) = happyShift action_8
action_53 (42) = happyShift action_47
action_53 (43) = happyShift action_48
action_53 (44) = happyShift action_49
action_53 (45) = happyShift action_50
action_53 (46) = happyShift action_51
action_53 (47) = happyShift action_52
action_53 (49) = happyShift action_53
action_53 (64) = happyShift action_54
action_53 (65) = happyShift action_55
action_53 (69) = happyShift action_56
action_53 (70) = happyShift action_57
action_53 (72) = happyShift action_58
action_53 (73) = happyShift action_59
action_53 (74) = happyShift action_60
action_53 (75) = happyShift action_61
action_53 (9) = happyGoto action_21
action_53 (10) = happyGoto action_22
action_53 (11) = happyGoto action_76
action_53 (12) = happyGoto action_24
action_53 (15) = happyGoto action_25
action_53 (16) = happyGoto action_26
action_53 (17) = happyGoto action_27
action_53 (18) = happyGoto action_28
action_53 (19) = happyGoto action_29
action_53 (20) = happyGoto action_30
action_53 (21) = happyGoto action_31
action_53 (22) = happyGoto action_32
action_53 (23) = happyGoto action_33
action_53 (24) = happyGoto action_34
action_53 (25) = happyGoto action_35
action_53 (26) = happyGoto action_36
action_53 (27) = happyGoto action_37
action_53 (28) = happyGoto action_38
action_53 (29) = happyGoto action_39
action_53 (30) = happyGoto action_40
action_53 (31) = happyGoto action_41
action_53 (32) = happyGoto action_42
action_53 (33) = happyGoto action_43
action_53 (34) = happyGoto action_44
action_53 (36) = happyGoto action_45
action_53 (37) = happyGoto action_46
action_53 _ = happyReduce_19

action_54 (42) = happyShift action_47
action_54 (43) = happyShift action_48
action_54 (44) = happyShift action_49
action_54 (45) = happyShift action_50
action_54 (46) = happyShift action_51
action_54 (47) = happyShift action_52
action_54 (64) = happyShift action_54
action_54 (65) = happyShift action_55
action_54 (69) = happyShift action_56
action_54 (75) = happyShift action_73
action_54 (31) = happyGoto action_75
action_54 (32) = happyGoto action_42
action_54 (33) = happyGoto action_43
action_54 (34) = happyGoto action_44
action_54 (36) = happyGoto action_45
action_54 (37) = happyGoto action_46
action_54 _ = happyFail

action_55 (42) = happyShift action_47
action_55 (43) = happyShift action_48
action_55 (44) = happyShift action_49
action_55 (45) = happyShift action_50
action_55 (46) = happyShift action_51
action_55 (47) = happyShift action_52
action_55 (64) = happyShift action_54
action_55 (65) = happyShift action_55
action_55 (69) = happyShift action_56
action_55 (75) = happyShift action_73
action_55 (31) = happyGoto action_74
action_55 (32) = happyGoto action_42
action_55 (33) = happyGoto action_43
action_55 (34) = happyGoto action_44
action_55 (36) = happyGoto action_45
action_55 (37) = happyGoto action_46
action_55 _ = happyFail

action_56 (42) = happyShift action_47
action_56 (43) = happyShift action_48
action_56 (44) = happyShift action_49
action_56 (45) = happyShift action_50
action_56 (46) = happyShift action_51
action_56 (47) = happyShift action_52
action_56 (75) = happyShift action_73
action_56 (33) = happyGoto action_72
action_56 (34) = happyGoto action_44
action_56 (36) = happyGoto action_45
action_56 (37) = happyGoto action_46
action_56 _ = happyFail

action_57 (47) = happyShift action_71
action_57 _ = happyFail

action_58 (47) = happyShift action_70
action_58 _ = happyFail

action_59 (47) = happyShift action_69
action_59 _ = happyFail

action_60 (42) = happyShift action_47
action_60 (43) = happyShift action_48
action_60 (44) = happyShift action_49
action_60 (45) = happyShift action_50
action_60 (46) = happyShift action_51
action_60 (47) = happyShift action_52
action_60 (52) = happyShift action_68
action_60 (64) = happyShift action_54
action_60 (65) = happyShift action_55
action_60 (69) = happyShift action_56
action_60 (75) = happyShift action_61
action_60 (22) = happyGoto action_66
action_60 (23) = happyGoto action_67
action_60 (24) = happyGoto action_34
action_60 (25) = happyGoto action_35
action_60 (26) = happyGoto action_36
action_60 (27) = happyGoto action_37
action_60 (28) = happyGoto action_38
action_60 (29) = happyGoto action_39
action_60 (30) = happyGoto action_40
action_60 (31) = happyGoto action_41
action_60 (32) = happyGoto action_42
action_60 (33) = happyGoto action_43
action_60 (34) = happyGoto action_44
action_60 (36) = happyGoto action_45
action_60 (37) = happyGoto action_46
action_60 _ = happyFail

action_61 (47) = happyShift action_62
action_61 (53) = happyShift action_63
action_61 (54) = happyShift action_64
action_61 (55) = happyShift action_65
action_61 _ = happyReduce_73

action_62 (42) = happyShift action_47
action_62 (43) = happyShift action_48
action_62 (44) = happyShift action_49
action_62 (45) = happyShift action_50
action_62 (46) = happyShift action_51
action_62 (47) = happyShift action_52
action_62 (64) = happyShift action_54
action_62 (65) = happyShift action_55
action_62 (69) = happyShift action_56
action_62 (75) = happyShift action_61
action_62 (22) = happyGoto action_128
action_62 (23) = happyGoto action_67
action_62 (24) = happyGoto action_34
action_62 (25) = happyGoto action_35
action_62 (26) = happyGoto action_36
action_62 (27) = happyGoto action_37
action_62 (28) = happyGoto action_38
action_62 (29) = happyGoto action_39
action_62 (30) = happyGoto action_40
action_62 (31) = happyGoto action_41
action_62 (32) = happyGoto action_42
action_62 (33) = happyGoto action_43
action_62 (34) = happyGoto action_44
action_62 (35) = happyGoto action_129
action_62 (36) = happyGoto action_45
action_62 (37) = happyGoto action_46
action_62 _ = happyReduce_72

action_63 (42) = happyShift action_47
action_63 (43) = happyShift action_48
action_63 (44) = happyShift action_49
action_63 (45) = happyShift action_50
action_63 (46) = happyShift action_51
action_63 (47) = happyShift action_52
action_63 (64) = happyShift action_54
action_63 (65) = happyShift action_55
action_63 (69) = happyShift action_56
action_63 (75) = happyShift action_73
action_63 (29) = happyGoto action_127
action_63 (30) = happyGoto action_40
action_63 (31) = happyGoto action_41
action_63 (32) = happyGoto action_42
action_63 (33) = happyGoto action_43
action_63 (34) = happyGoto action_44
action_63 (36) = happyGoto action_45
action_63 (37) = happyGoto action_46
action_63 _ = happyFail

action_64 _ = happyReduce_41

action_65 _ = happyReduce_42

action_66 (52) = happyShift action_126
action_66 _ = happyFail

action_67 _ = happyReduce_38

action_68 _ = happyReduce_30

action_69 (75) = happyShift action_125
action_69 (24) = happyGoto action_124
action_69 _ = happyFail

action_70 (42) = happyShift action_47
action_70 (43) = happyShift action_48
action_70 (44) = happyShift action_49
action_70 (45) = happyShift action_50
action_70 (46) = happyShift action_51
action_70 (47) = happyShift action_52
action_70 (64) = happyShift action_54
action_70 (65) = happyShift action_55
action_70 (69) = happyShift action_56
action_70 (75) = happyShift action_61
action_70 (22) = happyGoto action_123
action_70 (23) = happyGoto action_67
action_70 (24) = happyGoto action_34
action_70 (25) = happyGoto action_35
action_70 (26) = happyGoto action_36
action_70 (27) = happyGoto action_37
action_70 (28) = happyGoto action_38
action_70 (29) = happyGoto action_39
action_70 (30) = happyGoto action_40
action_70 (31) = happyGoto action_41
action_70 (32) = happyGoto action_42
action_70 (33) = happyGoto action_43
action_70 (34) = happyGoto action_44
action_70 (36) = happyGoto action_45
action_70 (37) = happyGoto action_46
action_70 _ = happyFail

action_71 (42) = happyShift action_47
action_71 (43) = happyShift action_48
action_71 (44) = happyShift action_49
action_71 (45) = happyShift action_50
action_71 (46) = happyShift action_51
action_71 (47) = happyShift action_52
action_71 (64) = happyShift action_54
action_71 (65) = happyShift action_55
action_71 (69) = happyShift action_56
action_71 (75) = happyShift action_61
action_71 (22) = happyGoto action_122
action_71 (23) = happyGoto action_67
action_71 (24) = happyGoto action_34
action_71 (25) = happyGoto action_35
action_71 (26) = happyGoto action_36
action_71 (27) = happyGoto action_37
action_71 (28) = happyGoto action_38
action_71 (29) = happyGoto action_39
action_71 (30) = happyGoto action_40
action_71 (31) = happyGoto action_41
action_71 (32) = happyGoto action_42
action_71 (33) = happyGoto action_43
action_71 (34) = happyGoto action_44
action_71 (36) = happyGoto action_45
action_71 (37) = happyGoto action_46
action_71 _ = happyFail

action_72 _ = happyReduce_66

action_73 (47) = happyShift action_62
action_73 _ = happyReduce_73

action_74 _ = happyReduce_64

action_75 _ = happyReduce_63

action_76 (50) = happyShift action_121
action_76 _ = happyFail

action_77 (48) = happyShift action_120
action_77 _ = happyFail

action_78 (48) = happyShift action_119
action_78 _ = happyFail

action_79 (48) = happyShift action_118
action_79 _ = happyFail

action_80 (48) = happyShift action_117
action_80 _ = happyFail

action_81 (42) = happyShift action_47
action_81 (43) = happyShift action_48
action_81 (44) = happyShift action_49
action_81 (45) = happyShift action_50
action_81 (46) = happyShift action_51
action_81 (47) = happyShift action_52
action_81 (64) = happyShift action_54
action_81 (65) = happyShift action_55
action_81 (69) = happyShift action_56
action_81 (75) = happyShift action_73
action_81 (31) = happyGoto action_116
action_81 (32) = happyGoto action_42
action_81 (33) = happyGoto action_43
action_81 (34) = happyGoto action_44
action_81 (36) = happyGoto action_45
action_81 (37) = happyGoto action_46
action_81 _ = happyFail

action_82 (42) = happyShift action_47
action_82 (43) = happyShift action_48
action_82 (44) = happyShift action_49
action_82 (45) = happyShift action_50
action_82 (46) = happyShift action_51
action_82 (47) = happyShift action_52
action_82 (64) = happyShift action_54
action_82 (65) = happyShift action_55
action_82 (69) = happyShift action_56
action_82 (75) = happyShift action_73
action_82 (31) = happyGoto action_115
action_82 (32) = happyGoto action_42
action_82 (33) = happyGoto action_43
action_82 (34) = happyGoto action_44
action_82 (36) = happyGoto action_45
action_82 (37) = happyGoto action_46
action_82 _ = happyFail

action_83 (42) = happyShift action_47
action_83 (43) = happyShift action_48
action_83 (44) = happyShift action_49
action_83 (45) = happyShift action_50
action_83 (46) = happyShift action_51
action_83 (47) = happyShift action_52
action_83 (64) = happyShift action_54
action_83 (65) = happyShift action_55
action_83 (69) = happyShift action_56
action_83 (75) = happyShift action_73
action_83 (31) = happyGoto action_114
action_83 (32) = happyGoto action_42
action_83 (33) = happyGoto action_43
action_83 (34) = happyGoto action_44
action_83 (36) = happyGoto action_45
action_83 (37) = happyGoto action_46
action_83 _ = happyFail

action_84 (42) = happyShift action_47
action_84 (43) = happyShift action_48
action_84 (44) = happyShift action_49
action_84 (45) = happyShift action_50
action_84 (46) = happyShift action_51
action_84 (47) = happyShift action_52
action_84 (64) = happyShift action_54
action_84 (65) = happyShift action_55
action_84 (69) = happyShift action_56
action_84 (75) = happyShift action_73
action_84 (30) = happyGoto action_113
action_84 (31) = happyGoto action_41
action_84 (32) = happyGoto action_42
action_84 (33) = happyGoto action_43
action_84 (34) = happyGoto action_44
action_84 (36) = happyGoto action_45
action_84 (37) = happyGoto action_46
action_84 _ = happyFail

action_85 (42) = happyShift action_47
action_85 (43) = happyShift action_48
action_85 (44) = happyShift action_49
action_85 (45) = happyShift action_50
action_85 (46) = happyShift action_51
action_85 (47) = happyShift action_52
action_85 (64) = happyShift action_54
action_85 (65) = happyShift action_55
action_85 (69) = happyShift action_56
action_85 (75) = happyShift action_73
action_85 (30) = happyGoto action_112
action_85 (31) = happyGoto action_41
action_85 (32) = happyGoto action_42
action_85 (33) = happyGoto action_43
action_85 (34) = happyGoto action_44
action_85 (36) = happyGoto action_45
action_85 (37) = happyGoto action_46
action_85 _ = happyFail

action_86 (42) = happyShift action_47
action_86 (43) = happyShift action_48
action_86 (44) = happyShift action_49
action_86 (45) = happyShift action_50
action_86 (46) = happyShift action_51
action_86 (47) = happyShift action_52
action_86 (64) = happyShift action_54
action_86 (65) = happyShift action_55
action_86 (69) = happyShift action_56
action_86 (75) = happyShift action_73
action_86 (29) = happyGoto action_111
action_86 (30) = happyGoto action_40
action_86 (31) = happyGoto action_41
action_86 (32) = happyGoto action_42
action_86 (33) = happyGoto action_43
action_86 (34) = happyGoto action_44
action_86 (36) = happyGoto action_45
action_86 (37) = happyGoto action_46
action_86 _ = happyFail

action_87 (42) = happyShift action_47
action_87 (43) = happyShift action_48
action_87 (44) = happyShift action_49
action_87 (45) = happyShift action_50
action_87 (46) = happyShift action_51
action_87 (47) = happyShift action_52
action_87 (64) = happyShift action_54
action_87 (65) = happyShift action_55
action_87 (69) = happyShift action_56
action_87 (75) = happyShift action_73
action_87 (29) = happyGoto action_110
action_87 (30) = happyGoto action_40
action_87 (31) = happyGoto action_41
action_87 (32) = happyGoto action_42
action_87 (33) = happyGoto action_43
action_87 (34) = happyGoto action_44
action_87 (36) = happyGoto action_45
action_87 (37) = happyGoto action_46
action_87 _ = happyFail

action_88 (42) = happyShift action_47
action_88 (43) = happyShift action_48
action_88 (44) = happyShift action_49
action_88 (45) = happyShift action_50
action_88 (46) = happyShift action_51
action_88 (47) = happyShift action_52
action_88 (64) = happyShift action_54
action_88 (65) = happyShift action_55
action_88 (69) = happyShift action_56
action_88 (75) = happyShift action_73
action_88 (29) = happyGoto action_109
action_88 (30) = happyGoto action_40
action_88 (31) = happyGoto action_41
action_88 (32) = happyGoto action_42
action_88 (33) = happyGoto action_43
action_88 (34) = happyGoto action_44
action_88 (36) = happyGoto action_45
action_88 (37) = happyGoto action_46
action_88 _ = happyFail

action_89 (42) = happyShift action_47
action_89 (43) = happyShift action_48
action_89 (44) = happyShift action_49
action_89 (45) = happyShift action_50
action_89 (46) = happyShift action_51
action_89 (47) = happyShift action_52
action_89 (64) = happyShift action_54
action_89 (65) = happyShift action_55
action_89 (69) = happyShift action_56
action_89 (75) = happyShift action_73
action_89 (29) = happyGoto action_108
action_89 (30) = happyGoto action_40
action_89 (31) = happyGoto action_41
action_89 (32) = happyGoto action_42
action_89 (33) = happyGoto action_43
action_89 (34) = happyGoto action_44
action_89 (36) = happyGoto action_45
action_89 (37) = happyGoto action_46
action_89 _ = happyFail

action_90 (42) = happyShift action_47
action_90 (43) = happyShift action_48
action_90 (44) = happyShift action_49
action_90 (45) = happyShift action_50
action_90 (46) = happyShift action_51
action_90 (47) = happyShift action_52
action_90 (64) = happyShift action_54
action_90 (65) = happyShift action_55
action_90 (69) = happyShift action_56
action_90 (75) = happyShift action_73
action_90 (28) = happyGoto action_107
action_90 (29) = happyGoto action_39
action_90 (30) = happyGoto action_40
action_90 (31) = happyGoto action_41
action_90 (32) = happyGoto action_42
action_90 (33) = happyGoto action_43
action_90 (34) = happyGoto action_44
action_90 (36) = happyGoto action_45
action_90 (37) = happyGoto action_46
action_90 _ = happyFail

action_91 (42) = happyShift action_47
action_91 (43) = happyShift action_48
action_91 (44) = happyShift action_49
action_91 (45) = happyShift action_50
action_91 (46) = happyShift action_51
action_91 (47) = happyShift action_52
action_91 (64) = happyShift action_54
action_91 (65) = happyShift action_55
action_91 (69) = happyShift action_56
action_91 (75) = happyShift action_73
action_91 (28) = happyGoto action_106
action_91 (29) = happyGoto action_39
action_91 (30) = happyGoto action_40
action_91 (31) = happyGoto action_41
action_91 (32) = happyGoto action_42
action_91 (33) = happyGoto action_43
action_91 (34) = happyGoto action_44
action_91 (36) = happyGoto action_45
action_91 (37) = happyGoto action_46
action_91 _ = happyFail

action_92 (42) = happyShift action_47
action_92 (43) = happyShift action_48
action_92 (44) = happyShift action_49
action_92 (45) = happyShift action_50
action_92 (46) = happyShift action_51
action_92 (47) = happyShift action_52
action_92 (64) = happyShift action_54
action_92 (65) = happyShift action_55
action_92 (69) = happyShift action_56
action_92 (75) = happyShift action_73
action_92 (27) = happyGoto action_105
action_92 (28) = happyGoto action_38
action_92 (29) = happyGoto action_39
action_92 (30) = happyGoto action_40
action_92 (31) = happyGoto action_41
action_92 (32) = happyGoto action_42
action_92 (33) = happyGoto action_43
action_92 (34) = happyGoto action_44
action_92 (36) = happyGoto action_45
action_92 (37) = happyGoto action_46
action_92 _ = happyFail

action_93 (42) = happyShift action_47
action_93 (43) = happyShift action_48
action_93 (44) = happyShift action_49
action_93 (45) = happyShift action_50
action_93 (46) = happyShift action_51
action_93 (47) = happyShift action_52
action_93 (64) = happyShift action_54
action_93 (65) = happyShift action_55
action_93 (69) = happyShift action_56
action_93 (75) = happyShift action_73
action_93 (26) = happyGoto action_104
action_93 (27) = happyGoto action_37
action_93 (28) = happyGoto action_38
action_93 (29) = happyGoto action_39
action_93 (30) = happyGoto action_40
action_93 (31) = happyGoto action_41
action_93 (32) = happyGoto action_42
action_93 (33) = happyGoto action_43
action_93 (34) = happyGoto action_44
action_93 (36) = happyGoto action_45
action_93 (37) = happyGoto action_46
action_93 _ = happyFail

action_94 _ = happyReduce_25

action_95 _ = happyReduce_32

action_96 (52) = happyShift action_103
action_96 _ = happyFail

action_97 (51) = happyShift action_102
action_97 _ = happyReduce_21

action_98 (53) = happyShift action_101
action_98 _ = happyReduce_23

action_99 _ = happyReduce_4

action_100 _ = happyReduce_18

action_101 (42) = happyShift action_47
action_101 (43) = happyShift action_48
action_101 (44) = happyShift action_49
action_101 (45) = happyShift action_50
action_101 (46) = happyShift action_51
action_101 (47) = happyShift action_52
action_101 (64) = happyShift action_54
action_101 (65) = happyShift action_55
action_101 (69) = happyShift action_56
action_101 (75) = happyShift action_61
action_101 (22) = happyGoto action_139
action_101 (23) = happyGoto action_67
action_101 (24) = happyGoto action_34
action_101 (25) = happyGoto action_35
action_101 (26) = happyGoto action_36
action_101 (27) = happyGoto action_37
action_101 (28) = happyGoto action_38
action_101 (29) = happyGoto action_39
action_101 (30) = happyGoto action_40
action_101 (31) = happyGoto action_41
action_101 (32) = happyGoto action_42
action_101 (33) = happyGoto action_43
action_101 (34) = happyGoto action_44
action_101 (36) = happyGoto action_45
action_101 (37) = happyGoto action_46
action_101 _ = happyFail

action_102 (75) = happyShift action_98
action_102 (13) = happyGoto action_138
action_102 (14) = happyGoto action_97
action_102 _ = happyFail

action_103 _ = happyReduce_20

action_104 (57) = happyShift action_92
action_104 _ = happyReduce_44

action_105 (58) = happyShift action_90
action_105 (59) = happyShift action_91
action_105 _ = happyReduce_46

action_106 (60) = happyShift action_86
action_106 (61) = happyShift action_87
action_106 (62) = happyShift action_88
action_106 (63) = happyShift action_89
action_106 _ = happyReduce_49

action_107 (60) = happyShift action_86
action_107 (61) = happyShift action_87
action_107 (62) = happyShift action_88
action_107 (63) = happyShift action_89
action_107 _ = happyReduce_48

action_108 (64) = happyShift action_84
action_108 (65) = happyShift action_85
action_108 _ = happyReduce_54

action_109 (64) = happyShift action_84
action_109 (65) = happyShift action_85
action_109 _ = happyReduce_53

action_110 (64) = happyShift action_84
action_110 (65) = happyShift action_85
action_110 _ = happyReduce_52

action_111 (64) = happyShift action_84
action_111 (65) = happyShift action_85
action_111 _ = happyReduce_51

action_112 (66) = happyShift action_81
action_112 (67) = happyShift action_82
action_112 (68) = happyShift action_83
action_112 _ = happyReduce_57

action_113 (66) = happyShift action_81
action_113 (67) = happyShift action_82
action_113 (68) = happyShift action_83
action_113 _ = happyReduce_56

action_114 _ = happyReduce_59

action_115 _ = happyReduce_61

action_116 _ = happyReduce_60

action_117 (42) = happyShift action_47
action_117 (43) = happyShift action_48
action_117 (44) = happyShift action_49
action_117 (45) = happyShift action_50
action_117 (46) = happyShift action_51
action_117 (47) = happyShift action_52
action_117 (69) = happyShift action_56
action_117 (75) = happyShift action_73
action_117 (32) = happyGoto action_137
action_117 (33) = happyGoto action_43
action_117 (34) = happyGoto action_44
action_117 (36) = happyGoto action_45
action_117 (37) = happyGoto action_46
action_117 _ = happyFail

action_118 (42) = happyShift action_47
action_118 (43) = happyShift action_48
action_118 (44) = happyShift action_49
action_118 (45) = happyShift action_50
action_118 (46) = happyShift action_51
action_118 (47) = happyShift action_52
action_118 (69) = happyShift action_56
action_118 (75) = happyShift action_73
action_118 (32) = happyGoto action_136
action_118 (33) = happyGoto action_43
action_118 (34) = happyGoto action_44
action_118 (36) = happyGoto action_45
action_118 (37) = happyGoto action_46
action_118 _ = happyFail

action_119 (42) = happyShift action_47
action_119 (43) = happyShift action_48
action_119 (44) = happyShift action_49
action_119 (45) = happyShift action_50
action_119 (46) = happyShift action_51
action_119 (47) = happyShift action_52
action_119 (69) = happyShift action_56
action_119 (75) = happyShift action_73
action_119 (32) = happyGoto action_135
action_119 (33) = happyGoto action_43
action_119 (34) = happyGoto action_44
action_119 (36) = happyGoto action_45
action_119 (37) = happyGoto action_46
action_119 _ = happyFail

action_120 _ = happyReduce_75

action_121 _ = happyReduce_17

action_122 (48) = happyShift action_134
action_122 _ = happyFail

action_123 (48) = happyShift action_133
action_123 _ = happyFail

action_124 (52) = happyShift action_132
action_124 _ = happyFail

action_125 (53) = happyShift action_63
action_125 (54) = happyShift action_64
action_125 (55) = happyShift action_65
action_125 _ = happyFail

action_126 _ = happyReduce_31

action_127 (64) = happyShift action_84
action_127 (65) = happyShift action_85
action_127 _ = happyReduce_40

action_128 (51) = happyShift action_131
action_128 _ = happyReduce_70

action_129 (48) = happyShift action_130
action_129 _ = happyFail

action_130 _ = happyReduce_69

action_131 (42) = happyShift action_47
action_131 (43) = happyShift action_48
action_131 (44) = happyShift action_49
action_131 (45) = happyShift action_50
action_131 (46) = happyShift action_51
action_131 (47) = happyShift action_52
action_131 (64) = happyShift action_54
action_131 (65) = happyShift action_55
action_131 (69) = happyShift action_56
action_131 (75) = happyShift action_61
action_131 (22) = happyGoto action_128
action_131 (23) = happyGoto action_67
action_131 (24) = happyGoto action_34
action_131 (25) = happyGoto action_35
action_131 (26) = happyGoto action_36
action_131 (27) = happyGoto action_37
action_131 (28) = happyGoto action_38
action_131 (29) = happyGoto action_39
action_131 (30) = happyGoto action_40
action_131 (31) = happyGoto action_41
action_131 (32) = happyGoto action_42
action_131 (33) = happyGoto action_43
action_131 (34) = happyGoto action_44
action_131 (35) = happyGoto action_143
action_131 (36) = happyGoto action_45
action_131 (37) = happyGoto action_46
action_131 _ = happyReduce_72

action_132 (42) = happyShift action_47
action_132 (43) = happyShift action_48
action_132 (44) = happyShift action_49
action_132 (45) = happyShift action_50
action_132 (46) = happyShift action_51
action_132 (47) = happyShift action_52
action_132 (64) = happyShift action_54
action_132 (65) = happyShift action_55
action_132 (69) = happyShift action_56
action_132 (75) = happyShift action_61
action_132 (22) = happyGoto action_142
action_132 (23) = happyGoto action_67
action_132 (24) = happyGoto action_34
action_132 (25) = happyGoto action_35
action_132 (26) = happyGoto action_36
action_132 (27) = happyGoto action_37
action_132 (28) = happyGoto action_38
action_132 (29) = happyGoto action_39
action_132 (30) = happyGoto action_40
action_132 (31) = happyGoto action_41
action_132 (32) = happyGoto action_42
action_132 (33) = happyGoto action_43
action_132 (34) = happyGoto action_44
action_132 (36) = happyGoto action_45
action_132 (37) = happyGoto action_46
action_132 _ = happyFail

action_133 (38) = happyShift action_5
action_133 (39) = happyShift action_6
action_133 (40) = happyShift action_7
action_133 (41) = happyShift action_8
action_133 (42) = happyShift action_47
action_133 (43) = happyShift action_48
action_133 (44) = happyShift action_49
action_133 (45) = happyShift action_50
action_133 (46) = happyShift action_51
action_133 (47) = happyShift action_52
action_133 (49) = happyShift action_53
action_133 (64) = happyShift action_54
action_133 (65) = happyShift action_55
action_133 (69) = happyShift action_56
action_133 (70) = happyShift action_57
action_133 (72) = happyShift action_58
action_133 (73) = happyShift action_59
action_133 (74) = happyShift action_60
action_133 (75) = happyShift action_61
action_133 (9) = happyGoto action_141
action_133 (10) = happyGoto action_22
action_133 (12) = happyGoto action_24
action_133 (15) = happyGoto action_25
action_133 (16) = happyGoto action_26
action_133 (17) = happyGoto action_27
action_133 (18) = happyGoto action_28
action_133 (19) = happyGoto action_29
action_133 (20) = happyGoto action_30
action_133 (21) = happyGoto action_31
action_133 (22) = happyGoto action_32
action_133 (23) = happyGoto action_33
action_133 (24) = happyGoto action_34
action_133 (25) = happyGoto action_35
action_133 (26) = happyGoto action_36
action_133 (27) = happyGoto action_37
action_133 (28) = happyGoto action_38
action_133 (29) = happyGoto action_39
action_133 (30) = happyGoto action_40
action_133 (31) = happyGoto action_41
action_133 (32) = happyGoto action_42
action_133 (33) = happyGoto action_43
action_133 (34) = happyGoto action_44
action_133 (36) = happyGoto action_45
action_133 (37) = happyGoto action_46
action_133 _ = happyFail

action_134 (38) = happyShift action_5
action_134 (39) = happyShift action_6
action_134 (40) = happyShift action_7
action_134 (41) = happyShift action_8
action_134 (42) = happyShift action_47
action_134 (43) = happyShift action_48
action_134 (44) = happyShift action_49
action_134 (45) = happyShift action_50
action_134 (46) = happyShift action_51
action_134 (47) = happyShift action_52
action_134 (49) = happyShift action_53
action_134 (64) = happyShift action_54
action_134 (65) = happyShift action_55
action_134 (69) = happyShift action_56
action_134 (70) = happyShift action_57
action_134 (72) = happyShift action_58
action_134 (73) = happyShift action_59
action_134 (74) = happyShift action_60
action_134 (75) = happyShift action_61
action_134 (9) = happyGoto action_140
action_134 (10) = happyGoto action_22
action_134 (12) = happyGoto action_24
action_134 (15) = happyGoto action_25
action_134 (16) = happyGoto action_26
action_134 (17) = happyGoto action_27
action_134 (18) = happyGoto action_28
action_134 (19) = happyGoto action_29
action_134 (20) = happyGoto action_30
action_134 (21) = happyGoto action_31
action_134 (22) = happyGoto action_32
action_134 (23) = happyGoto action_33
action_134 (24) = happyGoto action_34
action_134 (25) = happyGoto action_35
action_134 (26) = happyGoto action_36
action_134 (27) = happyGoto action_37
action_134 (28) = happyGoto action_38
action_134 (29) = happyGoto action_39
action_134 (30) = happyGoto action_40
action_134 (31) = happyGoto action_41
action_134 (32) = happyGoto action_42
action_134 (33) = happyGoto action_43
action_134 (34) = happyGoto action_44
action_134 (36) = happyGoto action_45
action_134 (37) = happyGoto action_46
action_134 _ = happyFail

action_135 _ = happyReduce_77

action_136 _ = happyReduce_78

action_137 _ = happyReduce_76

action_138 _ = happyReduce_22

action_139 _ = happyReduce_24

action_140 (71) = happyShift action_145
action_140 _ = happyReduce_26

action_141 _ = happyReduce_28

action_142 (52) = happyShift action_144
action_142 _ = happyFail

action_143 _ = happyReduce_71

action_144 (75) = happyShift action_125
action_144 (24) = happyGoto action_147
action_144 _ = happyFail

action_145 (38) = happyShift action_5
action_145 (39) = happyShift action_6
action_145 (40) = happyShift action_7
action_145 (41) = happyShift action_8
action_145 (42) = happyShift action_47
action_145 (43) = happyShift action_48
action_145 (44) = happyShift action_49
action_145 (45) = happyShift action_50
action_145 (46) = happyShift action_51
action_145 (47) = happyShift action_52
action_145 (49) = happyShift action_53
action_145 (64) = happyShift action_54
action_145 (65) = happyShift action_55
action_145 (69) = happyShift action_56
action_145 (70) = happyShift action_57
action_145 (72) = happyShift action_58
action_145 (73) = happyShift action_59
action_145 (74) = happyShift action_60
action_145 (75) = happyShift action_61
action_145 (9) = happyGoto action_146
action_145 (10) = happyGoto action_22
action_145 (12) = happyGoto action_24
action_145 (15) = happyGoto action_25
action_145 (16) = happyGoto action_26
action_145 (17) = happyGoto action_27
action_145 (18) = happyGoto action_28
action_145 (19) = happyGoto action_29
action_145 (20) = happyGoto action_30
action_145 (21) = happyGoto action_31
action_145 (22) = happyGoto action_32
action_145 (23) = happyGoto action_33
action_145 (24) = happyGoto action_34
action_145 (25) = happyGoto action_35
action_145 (26) = happyGoto action_36
action_145 (27) = happyGoto action_37
action_145 (28) = happyGoto action_38
action_145 (29) = happyGoto action_39
action_145 (30) = happyGoto action_40
action_145 (31) = happyGoto action_41
action_145 (32) = happyGoto action_42
action_145 (33) = happyGoto action_43
action_145 (34) = happyGoto action_44
action_145 (36) = happyGoto action_45
action_145 (37) = happyGoto action_46
action_145 _ = happyFail

action_146 _ = happyReduce_27

action_147 (48) = happyShift action_148
action_147 _ = happyFail

action_148 (38) = happyShift action_5
action_148 (39) = happyShift action_6
action_148 (40) = happyShift action_7
action_148 (41) = happyShift action_8
action_148 (42) = happyShift action_47
action_148 (43) = happyShift action_48
action_148 (44) = happyShift action_49
action_148 (45) = happyShift action_50
action_148 (46) = happyShift action_51
action_148 (47) = happyShift action_52
action_148 (49) = happyShift action_53
action_148 (64) = happyShift action_54
action_148 (65) = happyShift action_55
action_148 (69) = happyShift action_56
action_148 (70) = happyShift action_57
action_148 (72) = happyShift action_58
action_148 (73) = happyShift action_59
action_148 (74) = happyShift action_60
action_148 (75) = happyShift action_61
action_148 (9) = happyGoto action_149
action_148 (10) = happyGoto action_22
action_148 (12) = happyGoto action_24
action_148 (15) = happyGoto action_25
action_148 (16) = happyGoto action_26
action_148 (17) = happyGoto action_27
action_148 (18) = happyGoto action_28
action_148 (19) = happyGoto action_29
action_148 (20) = happyGoto action_30
action_148 (21) = happyGoto action_31
action_148 (22) = happyGoto action_32
action_148 (23) = happyGoto action_33
action_148 (24) = happyGoto action_34
action_148 (25) = happyGoto action_35
action_148 (26) = happyGoto action_36
action_148 (27) = happyGoto action_37
action_148 (28) = happyGoto action_38
action_148 (29) = happyGoto action_39
action_148 (30) = happyGoto action_40
action_148 (31) = happyGoto action_41
action_148 (32) = happyGoto action_42
action_148 (33) = happyGoto action_43
action_148 (34) = happyGoto action_44
action_148 (36) = happyGoto action_45
action_148 (37) = happyGoto action_46
action_148 _ = happyFail

action_149 _ = happyReduce_29

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

happyReduce_4 = happyReduce 8 6 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	(HappyAbsSyn21  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Pos (getPos happy_var_1) $ Function (unIdent happy_var_2) happy_var_1 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  7 happyReduction_5
happyReduction_5 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([ happy_var_1 ]
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  7 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 : happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_0  7 happyReduction_7
happyReduction_7  =  HappyAbsSyn7
		 ([]
	)

happyReduce_8 = happySpecReduce_2  8 happyReduction_8
happyReduction_8 (HappyTerminal happy_var_2)
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn8
		 (((unIdent happy_var_2), happy_var_1)
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  9 happyReduction_9
happyReduction_9 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  9 happyReduction_10
happyReduction_10 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  9 happyReduction_11
happyReduction_11 (HappyAbsSyn15  happy_var_1)
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

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn11  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn10
		 (Pos (getPos happy_var_1) $ StmtList happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  11 happyReduction_18
happyReduction_18 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 : happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_0  11 happyReduction_19
happyReduction_19  =  HappyAbsSyn11
		 ([]
	)

happyReduce_20 = happySpecReduce_3  12 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn12
		 (Pos (getPos happy_var_1) $ StmtVarsDecl happy_var_1 happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  13 happyReduction_21
happyReduction_21 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 ([ happy_var_1 ]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  13 happyReduction_22
happyReduction_22 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 : happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  14 happyReduction_23
happyReduction_23 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn14
		 (Pos (getPos happy_var_1) $ Decl (unIdent happy_var_1) Nothing
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  14 happyReduction_24
happyReduction_24 (HappyAbsSyn22  happy_var_3)
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn14
		 (Pos (getPos happy_var_1) $ Decl (unIdent happy_var_1) (Just happy_var_3)
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  15 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn15
		 (Pos (getPos happy_var_1) $ StmtAssig happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 5 16 happyReduction_26
happyReduction_26 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Pos (getPos happy_var_1) $ StmtIf happy_var_3 happy_var_5 $ Pos (getPos happy_var_1) StmtEmpty
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 7 16 happyReduction_27
happyReduction_27 ((HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Pos (getPos happy_var_1) $ StmtIf happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 5 17 happyReduction_28
happyReduction_28 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Pos (getPos happy_var_1) $ StmtWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 9 18 happyReduction_29
happyReduction_29 ((HappyAbsSyn9  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn24  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn24  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (Pos (getPos happy_var_1) $ StmtFor happy_var_3 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_2  19 happyReduction_30
happyReduction_30 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn19
		 (Pos (getPos happy_var_1) $ StmtReturn Nothing
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  19 happyReduction_31
happyReduction_31 _
	(HappyAbsSyn22  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn19
		 (Pos (getPos happy_var_1) $ StmtReturn (Just happy_var_2)
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  20 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn20
		 (Pos (getPos happy_var_1) $ StmtExp happy_var_1
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  21 happyReduction_33
happyReduction_33 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn21
		 (Pos (getPos happy_var_1) TypeInt
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  21 happyReduction_34
happyReduction_34 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn21
		 (Pos (getPos happy_var_1) TypeDouble
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  21 happyReduction_35
happyReduction_35 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn21
		 (Pos (getPos happy_var_1) TypeBoolean
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  21 happyReduction_36
happyReduction_36 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn21
		 (Pos (getPos happy_var_1) TypeVoid
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  22 happyReduction_37
happyReduction_37 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  22 happyReduction_38
happyReduction_38 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn22
		 (Pos (getPos happy_var_1) $ ExpAssig happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  23 happyReduction_39
happyReduction_39 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  24 happyReduction_40
happyReduction_40 (HappyAbsSyn29  happy_var_3)
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn24
		 (Pos (getPos happy_var_1) $ AssigEq (unIdent happy_var_1) happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  24 happyReduction_41
happyReduction_41 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn24
		 (Pos (getPos happy_var_1) $ AssigInc (unIdent happy_var_1)
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  24 happyReduction_42
happyReduction_42 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn24
		 (Pos (getPos happy_var_1) $ AssigDec (unIdent happy_var_1)
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  25 happyReduction_43
happyReduction_43 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  25 happyReduction_44
happyReduction_44 (HappyAbsSyn26  happy_var_3)
	_
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn25
		 (Pos (getPos happy_var_1) $ ExpBinaryOp BoolOr happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  26 happyReduction_45
happyReduction_45 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  26 happyReduction_46
happyReduction_46 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (Pos (getPos happy_var_1) $ ExpBinaryOp BoolAnd happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  27 happyReduction_47
happyReduction_47 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 (happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  27 happyReduction_48
happyReduction_48 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (Pos (getPos happy_var_1) $ ExpBinaryOp ComperEq happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  27 happyReduction_49
happyReduction_49 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (Pos (getPos happy_var_1) $ ExpBinaryOp ComperNotEq happy_var_1 happy_var_3
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
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Pos (getPos happy_var_1) $ ExpBinaryOp RelaLe happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  28 happyReduction_52
happyReduction_52 (HappyAbsSyn29  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Pos (getPos happy_var_1) $ ExpBinaryOp RelaGt happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  28 happyReduction_53
happyReduction_53 (HappyAbsSyn29  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Pos (getPos happy_var_1) $ ExpBinaryOp RelaLeEq happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  28 happyReduction_54
happyReduction_54 (HappyAbsSyn29  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Pos (getPos happy_var_1) $ ExpBinaryOp RelaGtEq happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  29 happyReduction_55
happyReduction_55 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  29 happyReduction_56
happyReduction_56 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (Pos (getPos happy_var_1) $ ExpBinaryOp AddiPlus happy_var_1 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  29 happyReduction_57
happyReduction_57 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (Pos (getPos happy_var_1) $ ExpBinaryOp AddiMinus happy_var_1 happy_var_3
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
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (Pos (getPos happy_var_1) $ ExpBinaryOp MultiMulti happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  30 happyReduction_60
happyReduction_60 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (Pos (getPos happy_var_1) $ ExpBinaryOp MultiDiv happy_var_1 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  30 happyReduction_61
happyReduction_61 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (Pos (getPos happy_var_1) $ ExpBinaryOp MultiMod happy_var_1 happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  31 happyReduction_62
happyReduction_62 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_2  31 happyReduction_63
happyReduction_63 (HappyAbsSyn31  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn31
		 (Pos (getPos happy_var_1) $ ExpUnaryOp UnaryPlus happy_var_2
	)
happyReduction_63 _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_2  31 happyReduction_64
happyReduction_64 (HappyAbsSyn31  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn31
		 (Pos (getPos happy_var_1) $ ExpUnaryOp UnaryMinus happy_var_2
	)
happyReduction_64 _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  32 happyReduction_65
happyReduction_65 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_2  32 happyReduction_66
happyReduction_66 (HappyAbsSyn33  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn32
		 (Pos (getPos happy_var_1) $ ExpUnaryOp UnaryNot happy_var_2
	)
happyReduction_66 _ _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  33 happyReduction_67
happyReduction_67 (HappyAbsSyn36  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  33 happyReduction_68
happyReduction_68 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happyReduce 4 34 happyReduction_69
happyReduction_69 (_ `HappyStk`
	(HappyAbsSyn35  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn34
		 (Pos (getPos happy_var_1) $ ExpCallFunc (unIdent happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_70 = happySpecReduce_1  35 happyReduction_70
happyReduction_70 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn35
		 ([ happy_var_1 ]
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_3  35 happyReduction_71
happyReduction_71 (HappyAbsSyn35  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn35
		 (happy_var_1 : happy_var_3
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_0  35 happyReduction_72
happyReduction_72  =  HappyAbsSyn35
		 ([]
	)

happyReduce_73 = happySpecReduce_1  36 happyReduction_73
happyReduction_73 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn36
		 (Pos (getPos happy_var_1) $ ExpVar (unIdent happy_var_1)
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_1  36 happyReduction_74
happyReduction_74 (HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn36
		 (happy_var_1
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_3  36 happyReduction_75
happyReduction_75 _
	(HappyAbsSyn22  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn36
		 (Pos (getPos happy_var_1) $ ExpExp happy_var_2
	)
happyReduction_75 _ _ _  = notHappyAtAll 

happyReduce_76 = happyReduce 4 36 happyReduction_76
happyReduction_76 ((HappyAbsSyn32  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn36
		 (Pos (getPos happy_var_1) $ ExpCast ToBoolean happy_var_4
	) `HappyStk` happyRest

happyReduce_77 = happyReduce 4 36 happyReduction_77
happyReduction_77 ((HappyAbsSyn32  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn36
		 (Pos (getPos happy_var_1) $ ExpCast ToInt happy_var_4
	) `HappyStk` happyRest

happyReduce_78 = happyReduce 4 36 happyReduction_78
happyReduction_78 ((HappyAbsSyn32  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn36
		 (Pos (getPos happy_var_1) $ ExpCast ToDouble happy_var_4
	) `HappyStk` happyRest

happyReduce_79 = happySpecReduce_1  37 happyReduction_79
happyReduction_79 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (Pos (getPos happy_var_1) $ ExpInt (unInt happy_var_1)
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_1  37 happyReduction_80
happyReduction_80 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (Pos (getPos happy_var_1) $ ExpDouble (unDouble happy_var_1)
	)
happyReduction_80 _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_1  37 happyReduction_81
happyReduction_81 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (Pos (getPos happy_var_1) $ ExpString (unString happy_var_1)
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_1  37 happyReduction_82
happyReduction_82 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (Pos (getPos happy_var_1) ExpFalse
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_1  37 happyReduction_83
happyReduction_83 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (Pos (getPos happy_var_1) ExpTrue
	)
happyReduction_83 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 76 76 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Pos _ TInt -> cont 38;
	Pos _ TDouble -> cont 39;
	Pos _ TBoolean -> cont 40;
	Pos _ TVoid -> cont 41;
	Pos _ TFalseLiteral -> cont 42;
	Pos _ TTrueLiteral -> cont 43;
	Pos _ (TIntLiteral _) -> cont 44;
	Pos _ (TDoubleLiteral _) -> cont 45;
	Pos _ (TStringLiteral _) -> cont 46;
	Pos _ TLeftParen -> cont 47;
	Pos _ TRightParen -> cont 48;
	Pos _ TLeftBrace -> cont 49;
	Pos _ TRightBrace -> cont 50;
	Pos _ TComma -> cont 51;
	Pos _ TSemicolon -> cont 52;
	Pos _ TAssignSign -> cont 53;
	Pos _ TIncrement -> cont 54;
	Pos _ TDecrement -> cont 55;
	Pos _ TOr -> cont 56;
	Pos _ TAnd -> cont 57;
	Pos _ TEqualsSign -> cont 58;
	Pos _ TNotEqualsSign -> cont 59;
	Pos _ TLessSign -> cont 60;
	Pos _ TGreaterSign -> cont 61;
	Pos _ TLeOrEqSign -> cont 62;
	Pos _ TGrOrEqSign -> cont 63;
	Pos _ TPlusSign -> cont 64;
	Pos _ TMinusSign -> cont 65;
	Pos _ TDivSign -> cont 66;
	Pos _ TModSign -> cont 67;
	Pos _ TMultiSign -> cont 68;
	Pos _ TNot -> cont 69;
	Pos _ TIf -> cont 70;
	Pos _ TElse -> cont 71;
	Pos _ TWhile -> cont 72;
	Pos _ TFor -> cont 73;
	Pos _ TReturn -> cont 74;
	Pos _ (TIdent _) -> cont 75;
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

data Function = Function PosIdent PosType [(PosIdent, PosType)] [PosStmt]
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

data Decl = Decl PosIdent (Maybe PosExp)
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
		| ExpVar PosIdent
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

data Assig = AssigEq PosIdent PosExp
		| AssigInc PosIdent
		| AssigDec PosIdent
		deriving (Show, Eq)

type PosAssig = Pos Assig


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
