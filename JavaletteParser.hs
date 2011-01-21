{-# OPTIONS_GHC -fno-warn-overlapping-patterns #-}
module JavaletteParser where
import JavaletteLexer

-- parser produced by Happy Version 1.18.5

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35
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

action_0 (36) = happyShift action_5
action_0 (37) = happyShift action_6
action_0 (38) = happyShift action_7
action_0 (39) = happyShift action_8
action_0 (4) = happyGoto action_9
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (22) = happyGoto action_4
action_0 _ = happyReduce_3

action_1 (36) = happyShift action_5
action_1 (37) = happyShift action_6
action_1 (38) = happyShift action_7
action_1 (39) = happyShift action_8
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (22) = happyGoto action_4
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 (36) = happyShift action_5
action_3 (37) = happyShift action_6
action_3 (38) = happyShift action_7
action_3 (39) = happyShift action_8
action_3 (5) = happyGoto action_11
action_3 (6) = happyGoto action_3
action_3 (22) = happyGoto action_4
action_3 _ = happyReduce_3

action_4 (73) = happyShift action_10
action_4 _ = happyFail

action_5 _ = happyReduce_36

action_6 _ = happyReduce_37

action_7 _ = happyReduce_38

action_8 _ = happyReduce_39

action_9 (74) = happyAccept
action_9 _ = happyFail

action_10 (45) = happyShift action_12
action_10 _ = happyFail

action_11 _ = happyReduce_2

action_12 (36) = happyShift action_5
action_12 (37) = happyShift action_6
action_12 (38) = happyShift action_7
action_12 (39) = happyShift action_8
action_12 (7) = happyGoto action_13
action_12 (8) = happyGoto action_14
action_12 (22) = happyGoto action_15
action_12 _ = happyReduce_7

action_13 (46) = happyShift action_18
action_13 _ = happyFail

action_14 (49) = happyShift action_17
action_14 _ = happyReduce_5

action_15 (73) = happyShift action_16
action_15 _ = happyFail

action_16 _ = happyReduce_8

action_17 (36) = happyShift action_5
action_17 (37) = happyShift action_6
action_17 (38) = happyShift action_7
action_17 (39) = happyShift action_8
action_17 (7) = happyGoto action_20
action_17 (8) = happyGoto action_14
action_17 (22) = happyGoto action_15
action_17 _ = happyReduce_7

action_18 (47) = happyShift action_19
action_18 _ = happyFail

action_19 (36) = happyShift action_5
action_19 (37) = happyShift action_6
action_19 (38) = happyShift action_7
action_19 (39) = happyShift action_8
action_19 (40) = happyShift action_45
action_19 (41) = happyShift action_46
action_19 (42) = happyShift action_47
action_19 (43) = happyShift action_48
action_19 (44) = happyShift action_49
action_19 (45) = happyShift action_50
action_19 (47) = happyShift action_51
action_19 (62) = happyShift action_52
action_19 (63) = happyShift action_53
action_19 (67) = happyShift action_54
action_19 (68) = happyShift action_55
action_19 (70) = happyShift action_56
action_19 (71) = happyShift action_57
action_19 (72) = happyShift action_58
action_19 (73) = happyShift action_59
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
action_19 (34) = happyGoto action_43
action_19 (35) = happyGoto action_44
action_19 _ = happyReduce_19

action_20 _ = happyReduce_6

action_21 (36) = happyShift action_5
action_21 (37) = happyShift action_6
action_21 (38) = happyShift action_7
action_21 (39) = happyShift action_8
action_21 (40) = happyShift action_45
action_21 (41) = happyShift action_46
action_21 (42) = happyShift action_47
action_21 (43) = happyShift action_48
action_21 (44) = happyShift action_49
action_21 (45) = happyShift action_50
action_21 (47) = happyShift action_51
action_21 (62) = happyShift action_52
action_21 (63) = happyShift action_53
action_21 (67) = happyShift action_54
action_21 (68) = happyShift action_55
action_21 (70) = happyShift action_56
action_21 (71) = happyShift action_57
action_21 (72) = happyShift action_58
action_21 (73) = happyShift action_59
action_21 (9) = happyGoto action_21
action_21 (10) = happyGoto action_22
action_21 (11) = happyGoto action_97
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
action_21 (34) = happyGoto action_43
action_21 (35) = happyGoto action_44
action_21 _ = happyReduce_19

action_22 _ = happyReduce_9

action_23 (48) = happyShift action_96
action_23 _ = happyFail

action_24 _ = happyReduce_10

action_25 _ = happyReduce_11

action_26 (50) = happyShift action_95
action_26 _ = happyFail

action_27 _ = happyReduce_12

action_28 _ = happyReduce_13

action_29 _ = happyReduce_14

action_30 _ = happyReduce_15

action_31 _ = happyReduce_16

action_32 (73) = happyShift action_94
action_32 (13) = happyGoto action_92
action_32 (14) = happyGoto action_93
action_32 _ = happyFail

action_33 (50) = happyShift action_91
action_33 _ = happyFail

action_34 (54) = happyShift action_90
action_34 _ = happyReduce_40

action_35 (55) = happyShift action_89
action_35 _ = happyReduce_41

action_36 (56) = happyShift action_87
action_36 (57) = happyShift action_88
action_36 _ = happyReduce_43

action_37 (58) = happyShift action_83
action_37 (59) = happyShift action_84
action_37 (60) = happyShift action_85
action_37 (61) = happyShift action_86
action_37 _ = happyReduce_45

action_38 (62) = happyShift action_81
action_38 (63) = happyShift action_82
action_38 _ = happyReduce_48

action_39 (64) = happyShift action_78
action_39 (65) = happyShift action_79
action_39 (66) = happyShift action_80
action_39 _ = happyReduce_53

action_40 _ = happyReduce_56

action_41 _ = happyReduce_60

action_42 _ = happyReduce_65

action_43 _ = happyReduce_64

action_44 _ = happyReduce_71

action_45 _ = happyReduce_79

action_46 _ = happyReduce_80

action_47 _ = happyReduce_76

action_48 _ = happyReduce_77

action_49 _ = happyReduce_78

action_50 (36) = happyShift action_75
action_50 (37) = happyShift action_76
action_50 (38) = happyShift action_77
action_50 (40) = happyShift action_45
action_50 (41) = happyShift action_46
action_50 (42) = happyShift action_47
action_50 (43) = happyShift action_48
action_50 (44) = happyShift action_49
action_50 (45) = happyShift action_50
action_50 (62) = happyShift action_52
action_50 (63) = happyShift action_53
action_50 (67) = happyShift action_54
action_50 (73) = happyShift action_66
action_50 (23) = happyGoto action_74
action_50 (24) = happyGoto action_34
action_50 (25) = happyGoto action_35
action_50 (26) = happyGoto action_36
action_50 (27) = happyGoto action_37
action_50 (28) = happyGoto action_38
action_50 (29) = happyGoto action_39
action_50 (30) = happyGoto action_40
action_50 (31) = happyGoto action_41
action_50 (32) = happyGoto action_42
action_50 (34) = happyGoto action_43
action_50 (35) = happyGoto action_44
action_50 _ = happyFail

action_51 (36) = happyShift action_5
action_51 (37) = happyShift action_6
action_51 (38) = happyShift action_7
action_51 (39) = happyShift action_8
action_51 (40) = happyShift action_45
action_51 (41) = happyShift action_46
action_51 (42) = happyShift action_47
action_51 (43) = happyShift action_48
action_51 (44) = happyShift action_49
action_51 (45) = happyShift action_50
action_51 (47) = happyShift action_51
action_51 (62) = happyShift action_52
action_51 (63) = happyShift action_53
action_51 (67) = happyShift action_54
action_51 (68) = happyShift action_55
action_51 (70) = happyShift action_56
action_51 (71) = happyShift action_57
action_51 (72) = happyShift action_58
action_51 (73) = happyShift action_59
action_51 (9) = happyGoto action_21
action_51 (10) = happyGoto action_22
action_51 (11) = happyGoto action_73
action_51 (12) = happyGoto action_24
action_51 (15) = happyGoto action_25
action_51 (16) = happyGoto action_26
action_51 (17) = happyGoto action_27
action_51 (18) = happyGoto action_28
action_51 (19) = happyGoto action_29
action_51 (20) = happyGoto action_30
action_51 (21) = happyGoto action_31
action_51 (22) = happyGoto action_32
action_51 (23) = happyGoto action_33
action_51 (24) = happyGoto action_34
action_51 (25) = happyGoto action_35
action_51 (26) = happyGoto action_36
action_51 (27) = happyGoto action_37
action_51 (28) = happyGoto action_38
action_51 (29) = happyGoto action_39
action_51 (30) = happyGoto action_40
action_51 (31) = happyGoto action_41
action_51 (32) = happyGoto action_42
action_51 (34) = happyGoto action_43
action_51 (35) = happyGoto action_44
action_51 _ = happyReduce_19

action_52 (40) = happyShift action_45
action_52 (41) = happyShift action_46
action_52 (42) = happyShift action_47
action_52 (43) = happyShift action_48
action_52 (44) = happyShift action_49
action_52 (45) = happyShift action_50
action_52 (62) = happyShift action_52
action_52 (63) = happyShift action_53
action_52 (67) = happyShift action_54
action_52 (73) = happyShift action_66
action_52 (30) = happyGoto action_72
action_52 (31) = happyGoto action_41
action_52 (32) = happyGoto action_42
action_52 (34) = happyGoto action_43
action_52 (35) = happyGoto action_44
action_52 _ = happyFail

action_53 (40) = happyShift action_45
action_53 (41) = happyShift action_46
action_53 (42) = happyShift action_47
action_53 (43) = happyShift action_48
action_53 (44) = happyShift action_49
action_53 (45) = happyShift action_50
action_53 (62) = happyShift action_52
action_53 (63) = happyShift action_53
action_53 (67) = happyShift action_54
action_53 (73) = happyShift action_66
action_53 (30) = happyGoto action_71
action_53 (31) = happyGoto action_41
action_53 (32) = happyGoto action_42
action_53 (34) = happyGoto action_43
action_53 (35) = happyGoto action_44
action_53 _ = happyFail

action_54 (40) = happyShift action_45
action_54 (41) = happyShift action_46
action_54 (42) = happyShift action_47
action_54 (43) = happyShift action_48
action_54 (44) = happyShift action_49
action_54 (45) = happyShift action_50
action_54 (62) = happyShift action_52
action_54 (63) = happyShift action_53
action_54 (67) = happyShift action_54
action_54 (73) = happyShift action_66
action_54 (30) = happyGoto action_70
action_54 (31) = happyGoto action_41
action_54 (32) = happyGoto action_42
action_54 (34) = happyGoto action_43
action_54 (35) = happyGoto action_44
action_54 _ = happyFail

action_55 (45) = happyShift action_69
action_55 _ = happyFail

action_56 (45) = happyShift action_68
action_56 _ = happyFail

action_57 (45) = happyShift action_67
action_57 _ = happyFail

action_58 (40) = happyShift action_45
action_58 (41) = happyShift action_46
action_58 (42) = happyShift action_47
action_58 (43) = happyShift action_48
action_58 (44) = happyShift action_49
action_58 (45) = happyShift action_50
action_58 (50) = happyShift action_65
action_58 (62) = happyShift action_52
action_58 (63) = happyShift action_53
action_58 (67) = happyShift action_54
action_58 (73) = happyShift action_66
action_58 (23) = happyGoto action_64
action_58 (24) = happyGoto action_34
action_58 (25) = happyGoto action_35
action_58 (26) = happyGoto action_36
action_58 (27) = happyGoto action_37
action_58 (28) = happyGoto action_38
action_58 (29) = happyGoto action_39
action_58 (30) = happyGoto action_40
action_58 (31) = happyGoto action_41
action_58 (32) = happyGoto action_42
action_58 (34) = happyGoto action_43
action_58 (35) = happyGoto action_44
action_58 _ = happyFail

action_59 (45) = happyShift action_60
action_59 (51) = happyShift action_61
action_59 (52) = happyShift action_62
action_59 (53) = happyShift action_63
action_59 _ = happyReduce_70

action_60 (40) = happyShift action_45
action_60 (41) = happyShift action_46
action_60 (42) = happyShift action_47
action_60 (43) = happyShift action_48
action_60 (44) = happyShift action_49
action_60 (45) = happyShift action_50
action_60 (62) = happyShift action_52
action_60 (63) = happyShift action_53
action_60 (67) = happyShift action_54
action_60 (73) = happyShift action_66
action_60 (23) = happyGoto action_125
action_60 (24) = happyGoto action_34
action_60 (25) = happyGoto action_35
action_60 (26) = happyGoto action_36
action_60 (27) = happyGoto action_37
action_60 (28) = happyGoto action_38
action_60 (29) = happyGoto action_39
action_60 (30) = happyGoto action_40
action_60 (31) = happyGoto action_41
action_60 (32) = happyGoto action_42
action_60 (33) = happyGoto action_126
action_60 (34) = happyGoto action_43
action_60 (35) = happyGoto action_44
action_60 _ = happyReduce_69

action_61 (40) = happyShift action_45
action_61 (41) = happyShift action_46
action_61 (42) = happyShift action_47
action_61 (43) = happyShift action_48
action_61 (44) = happyShift action_49
action_61 (45) = happyShift action_50
action_61 (62) = happyShift action_52
action_61 (63) = happyShift action_53
action_61 (67) = happyShift action_54
action_61 (73) = happyShift action_66
action_61 (23) = happyGoto action_124
action_61 (24) = happyGoto action_34
action_61 (25) = happyGoto action_35
action_61 (26) = happyGoto action_36
action_61 (27) = happyGoto action_37
action_61 (28) = happyGoto action_38
action_61 (29) = happyGoto action_39
action_61 (30) = happyGoto action_40
action_61 (31) = happyGoto action_41
action_61 (32) = happyGoto action_42
action_61 (34) = happyGoto action_43
action_61 (35) = happyGoto action_44
action_61 _ = happyFail

action_62 _ = happyReduce_27

action_63 _ = happyReduce_28

action_64 (50) = happyShift action_123
action_64 _ = happyFail

action_65 _ = happyReduce_33

action_66 (45) = happyShift action_60
action_66 _ = happyReduce_70

action_67 (73) = happyShift action_122
action_67 (16) = happyGoto action_121
action_67 _ = happyFail

action_68 (40) = happyShift action_45
action_68 (41) = happyShift action_46
action_68 (42) = happyShift action_47
action_68 (43) = happyShift action_48
action_68 (44) = happyShift action_49
action_68 (45) = happyShift action_50
action_68 (62) = happyShift action_52
action_68 (63) = happyShift action_53
action_68 (67) = happyShift action_54
action_68 (73) = happyShift action_66
action_68 (23) = happyGoto action_120
action_68 (24) = happyGoto action_34
action_68 (25) = happyGoto action_35
action_68 (26) = happyGoto action_36
action_68 (27) = happyGoto action_37
action_68 (28) = happyGoto action_38
action_68 (29) = happyGoto action_39
action_68 (30) = happyGoto action_40
action_68 (31) = happyGoto action_41
action_68 (32) = happyGoto action_42
action_68 (34) = happyGoto action_43
action_68 (35) = happyGoto action_44
action_68 _ = happyFail

action_69 (40) = happyShift action_45
action_69 (41) = happyShift action_46
action_69 (42) = happyShift action_47
action_69 (43) = happyShift action_48
action_69 (44) = happyShift action_49
action_69 (45) = happyShift action_50
action_69 (62) = happyShift action_52
action_69 (63) = happyShift action_53
action_69 (67) = happyShift action_54
action_69 (73) = happyShift action_66
action_69 (23) = happyGoto action_119
action_69 (24) = happyGoto action_34
action_69 (25) = happyGoto action_35
action_69 (26) = happyGoto action_36
action_69 (27) = happyGoto action_37
action_69 (28) = happyGoto action_38
action_69 (29) = happyGoto action_39
action_69 (30) = happyGoto action_40
action_69 (31) = happyGoto action_41
action_69 (32) = happyGoto action_42
action_69 (34) = happyGoto action_43
action_69 (35) = happyGoto action_44
action_69 _ = happyFail

action_70 _ = happyReduce_61

action_71 _ = happyReduce_63

action_72 _ = happyReduce_62

action_73 (48) = happyShift action_118
action_73 _ = happyFail

action_74 (46) = happyShift action_117
action_74 _ = happyFail

action_75 (46) = happyShift action_116
action_75 _ = happyFail

action_76 (46) = happyShift action_115
action_76 _ = happyFail

action_77 (46) = happyShift action_114
action_77 _ = happyFail

action_78 (40) = happyShift action_45
action_78 (41) = happyShift action_46
action_78 (42) = happyShift action_47
action_78 (43) = happyShift action_48
action_78 (44) = happyShift action_49
action_78 (45) = happyShift action_50
action_78 (62) = happyShift action_52
action_78 (63) = happyShift action_53
action_78 (67) = happyShift action_54
action_78 (73) = happyShift action_66
action_78 (30) = happyGoto action_113
action_78 (31) = happyGoto action_41
action_78 (32) = happyGoto action_42
action_78 (34) = happyGoto action_43
action_78 (35) = happyGoto action_44
action_78 _ = happyFail

action_79 (40) = happyShift action_45
action_79 (41) = happyShift action_46
action_79 (42) = happyShift action_47
action_79 (43) = happyShift action_48
action_79 (44) = happyShift action_49
action_79 (45) = happyShift action_50
action_79 (62) = happyShift action_52
action_79 (63) = happyShift action_53
action_79 (67) = happyShift action_54
action_79 (73) = happyShift action_66
action_79 (30) = happyGoto action_112
action_79 (31) = happyGoto action_41
action_79 (32) = happyGoto action_42
action_79 (34) = happyGoto action_43
action_79 (35) = happyGoto action_44
action_79 _ = happyFail

action_80 (40) = happyShift action_45
action_80 (41) = happyShift action_46
action_80 (42) = happyShift action_47
action_80 (43) = happyShift action_48
action_80 (44) = happyShift action_49
action_80 (45) = happyShift action_50
action_80 (62) = happyShift action_52
action_80 (63) = happyShift action_53
action_80 (67) = happyShift action_54
action_80 (73) = happyShift action_66
action_80 (30) = happyGoto action_111
action_80 (31) = happyGoto action_41
action_80 (32) = happyGoto action_42
action_80 (34) = happyGoto action_43
action_80 (35) = happyGoto action_44
action_80 _ = happyFail

action_81 (40) = happyShift action_45
action_81 (41) = happyShift action_46
action_81 (42) = happyShift action_47
action_81 (43) = happyShift action_48
action_81 (44) = happyShift action_49
action_81 (45) = happyShift action_50
action_81 (62) = happyShift action_52
action_81 (63) = happyShift action_53
action_81 (67) = happyShift action_54
action_81 (73) = happyShift action_66
action_81 (29) = happyGoto action_110
action_81 (30) = happyGoto action_40
action_81 (31) = happyGoto action_41
action_81 (32) = happyGoto action_42
action_81 (34) = happyGoto action_43
action_81 (35) = happyGoto action_44
action_81 _ = happyFail

action_82 (40) = happyShift action_45
action_82 (41) = happyShift action_46
action_82 (42) = happyShift action_47
action_82 (43) = happyShift action_48
action_82 (44) = happyShift action_49
action_82 (45) = happyShift action_50
action_82 (62) = happyShift action_52
action_82 (63) = happyShift action_53
action_82 (67) = happyShift action_54
action_82 (73) = happyShift action_66
action_82 (29) = happyGoto action_109
action_82 (30) = happyGoto action_40
action_82 (31) = happyGoto action_41
action_82 (32) = happyGoto action_42
action_82 (34) = happyGoto action_43
action_82 (35) = happyGoto action_44
action_82 _ = happyFail

action_83 (40) = happyShift action_45
action_83 (41) = happyShift action_46
action_83 (42) = happyShift action_47
action_83 (43) = happyShift action_48
action_83 (44) = happyShift action_49
action_83 (45) = happyShift action_50
action_83 (62) = happyShift action_52
action_83 (63) = happyShift action_53
action_83 (67) = happyShift action_54
action_83 (73) = happyShift action_66
action_83 (28) = happyGoto action_108
action_83 (29) = happyGoto action_39
action_83 (30) = happyGoto action_40
action_83 (31) = happyGoto action_41
action_83 (32) = happyGoto action_42
action_83 (34) = happyGoto action_43
action_83 (35) = happyGoto action_44
action_83 _ = happyFail

action_84 (40) = happyShift action_45
action_84 (41) = happyShift action_46
action_84 (42) = happyShift action_47
action_84 (43) = happyShift action_48
action_84 (44) = happyShift action_49
action_84 (45) = happyShift action_50
action_84 (62) = happyShift action_52
action_84 (63) = happyShift action_53
action_84 (67) = happyShift action_54
action_84 (73) = happyShift action_66
action_84 (28) = happyGoto action_107
action_84 (29) = happyGoto action_39
action_84 (30) = happyGoto action_40
action_84 (31) = happyGoto action_41
action_84 (32) = happyGoto action_42
action_84 (34) = happyGoto action_43
action_84 (35) = happyGoto action_44
action_84 _ = happyFail

action_85 (40) = happyShift action_45
action_85 (41) = happyShift action_46
action_85 (42) = happyShift action_47
action_85 (43) = happyShift action_48
action_85 (44) = happyShift action_49
action_85 (45) = happyShift action_50
action_85 (62) = happyShift action_52
action_85 (63) = happyShift action_53
action_85 (67) = happyShift action_54
action_85 (73) = happyShift action_66
action_85 (28) = happyGoto action_106
action_85 (29) = happyGoto action_39
action_85 (30) = happyGoto action_40
action_85 (31) = happyGoto action_41
action_85 (32) = happyGoto action_42
action_85 (34) = happyGoto action_43
action_85 (35) = happyGoto action_44
action_85 _ = happyFail

action_86 (40) = happyShift action_45
action_86 (41) = happyShift action_46
action_86 (42) = happyShift action_47
action_86 (43) = happyShift action_48
action_86 (44) = happyShift action_49
action_86 (45) = happyShift action_50
action_86 (62) = happyShift action_52
action_86 (63) = happyShift action_53
action_86 (67) = happyShift action_54
action_86 (73) = happyShift action_66
action_86 (28) = happyGoto action_105
action_86 (29) = happyGoto action_39
action_86 (30) = happyGoto action_40
action_86 (31) = happyGoto action_41
action_86 (32) = happyGoto action_42
action_86 (34) = happyGoto action_43
action_86 (35) = happyGoto action_44
action_86 _ = happyFail

action_87 (40) = happyShift action_45
action_87 (41) = happyShift action_46
action_87 (42) = happyShift action_47
action_87 (43) = happyShift action_48
action_87 (44) = happyShift action_49
action_87 (45) = happyShift action_50
action_87 (62) = happyShift action_52
action_87 (63) = happyShift action_53
action_87 (67) = happyShift action_54
action_87 (73) = happyShift action_66
action_87 (27) = happyGoto action_104
action_87 (28) = happyGoto action_38
action_87 (29) = happyGoto action_39
action_87 (30) = happyGoto action_40
action_87 (31) = happyGoto action_41
action_87 (32) = happyGoto action_42
action_87 (34) = happyGoto action_43
action_87 (35) = happyGoto action_44
action_87 _ = happyFail

action_88 (40) = happyShift action_45
action_88 (41) = happyShift action_46
action_88 (42) = happyShift action_47
action_88 (43) = happyShift action_48
action_88 (44) = happyShift action_49
action_88 (45) = happyShift action_50
action_88 (62) = happyShift action_52
action_88 (63) = happyShift action_53
action_88 (67) = happyShift action_54
action_88 (73) = happyShift action_66
action_88 (27) = happyGoto action_103
action_88 (28) = happyGoto action_38
action_88 (29) = happyGoto action_39
action_88 (30) = happyGoto action_40
action_88 (31) = happyGoto action_41
action_88 (32) = happyGoto action_42
action_88 (34) = happyGoto action_43
action_88 (35) = happyGoto action_44
action_88 _ = happyFail

action_89 (40) = happyShift action_45
action_89 (41) = happyShift action_46
action_89 (42) = happyShift action_47
action_89 (43) = happyShift action_48
action_89 (44) = happyShift action_49
action_89 (45) = happyShift action_50
action_89 (62) = happyShift action_52
action_89 (63) = happyShift action_53
action_89 (67) = happyShift action_54
action_89 (73) = happyShift action_66
action_89 (26) = happyGoto action_102
action_89 (27) = happyGoto action_37
action_89 (28) = happyGoto action_38
action_89 (29) = happyGoto action_39
action_89 (30) = happyGoto action_40
action_89 (31) = happyGoto action_41
action_89 (32) = happyGoto action_42
action_89 (34) = happyGoto action_43
action_89 (35) = happyGoto action_44
action_89 _ = happyFail

action_90 (40) = happyShift action_45
action_90 (41) = happyShift action_46
action_90 (42) = happyShift action_47
action_90 (43) = happyShift action_48
action_90 (44) = happyShift action_49
action_90 (45) = happyShift action_50
action_90 (62) = happyShift action_52
action_90 (63) = happyShift action_53
action_90 (67) = happyShift action_54
action_90 (73) = happyShift action_66
action_90 (25) = happyGoto action_101
action_90 (26) = happyGoto action_36
action_90 (27) = happyGoto action_37
action_90 (28) = happyGoto action_38
action_90 (29) = happyGoto action_39
action_90 (30) = happyGoto action_40
action_90 (31) = happyGoto action_41
action_90 (32) = happyGoto action_42
action_90 (34) = happyGoto action_43
action_90 (35) = happyGoto action_44
action_90 _ = happyFail

action_91 _ = happyReduce_35

action_92 (50) = happyShift action_100
action_92 _ = happyFail

action_93 (49) = happyShift action_99
action_93 _ = happyReduce_21

action_94 (51) = happyShift action_98
action_94 _ = happyReduce_23

action_95 _ = happyReduce_25

action_96 _ = happyReduce_4

action_97 _ = happyReduce_18

action_98 (40) = happyShift action_45
action_98 (41) = happyShift action_46
action_98 (42) = happyShift action_47
action_98 (43) = happyShift action_48
action_98 (44) = happyShift action_49
action_98 (45) = happyShift action_50
action_98 (62) = happyShift action_52
action_98 (63) = happyShift action_53
action_98 (67) = happyShift action_54
action_98 (73) = happyShift action_66
action_98 (23) = happyGoto action_137
action_98 (24) = happyGoto action_34
action_98 (25) = happyGoto action_35
action_98 (26) = happyGoto action_36
action_98 (27) = happyGoto action_37
action_98 (28) = happyGoto action_38
action_98 (29) = happyGoto action_39
action_98 (30) = happyGoto action_40
action_98 (31) = happyGoto action_41
action_98 (32) = happyGoto action_42
action_98 (34) = happyGoto action_43
action_98 (35) = happyGoto action_44
action_98 _ = happyFail

action_99 (73) = happyShift action_94
action_99 (13) = happyGoto action_136
action_99 (14) = happyGoto action_93
action_99 _ = happyFail

action_100 _ = happyReduce_20

action_101 (55) = happyShift action_89
action_101 _ = happyReduce_42

action_102 (56) = happyShift action_87
action_102 (57) = happyShift action_88
action_102 _ = happyReduce_44

action_103 (58) = happyShift action_83
action_103 (59) = happyShift action_84
action_103 (60) = happyShift action_85
action_103 (61) = happyShift action_86
action_103 _ = happyReduce_47

action_104 (58) = happyShift action_83
action_104 (59) = happyShift action_84
action_104 (60) = happyShift action_85
action_104 (61) = happyShift action_86
action_104 _ = happyReduce_46

action_105 (62) = happyShift action_81
action_105 (63) = happyShift action_82
action_105 _ = happyReduce_52

action_106 (62) = happyShift action_81
action_106 (63) = happyShift action_82
action_106 _ = happyReduce_51

action_107 (62) = happyShift action_81
action_107 (63) = happyShift action_82
action_107 _ = happyReduce_50

action_108 (62) = happyShift action_81
action_108 (63) = happyShift action_82
action_108 _ = happyReduce_49

action_109 (64) = happyShift action_78
action_109 (65) = happyShift action_79
action_109 (66) = happyShift action_80
action_109 _ = happyReduce_55

action_110 (64) = happyShift action_78
action_110 (65) = happyShift action_79
action_110 (66) = happyShift action_80
action_110 _ = happyReduce_54

action_111 _ = happyReduce_57

action_112 _ = happyReduce_59

action_113 _ = happyReduce_58

action_114 (40) = happyShift action_45
action_114 (41) = happyShift action_46
action_114 (42) = happyShift action_47
action_114 (43) = happyShift action_48
action_114 (44) = happyShift action_49
action_114 (45) = happyShift action_50
action_114 (73) = happyShift action_133
action_114 (34) = happyGoto action_135
action_114 (35) = happyGoto action_44
action_114 _ = happyFail

action_115 (40) = happyShift action_45
action_115 (41) = happyShift action_46
action_115 (42) = happyShift action_47
action_115 (43) = happyShift action_48
action_115 (44) = happyShift action_49
action_115 (45) = happyShift action_50
action_115 (73) = happyShift action_133
action_115 (34) = happyGoto action_134
action_115 (35) = happyGoto action_44
action_115 _ = happyFail

action_116 (40) = happyShift action_45
action_116 (41) = happyShift action_46
action_116 (42) = happyShift action_47
action_116 (43) = happyShift action_48
action_116 (44) = happyShift action_49
action_116 (45) = happyShift action_50
action_116 (73) = happyShift action_133
action_116 (34) = happyGoto action_132
action_116 (35) = happyGoto action_44
action_116 _ = happyFail

action_117 _ = happyReduce_72

action_118 _ = happyReduce_17

action_119 (46) = happyShift action_131
action_119 _ = happyFail

action_120 (46) = happyShift action_130
action_120 _ = happyFail

action_121 (50) = happyShift action_129
action_121 _ = happyFail

action_122 (51) = happyShift action_61
action_122 (52) = happyShift action_62
action_122 (53) = happyShift action_63
action_122 _ = happyFail

action_123 _ = happyReduce_34

action_124 _ = happyReduce_26

action_125 (49) = happyShift action_128
action_125 _ = happyReduce_67

action_126 (46) = happyShift action_127
action_126 _ = happyFail

action_127 _ = happyReduce_66

action_128 (40) = happyShift action_45
action_128 (41) = happyShift action_46
action_128 (42) = happyShift action_47
action_128 (43) = happyShift action_48
action_128 (44) = happyShift action_49
action_128 (45) = happyShift action_50
action_128 (62) = happyShift action_52
action_128 (63) = happyShift action_53
action_128 (67) = happyShift action_54
action_128 (73) = happyShift action_66
action_128 (23) = happyGoto action_125
action_128 (24) = happyGoto action_34
action_128 (25) = happyGoto action_35
action_128 (26) = happyGoto action_36
action_128 (27) = happyGoto action_37
action_128 (28) = happyGoto action_38
action_128 (29) = happyGoto action_39
action_128 (30) = happyGoto action_40
action_128 (31) = happyGoto action_41
action_128 (32) = happyGoto action_42
action_128 (33) = happyGoto action_141
action_128 (34) = happyGoto action_43
action_128 (35) = happyGoto action_44
action_128 _ = happyReduce_69

action_129 (40) = happyShift action_45
action_129 (41) = happyShift action_46
action_129 (42) = happyShift action_47
action_129 (43) = happyShift action_48
action_129 (44) = happyShift action_49
action_129 (45) = happyShift action_50
action_129 (62) = happyShift action_52
action_129 (63) = happyShift action_53
action_129 (67) = happyShift action_54
action_129 (73) = happyShift action_66
action_129 (23) = happyGoto action_140
action_129 (24) = happyGoto action_34
action_129 (25) = happyGoto action_35
action_129 (26) = happyGoto action_36
action_129 (27) = happyGoto action_37
action_129 (28) = happyGoto action_38
action_129 (29) = happyGoto action_39
action_129 (30) = happyGoto action_40
action_129 (31) = happyGoto action_41
action_129 (32) = happyGoto action_42
action_129 (34) = happyGoto action_43
action_129 (35) = happyGoto action_44
action_129 _ = happyFail

action_130 (36) = happyShift action_5
action_130 (37) = happyShift action_6
action_130 (38) = happyShift action_7
action_130 (39) = happyShift action_8
action_130 (40) = happyShift action_45
action_130 (41) = happyShift action_46
action_130 (42) = happyShift action_47
action_130 (43) = happyShift action_48
action_130 (44) = happyShift action_49
action_130 (45) = happyShift action_50
action_130 (47) = happyShift action_51
action_130 (62) = happyShift action_52
action_130 (63) = happyShift action_53
action_130 (67) = happyShift action_54
action_130 (68) = happyShift action_55
action_130 (70) = happyShift action_56
action_130 (71) = happyShift action_57
action_130 (72) = happyShift action_58
action_130 (73) = happyShift action_59
action_130 (9) = happyGoto action_139
action_130 (10) = happyGoto action_22
action_130 (12) = happyGoto action_24
action_130 (15) = happyGoto action_25
action_130 (16) = happyGoto action_26
action_130 (17) = happyGoto action_27
action_130 (18) = happyGoto action_28
action_130 (19) = happyGoto action_29
action_130 (20) = happyGoto action_30
action_130 (21) = happyGoto action_31
action_130 (22) = happyGoto action_32
action_130 (23) = happyGoto action_33
action_130 (24) = happyGoto action_34
action_130 (25) = happyGoto action_35
action_130 (26) = happyGoto action_36
action_130 (27) = happyGoto action_37
action_130 (28) = happyGoto action_38
action_130 (29) = happyGoto action_39
action_130 (30) = happyGoto action_40
action_130 (31) = happyGoto action_41
action_130 (32) = happyGoto action_42
action_130 (34) = happyGoto action_43
action_130 (35) = happyGoto action_44
action_130 _ = happyFail

action_131 (36) = happyShift action_5
action_131 (37) = happyShift action_6
action_131 (38) = happyShift action_7
action_131 (39) = happyShift action_8
action_131 (40) = happyShift action_45
action_131 (41) = happyShift action_46
action_131 (42) = happyShift action_47
action_131 (43) = happyShift action_48
action_131 (44) = happyShift action_49
action_131 (45) = happyShift action_50
action_131 (47) = happyShift action_51
action_131 (62) = happyShift action_52
action_131 (63) = happyShift action_53
action_131 (67) = happyShift action_54
action_131 (68) = happyShift action_55
action_131 (70) = happyShift action_56
action_131 (71) = happyShift action_57
action_131 (72) = happyShift action_58
action_131 (73) = happyShift action_59
action_131 (9) = happyGoto action_138
action_131 (10) = happyGoto action_22
action_131 (12) = happyGoto action_24
action_131 (15) = happyGoto action_25
action_131 (16) = happyGoto action_26
action_131 (17) = happyGoto action_27
action_131 (18) = happyGoto action_28
action_131 (19) = happyGoto action_29
action_131 (20) = happyGoto action_30
action_131 (21) = happyGoto action_31
action_131 (22) = happyGoto action_32
action_131 (23) = happyGoto action_33
action_131 (24) = happyGoto action_34
action_131 (25) = happyGoto action_35
action_131 (26) = happyGoto action_36
action_131 (27) = happyGoto action_37
action_131 (28) = happyGoto action_38
action_131 (29) = happyGoto action_39
action_131 (30) = happyGoto action_40
action_131 (31) = happyGoto action_41
action_131 (32) = happyGoto action_42
action_131 (34) = happyGoto action_43
action_131 (35) = happyGoto action_44
action_131 _ = happyFail

action_132 _ = happyReduce_74

action_133 _ = happyReduce_70

action_134 _ = happyReduce_75

action_135 _ = happyReduce_73

action_136 _ = happyReduce_22

action_137 _ = happyReduce_24

action_138 (69) = happyShift action_143
action_138 _ = happyReduce_29

action_139 _ = happyReduce_31

action_140 (50) = happyShift action_142
action_140 _ = happyFail

action_141 _ = happyReduce_68

action_142 (73) = happyShift action_122
action_142 (16) = happyGoto action_145
action_142 _ = happyFail

action_143 (36) = happyShift action_5
action_143 (37) = happyShift action_6
action_143 (38) = happyShift action_7
action_143 (39) = happyShift action_8
action_143 (40) = happyShift action_45
action_143 (41) = happyShift action_46
action_143 (42) = happyShift action_47
action_143 (43) = happyShift action_48
action_143 (44) = happyShift action_49
action_143 (45) = happyShift action_50
action_143 (47) = happyShift action_51
action_143 (62) = happyShift action_52
action_143 (63) = happyShift action_53
action_143 (67) = happyShift action_54
action_143 (68) = happyShift action_55
action_143 (70) = happyShift action_56
action_143 (71) = happyShift action_57
action_143 (72) = happyShift action_58
action_143 (73) = happyShift action_59
action_143 (9) = happyGoto action_144
action_143 (10) = happyGoto action_22
action_143 (12) = happyGoto action_24
action_143 (15) = happyGoto action_25
action_143 (16) = happyGoto action_26
action_143 (17) = happyGoto action_27
action_143 (18) = happyGoto action_28
action_143 (19) = happyGoto action_29
action_143 (20) = happyGoto action_30
action_143 (21) = happyGoto action_31
action_143 (22) = happyGoto action_32
action_143 (23) = happyGoto action_33
action_143 (24) = happyGoto action_34
action_143 (25) = happyGoto action_35
action_143 (26) = happyGoto action_36
action_143 (27) = happyGoto action_37
action_143 (28) = happyGoto action_38
action_143 (29) = happyGoto action_39
action_143 (30) = happyGoto action_40
action_143 (31) = happyGoto action_41
action_143 (32) = happyGoto action_42
action_143 (34) = happyGoto action_43
action_143 (35) = happyGoto action_44
action_143 _ = happyFail

action_144 _ = happyReduce_30

action_145 (46) = happyShift action_146
action_145 _ = happyFail

action_146 (36) = happyShift action_5
action_146 (37) = happyShift action_6
action_146 (38) = happyShift action_7
action_146 (39) = happyShift action_8
action_146 (40) = happyShift action_45
action_146 (41) = happyShift action_46
action_146 (42) = happyShift action_47
action_146 (43) = happyShift action_48
action_146 (44) = happyShift action_49
action_146 (45) = happyShift action_50
action_146 (47) = happyShift action_51
action_146 (62) = happyShift action_52
action_146 (63) = happyShift action_53
action_146 (67) = happyShift action_54
action_146 (68) = happyShift action_55
action_146 (70) = happyShift action_56
action_146 (71) = happyShift action_57
action_146 (72) = happyShift action_58
action_146 (73) = happyShift action_59
action_146 (9) = happyGoto action_147
action_146 (10) = happyGoto action_22
action_146 (12) = happyGoto action_24
action_146 (15) = happyGoto action_25
action_146 (16) = happyGoto action_26
action_146 (17) = happyGoto action_27
action_146 (18) = happyGoto action_28
action_146 (19) = happyGoto action_29
action_146 (20) = happyGoto action_30
action_146 (21) = happyGoto action_31
action_146 (22) = happyGoto action_32
action_146 (23) = happyGoto action_33
action_146 (24) = happyGoto action_34
action_146 (25) = happyGoto action_35
action_146 (26) = happyGoto action_36
action_146 (27) = happyGoto action_37
action_146 (28) = happyGoto action_38
action_146 (29) = happyGoto action_39
action_146 (30) = happyGoto action_40
action_146 (31) = happyGoto action_41
action_146 (32) = happyGoto action_42
action_146 (34) = happyGoto action_43
action_146 (35) = happyGoto action_44
action_146 _ = happyFail

action_147 _ = happyReduce_32

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
	(HappyAbsSyn22  happy_var_1) `HappyStk`
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
	(HappyAbsSyn22  happy_var_1)
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
happyReduction_12 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  9 happyReduction_13
happyReduction_13 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  9 happyReduction_14
happyReduction_14 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  9 happyReduction_15
happyReduction_15 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyAbsSyn21  happy_var_1)
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
	(HappyAbsSyn22  happy_var_1)
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
happyReduction_24 (HappyAbsSyn23  happy_var_3)
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn14
		 (Pos (getPos happy_var_1) $ Decl (unIdent happy_var_1) (Just happy_var_3)
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  15 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (Pos (getPos happy_var_1) $ StmtAssig happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  16 happyReduction_26
happyReduction_26 (HappyAbsSyn23  happy_var_3)
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (Pos (getPos happy_var_1) $ AssigEq (unIdent happy_var_1) happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  16 happyReduction_27
happyReduction_27 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (Pos (getPos happy_var_1) $ AssigInc (unIdent happy_var_1)
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  16 happyReduction_28
happyReduction_28 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (Pos (getPos happy_var_1) $ AssigDec (unIdent happy_var_1)
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
	(HappyAbsSyn16  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
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
happyReduction_40 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  24 happyReduction_41
happyReduction_41 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn24
		 (happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  24 happyReduction_42
happyReduction_42 (HappyAbsSyn25  happy_var_3)
	_
	(HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn24
		 (Pos (getPos happy_var_1) $ ExpBinaryOp BoolOr happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

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
		 (Pos (getPos happy_var_1) $ ExpBinaryOp BoolAnd happy_var_1 happy_var_3
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
		 (Pos (getPos happy_var_1) $ ExpBinaryOp ComperEq happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  26 happyReduction_47
happyReduction_47 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (Pos (getPos happy_var_1) $ ExpBinaryOp ComperNotEq happy_var_1 happy_var_3
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
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (Pos (getPos happy_var_1) $ ExpBinaryOp RelaLe happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  27 happyReduction_50
happyReduction_50 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (Pos (getPos happy_var_1) $ ExpBinaryOp RelaGt happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  27 happyReduction_51
happyReduction_51 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (Pos (getPos happy_var_1) $ ExpBinaryOp RelaLeEq happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  27 happyReduction_52
happyReduction_52 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (Pos (getPos happy_var_1) $ ExpBinaryOp RelaGtEq happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  28 happyReduction_53
happyReduction_53 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  28 happyReduction_54
happyReduction_54 (HappyAbsSyn29  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Pos (getPos happy_var_1) $ ExpBinaryOp AddiPlus happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  28 happyReduction_55
happyReduction_55 (HappyAbsSyn29  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (Pos (getPos happy_var_1) $ ExpBinaryOp AddiMinus happy_var_1 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  29 happyReduction_56
happyReduction_56 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  29 happyReduction_57
happyReduction_57 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (Pos (getPos happy_var_1) $ ExpBinaryOp MultiMulti happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  29 happyReduction_58
happyReduction_58 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (Pos (getPos happy_var_1) $ ExpBinaryOp MultiDiv happy_var_1 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  29 happyReduction_59
happyReduction_59 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (Pos (getPos happy_var_1) $ ExpBinaryOp MultiMod happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  30 happyReduction_60
happyReduction_60 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_2  30 happyReduction_61
happyReduction_61 (HappyAbsSyn30  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn30
		 (Pos (getPos happy_var_1) $ ExpUnaryOp UnaryNot happy_var_2
	)
happyReduction_61 _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_2  30 happyReduction_62
happyReduction_62 (HappyAbsSyn30  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn30
		 (Pos (getPos happy_var_1) $ ExpUnaryOp UnaryPlus happy_var_2
	)
happyReduction_62 _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_2  30 happyReduction_63
happyReduction_63 (HappyAbsSyn30  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn30
		 (Pos (getPos happy_var_1) $ ExpUnaryOp UnaryMinus happy_var_2
	)
happyReduction_63 _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  31 happyReduction_64
happyReduction_64 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  31 happyReduction_65
happyReduction_65 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happyReduce 4 32 happyReduction_66
happyReduction_66 (_ `HappyStk`
	(HappyAbsSyn33  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (Pos (getPos happy_var_1) $ ExpCallFunc (unIdent happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_67 = happySpecReduce_1  33 happyReduction_67
happyReduction_67 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn33
		 ([ happy_var_1 ]
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_3  33 happyReduction_68
happyReduction_68 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1 : happy_var_3
	)
happyReduction_68 _ _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_0  33 happyReduction_69
happyReduction_69  =  HappyAbsSyn33
		 ([]
	)

happyReduce_70 = happySpecReduce_1  34 happyReduction_70
happyReduction_70 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn34
		 (Pos (getPos happy_var_1) $ ExpVar (unIdent happy_var_1)
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  34 happyReduction_71
happyReduction_71 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn34
		 (happy_var_1
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  34 happyReduction_72
happyReduction_72 _
	(HappyAbsSyn23  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn34
		 (Pos (getPos happy_var_1) $ ExpExp happy_var_2
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happyReduce 4 34 happyReduction_73
happyReduction_73 ((HappyAbsSyn34  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn34
		 (Pos (getPos happy_var_1) $ ExpCast ToBoolean happy_var_4
	) `HappyStk` happyRest

happyReduce_74 = happyReduce 4 34 happyReduction_74
happyReduction_74 ((HappyAbsSyn34  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn34
		 (Pos (getPos happy_var_1) $ ExpCast ToInt happy_var_4
	) `HappyStk` happyRest

happyReduce_75 = happyReduce 4 34 happyReduction_75
happyReduction_75 ((HappyAbsSyn34  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn34
		 (Pos (getPos happy_var_1) $ ExpCast ToDouble happy_var_4
	) `HappyStk` happyRest

happyReduce_76 = happySpecReduce_1  35 happyReduction_76
happyReduction_76 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn35
		 (Pos (getPos happy_var_1) $ ExpInt (unInt happy_var_1)
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_1  35 happyReduction_77
happyReduction_77 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn35
		 (Pos (getPos happy_var_1) $ ExpDouble (unDouble happy_var_1)
	)
happyReduction_77 _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_1  35 happyReduction_78
happyReduction_78 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn35
		 (Pos (getPos happy_var_1) $ ExpString (unString happy_var_1)
	)
happyReduction_78 _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_1  35 happyReduction_79
happyReduction_79 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn35
		 (Pos (getPos happy_var_1) ExpFalse
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_1  35 happyReduction_80
happyReduction_80 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn35
		 (Pos (getPos happy_var_1) ExpTrue
	)
happyReduction_80 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 74 74 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Pos _ TInt -> cont 36;
	Pos _ TDouble -> cont 37;
	Pos _ TBoolean -> cont 38;
	Pos _ TVoid -> cont 39;
	Pos _ TFalseLiteral -> cont 40;
	Pos _ TTrueLiteral -> cont 41;
	Pos _ (TIntLiteral _) -> cont 42;
	Pos _ (TDoubleLiteral _) -> cont 43;
	Pos _ (TStringLiteral _) -> cont 44;
	Pos _ TLeftParen -> cont 45;
	Pos _ TRightParen -> cont 46;
	Pos _ TLeftBrace -> cont 47;
	Pos _ TRightBrace -> cont 48;
	Pos _ TComma -> cont 49;
	Pos _ TSemicolon -> cont 50;
	Pos _ TAssignSign -> cont 51;
	Pos _ TIncrement -> cont 52;
	Pos _ TDecrement -> cont 53;
	Pos _ TOr -> cont 54;
	Pos _ TAnd -> cont 55;
	Pos _ TEqualsSign -> cont 56;
	Pos _ TNotEqualsSign -> cont 57;
	Pos _ TLessSign -> cont 58;
	Pos _ TGreaterSign -> cont 59;
	Pos _ TLeOrEqSign -> cont 60;
	Pos _ TGrOrEqSign -> cont 61;
	Pos _ TPlusSign -> cont 62;
	Pos _ TMinusSign -> cont 63;
	Pos _ TDivSign -> cont 64;
	Pos _ TModSign -> cont 65;
	Pos _ TMultiSign -> cont 66;
	Pos _ TNot -> cont 67;
	Pos _ TIf -> cont 68;
	Pos _ TElse -> cont 69;
	Pos _ TWhile -> cont 70;
	Pos _ TFor -> cont 71;
	Pos _ TReturn -> cont 72;
	Pos _ (TIdent _) -> cont 73;
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

data Assig = AssigEq PosIdent PosExp
		  | AssigInc PosIdent
		  | AssigDec PosIdent
			deriving (Show, Eq)
type PosAssig = Pos Assig

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
		deriving (Show, Eq)
type PosExp = Pos Exp


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
