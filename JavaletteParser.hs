{-# OPTIONS_GHC -fno-warn-overlapping-patterns #-}
module JavaletteParser where
import JavaletteLexer

-- parser produced by Happy Version 1.18.5

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35
	= HappyTerminal (Token)
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
action_21 (11) = happyGoto action_94
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

action_23 (48) = happyShift action_93
action_23 _ = happyFail

action_24 _ = happyReduce_10

action_25 _ = happyReduce_11

action_26 (50) = happyShift action_92
action_26 _ = happyFail

action_27 _ = happyReduce_12

action_28 _ = happyReduce_13

action_29 _ = happyReduce_14

action_30 _ = happyReduce_15

action_31 _ = happyReduce_16

action_32 (73) = happyShift action_91
action_32 (13) = happyGoto action_89
action_32 (14) = happyGoto action_90
action_32 _ = happyFail

action_33 (50) = happyShift action_88
action_33 _ = happyFail

action_34 (54) = happyShift action_87
action_34 _ = happyReduce_40

action_35 (55) = happyShift action_86
action_35 _ = happyReduce_41

action_36 (56) = happyShift action_84
action_36 (57) = happyShift action_85
action_36 _ = happyReduce_43

action_37 (58) = happyShift action_80
action_37 (59) = happyShift action_81
action_37 (60) = happyShift action_82
action_37 (61) = happyShift action_83
action_37 _ = happyReduce_45

action_38 (62) = happyShift action_78
action_38 (63) = happyShift action_79
action_38 _ = happyReduce_48

action_39 (64) = happyShift action_75
action_39 (65) = happyShift action_76
action_39 (66) = happyShift action_77
action_39 _ = happyReduce_53

action_40 _ = happyReduce_56

action_41 _ = happyReduce_60

action_42 _ = happyReduce_65

action_43 _ = happyReduce_64

action_44 _ = happyReduce_71

action_45 _ = happyReduce_76

action_46 _ = happyReduce_77

action_47 _ = happyReduce_73

action_48 _ = happyReduce_74

action_49 _ = happyReduce_75

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
action_60 (23) = happyGoto action_119
action_60 (24) = happyGoto action_34
action_60 (25) = happyGoto action_35
action_60 (26) = happyGoto action_36
action_60 (27) = happyGoto action_37
action_60 (28) = happyGoto action_38
action_60 (29) = happyGoto action_39
action_60 (30) = happyGoto action_40
action_60 (31) = happyGoto action_41
action_60 (32) = happyGoto action_42
action_60 (33) = happyGoto action_120
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
action_61 (23) = happyGoto action_118
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

action_64 (50) = happyShift action_117
action_64 _ = happyFail

action_65 _ = happyReduce_33

action_66 (45) = happyShift action_60
action_66 _ = happyReduce_70

action_67 (73) = happyShift action_116
action_67 (16) = happyGoto action_115
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
action_68 (23) = happyGoto action_114
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
action_69 (23) = happyGoto action_113
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

action_73 (48) = happyShift action_112
action_73 _ = happyFail

action_74 (46) = happyShift action_111
action_74 _ = happyFail

action_75 (40) = happyShift action_45
action_75 (41) = happyShift action_46
action_75 (42) = happyShift action_47
action_75 (43) = happyShift action_48
action_75 (44) = happyShift action_49
action_75 (45) = happyShift action_50
action_75 (62) = happyShift action_52
action_75 (63) = happyShift action_53
action_75 (67) = happyShift action_54
action_75 (73) = happyShift action_66
action_75 (30) = happyGoto action_110
action_75 (31) = happyGoto action_41
action_75 (32) = happyGoto action_42
action_75 (34) = happyGoto action_43
action_75 (35) = happyGoto action_44
action_75 _ = happyFail

action_76 (40) = happyShift action_45
action_76 (41) = happyShift action_46
action_76 (42) = happyShift action_47
action_76 (43) = happyShift action_48
action_76 (44) = happyShift action_49
action_76 (45) = happyShift action_50
action_76 (62) = happyShift action_52
action_76 (63) = happyShift action_53
action_76 (67) = happyShift action_54
action_76 (73) = happyShift action_66
action_76 (30) = happyGoto action_109
action_76 (31) = happyGoto action_41
action_76 (32) = happyGoto action_42
action_76 (34) = happyGoto action_43
action_76 (35) = happyGoto action_44
action_76 _ = happyFail

action_77 (40) = happyShift action_45
action_77 (41) = happyShift action_46
action_77 (42) = happyShift action_47
action_77 (43) = happyShift action_48
action_77 (44) = happyShift action_49
action_77 (45) = happyShift action_50
action_77 (62) = happyShift action_52
action_77 (63) = happyShift action_53
action_77 (67) = happyShift action_54
action_77 (73) = happyShift action_66
action_77 (30) = happyGoto action_108
action_77 (31) = happyGoto action_41
action_77 (32) = happyGoto action_42
action_77 (34) = happyGoto action_43
action_77 (35) = happyGoto action_44
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
action_78 (29) = happyGoto action_107
action_78 (30) = happyGoto action_40
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
action_79 (29) = happyGoto action_106
action_79 (30) = happyGoto action_40
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
action_80 (28) = happyGoto action_105
action_80 (29) = happyGoto action_39
action_80 (30) = happyGoto action_40
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
action_81 (28) = happyGoto action_104
action_81 (29) = happyGoto action_39
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
action_82 (28) = happyGoto action_103
action_82 (29) = happyGoto action_39
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
action_83 (28) = happyGoto action_102
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
action_84 (27) = happyGoto action_101
action_84 (28) = happyGoto action_38
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
action_85 (27) = happyGoto action_100
action_85 (28) = happyGoto action_38
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
action_86 (26) = happyGoto action_99
action_86 (27) = happyGoto action_37
action_86 (28) = happyGoto action_38
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
action_87 (25) = happyGoto action_98
action_87 (26) = happyGoto action_36
action_87 (27) = happyGoto action_37
action_87 (28) = happyGoto action_38
action_87 (29) = happyGoto action_39
action_87 (30) = happyGoto action_40
action_87 (31) = happyGoto action_41
action_87 (32) = happyGoto action_42
action_87 (34) = happyGoto action_43
action_87 (35) = happyGoto action_44
action_87 _ = happyFail

action_88 _ = happyReduce_35

action_89 (50) = happyShift action_97
action_89 _ = happyFail

action_90 (49) = happyShift action_96
action_90 _ = happyReduce_21

action_91 (51) = happyShift action_95
action_91 _ = happyReduce_23

action_92 _ = happyReduce_25

action_93 _ = happyReduce_4

action_94 _ = happyReduce_18

action_95 (40) = happyShift action_45
action_95 (41) = happyShift action_46
action_95 (42) = happyShift action_47
action_95 (43) = happyShift action_48
action_95 (44) = happyShift action_49
action_95 (45) = happyShift action_50
action_95 (62) = happyShift action_52
action_95 (63) = happyShift action_53
action_95 (67) = happyShift action_54
action_95 (73) = happyShift action_66
action_95 (23) = happyGoto action_127
action_95 (24) = happyGoto action_34
action_95 (25) = happyGoto action_35
action_95 (26) = happyGoto action_36
action_95 (27) = happyGoto action_37
action_95 (28) = happyGoto action_38
action_95 (29) = happyGoto action_39
action_95 (30) = happyGoto action_40
action_95 (31) = happyGoto action_41
action_95 (32) = happyGoto action_42
action_95 (34) = happyGoto action_43
action_95 (35) = happyGoto action_44
action_95 _ = happyFail

action_96 (73) = happyShift action_91
action_96 (13) = happyGoto action_126
action_96 (14) = happyGoto action_90
action_96 _ = happyFail

action_97 _ = happyReduce_20

action_98 (55) = happyShift action_86
action_98 _ = happyReduce_42

action_99 (56) = happyShift action_84
action_99 (57) = happyShift action_85
action_99 _ = happyReduce_44

action_100 (58) = happyShift action_80
action_100 (59) = happyShift action_81
action_100 (60) = happyShift action_82
action_100 (61) = happyShift action_83
action_100 _ = happyReduce_47

action_101 (58) = happyShift action_80
action_101 (59) = happyShift action_81
action_101 (60) = happyShift action_82
action_101 (61) = happyShift action_83
action_101 _ = happyReduce_46

action_102 (62) = happyShift action_78
action_102 (63) = happyShift action_79
action_102 _ = happyReduce_52

action_103 (62) = happyShift action_78
action_103 (63) = happyShift action_79
action_103 _ = happyReduce_51

action_104 (62) = happyShift action_78
action_104 (63) = happyShift action_79
action_104 _ = happyReduce_50

action_105 (62) = happyShift action_78
action_105 (63) = happyShift action_79
action_105 _ = happyReduce_49

action_106 (64) = happyShift action_75
action_106 (65) = happyShift action_76
action_106 (66) = happyShift action_77
action_106 _ = happyReduce_55

action_107 (64) = happyShift action_75
action_107 (65) = happyShift action_76
action_107 (66) = happyShift action_77
action_107 _ = happyReduce_54

action_108 _ = happyReduce_57

action_109 _ = happyReduce_59

action_110 _ = happyReduce_58

action_111 _ = happyReduce_72

action_112 _ = happyReduce_17

action_113 (46) = happyShift action_125
action_113 _ = happyFail

action_114 (46) = happyShift action_124
action_114 _ = happyFail

action_115 (50) = happyShift action_123
action_115 _ = happyFail

action_116 (51) = happyShift action_61
action_116 (52) = happyShift action_62
action_116 (53) = happyShift action_63
action_116 _ = happyFail

action_117 _ = happyReduce_34

action_118 _ = happyReduce_26

action_119 (49) = happyShift action_122
action_119 _ = happyReduce_67

action_120 (46) = happyShift action_121
action_120 _ = happyFail

action_121 _ = happyReduce_66

action_122 (40) = happyShift action_45
action_122 (41) = happyShift action_46
action_122 (42) = happyShift action_47
action_122 (43) = happyShift action_48
action_122 (44) = happyShift action_49
action_122 (45) = happyShift action_50
action_122 (62) = happyShift action_52
action_122 (63) = happyShift action_53
action_122 (67) = happyShift action_54
action_122 (73) = happyShift action_66
action_122 (23) = happyGoto action_119
action_122 (24) = happyGoto action_34
action_122 (25) = happyGoto action_35
action_122 (26) = happyGoto action_36
action_122 (27) = happyGoto action_37
action_122 (28) = happyGoto action_38
action_122 (29) = happyGoto action_39
action_122 (30) = happyGoto action_40
action_122 (31) = happyGoto action_41
action_122 (32) = happyGoto action_42
action_122 (33) = happyGoto action_131
action_122 (34) = happyGoto action_43
action_122 (35) = happyGoto action_44
action_122 _ = happyReduce_69

action_123 (40) = happyShift action_45
action_123 (41) = happyShift action_46
action_123 (42) = happyShift action_47
action_123 (43) = happyShift action_48
action_123 (44) = happyShift action_49
action_123 (45) = happyShift action_50
action_123 (62) = happyShift action_52
action_123 (63) = happyShift action_53
action_123 (67) = happyShift action_54
action_123 (73) = happyShift action_66
action_123 (23) = happyGoto action_130
action_123 (24) = happyGoto action_34
action_123 (25) = happyGoto action_35
action_123 (26) = happyGoto action_36
action_123 (27) = happyGoto action_37
action_123 (28) = happyGoto action_38
action_123 (29) = happyGoto action_39
action_123 (30) = happyGoto action_40
action_123 (31) = happyGoto action_41
action_123 (32) = happyGoto action_42
action_123 (34) = happyGoto action_43
action_123 (35) = happyGoto action_44
action_123 _ = happyFail

action_124 (36) = happyShift action_5
action_124 (37) = happyShift action_6
action_124 (38) = happyShift action_7
action_124 (39) = happyShift action_8
action_124 (40) = happyShift action_45
action_124 (41) = happyShift action_46
action_124 (42) = happyShift action_47
action_124 (43) = happyShift action_48
action_124 (44) = happyShift action_49
action_124 (45) = happyShift action_50
action_124 (47) = happyShift action_51
action_124 (62) = happyShift action_52
action_124 (63) = happyShift action_53
action_124 (67) = happyShift action_54
action_124 (68) = happyShift action_55
action_124 (70) = happyShift action_56
action_124 (71) = happyShift action_57
action_124 (72) = happyShift action_58
action_124 (73) = happyShift action_59
action_124 (9) = happyGoto action_129
action_124 (10) = happyGoto action_22
action_124 (12) = happyGoto action_24
action_124 (15) = happyGoto action_25
action_124 (16) = happyGoto action_26
action_124 (17) = happyGoto action_27
action_124 (18) = happyGoto action_28
action_124 (19) = happyGoto action_29
action_124 (20) = happyGoto action_30
action_124 (21) = happyGoto action_31
action_124 (22) = happyGoto action_32
action_124 (23) = happyGoto action_33
action_124 (24) = happyGoto action_34
action_124 (25) = happyGoto action_35
action_124 (26) = happyGoto action_36
action_124 (27) = happyGoto action_37
action_124 (28) = happyGoto action_38
action_124 (29) = happyGoto action_39
action_124 (30) = happyGoto action_40
action_124 (31) = happyGoto action_41
action_124 (32) = happyGoto action_42
action_124 (34) = happyGoto action_43
action_124 (35) = happyGoto action_44
action_124 _ = happyFail

action_125 (36) = happyShift action_5
action_125 (37) = happyShift action_6
action_125 (38) = happyShift action_7
action_125 (39) = happyShift action_8
action_125 (40) = happyShift action_45
action_125 (41) = happyShift action_46
action_125 (42) = happyShift action_47
action_125 (43) = happyShift action_48
action_125 (44) = happyShift action_49
action_125 (45) = happyShift action_50
action_125 (47) = happyShift action_51
action_125 (62) = happyShift action_52
action_125 (63) = happyShift action_53
action_125 (67) = happyShift action_54
action_125 (68) = happyShift action_55
action_125 (70) = happyShift action_56
action_125 (71) = happyShift action_57
action_125 (72) = happyShift action_58
action_125 (73) = happyShift action_59
action_125 (9) = happyGoto action_128
action_125 (10) = happyGoto action_22
action_125 (12) = happyGoto action_24
action_125 (15) = happyGoto action_25
action_125 (16) = happyGoto action_26
action_125 (17) = happyGoto action_27
action_125 (18) = happyGoto action_28
action_125 (19) = happyGoto action_29
action_125 (20) = happyGoto action_30
action_125 (21) = happyGoto action_31
action_125 (22) = happyGoto action_32
action_125 (23) = happyGoto action_33
action_125 (24) = happyGoto action_34
action_125 (25) = happyGoto action_35
action_125 (26) = happyGoto action_36
action_125 (27) = happyGoto action_37
action_125 (28) = happyGoto action_38
action_125 (29) = happyGoto action_39
action_125 (30) = happyGoto action_40
action_125 (31) = happyGoto action_41
action_125 (32) = happyGoto action_42
action_125 (34) = happyGoto action_43
action_125 (35) = happyGoto action_44
action_125 _ = happyFail

action_126 _ = happyReduce_22

action_127 _ = happyReduce_24

action_128 (69) = happyShift action_133
action_128 _ = happyReduce_29

action_129 _ = happyReduce_31

action_130 (50) = happyShift action_132
action_130 _ = happyFail

action_131 _ = happyReduce_68

action_132 (73) = happyShift action_116
action_132 (16) = happyGoto action_135
action_132 _ = happyFail

action_133 (36) = happyShift action_5
action_133 (37) = happyShift action_6
action_133 (38) = happyShift action_7
action_133 (39) = happyShift action_8
action_133 (40) = happyShift action_45
action_133 (41) = happyShift action_46
action_133 (42) = happyShift action_47
action_133 (43) = happyShift action_48
action_133 (44) = happyShift action_49
action_133 (45) = happyShift action_50
action_133 (47) = happyShift action_51
action_133 (62) = happyShift action_52
action_133 (63) = happyShift action_53
action_133 (67) = happyShift action_54
action_133 (68) = happyShift action_55
action_133 (70) = happyShift action_56
action_133 (71) = happyShift action_57
action_133 (72) = happyShift action_58
action_133 (73) = happyShift action_59
action_133 (9) = happyGoto action_134
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
action_133 (34) = happyGoto action_43
action_133 (35) = happyGoto action_44
action_133 _ = happyFail

action_134 _ = happyReduce_30

action_135 (46) = happyShift action_136
action_135 _ = happyFail

action_136 (36) = happyShift action_5
action_136 (37) = happyShift action_6
action_136 (38) = happyShift action_7
action_136 (39) = happyShift action_8
action_136 (40) = happyShift action_45
action_136 (41) = happyShift action_46
action_136 (42) = happyShift action_47
action_136 (43) = happyShift action_48
action_136 (44) = happyShift action_49
action_136 (45) = happyShift action_50
action_136 (47) = happyShift action_51
action_136 (62) = happyShift action_52
action_136 (63) = happyShift action_53
action_136 (67) = happyShift action_54
action_136 (68) = happyShift action_55
action_136 (70) = happyShift action_56
action_136 (71) = happyShift action_57
action_136 (72) = happyShift action_58
action_136 (73) = happyShift action_59
action_136 (9) = happyGoto action_137
action_136 (10) = happyGoto action_22
action_136 (12) = happyGoto action_24
action_136 (15) = happyGoto action_25
action_136 (16) = happyGoto action_26
action_136 (17) = happyGoto action_27
action_136 (18) = happyGoto action_28
action_136 (19) = happyGoto action_29
action_136 (20) = happyGoto action_30
action_136 (21) = happyGoto action_31
action_136 (22) = happyGoto action_32
action_136 (23) = happyGoto action_33
action_136 (24) = happyGoto action_34
action_136 (25) = happyGoto action_35
action_136 (26) = happyGoto action_36
action_136 (27) = happyGoto action_37
action_136 (28) = happyGoto action_38
action_136 (29) = happyGoto action_39
action_136 (30) = happyGoto action_40
action_136 (31) = happyGoto action_41
action_136 (32) = happyGoto action_42
action_136 (34) = happyGoto action_43
action_136 (35) = happyGoto action_44
action_136 _ = happyFail

action_137 _ = happyReduce_32

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
	(HappyTerminal (TIdent happy_var_2)) `HappyStk`
	(HappyAbsSyn22  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Function happy_var_2 happy_var_1 happy_var_4 happy_var_7
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
happyReduction_8 (HappyTerminal (TIdent happy_var_2))
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn8
		 (FunctionArg happy_var_1 happy_var_2
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
	_
	 =  HappyAbsSyn10
		 (StmtList happy_var_2
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
		 (StmtVarsDecl happy_var_1 happy_var_2
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
happyReduction_23 (HappyTerminal (TIdent happy_var_1))
	 =  HappyAbsSyn14
		 (Decl happy_var_1 Nothing
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  14 happyReduction_24
happyReduction_24 (HappyAbsSyn23  happy_var_3)
	_
	(HappyTerminal (TIdent happy_var_1))
	 =  HappyAbsSyn14
		 (Decl happy_var_1 (Just happy_var_3)
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  15 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (StmtAssig happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  16 happyReduction_26
happyReduction_26 (HappyAbsSyn23  happy_var_3)
	_
	(HappyTerminal (TIdent happy_var_1))
	 =  HappyAbsSyn16
		 (AssigEq happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  16 happyReduction_27
happyReduction_27 _
	(HappyTerminal (TIdent happy_var_1))
	 =  HappyAbsSyn16
		 (AssigInc happy_var_1
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  16 happyReduction_28
happyReduction_28 _
	(HappyTerminal (TIdent happy_var_1))
	 =  HappyAbsSyn16
		 (AssigDec happy_var_1
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 5 17 happyReduction_29
happyReduction_29 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (StmtIf happy_var_3 happy_var_5 StmtEmpty
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 7 17 happyReduction_30
happyReduction_30 ((HappyAbsSyn9  happy_var_7) `HappyStk`
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

happyReduce_31 = happyReduce 5 18 happyReduction_31
happyReduction_31 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (StmtWhile happy_var_3 happy_var_5
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
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (StmtFor happy_var_3 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_2  20 happyReduction_33
happyReduction_33 _
	_
	 =  HappyAbsSyn20
		 (StmtReturn Nothing
	)

happyReduce_34 = happySpecReduce_3  20 happyReduction_34
happyReduction_34 _
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (StmtReturn (Just happy_var_2)
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  21 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn21
		 (StmtExp happy_var_1
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  22 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn22
		 (TypeInt
	)

happyReduce_37 = happySpecReduce_1  22 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn22
		 (TypeDouble
	)

happyReduce_38 = happySpecReduce_1  22 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn22
		 (TypeBoolean
	)

happyReduce_39 = happySpecReduce_1  22 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn22
		 (TypeVoid
	)

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
		 (ExpBin BinOr happy_var_1 happy_var_3
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
		 (ExpBin BinAnd happy_var_1 happy_var_3
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
		 (ExpCompe CompeEq happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  26 happyReduction_47
happyReduction_47 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (ExpCompe CompeNotEq happy_var_1 happy_var_3
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
		 (ExpRel RelLe happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  27 happyReduction_50
happyReduction_50 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (ExpRel RelGt happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  27 happyReduction_51
happyReduction_51 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (ExpRel RelLeEq happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  27 happyReduction_52
happyReduction_52 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (ExpRel RelGtEq happy_var_1 happy_var_3
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
		 (ExpAddi AddiPlus happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  28 happyReduction_55
happyReduction_55 (HappyAbsSyn29  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (ExpAddi AddiMinus happy_var_1 happy_var_3
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
		 (ExpMulti MultiMulti happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  29 happyReduction_58
happyReduction_58 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (ExpMulti MultiDiv happy_var_1 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  29 happyReduction_59
happyReduction_59 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (ExpMulti MultiMod happy_var_1 happy_var_3
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
	_
	 =  HappyAbsSyn30
		 (ExpOneArg OneArgNot happy_var_2
	)
happyReduction_61 _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_2  30 happyReduction_62
happyReduction_62 (HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (ExpOneArg OneArgPlus happy_var_2
	)
happyReduction_62 _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_2  30 happyReduction_63
happyReduction_63 (HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (ExpOneArg OneArgMinus happy_var_2
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
	(HappyTerminal (TIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (ExpCallFunc happy_var_1 happy_var_3
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
happyReduction_70 (HappyTerminal (TIdent happy_var_1))
	 =  HappyAbsSyn34
		 (ExpVar happy_var_1
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
	_
	 =  HappyAbsSyn34
		 (ExpExp happy_var_2
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  35 happyReduction_73
happyReduction_73 (HappyTerminal (TIntLiteral happy_var_1))
	 =  HappyAbsSyn35
		 (ExpInt happy_var_1
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_1  35 happyReduction_74
happyReduction_74 (HappyTerminal (TDoubleLiteral happy_var_1))
	 =  HappyAbsSyn35
		 (ExpDouble happy_var_1
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_1  35 happyReduction_75
happyReduction_75 (HappyTerminal (TStringLiteral happy_var_1))
	 =  HappyAbsSyn35
		 (ExpString happy_var_1
	)
happyReduction_75 _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  35 happyReduction_76
happyReduction_76 _
	 =  HappyAbsSyn35
		 (ExpFalse
	)

happyReduce_77 = happySpecReduce_1  35 happyReduction_77
happyReduction_77 _
	 =  HappyAbsSyn35
		 (ExpTrue
	)

happyNewToken action sts stk [] =
	action 74 74 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt -> cont 36;
	TDouble -> cont 37;
	TBoolean -> cont 38;
	TVoid -> cont 39;
	TFalseLiteral -> cont 40;
	TTrueLiteral -> cont 41;
	TIntLiteral happy_dollar_dollar -> cont 42;
	TDoubleLiteral happy_dollar_dollar -> cont 43;
	TStringLiteral happy_dollar_dollar -> cont 44;
	TLeftParen -> cont 45;
	TRightParen -> cont 46;
	TLeftBrace -> cont 47;
	TRightBrace -> cont 48;
	TComma -> cont 49;
	TSemicolon -> cont 50;
	TAssignSign -> cont 51;
	TIncrement -> cont 52;
	TDecrement -> cont 53;
	TOr -> cont 54;
	TAnd -> cont 55;
	TEqualsSign -> cont 56;
	TNotEqualsSign -> cont 57;
	TLessSign -> cont 58;
	TGreaterSign -> cont 59;
	TLeOrEqSign -> cont 60;
	TGrOrEqSign -> cont 61;
	TPlusSign -> cont 62;
	TMinusSign -> cont 63;
	TDivSign -> cont 64;
	TModSign -> cont 65;
	TMultiSign -> cont 66;
	TNot -> cont 67;
	TIf -> cont 68;
	TElse -> cont 69;
	TWhile -> cont 70;
	TFor -> cont 71;
	TReturn -> cont 72;
	TIdent happy_dollar_dollar -> cont 73;
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
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

javaletteParse tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


type Ident = String
type IntLiteral = Int
type DoubleLiteral = Double
type StringLiteral = String

parseError :: [Token] -> a
parseError _ = error "Parse error"

data Type = TypeInt
			| TypeDouble
			| TypeBoolean
			| TypeVoid
			deriving (Show, Eq)

data Program = Program [Function]
			deriving (Show, Eq)
data Function = Function Ident Type [FunctionArg] [Stmt]
			deriving (Show, Eq)
data FunctionArg = FunctionArg Type Ident
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

data Bin = BinAnd | BinOr
		deriving (Show, Eq)
data Compe = CompeEq | CompeNotEq
		deriving (Show, Eq)
data Rel = RelLe | RelLeEq | RelGt | RelGtEq
		deriving (Show, Eq)
data Addi = AddiPlus | AddiMinus
		deriving (Show, Eq)
data Multi = MultiMulti | MultiDiv | MultiMod
		deriving (Show, Eq)
data OneArg = OneArgNot | OneArgPlus | OneArgMinus
		deriving (Show, Eq)

data Exp = ExpList [Exp]
		| ExpBin Bin Exp Exp
		| ExpCompe Compe Exp Exp
		| ExpRel Rel Exp Exp
		| ExpAddi Addi Exp Exp
		| ExpMulti Multi Exp Exp
		| ExpOneArg OneArg Exp
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
