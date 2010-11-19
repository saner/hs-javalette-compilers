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

action_5 _ = happyReduce_37

action_6 _ = happyReduce_38

action_7 _ = happyReduce_39

action_8 _ = happyReduce_40

action_9 (74) = happyAccept
action_9 _ = happyFail

action_10 (45) = happyShift action_12
action_10 _ = happyFail

action_11 _ = happyReduce_2

action_12 (1) = happyShift action_16
action_12 (36) = happyShift action_5
action_12 (37) = happyShift action_6
action_12 (38) = happyShift action_7
action_12 (39) = happyShift action_8
action_12 (46) = happyReduce_7
action_12 (7) = happyGoto action_13
action_12 (8) = happyGoto action_14
action_12 (22) = happyGoto action_15
action_12 _ = happyFail

action_13 (46) = happyShift action_19
action_13 _ = happyFail

action_14 (49) = happyShift action_18
action_14 _ = happyReduce_5

action_15 (73) = happyShift action_17
action_15 _ = happyFail

action_16 _ = happyReduce_8

action_17 _ = happyReduce_9

action_18 (1) = happyShift action_16
action_18 (36) = happyShift action_5
action_18 (37) = happyShift action_6
action_18 (38) = happyShift action_7
action_18 (39) = happyShift action_8
action_18 (46) = happyReduce_7
action_18 (7) = happyGoto action_21
action_18 (8) = happyGoto action_14
action_18 (22) = happyGoto action_15
action_18 _ = happyFail

action_19 (47) = happyShift action_20
action_19 _ = happyFail

action_20 (36) = happyShift action_5
action_20 (37) = happyShift action_6
action_20 (38) = happyShift action_7
action_20 (39) = happyShift action_8
action_20 (40) = happyShift action_46
action_20 (41) = happyShift action_47
action_20 (42) = happyShift action_48
action_20 (43) = happyShift action_49
action_20 (44) = happyShift action_50
action_20 (45) = happyShift action_51
action_20 (47) = happyShift action_52
action_20 (62) = happyShift action_53
action_20 (63) = happyShift action_54
action_20 (67) = happyShift action_55
action_20 (68) = happyShift action_56
action_20 (70) = happyShift action_57
action_20 (71) = happyShift action_58
action_20 (72) = happyShift action_59
action_20 (73) = happyShift action_60
action_20 (9) = happyGoto action_22
action_20 (10) = happyGoto action_23
action_20 (11) = happyGoto action_24
action_20 (12) = happyGoto action_25
action_20 (15) = happyGoto action_26
action_20 (16) = happyGoto action_27
action_20 (17) = happyGoto action_28
action_20 (18) = happyGoto action_29
action_20 (19) = happyGoto action_30
action_20 (20) = happyGoto action_31
action_20 (21) = happyGoto action_32
action_20 (22) = happyGoto action_33
action_20 (23) = happyGoto action_34
action_20 (24) = happyGoto action_35
action_20 (25) = happyGoto action_36
action_20 (26) = happyGoto action_37
action_20 (27) = happyGoto action_38
action_20 (28) = happyGoto action_39
action_20 (29) = happyGoto action_40
action_20 (30) = happyGoto action_41
action_20 (31) = happyGoto action_42
action_20 (32) = happyGoto action_43
action_20 (34) = happyGoto action_44
action_20 (35) = happyGoto action_45
action_20 _ = happyReduce_20

action_21 _ = happyReduce_6

action_22 (36) = happyShift action_5
action_22 (37) = happyShift action_6
action_22 (38) = happyShift action_7
action_22 (39) = happyShift action_8
action_22 (40) = happyShift action_46
action_22 (41) = happyShift action_47
action_22 (42) = happyShift action_48
action_22 (43) = happyShift action_49
action_22 (44) = happyShift action_50
action_22 (45) = happyShift action_51
action_22 (47) = happyShift action_52
action_22 (62) = happyShift action_53
action_22 (63) = happyShift action_54
action_22 (67) = happyShift action_55
action_22 (68) = happyShift action_56
action_22 (70) = happyShift action_57
action_22 (71) = happyShift action_58
action_22 (72) = happyShift action_59
action_22 (73) = happyShift action_60
action_22 (9) = happyGoto action_22
action_22 (10) = happyGoto action_23
action_22 (11) = happyGoto action_95
action_22 (12) = happyGoto action_25
action_22 (15) = happyGoto action_26
action_22 (16) = happyGoto action_27
action_22 (17) = happyGoto action_28
action_22 (18) = happyGoto action_29
action_22 (19) = happyGoto action_30
action_22 (20) = happyGoto action_31
action_22 (21) = happyGoto action_32
action_22 (22) = happyGoto action_33
action_22 (23) = happyGoto action_34
action_22 (24) = happyGoto action_35
action_22 (25) = happyGoto action_36
action_22 (26) = happyGoto action_37
action_22 (27) = happyGoto action_38
action_22 (28) = happyGoto action_39
action_22 (29) = happyGoto action_40
action_22 (30) = happyGoto action_41
action_22 (31) = happyGoto action_42
action_22 (32) = happyGoto action_43
action_22 (34) = happyGoto action_44
action_22 (35) = happyGoto action_45
action_22 _ = happyReduce_20

action_23 _ = happyReduce_10

action_24 (48) = happyShift action_94
action_24 _ = happyFail

action_25 _ = happyReduce_11

action_26 _ = happyReduce_12

action_27 (50) = happyShift action_93
action_27 _ = happyFail

action_28 _ = happyReduce_13

action_29 _ = happyReduce_14

action_30 _ = happyReduce_15

action_31 _ = happyReduce_16

action_32 _ = happyReduce_17

action_33 (73) = happyShift action_92
action_33 (13) = happyGoto action_90
action_33 (14) = happyGoto action_91
action_33 _ = happyFail

action_34 (50) = happyShift action_89
action_34 _ = happyFail

action_35 (54) = happyShift action_88
action_35 _ = happyReduce_41

action_36 (55) = happyShift action_87
action_36 _ = happyReduce_42

action_37 (56) = happyShift action_85
action_37 (57) = happyShift action_86
action_37 _ = happyReduce_44

action_38 (58) = happyShift action_81
action_38 (59) = happyShift action_82
action_38 (60) = happyShift action_83
action_38 (61) = happyShift action_84
action_38 _ = happyReduce_46

action_39 (62) = happyShift action_79
action_39 (63) = happyShift action_80
action_39 _ = happyReduce_49

action_40 (64) = happyShift action_76
action_40 (65) = happyShift action_77
action_40 (66) = happyShift action_78
action_40 _ = happyReduce_54

action_41 _ = happyReduce_57

action_42 _ = happyReduce_61

action_43 _ = happyReduce_66

action_44 _ = happyReduce_65

action_45 _ = happyReduce_73

action_46 _ = happyReduce_78

action_47 _ = happyReduce_79

action_48 _ = happyReduce_75

action_49 _ = happyReduce_76

action_50 _ = happyReduce_77

action_51 (40) = happyShift action_46
action_51 (41) = happyShift action_47
action_51 (42) = happyShift action_48
action_51 (43) = happyShift action_49
action_51 (44) = happyShift action_50
action_51 (45) = happyShift action_51
action_51 (62) = happyShift action_53
action_51 (63) = happyShift action_54
action_51 (67) = happyShift action_55
action_51 (73) = happyShift action_67
action_51 (23) = happyGoto action_75
action_51 (24) = happyGoto action_35
action_51 (25) = happyGoto action_36
action_51 (26) = happyGoto action_37
action_51 (27) = happyGoto action_38
action_51 (28) = happyGoto action_39
action_51 (29) = happyGoto action_40
action_51 (30) = happyGoto action_41
action_51 (31) = happyGoto action_42
action_51 (32) = happyGoto action_43
action_51 (34) = happyGoto action_44
action_51 (35) = happyGoto action_45
action_51 _ = happyFail

action_52 (36) = happyShift action_5
action_52 (37) = happyShift action_6
action_52 (38) = happyShift action_7
action_52 (39) = happyShift action_8
action_52 (40) = happyShift action_46
action_52 (41) = happyShift action_47
action_52 (42) = happyShift action_48
action_52 (43) = happyShift action_49
action_52 (44) = happyShift action_50
action_52 (45) = happyShift action_51
action_52 (47) = happyShift action_52
action_52 (62) = happyShift action_53
action_52 (63) = happyShift action_54
action_52 (67) = happyShift action_55
action_52 (68) = happyShift action_56
action_52 (70) = happyShift action_57
action_52 (71) = happyShift action_58
action_52 (72) = happyShift action_59
action_52 (73) = happyShift action_60
action_52 (9) = happyGoto action_22
action_52 (10) = happyGoto action_23
action_52 (11) = happyGoto action_74
action_52 (12) = happyGoto action_25
action_52 (15) = happyGoto action_26
action_52 (16) = happyGoto action_27
action_52 (17) = happyGoto action_28
action_52 (18) = happyGoto action_29
action_52 (19) = happyGoto action_30
action_52 (20) = happyGoto action_31
action_52 (21) = happyGoto action_32
action_52 (22) = happyGoto action_33
action_52 (23) = happyGoto action_34
action_52 (24) = happyGoto action_35
action_52 (25) = happyGoto action_36
action_52 (26) = happyGoto action_37
action_52 (27) = happyGoto action_38
action_52 (28) = happyGoto action_39
action_52 (29) = happyGoto action_40
action_52 (30) = happyGoto action_41
action_52 (31) = happyGoto action_42
action_52 (32) = happyGoto action_43
action_52 (34) = happyGoto action_44
action_52 (35) = happyGoto action_45
action_52 _ = happyReduce_20

action_53 (40) = happyShift action_46
action_53 (41) = happyShift action_47
action_53 (42) = happyShift action_48
action_53 (43) = happyShift action_49
action_53 (44) = happyShift action_50
action_53 (45) = happyShift action_51
action_53 (62) = happyShift action_53
action_53 (63) = happyShift action_54
action_53 (67) = happyShift action_55
action_53 (73) = happyShift action_67
action_53 (30) = happyGoto action_73
action_53 (31) = happyGoto action_42
action_53 (32) = happyGoto action_43
action_53 (34) = happyGoto action_44
action_53 (35) = happyGoto action_45
action_53 _ = happyFail

action_54 (40) = happyShift action_46
action_54 (41) = happyShift action_47
action_54 (42) = happyShift action_48
action_54 (43) = happyShift action_49
action_54 (44) = happyShift action_50
action_54 (45) = happyShift action_51
action_54 (62) = happyShift action_53
action_54 (63) = happyShift action_54
action_54 (67) = happyShift action_55
action_54 (73) = happyShift action_67
action_54 (30) = happyGoto action_72
action_54 (31) = happyGoto action_42
action_54 (32) = happyGoto action_43
action_54 (34) = happyGoto action_44
action_54 (35) = happyGoto action_45
action_54 _ = happyFail

action_55 (40) = happyShift action_46
action_55 (41) = happyShift action_47
action_55 (42) = happyShift action_48
action_55 (43) = happyShift action_49
action_55 (44) = happyShift action_50
action_55 (45) = happyShift action_51
action_55 (62) = happyShift action_53
action_55 (63) = happyShift action_54
action_55 (67) = happyShift action_55
action_55 (73) = happyShift action_67
action_55 (30) = happyGoto action_71
action_55 (31) = happyGoto action_42
action_55 (32) = happyGoto action_43
action_55 (34) = happyGoto action_44
action_55 (35) = happyGoto action_45
action_55 _ = happyFail

action_56 (45) = happyShift action_70
action_56 _ = happyFail

action_57 (45) = happyShift action_69
action_57 _ = happyFail

action_58 (45) = happyShift action_68
action_58 _ = happyFail

action_59 (40) = happyShift action_46
action_59 (41) = happyShift action_47
action_59 (42) = happyShift action_48
action_59 (43) = happyShift action_49
action_59 (44) = happyShift action_50
action_59 (45) = happyShift action_51
action_59 (50) = happyShift action_66
action_59 (62) = happyShift action_53
action_59 (63) = happyShift action_54
action_59 (67) = happyShift action_55
action_59 (73) = happyShift action_67
action_59 (23) = happyGoto action_65
action_59 (24) = happyGoto action_35
action_59 (25) = happyGoto action_36
action_59 (26) = happyGoto action_37
action_59 (27) = happyGoto action_38
action_59 (28) = happyGoto action_39
action_59 (29) = happyGoto action_40
action_59 (30) = happyGoto action_41
action_59 (31) = happyGoto action_42
action_59 (32) = happyGoto action_43
action_59 (34) = happyGoto action_44
action_59 (35) = happyGoto action_45
action_59 _ = happyFail

action_60 (45) = happyShift action_61
action_60 (51) = happyShift action_62
action_60 (52) = happyShift action_63
action_60 (53) = happyShift action_64
action_60 _ = happyReduce_72

action_61 (1) = happyShift action_122
action_61 (40) = happyShift action_46
action_61 (41) = happyShift action_47
action_61 (42) = happyShift action_48
action_61 (43) = happyShift action_49
action_61 (44) = happyShift action_50
action_61 (45) = happyShift action_51
action_61 (46) = happyReduce_70
action_61 (62) = happyShift action_53
action_61 (63) = happyShift action_54
action_61 (67) = happyShift action_55
action_61 (73) = happyShift action_67
action_61 (23) = happyGoto action_120
action_61 (24) = happyGoto action_35
action_61 (25) = happyGoto action_36
action_61 (26) = happyGoto action_37
action_61 (27) = happyGoto action_38
action_61 (28) = happyGoto action_39
action_61 (29) = happyGoto action_40
action_61 (30) = happyGoto action_41
action_61 (31) = happyGoto action_42
action_61 (32) = happyGoto action_43
action_61 (33) = happyGoto action_121
action_61 (34) = happyGoto action_44
action_61 (35) = happyGoto action_45
action_61 _ = happyFail

action_62 (40) = happyShift action_46
action_62 (41) = happyShift action_47
action_62 (42) = happyShift action_48
action_62 (43) = happyShift action_49
action_62 (44) = happyShift action_50
action_62 (45) = happyShift action_51
action_62 (62) = happyShift action_53
action_62 (63) = happyShift action_54
action_62 (67) = happyShift action_55
action_62 (73) = happyShift action_67
action_62 (23) = happyGoto action_119
action_62 (24) = happyGoto action_35
action_62 (25) = happyGoto action_36
action_62 (26) = happyGoto action_37
action_62 (27) = happyGoto action_38
action_62 (28) = happyGoto action_39
action_62 (29) = happyGoto action_40
action_62 (30) = happyGoto action_41
action_62 (31) = happyGoto action_42
action_62 (32) = happyGoto action_43
action_62 (34) = happyGoto action_44
action_62 (35) = happyGoto action_45
action_62 _ = happyFail

action_63 _ = happyReduce_28

action_64 _ = happyReduce_29

action_65 (50) = happyShift action_118
action_65 _ = happyFail

action_66 _ = happyReduce_34

action_67 (45) = happyShift action_61
action_67 _ = happyReduce_72

action_68 (73) = happyShift action_117
action_68 (16) = happyGoto action_116
action_68 _ = happyFail

action_69 (40) = happyShift action_46
action_69 (41) = happyShift action_47
action_69 (42) = happyShift action_48
action_69 (43) = happyShift action_49
action_69 (44) = happyShift action_50
action_69 (45) = happyShift action_51
action_69 (62) = happyShift action_53
action_69 (63) = happyShift action_54
action_69 (67) = happyShift action_55
action_69 (73) = happyShift action_67
action_69 (23) = happyGoto action_115
action_69 (24) = happyGoto action_35
action_69 (25) = happyGoto action_36
action_69 (26) = happyGoto action_37
action_69 (27) = happyGoto action_38
action_69 (28) = happyGoto action_39
action_69 (29) = happyGoto action_40
action_69 (30) = happyGoto action_41
action_69 (31) = happyGoto action_42
action_69 (32) = happyGoto action_43
action_69 (34) = happyGoto action_44
action_69 (35) = happyGoto action_45
action_69 _ = happyFail

action_70 (40) = happyShift action_46
action_70 (41) = happyShift action_47
action_70 (42) = happyShift action_48
action_70 (43) = happyShift action_49
action_70 (44) = happyShift action_50
action_70 (45) = happyShift action_51
action_70 (62) = happyShift action_53
action_70 (63) = happyShift action_54
action_70 (67) = happyShift action_55
action_70 (73) = happyShift action_67
action_70 (23) = happyGoto action_114
action_70 (24) = happyGoto action_35
action_70 (25) = happyGoto action_36
action_70 (26) = happyGoto action_37
action_70 (27) = happyGoto action_38
action_70 (28) = happyGoto action_39
action_70 (29) = happyGoto action_40
action_70 (30) = happyGoto action_41
action_70 (31) = happyGoto action_42
action_70 (32) = happyGoto action_43
action_70 (34) = happyGoto action_44
action_70 (35) = happyGoto action_45
action_70 _ = happyFail

action_71 _ = happyReduce_62

action_72 _ = happyReduce_64

action_73 _ = happyReduce_63

action_74 (48) = happyShift action_113
action_74 _ = happyFail

action_75 (46) = happyShift action_112
action_75 _ = happyFail

action_76 (40) = happyShift action_46
action_76 (41) = happyShift action_47
action_76 (42) = happyShift action_48
action_76 (43) = happyShift action_49
action_76 (44) = happyShift action_50
action_76 (45) = happyShift action_51
action_76 (62) = happyShift action_53
action_76 (63) = happyShift action_54
action_76 (67) = happyShift action_55
action_76 (73) = happyShift action_67
action_76 (30) = happyGoto action_111
action_76 (31) = happyGoto action_42
action_76 (32) = happyGoto action_43
action_76 (34) = happyGoto action_44
action_76 (35) = happyGoto action_45
action_76 _ = happyFail

action_77 (40) = happyShift action_46
action_77 (41) = happyShift action_47
action_77 (42) = happyShift action_48
action_77 (43) = happyShift action_49
action_77 (44) = happyShift action_50
action_77 (45) = happyShift action_51
action_77 (62) = happyShift action_53
action_77 (63) = happyShift action_54
action_77 (67) = happyShift action_55
action_77 (73) = happyShift action_67
action_77 (30) = happyGoto action_110
action_77 (31) = happyGoto action_42
action_77 (32) = happyGoto action_43
action_77 (34) = happyGoto action_44
action_77 (35) = happyGoto action_45
action_77 _ = happyFail

action_78 (40) = happyShift action_46
action_78 (41) = happyShift action_47
action_78 (42) = happyShift action_48
action_78 (43) = happyShift action_49
action_78 (44) = happyShift action_50
action_78 (45) = happyShift action_51
action_78 (62) = happyShift action_53
action_78 (63) = happyShift action_54
action_78 (67) = happyShift action_55
action_78 (73) = happyShift action_67
action_78 (30) = happyGoto action_109
action_78 (31) = happyGoto action_42
action_78 (32) = happyGoto action_43
action_78 (34) = happyGoto action_44
action_78 (35) = happyGoto action_45
action_78 _ = happyFail

action_79 (40) = happyShift action_46
action_79 (41) = happyShift action_47
action_79 (42) = happyShift action_48
action_79 (43) = happyShift action_49
action_79 (44) = happyShift action_50
action_79 (45) = happyShift action_51
action_79 (62) = happyShift action_53
action_79 (63) = happyShift action_54
action_79 (67) = happyShift action_55
action_79 (73) = happyShift action_67
action_79 (29) = happyGoto action_108
action_79 (30) = happyGoto action_41
action_79 (31) = happyGoto action_42
action_79 (32) = happyGoto action_43
action_79 (34) = happyGoto action_44
action_79 (35) = happyGoto action_45
action_79 _ = happyFail

action_80 (40) = happyShift action_46
action_80 (41) = happyShift action_47
action_80 (42) = happyShift action_48
action_80 (43) = happyShift action_49
action_80 (44) = happyShift action_50
action_80 (45) = happyShift action_51
action_80 (62) = happyShift action_53
action_80 (63) = happyShift action_54
action_80 (67) = happyShift action_55
action_80 (73) = happyShift action_67
action_80 (29) = happyGoto action_107
action_80 (30) = happyGoto action_41
action_80 (31) = happyGoto action_42
action_80 (32) = happyGoto action_43
action_80 (34) = happyGoto action_44
action_80 (35) = happyGoto action_45
action_80 _ = happyFail

action_81 (40) = happyShift action_46
action_81 (41) = happyShift action_47
action_81 (42) = happyShift action_48
action_81 (43) = happyShift action_49
action_81 (44) = happyShift action_50
action_81 (45) = happyShift action_51
action_81 (62) = happyShift action_53
action_81 (63) = happyShift action_54
action_81 (67) = happyShift action_55
action_81 (73) = happyShift action_67
action_81 (28) = happyGoto action_106
action_81 (29) = happyGoto action_40
action_81 (30) = happyGoto action_41
action_81 (31) = happyGoto action_42
action_81 (32) = happyGoto action_43
action_81 (34) = happyGoto action_44
action_81 (35) = happyGoto action_45
action_81 _ = happyFail

action_82 (40) = happyShift action_46
action_82 (41) = happyShift action_47
action_82 (42) = happyShift action_48
action_82 (43) = happyShift action_49
action_82 (44) = happyShift action_50
action_82 (45) = happyShift action_51
action_82 (62) = happyShift action_53
action_82 (63) = happyShift action_54
action_82 (67) = happyShift action_55
action_82 (73) = happyShift action_67
action_82 (28) = happyGoto action_105
action_82 (29) = happyGoto action_40
action_82 (30) = happyGoto action_41
action_82 (31) = happyGoto action_42
action_82 (32) = happyGoto action_43
action_82 (34) = happyGoto action_44
action_82 (35) = happyGoto action_45
action_82 _ = happyFail

action_83 (40) = happyShift action_46
action_83 (41) = happyShift action_47
action_83 (42) = happyShift action_48
action_83 (43) = happyShift action_49
action_83 (44) = happyShift action_50
action_83 (45) = happyShift action_51
action_83 (62) = happyShift action_53
action_83 (63) = happyShift action_54
action_83 (67) = happyShift action_55
action_83 (73) = happyShift action_67
action_83 (28) = happyGoto action_104
action_83 (29) = happyGoto action_40
action_83 (30) = happyGoto action_41
action_83 (31) = happyGoto action_42
action_83 (32) = happyGoto action_43
action_83 (34) = happyGoto action_44
action_83 (35) = happyGoto action_45
action_83 _ = happyFail

action_84 (40) = happyShift action_46
action_84 (41) = happyShift action_47
action_84 (42) = happyShift action_48
action_84 (43) = happyShift action_49
action_84 (44) = happyShift action_50
action_84 (45) = happyShift action_51
action_84 (62) = happyShift action_53
action_84 (63) = happyShift action_54
action_84 (67) = happyShift action_55
action_84 (73) = happyShift action_67
action_84 (28) = happyGoto action_103
action_84 (29) = happyGoto action_40
action_84 (30) = happyGoto action_41
action_84 (31) = happyGoto action_42
action_84 (32) = happyGoto action_43
action_84 (34) = happyGoto action_44
action_84 (35) = happyGoto action_45
action_84 _ = happyFail

action_85 (40) = happyShift action_46
action_85 (41) = happyShift action_47
action_85 (42) = happyShift action_48
action_85 (43) = happyShift action_49
action_85 (44) = happyShift action_50
action_85 (45) = happyShift action_51
action_85 (62) = happyShift action_53
action_85 (63) = happyShift action_54
action_85 (67) = happyShift action_55
action_85 (73) = happyShift action_67
action_85 (27) = happyGoto action_102
action_85 (28) = happyGoto action_39
action_85 (29) = happyGoto action_40
action_85 (30) = happyGoto action_41
action_85 (31) = happyGoto action_42
action_85 (32) = happyGoto action_43
action_85 (34) = happyGoto action_44
action_85 (35) = happyGoto action_45
action_85 _ = happyFail

action_86 (40) = happyShift action_46
action_86 (41) = happyShift action_47
action_86 (42) = happyShift action_48
action_86 (43) = happyShift action_49
action_86 (44) = happyShift action_50
action_86 (45) = happyShift action_51
action_86 (62) = happyShift action_53
action_86 (63) = happyShift action_54
action_86 (67) = happyShift action_55
action_86 (73) = happyShift action_67
action_86 (27) = happyGoto action_101
action_86 (28) = happyGoto action_39
action_86 (29) = happyGoto action_40
action_86 (30) = happyGoto action_41
action_86 (31) = happyGoto action_42
action_86 (32) = happyGoto action_43
action_86 (34) = happyGoto action_44
action_86 (35) = happyGoto action_45
action_86 _ = happyFail

action_87 (40) = happyShift action_46
action_87 (41) = happyShift action_47
action_87 (42) = happyShift action_48
action_87 (43) = happyShift action_49
action_87 (44) = happyShift action_50
action_87 (45) = happyShift action_51
action_87 (62) = happyShift action_53
action_87 (63) = happyShift action_54
action_87 (67) = happyShift action_55
action_87 (73) = happyShift action_67
action_87 (26) = happyGoto action_100
action_87 (27) = happyGoto action_38
action_87 (28) = happyGoto action_39
action_87 (29) = happyGoto action_40
action_87 (30) = happyGoto action_41
action_87 (31) = happyGoto action_42
action_87 (32) = happyGoto action_43
action_87 (34) = happyGoto action_44
action_87 (35) = happyGoto action_45
action_87 _ = happyFail

action_88 (40) = happyShift action_46
action_88 (41) = happyShift action_47
action_88 (42) = happyShift action_48
action_88 (43) = happyShift action_49
action_88 (44) = happyShift action_50
action_88 (45) = happyShift action_51
action_88 (62) = happyShift action_53
action_88 (63) = happyShift action_54
action_88 (67) = happyShift action_55
action_88 (73) = happyShift action_67
action_88 (25) = happyGoto action_99
action_88 (26) = happyGoto action_37
action_88 (27) = happyGoto action_38
action_88 (28) = happyGoto action_39
action_88 (29) = happyGoto action_40
action_88 (30) = happyGoto action_41
action_88 (31) = happyGoto action_42
action_88 (32) = happyGoto action_43
action_88 (34) = happyGoto action_44
action_88 (35) = happyGoto action_45
action_88 _ = happyFail

action_89 _ = happyReduce_36

action_90 (50) = happyShift action_98
action_90 _ = happyFail

action_91 (49) = happyShift action_97
action_91 _ = happyReduce_22

action_92 (51) = happyShift action_96
action_92 _ = happyReduce_24

action_93 _ = happyReduce_26

action_94 _ = happyReduce_4

action_95 _ = happyReduce_19

action_96 (40) = happyShift action_46
action_96 (41) = happyShift action_47
action_96 (42) = happyShift action_48
action_96 (43) = happyShift action_49
action_96 (44) = happyShift action_50
action_96 (45) = happyShift action_51
action_96 (62) = happyShift action_53
action_96 (63) = happyShift action_54
action_96 (67) = happyShift action_55
action_96 (73) = happyShift action_67
action_96 (23) = happyGoto action_129
action_96 (24) = happyGoto action_35
action_96 (25) = happyGoto action_36
action_96 (26) = happyGoto action_37
action_96 (27) = happyGoto action_38
action_96 (28) = happyGoto action_39
action_96 (29) = happyGoto action_40
action_96 (30) = happyGoto action_41
action_96 (31) = happyGoto action_42
action_96 (32) = happyGoto action_43
action_96 (34) = happyGoto action_44
action_96 (35) = happyGoto action_45
action_96 _ = happyFail

action_97 (73) = happyShift action_92
action_97 (13) = happyGoto action_128
action_97 (14) = happyGoto action_91
action_97 _ = happyFail

action_98 _ = happyReduce_21

action_99 (55) = happyShift action_87
action_99 _ = happyReduce_43

action_100 (56) = happyShift action_85
action_100 (57) = happyShift action_86
action_100 _ = happyReduce_45

action_101 (58) = happyShift action_81
action_101 (59) = happyShift action_82
action_101 (60) = happyShift action_83
action_101 (61) = happyShift action_84
action_101 _ = happyReduce_48

action_102 (58) = happyShift action_81
action_102 (59) = happyShift action_82
action_102 (60) = happyShift action_83
action_102 (61) = happyShift action_84
action_102 _ = happyReduce_47

action_103 (62) = happyShift action_79
action_103 (63) = happyShift action_80
action_103 _ = happyReduce_53

action_104 (62) = happyShift action_79
action_104 (63) = happyShift action_80
action_104 _ = happyReduce_52

action_105 (62) = happyShift action_79
action_105 (63) = happyShift action_80
action_105 _ = happyReduce_51

action_106 (62) = happyShift action_79
action_106 (63) = happyShift action_80
action_106 _ = happyReduce_50

action_107 (64) = happyShift action_76
action_107 (65) = happyShift action_77
action_107 (66) = happyShift action_78
action_107 _ = happyReduce_56

action_108 (64) = happyShift action_76
action_108 (65) = happyShift action_77
action_108 (66) = happyShift action_78
action_108 _ = happyReduce_55

action_109 _ = happyReduce_58

action_110 _ = happyReduce_60

action_111 _ = happyReduce_59

action_112 _ = happyReduce_74

action_113 _ = happyReduce_18

action_114 (46) = happyShift action_127
action_114 _ = happyFail

action_115 (46) = happyShift action_126
action_115 _ = happyFail

action_116 (50) = happyShift action_125
action_116 _ = happyFail

action_117 (51) = happyShift action_62
action_117 (52) = happyShift action_63
action_117 (53) = happyShift action_64
action_117 _ = happyFail

action_118 _ = happyReduce_35

action_119 _ = happyReduce_27

action_120 (49) = happyShift action_124
action_120 _ = happyReduce_68

action_121 (46) = happyShift action_123
action_121 _ = happyFail

action_122 _ = happyReduce_71

action_123 _ = happyReduce_67

action_124 (1) = happyShift action_122
action_124 (40) = happyShift action_46
action_124 (41) = happyShift action_47
action_124 (42) = happyShift action_48
action_124 (43) = happyShift action_49
action_124 (44) = happyShift action_50
action_124 (45) = happyShift action_51
action_124 (46) = happyReduce_70
action_124 (62) = happyShift action_53
action_124 (63) = happyShift action_54
action_124 (67) = happyShift action_55
action_124 (73) = happyShift action_67
action_124 (23) = happyGoto action_120
action_124 (24) = happyGoto action_35
action_124 (25) = happyGoto action_36
action_124 (26) = happyGoto action_37
action_124 (27) = happyGoto action_38
action_124 (28) = happyGoto action_39
action_124 (29) = happyGoto action_40
action_124 (30) = happyGoto action_41
action_124 (31) = happyGoto action_42
action_124 (32) = happyGoto action_43
action_124 (33) = happyGoto action_133
action_124 (34) = happyGoto action_44
action_124 (35) = happyGoto action_45
action_124 _ = happyFail

action_125 (40) = happyShift action_46
action_125 (41) = happyShift action_47
action_125 (42) = happyShift action_48
action_125 (43) = happyShift action_49
action_125 (44) = happyShift action_50
action_125 (45) = happyShift action_51
action_125 (62) = happyShift action_53
action_125 (63) = happyShift action_54
action_125 (67) = happyShift action_55
action_125 (73) = happyShift action_67
action_125 (23) = happyGoto action_132
action_125 (24) = happyGoto action_35
action_125 (25) = happyGoto action_36
action_125 (26) = happyGoto action_37
action_125 (27) = happyGoto action_38
action_125 (28) = happyGoto action_39
action_125 (29) = happyGoto action_40
action_125 (30) = happyGoto action_41
action_125 (31) = happyGoto action_42
action_125 (32) = happyGoto action_43
action_125 (34) = happyGoto action_44
action_125 (35) = happyGoto action_45
action_125 _ = happyFail

action_126 (36) = happyShift action_5
action_126 (37) = happyShift action_6
action_126 (38) = happyShift action_7
action_126 (39) = happyShift action_8
action_126 (40) = happyShift action_46
action_126 (41) = happyShift action_47
action_126 (42) = happyShift action_48
action_126 (43) = happyShift action_49
action_126 (44) = happyShift action_50
action_126 (45) = happyShift action_51
action_126 (47) = happyShift action_52
action_126 (62) = happyShift action_53
action_126 (63) = happyShift action_54
action_126 (67) = happyShift action_55
action_126 (68) = happyShift action_56
action_126 (70) = happyShift action_57
action_126 (71) = happyShift action_58
action_126 (72) = happyShift action_59
action_126 (73) = happyShift action_60
action_126 (9) = happyGoto action_131
action_126 (10) = happyGoto action_23
action_126 (12) = happyGoto action_25
action_126 (15) = happyGoto action_26
action_126 (16) = happyGoto action_27
action_126 (17) = happyGoto action_28
action_126 (18) = happyGoto action_29
action_126 (19) = happyGoto action_30
action_126 (20) = happyGoto action_31
action_126 (21) = happyGoto action_32
action_126 (22) = happyGoto action_33
action_126 (23) = happyGoto action_34
action_126 (24) = happyGoto action_35
action_126 (25) = happyGoto action_36
action_126 (26) = happyGoto action_37
action_126 (27) = happyGoto action_38
action_126 (28) = happyGoto action_39
action_126 (29) = happyGoto action_40
action_126 (30) = happyGoto action_41
action_126 (31) = happyGoto action_42
action_126 (32) = happyGoto action_43
action_126 (34) = happyGoto action_44
action_126 (35) = happyGoto action_45
action_126 _ = happyFail

action_127 (36) = happyShift action_5
action_127 (37) = happyShift action_6
action_127 (38) = happyShift action_7
action_127 (39) = happyShift action_8
action_127 (40) = happyShift action_46
action_127 (41) = happyShift action_47
action_127 (42) = happyShift action_48
action_127 (43) = happyShift action_49
action_127 (44) = happyShift action_50
action_127 (45) = happyShift action_51
action_127 (47) = happyShift action_52
action_127 (62) = happyShift action_53
action_127 (63) = happyShift action_54
action_127 (67) = happyShift action_55
action_127 (68) = happyShift action_56
action_127 (70) = happyShift action_57
action_127 (71) = happyShift action_58
action_127 (72) = happyShift action_59
action_127 (73) = happyShift action_60
action_127 (9) = happyGoto action_130
action_127 (10) = happyGoto action_23
action_127 (12) = happyGoto action_25
action_127 (15) = happyGoto action_26
action_127 (16) = happyGoto action_27
action_127 (17) = happyGoto action_28
action_127 (18) = happyGoto action_29
action_127 (19) = happyGoto action_30
action_127 (20) = happyGoto action_31
action_127 (21) = happyGoto action_32
action_127 (22) = happyGoto action_33
action_127 (23) = happyGoto action_34
action_127 (24) = happyGoto action_35
action_127 (25) = happyGoto action_36
action_127 (26) = happyGoto action_37
action_127 (27) = happyGoto action_38
action_127 (28) = happyGoto action_39
action_127 (29) = happyGoto action_40
action_127 (30) = happyGoto action_41
action_127 (31) = happyGoto action_42
action_127 (32) = happyGoto action_43
action_127 (34) = happyGoto action_44
action_127 (35) = happyGoto action_45
action_127 _ = happyFail

action_128 _ = happyReduce_23

action_129 _ = happyReduce_25

action_130 (69) = happyShift action_135
action_130 _ = happyReduce_30

action_131 _ = happyReduce_32

action_132 (50) = happyShift action_134
action_132 _ = happyFail

action_133 _ = happyReduce_69

action_134 (73) = happyShift action_117
action_134 (16) = happyGoto action_137
action_134 _ = happyFail

action_135 (36) = happyShift action_5
action_135 (37) = happyShift action_6
action_135 (38) = happyShift action_7
action_135 (39) = happyShift action_8
action_135 (40) = happyShift action_46
action_135 (41) = happyShift action_47
action_135 (42) = happyShift action_48
action_135 (43) = happyShift action_49
action_135 (44) = happyShift action_50
action_135 (45) = happyShift action_51
action_135 (47) = happyShift action_52
action_135 (62) = happyShift action_53
action_135 (63) = happyShift action_54
action_135 (67) = happyShift action_55
action_135 (68) = happyShift action_56
action_135 (70) = happyShift action_57
action_135 (71) = happyShift action_58
action_135 (72) = happyShift action_59
action_135 (73) = happyShift action_60
action_135 (9) = happyGoto action_136
action_135 (10) = happyGoto action_23
action_135 (12) = happyGoto action_25
action_135 (15) = happyGoto action_26
action_135 (16) = happyGoto action_27
action_135 (17) = happyGoto action_28
action_135 (18) = happyGoto action_29
action_135 (19) = happyGoto action_30
action_135 (20) = happyGoto action_31
action_135 (21) = happyGoto action_32
action_135 (22) = happyGoto action_33
action_135 (23) = happyGoto action_34
action_135 (24) = happyGoto action_35
action_135 (25) = happyGoto action_36
action_135 (26) = happyGoto action_37
action_135 (27) = happyGoto action_38
action_135 (28) = happyGoto action_39
action_135 (29) = happyGoto action_40
action_135 (30) = happyGoto action_41
action_135 (31) = happyGoto action_42
action_135 (32) = happyGoto action_43
action_135 (34) = happyGoto action_44
action_135 (35) = happyGoto action_45
action_135 _ = happyFail

action_136 _ = happyReduce_31

action_137 (46) = happyShift action_138
action_137 _ = happyFail

action_138 (36) = happyShift action_5
action_138 (37) = happyShift action_6
action_138 (38) = happyShift action_7
action_138 (39) = happyShift action_8
action_138 (40) = happyShift action_46
action_138 (41) = happyShift action_47
action_138 (42) = happyShift action_48
action_138 (43) = happyShift action_49
action_138 (44) = happyShift action_50
action_138 (45) = happyShift action_51
action_138 (47) = happyShift action_52
action_138 (62) = happyShift action_53
action_138 (63) = happyShift action_54
action_138 (67) = happyShift action_55
action_138 (68) = happyShift action_56
action_138 (70) = happyShift action_57
action_138 (71) = happyShift action_58
action_138 (72) = happyShift action_59
action_138 (73) = happyShift action_60
action_138 (9) = happyGoto action_139
action_138 (10) = happyGoto action_23
action_138 (12) = happyGoto action_25
action_138 (15) = happyGoto action_26
action_138 (16) = happyGoto action_27
action_138 (17) = happyGoto action_28
action_138 (18) = happyGoto action_29
action_138 (19) = happyGoto action_30
action_138 (20) = happyGoto action_31
action_138 (21) = happyGoto action_32
action_138 (22) = happyGoto action_33
action_138 (23) = happyGoto action_34
action_138 (24) = happyGoto action_35
action_138 (25) = happyGoto action_36
action_138 (26) = happyGoto action_37
action_138 (27) = happyGoto action_38
action_138 (28) = happyGoto action_39
action_138 (29) = happyGoto action_40
action_138 (30) = happyGoto action_41
action_138 (31) = happyGoto action_42
action_138 (32) = happyGoto action_43
action_138 (34) = happyGoto action_44
action_138 (35) = happyGoto action_45
action_138 _ = happyFail

action_139 _ = happyReduce_33

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
		 (Function (unIdent happy_var_2) happy_var_1 happy_var_4 happy_var_7
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

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn7
		 (error "exp blad"
	)

happyReduce_9 = happySpecReduce_2  8 happyReduction_9
happyReduction_9 (HappyTerminal happy_var_2)
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn8
		 (((unIdent happy_var_2), happy_var_1)
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
happyReduction_12 (HappyAbsSyn15  happy_var_1)
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
	_
	 =  HappyAbsSyn10
		 (StmtList happy_var_2
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
	(HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn12
		 (StmtVarsDecl happy_var_1 happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  13 happyReduction_22
happyReduction_22 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 ([ happy_var_1 ]
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  13 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 : happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  14 happyReduction_24
happyReduction_24 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn14
		 (Decl (unIdent happy_var_1) Nothing
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  14 happyReduction_25
happyReduction_25 (HappyAbsSyn23  happy_var_3)
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn14
		 (Decl (unIdent happy_var_1) (Just happy_var_3)
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  15 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (StmtAssig happy_var_1
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  16 happyReduction_27
happyReduction_27 (HappyAbsSyn23  happy_var_3)
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (AssigEq (unIdent happy_var_1) happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  16 happyReduction_28
happyReduction_28 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (AssigInc (unIdent happy_var_1)
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  16 happyReduction_29
happyReduction_29 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (AssigDec (unIdent happy_var_1)
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happyReduce 5 17 happyReduction_30
happyReduction_30 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (StmtIf happy_var_3 happy_var_5 StmtEmpty
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 7 17 happyReduction_31
happyReduction_31 ((HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (StmtIf happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 5 18 happyReduction_32
happyReduction_32 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (StmtWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 9 19 happyReduction_33
happyReduction_33 ((HappyAbsSyn9  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (StmtFor happy_var_3 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_2  20 happyReduction_34
happyReduction_34 _
	_
	 =  HappyAbsSyn20
		 (StmtReturn Nothing
	)

happyReduce_35 = happySpecReduce_3  20 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (StmtReturn (Just happy_var_2)
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  21 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn21
		 (StmtExp happy_var_1
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  22 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn22
		 (TypeInt
	)

happyReduce_38 = happySpecReduce_1  22 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn22
		 (TypeDouble
	)

happyReduce_39 = happySpecReduce_1  22 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn22
		 (TypeBoolean
	)

happyReduce_40 = happySpecReduce_1  22 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn22
		 (TypeVoid
	)

happyReduce_41 = happySpecReduce_1  23 happyReduction_41
happyReduction_41 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  24 happyReduction_42
happyReduction_42 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn24
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  24 happyReduction_43
happyReduction_43 (HappyAbsSyn25  happy_var_3)
	_
	(HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn24
		 (ExpBinaryOp BoolOr happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  25 happyReduction_44
happyReduction_44 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  25 happyReduction_45
happyReduction_45 (HappyAbsSyn26  happy_var_3)
	_
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn25
		 (ExpBinaryOp BoolAnd happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  26 happyReduction_46
happyReduction_46 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  26 happyReduction_47
happyReduction_47 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (ExpBinaryOp ComperEq happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  26 happyReduction_48
happyReduction_48 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (ExpBinaryOp ComperNotEq happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  27 happyReduction_49
happyReduction_49 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  27 happyReduction_50
happyReduction_50 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (ExpBinaryOp RelaLe happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  27 happyReduction_51
happyReduction_51 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (ExpBinaryOp RelaGt happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  27 happyReduction_52
happyReduction_52 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (ExpBinaryOp RelaLeEq happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  27 happyReduction_53
happyReduction_53 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (ExpBinaryOp RelaGtEq happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  28 happyReduction_54
happyReduction_54 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  28 happyReduction_55
happyReduction_55 (HappyAbsSyn29  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (ExpBinaryOp AddiPlus happy_var_1 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  28 happyReduction_56
happyReduction_56 (HappyAbsSyn29  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (ExpBinaryOp AddiMinus happy_var_1 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  29 happyReduction_57
happyReduction_57 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  29 happyReduction_58
happyReduction_58 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (ExpBinaryOp MultiMulti happy_var_1 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  29 happyReduction_59
happyReduction_59 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (ExpBinaryOp MultiDiv happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  29 happyReduction_60
happyReduction_60 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (ExpBinaryOp MultiMod happy_var_1 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  30 happyReduction_61
happyReduction_61 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_2  30 happyReduction_62
happyReduction_62 (HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (ExpUnaryOp UnaryNot happy_var_2
	)
happyReduction_62 _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_2  30 happyReduction_63
happyReduction_63 (HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (ExpUnaryOp UnaryPlus happy_var_2
	)
happyReduction_63 _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_2  30 happyReduction_64
happyReduction_64 (HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (ExpUnaryOp UnaryMinus happy_var_2
	)
happyReduction_64 _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  31 happyReduction_65
happyReduction_65 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  31 happyReduction_66
happyReduction_66 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happyReduce 4 32 happyReduction_67
happyReduction_67 (_ `HappyStk`
	(HappyAbsSyn33  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (ExpCallFunc (unIdent happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_68 = happySpecReduce_1  33 happyReduction_68
happyReduction_68 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn33
		 ([ happy_var_1 ]
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_3  33 happyReduction_69
happyReduction_69 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1 : happy_var_3
	)
happyReduction_69 _ _ _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_0  33 happyReduction_70
happyReduction_70  =  HappyAbsSyn33
		 ([]
	)

happyReduce_71 = happySpecReduce_1  33 happyReduction_71
happyReduction_71 _
	 =  HappyAbsSyn33
		 (error "exp blad"
	)

happyReduce_72 = happySpecReduce_1  34 happyReduction_72
happyReduction_72 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn34
		 (ExpVar (unIdent happy_var_1)
	)
happyReduction_72 _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  34 happyReduction_73
happyReduction_73 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn34
		 (happy_var_1
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_3  34 happyReduction_74
happyReduction_74 _
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn34
		 (ExpExp happy_var_2
	)
happyReduction_74 _ _ _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_1  35 happyReduction_75
happyReduction_75 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn35
		 (ExpInt (unInt happy_var_1)
	)
happyReduction_75 _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  35 happyReduction_76
happyReduction_76 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn35
		 (ExpDouble (unDouble happy_var_1)
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_1  35 happyReduction_77
happyReduction_77 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn35
		 (ExpString (unString happy_var_1)
	)
happyReduction_77 _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_1  35 happyReduction_78
happyReduction_78 _
	 =  HappyAbsSyn35
		 (ExpFalse
	)

happyReduce_79 = happySpecReduce_1  35 happyReduction_79
happyReduction_79 _
	 =  HappyAbsSyn35
		 (ExpTrue
	)

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

unIdent :: PosToken -> String
unIdent (Pos p (TIdent str)) = str

unInt :: PosToken -> Int
unInt (Pos p (TIntLiteral i)) = i

unDouble :: PosToken -> Double
unDouble (Pos p (TDoubleLiteral d)) = d

unString :: PosToken -> String
unString (Pos p (TStringLiteral s)) = s


type Ident = String
type IntLiteral = Int
type DoubleLiteral = Double
type StringLiteral = String

parseError :: [PosToken] -> a
parseError token = error $ "Parse error" ++ (show token)

data Type = TypeInt
			| TypeDouble
			| TypeBoolean
			| TypeVoid
			deriving (Show, Eq)

data Program = Program [Function]
			deriving (Show, Eq)
data Function = Function Ident Type [(Ident, Type)] [Stmt]
			deriving (Show, Eq)
data Stmt = StmtList [Stmt]
		 | StmtVarsDecl Type [Decl]
		 | StmtAssig Assig
		 | StmtIf Exp Stmt Stmt
		 | StmtWhile Exp Stmt
		 | StmtFor Assig Exp Assig Stmt
		 | StmtReturn (Maybe Exp)
		 | StmtExp Exp
		 | StmtEmpty
			deriving (Show, Eq)
data Decl = Decl Ident (Maybe Exp)
			deriving (Show, Eq)
data Assig = AssigEq Ident Exp
		  | AssigInc Ident
		  | AssigDec Ident
			deriving (Show, Eq)

data BinaryOp = BoolAnd | BoolOr
				| ComperEq | ComperNotEq
				| RelaLe | RelaLeEq | RelaGt | RelaGtEq
				| AddiPlus | AddiMinus
				| MultiMulti | MultiDiv | MultiMod
				deriving (Show, Eq)

data UnaryOp = UnaryNot | UnaryPlus | UnaryMinus
				deriving (Show, Eq)

data Exp = ExpList [Exp]
		| ExpBinaryOp BinaryOp Exp Exp
		| ExpUnaryOp UnaryOp Exp
		| ExpCallFunc Ident [Exp]
		| ExpVar Ident
		| ExpExp Exp
		| ExpInt Int
		| ExpDouble Double
		| ExpString String
		| ExpTrue
		| ExpFalse
		deriving (Show, Eq)
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
