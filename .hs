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
action_0 (40) = happyShift action_8
action_0 (4) = happyGoto action_9
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (22) = happyGoto action_4
action_0 _ = happyReduce_3

action_1 (36) = happyShift action_5
action_1 (37) = happyShift action_6
action_1 (38) = happyShift action_7
action_1 (40) = happyShift action_8
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (22) = happyGoto action_4
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 (36) = happyShift action_5
action_3 (37) = happyShift action_6
action_3 (38) = happyShift action_7
action_3 (40) = happyShift action_8
action_3 (5) = happyGoto action_11
action_3 (6) = happyGoto action_3
action_3 (22) = happyGoto action_4
action_3 _ = happyReduce_3

action_4 (74) = happyShift action_10
action_4 _ = happyFail

action_5 _ = happyReduce_36

action_6 _ = happyReduce_37

action_7 _ = happyReduce_38

action_8 _ = happyReduce_39

action_9 (75) = happyAccept
action_9 _ = happyFail

action_10 (46) = happyShift action_12
action_10 _ = happyFail

action_11 _ = happyReduce_2

action_12 (36) = happyShift action_5
action_12 (37) = happyShift action_6
action_12 (38) = happyShift action_7
action_12 (40) = happyShift action_8
action_12 (7) = happyGoto action_13
action_12 (8) = happyGoto action_14
action_12 (22) = happyGoto action_15
action_12 _ = happyReduce_7

action_13 (47) = happyShift action_18
action_13 _ = happyFail

action_14 (50) = happyShift action_17
action_14 _ = happyReduce_5

action_15 (74) = happyShift action_16
action_15 _ = happyFail

action_16 _ = happyReduce_8

action_17 (36) = happyShift action_5
action_17 (37) = happyShift action_6
action_17 (38) = happyShift action_7
action_17 (40) = happyShift action_8
action_17 (7) = happyGoto action_20
action_17 (8) = happyGoto action_14
action_17 (22) = happyGoto action_15
action_17 _ = happyReduce_7

action_18 (48) = happyShift action_19
action_18 _ = happyFail

action_19 (36) = happyShift action_5
action_19 (37) = happyShift action_6
action_19 (38) = happyShift action_7
action_19 (40) = happyShift action_8
action_19 (43) = happyShift action_45
action_19 (44) = happyShift action_46
action_19 (45) = happyShift action_47
action_19 (46) = happyShift action_48
action_19 (48) = happyShift action_49
action_19 (63) = happyShift action_50
action_19 (64) = happyShift action_51
action_19 (68) = happyShift action_52
action_19 (69) = happyShift action_53
action_19 (71) = happyShift action_54
action_19 (72) = happyShift action_55
action_19 (73) = happyShift action_56
action_19 (74) = happyShift action_57
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
action_21 (40) = happyShift action_8
action_21 (43) = happyShift action_45
action_21 (44) = happyShift action_46
action_21 (45) = happyShift action_47
action_21 (46) = happyShift action_48
action_21 (48) = happyShift action_49
action_21 (63) = happyShift action_50
action_21 (64) = happyShift action_51
action_21 (68) = happyShift action_52
action_21 (69) = happyShift action_53
action_21 (71) = happyShift action_54
action_21 (72) = happyShift action_55
action_21 (73) = happyShift action_56
action_21 (74) = happyShift action_57
action_21 (9) = happyGoto action_21
action_21 (10) = happyGoto action_22
action_21 (11) = happyGoto action_92
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

action_23 (49) = happyShift action_91
action_23 _ = happyFail

action_24 _ = happyReduce_10

action_25 _ = happyReduce_11

action_26 (51) = happyShift action_90
action_26 _ = happyFail

action_27 _ = happyReduce_12

action_28 _ = happyReduce_13

action_29 _ = happyReduce_14

action_30 _ = happyReduce_15

action_31 _ = happyReduce_16

action_32 (74) = happyShift action_89
action_32 (13) = happyGoto action_87
action_32 (14) = happyGoto action_88
action_32 _ = happyFail

action_33 (51) = happyShift action_86
action_33 _ = happyFail

action_34 (55) = happyShift action_85
action_34 _ = happyReduce_40

action_35 (56) = happyShift action_84
action_35 _ = happyReduce_41

action_36 (57) = happyShift action_82
action_36 (58) = happyShift action_83
action_36 _ = happyReduce_43

action_37 (59) = happyShift action_78
action_37 (60) = happyShift action_79
action_37 (61) = happyShift action_80
action_37 (62) = happyShift action_81
action_37 _ = happyReduce_45

action_38 (63) = happyShift action_76
action_38 (64) = happyShift action_77
action_38 _ = happyReduce_48

action_39 (65) = happyShift action_73
action_39 (66) = happyShift action_74
action_39 (67) = happyShift action_75
action_39 _ = happyReduce_53

action_40 _ = happyReduce_56

action_41 _ = happyReduce_60

action_42 _ = happyReduce_65

action_43 _ = happyReduce_64

action_44 _ = happyReduce_71

action_45 _ = happyReduce_73

action_46 _ = happyReduce_74

action_47 _ = happyReduce_75

action_48 (43) = happyShift action_45
action_48 (44) = happyShift action_46
action_48 (45) = happyShift action_47
action_48 (46) = happyShift action_48
action_48 (63) = happyShift action_50
action_48 (64) = happyShift action_51
action_48 (68) = happyShift action_52
action_48 (74) = happyShift action_64
action_48 (23) = happyGoto action_72
action_48 (24) = happyGoto action_34
action_48 (25) = happyGoto action_35
action_48 (26) = happyGoto action_36
action_48 (27) = happyGoto action_37
action_48 (28) = happyGoto action_38
action_48 (29) = happyGoto action_39
action_48 (30) = happyGoto action_40
action_48 (31) = happyGoto action_41
action_48 (32) = happyGoto action_42
action_48 (34) = happyGoto action_43
action_48 (35) = happyGoto action_44
action_48 _ = happyFail

action_49 (36) = happyShift action_5
action_49 (37) = happyShift action_6
action_49 (38) = happyShift action_7
action_49 (40) = happyShift action_8
action_49 (43) = happyShift action_45
action_49 (44) = happyShift action_46
action_49 (45) = happyShift action_47
action_49 (46) = happyShift action_48
action_49 (48) = happyShift action_49
action_49 (63) = happyShift action_50
action_49 (64) = happyShift action_51
action_49 (68) = happyShift action_52
action_49 (69) = happyShift action_53
action_49 (71) = happyShift action_54
action_49 (72) = happyShift action_55
action_49 (73) = happyShift action_56
action_49 (74) = happyShift action_57
action_49 (9) = happyGoto action_21
action_49 (10) = happyGoto action_22
action_49 (11) = happyGoto action_71
action_49 (12) = happyGoto action_24
action_49 (15) = happyGoto action_25
action_49 (16) = happyGoto action_26
action_49 (17) = happyGoto action_27
action_49 (18) = happyGoto action_28
action_49 (19) = happyGoto action_29
action_49 (20) = happyGoto action_30
action_49 (21) = happyGoto action_31
action_49 (22) = happyGoto action_32
action_49 (23) = happyGoto action_33
action_49 (24) = happyGoto action_34
action_49 (25) = happyGoto action_35
action_49 (26) = happyGoto action_36
action_49 (27) = happyGoto action_37
action_49 (28) = happyGoto action_38
action_49 (29) = happyGoto action_39
action_49 (30) = happyGoto action_40
action_49 (31) = happyGoto action_41
action_49 (32) = happyGoto action_42
action_49 (34) = happyGoto action_43
action_49 (35) = happyGoto action_44
action_49 _ = happyReduce_19

action_50 (43) = happyShift action_45
action_50 (44) = happyShift action_46
action_50 (45) = happyShift action_47
action_50 (46) = happyShift action_48
action_50 (63) = happyShift action_50
action_50 (64) = happyShift action_51
action_50 (68) = happyShift action_52
action_50 (74) = happyShift action_64
action_50 (30) = happyGoto action_70
action_50 (31) = happyGoto action_41
action_50 (32) = happyGoto action_42
action_50 (34) = happyGoto action_43
action_50 (35) = happyGoto action_44
action_50 _ = happyFail

action_51 (43) = happyShift action_45
action_51 (44) = happyShift action_46
action_51 (45) = happyShift action_47
action_51 (46) = happyShift action_48
action_51 (63) = happyShift action_50
action_51 (64) = happyShift action_51
action_51 (68) = happyShift action_52
action_51 (74) = happyShift action_64
action_51 (30) = happyGoto action_69
action_51 (31) = happyGoto action_41
action_51 (32) = happyGoto action_42
action_51 (34) = happyGoto action_43
action_51 (35) = happyGoto action_44
action_51 _ = happyFail

action_52 (43) = happyShift action_45
action_52 (44) = happyShift action_46
action_52 (45) = happyShift action_47
action_52 (46) = happyShift action_48
action_52 (63) = happyShift action_50
action_52 (64) = happyShift action_51
action_52 (68) = happyShift action_52
action_52 (74) = happyShift action_64
action_52 (30) = happyGoto action_68
action_52 (31) = happyGoto action_41
action_52 (32) = happyGoto action_42
action_52 (34) = happyGoto action_43
action_52 (35) = happyGoto action_44
action_52 _ = happyFail

action_53 (46) = happyShift action_67
action_53 _ = happyFail

action_54 (46) = happyShift action_66
action_54 _ = happyFail

action_55 (46) = happyShift action_65
action_55 _ = happyFail

action_56 (43) = happyShift action_45
action_56 (44) = happyShift action_46
action_56 (45) = happyShift action_47
action_56 (46) = happyShift action_48
action_56 (51) = happyShift action_63
action_56 (63) = happyShift action_50
action_56 (64) = happyShift action_51
action_56 (68) = happyShift action_52
action_56 (74) = happyShift action_64
action_56 (23) = happyGoto action_62
action_56 (24) = happyGoto action_34
action_56 (25) = happyGoto action_35
action_56 (26) = happyGoto action_36
action_56 (27) = happyGoto action_37
action_56 (28) = happyGoto action_38
action_56 (29) = happyGoto action_39
action_56 (30) = happyGoto action_40
action_56 (31) = happyGoto action_41
action_56 (32) = happyGoto action_42
action_56 (34) = happyGoto action_43
action_56 (35) = happyGoto action_44
action_56 _ = happyFail

action_57 (46) = happyShift action_58
action_57 (52) = happyShift action_59
action_57 (53) = happyShift action_60
action_57 (54) = happyShift action_61
action_57 _ = happyReduce_70

action_58 (43) = happyShift action_45
action_58 (44) = happyShift action_46
action_58 (45) = happyShift action_47
action_58 (46) = happyShift action_48
action_58 (63) = happyShift action_50
action_58 (64) = happyShift action_51
action_58 (68) = happyShift action_52
action_58 (74) = happyShift action_64
action_58 (23) = happyGoto action_117
action_58 (24) = happyGoto action_34
action_58 (25) = happyGoto action_35
action_58 (26) = happyGoto action_36
action_58 (27) = happyGoto action_37
action_58 (28) = happyGoto action_38
action_58 (29) = happyGoto action_39
action_58 (30) = happyGoto action_40
action_58 (31) = happyGoto action_41
action_58 (32) = happyGoto action_42
action_58 (33) = happyGoto action_118
action_58 (34) = happyGoto action_43
action_58 (35) = happyGoto action_44
action_58 _ = happyReduce_69

action_59 (43) = happyShift action_45
action_59 (44) = happyShift action_46
action_59 (45) = happyShift action_47
action_59 (46) = happyShift action_48
action_59 (63) = happyShift action_50
action_59 (64) = happyShift action_51
action_59 (68) = happyShift action_52
action_59 (74) = happyShift action_64
action_59 (23) = happyGoto action_116
action_59 (24) = happyGoto action_34
action_59 (25) = happyGoto action_35
action_59 (26) = happyGoto action_36
action_59 (27) = happyGoto action_37
action_59 (28) = happyGoto action_38
action_59 (29) = happyGoto action_39
action_59 (30) = happyGoto action_40
action_59 (31) = happyGoto action_41
action_59 (32) = happyGoto action_42
action_59 (34) = happyGoto action_43
action_59 (35) = happyGoto action_44
action_59 _ = happyFail

action_60 _ = happyReduce_27

action_61 _ = happyReduce_28

action_62 (51) = happyShift action_115
action_62 _ = happyFail

action_63 _ = happyReduce_33

action_64 (46) = happyShift action_58
action_64 _ = happyReduce_70

action_65 (74) = happyShift action_114
action_65 (16) = happyGoto action_113
action_65 _ = happyFail

action_66 (43) = happyShift action_45
action_66 (44) = happyShift action_46
action_66 (45) = happyShift action_47
action_66 (46) = happyShift action_48
action_66 (63) = happyShift action_50
action_66 (64) = happyShift action_51
action_66 (68) = happyShift action_52
action_66 (74) = happyShift action_64
action_66 (23) = happyGoto action_112
action_66 (24) = happyGoto action_34
action_66 (25) = happyGoto action_35
action_66 (26) = happyGoto action_36
action_66 (27) = happyGoto action_37
action_66 (28) = happyGoto action_38
action_66 (29) = happyGoto action_39
action_66 (30) = happyGoto action_40
action_66 (31) = happyGoto action_41
action_66 (32) = happyGoto action_42
action_66 (34) = happyGoto action_43
action_66 (35) = happyGoto action_44
action_66 _ = happyFail

action_67 (43) = happyShift action_45
action_67 (44) = happyShift action_46
action_67 (45) = happyShift action_47
action_67 (46) = happyShift action_48
action_67 (63) = happyShift action_50
action_67 (64) = happyShift action_51
action_67 (68) = happyShift action_52
action_67 (74) = happyShift action_64
action_67 (23) = happyGoto action_111
action_67 (24) = happyGoto action_34
action_67 (25) = happyGoto action_35
action_67 (26) = happyGoto action_36
action_67 (27) = happyGoto action_37
action_67 (28) = happyGoto action_38
action_67 (29) = happyGoto action_39
action_67 (30) = happyGoto action_40
action_67 (31) = happyGoto action_41
action_67 (32) = happyGoto action_42
action_67 (34) = happyGoto action_43
action_67 (35) = happyGoto action_44
action_67 _ = happyFail

action_68 _ = happyReduce_61

action_69 _ = happyReduce_63

action_70 _ = happyReduce_62

action_71 (49) = happyShift action_110
action_71 _ = happyFail

action_72 (47) = happyShift action_109
action_72 _ = happyFail

action_73 (43) = happyShift action_45
action_73 (44) = happyShift action_46
action_73 (45) = happyShift action_47
action_73 (46) = happyShift action_48
action_73 (63) = happyShift action_50
action_73 (64) = happyShift action_51
action_73 (68) = happyShift action_52
action_73 (74) = happyShift action_64
action_73 (30) = happyGoto action_108
action_73 (31) = happyGoto action_41
action_73 (32) = happyGoto action_42
action_73 (34) = happyGoto action_43
action_73 (35) = happyGoto action_44
action_73 _ = happyFail

action_74 (43) = happyShift action_45
action_74 (44) = happyShift action_46
action_74 (45) = happyShift action_47
action_74 (46) = happyShift action_48
action_74 (63) = happyShift action_50
action_74 (64) = happyShift action_51
action_74 (68) = happyShift action_52
action_74 (74) = happyShift action_64
action_74 (30) = happyGoto action_107
action_74 (31) = happyGoto action_41
action_74 (32) = happyGoto action_42
action_74 (34) = happyGoto action_43
action_74 (35) = happyGoto action_44
action_74 _ = happyFail

action_75 (43) = happyShift action_45
action_75 (44) = happyShift action_46
action_75 (45) = happyShift action_47
action_75 (46) = happyShift action_48
action_75 (63) = happyShift action_50
action_75 (64) = happyShift action_51
action_75 (68) = happyShift action_52
action_75 (74) = happyShift action_64
action_75 (30) = happyGoto action_106
action_75 (31) = happyGoto action_41
action_75 (32) = happyGoto action_42
action_75 (34) = happyGoto action_43
action_75 (35) = happyGoto action_44
action_75 _ = happyFail

action_76 (43) = happyShift action_45
action_76 (44) = happyShift action_46
action_76 (45) = happyShift action_47
action_76 (46) = happyShift action_48
action_76 (63) = happyShift action_50
action_76 (64) = happyShift action_51
action_76 (68) = happyShift action_52
action_76 (74) = happyShift action_64
action_76 (29) = happyGoto action_105
action_76 (30) = happyGoto action_40
action_76 (31) = happyGoto action_41
action_76 (32) = happyGoto action_42
action_76 (34) = happyGoto action_43
action_76 (35) = happyGoto action_44
action_76 _ = happyFail

action_77 (43) = happyShift action_45
action_77 (44) = happyShift action_46
action_77 (45) = happyShift action_47
action_77 (46) = happyShift action_48
action_77 (63) = happyShift action_50
action_77 (64) = happyShift action_51
action_77 (68) = happyShift action_52
action_77 (74) = happyShift action_64
action_77 (29) = happyGoto action_104
action_77 (30) = happyGoto action_40
action_77 (31) = happyGoto action_41
action_77 (32) = happyGoto action_42
action_77 (34) = happyGoto action_43
action_77 (35) = happyGoto action_44
action_77 _ = happyFail

action_78 (43) = happyShift action_45
action_78 (44) = happyShift action_46
action_78 (45) = happyShift action_47
action_78 (46) = happyShift action_48
action_78 (63) = happyShift action_50
action_78 (64) = happyShift action_51
action_78 (68) = happyShift action_52
action_78 (74) = happyShift action_64
action_78 (28) = happyGoto action_103
action_78 (29) = happyGoto action_39
action_78 (30) = happyGoto action_40
action_78 (31) = happyGoto action_41
action_78 (32) = happyGoto action_42
action_78 (34) = happyGoto action_43
action_78 (35) = happyGoto action_44
action_78 _ = happyFail

action_79 (43) = happyShift action_45
action_79 (44) = happyShift action_46
action_79 (45) = happyShift action_47
action_79 (46) = happyShift action_48
action_79 (63) = happyShift action_50
action_79 (64) = happyShift action_51
action_79 (68) = happyShift action_52
action_79 (74) = happyShift action_64
action_79 (28) = happyGoto action_102
action_79 (29) = happyGoto action_39
action_79 (30) = happyGoto action_40
action_79 (31) = happyGoto action_41
action_79 (32) = happyGoto action_42
action_79 (34) = happyGoto action_43
action_79 (35) = happyGoto action_44
action_79 _ = happyFail

action_80 (43) = happyShift action_45
action_80 (44) = happyShift action_46
action_80 (45) = happyShift action_47
action_80 (46) = happyShift action_48
action_80 (63) = happyShift action_50
action_80 (64) = happyShift action_51
action_80 (68) = happyShift action_52
action_80 (74) = happyShift action_64
action_80 (28) = happyGoto action_101
action_80 (29) = happyGoto action_39
action_80 (30) = happyGoto action_40
action_80 (31) = happyGoto action_41
action_80 (32) = happyGoto action_42
action_80 (34) = happyGoto action_43
action_80 (35) = happyGoto action_44
action_80 _ = happyFail

action_81 (43) = happyShift action_45
action_81 (44) = happyShift action_46
action_81 (45) = happyShift action_47
action_81 (46) = happyShift action_48
action_81 (63) = happyShift action_50
action_81 (64) = happyShift action_51
action_81 (68) = happyShift action_52
action_81 (74) = happyShift action_64
action_81 (28) = happyGoto action_100
action_81 (29) = happyGoto action_39
action_81 (30) = happyGoto action_40
action_81 (31) = happyGoto action_41
action_81 (32) = happyGoto action_42
action_81 (34) = happyGoto action_43
action_81 (35) = happyGoto action_44
action_81 _ = happyFail

action_82 (43) = happyShift action_45
action_82 (44) = happyShift action_46
action_82 (45) = happyShift action_47
action_82 (46) = happyShift action_48
action_82 (63) = happyShift action_50
action_82 (64) = happyShift action_51
action_82 (68) = happyShift action_52
action_82 (74) = happyShift action_64
action_82 (27) = happyGoto action_99
action_82 (28) = happyGoto action_38
action_82 (29) = happyGoto action_39
action_82 (30) = happyGoto action_40
action_82 (31) = happyGoto action_41
action_82 (32) = happyGoto action_42
action_82 (34) = happyGoto action_43
action_82 (35) = happyGoto action_44
action_82 _ = happyFail

action_83 (43) = happyShift action_45
action_83 (44) = happyShift action_46
action_83 (45) = happyShift action_47
action_83 (46) = happyShift action_48
action_83 (63) = happyShift action_50
action_83 (64) = happyShift action_51
action_83 (68) = happyShift action_52
action_83 (74) = happyShift action_64
action_83 (27) = happyGoto action_98
action_83 (28) = happyGoto action_38
action_83 (29) = happyGoto action_39
action_83 (30) = happyGoto action_40
action_83 (31) = happyGoto action_41
action_83 (32) = happyGoto action_42
action_83 (34) = happyGoto action_43
action_83 (35) = happyGoto action_44
action_83 _ = happyFail

action_84 (43) = happyShift action_45
action_84 (44) = happyShift action_46
action_84 (45) = happyShift action_47
action_84 (46) = happyShift action_48
action_84 (63) = happyShift action_50
action_84 (64) = happyShift action_51
action_84 (68) = happyShift action_52
action_84 (74) = happyShift action_64
action_84 (26) = happyGoto action_97
action_84 (27) = happyGoto action_37
action_84 (28) = happyGoto action_38
action_84 (29) = happyGoto action_39
action_84 (30) = happyGoto action_40
action_84 (31) = happyGoto action_41
action_84 (32) = happyGoto action_42
action_84 (34) = happyGoto action_43
action_84 (35) = happyGoto action_44
action_84 _ = happyFail

action_85 (43) = happyShift action_45
action_85 (44) = happyShift action_46
action_85 (45) = happyShift action_47
action_85 (46) = happyShift action_48
action_85 (63) = happyShift action_50
action_85 (64) = happyShift action_51
action_85 (68) = happyShift action_52
action_85 (74) = happyShift action_64
action_85 (25) = happyGoto action_96
action_85 (26) = happyGoto action_36
action_85 (27) = happyGoto action_37
action_85 (28) = happyGoto action_38
action_85 (29) = happyGoto action_39
action_85 (30) = happyGoto action_40
action_85 (31) = happyGoto action_41
action_85 (32) = happyGoto action_42
action_85 (34) = happyGoto action_43
action_85 (35) = happyGoto action_44
action_85 _ = happyFail

action_86 _ = happyReduce_35

action_87 (51) = happyShift action_95
action_87 _ = happyFail

action_88 (50) = happyShift action_94
action_88 _ = happyReduce_21

action_89 (52) = happyShift action_93
action_89 _ = happyReduce_23

action_90 _ = happyReduce_25

action_91 _ = happyReduce_4

action_92 _ = happyReduce_18

action_93 (43) = happyShift action_45
action_93 (44) = happyShift action_46
action_93 (45) = happyShift action_47
action_93 (46) = happyShift action_48
action_93 (63) = happyShift action_50
action_93 (64) = happyShift action_51
action_93 (68) = happyShift action_52
action_93 (74) = happyShift action_64
action_93 (23) = happyGoto action_125
action_93 (24) = happyGoto action_34
action_93 (25) = happyGoto action_35
action_93 (26) = happyGoto action_36
action_93 (27) = happyGoto action_37
action_93 (28) = happyGoto action_38
action_93 (29) = happyGoto action_39
action_93 (30) = happyGoto action_40
action_93 (31) = happyGoto action_41
action_93 (32) = happyGoto action_42
action_93 (34) = happyGoto action_43
action_93 (35) = happyGoto action_44
action_93 _ = happyFail

action_94 (74) = happyShift action_89
action_94 (13) = happyGoto action_124
action_94 (14) = happyGoto action_88
action_94 _ = happyFail

action_95 _ = happyReduce_20

action_96 (56) = happyShift action_84
action_96 _ = happyReduce_42

action_97 (57) = happyShift action_82
action_97 (58) = happyShift action_83
action_97 _ = happyReduce_44

action_98 (59) = happyShift action_78
action_98 (60) = happyShift action_79
action_98 (61) = happyShift action_80
action_98 (62) = happyShift action_81
action_98 _ = happyReduce_47

action_99 (59) = happyShift action_78
action_99 (60) = happyShift action_79
action_99 (61) = happyShift action_80
action_99 (62) = happyShift action_81
action_99 _ = happyReduce_46

action_100 (63) = happyShift action_76
action_100 (64) = happyShift action_77
action_100 _ = happyReduce_52

action_101 (63) = happyShift action_76
action_101 (64) = happyShift action_77
action_101 _ = happyReduce_51

action_102 (63) = happyShift action_76
action_102 (64) = happyShift action_77
action_102 _ = happyReduce_50

action_103 (63) = happyShift action_76
action_103 (64) = happyShift action_77
action_103 _ = happyReduce_49

action_104 (65) = happyShift action_73
action_104 (66) = happyShift action_74
action_104 (67) = happyShift action_75
action_104 _ = happyReduce_55

action_105 (65) = happyShift action_73
action_105 (66) = happyShift action_74
action_105 (67) = happyShift action_75
action_105 _ = happyReduce_54

action_106 _ = happyReduce_57

action_107 _ = happyReduce_59

action_108 _ = happyReduce_58

action_109 _ = happyReduce_72

action_110 _ = happyReduce_17

action_111 (47) = happyShift action_123
action_111 _ = happyFail

action_112 (47) = happyShift action_122
action_112 _ = happyFail

action_113 (51) = happyShift action_121
action_113 _ = happyFail

action_114 (52) = happyShift action_59
action_114 (53) = happyShift action_60
action_114 (54) = happyShift action_61
action_114 _ = happyFail

action_115 _ = happyReduce_34

action_116 _ = happyReduce_26

action_117 (50) = happyShift action_120
action_117 _ = happyReduce_67

action_118 (47) = happyShift action_119
action_118 _ = happyFail

action_119 _ = happyReduce_66

action_120 (43) = happyShift action_45
action_120 (44) = happyShift action_46
action_120 (45) = happyShift action_47
action_120 (46) = happyShift action_48
action_120 (63) = happyShift action_50
action_120 (64) = happyShift action_51
action_120 (68) = happyShift action_52
action_120 (74) = happyShift action_64
action_120 (23) = happyGoto action_117
action_120 (24) = happyGoto action_34
action_120 (25) = happyGoto action_35
action_120 (26) = happyGoto action_36
action_120 (27) = happyGoto action_37
action_120 (28) = happyGoto action_38
action_120 (29) = happyGoto action_39
action_120 (30) = happyGoto action_40
action_120 (31) = happyGoto action_41
action_120 (32) = happyGoto action_42
action_120 (33) = happyGoto action_129
action_120 (34) = happyGoto action_43
action_120 (35) = happyGoto action_44
action_120 _ = happyReduce_69

action_121 (43) = happyShift action_45
action_121 (44) = happyShift action_46
action_121 (45) = happyShift action_47
action_121 (46) = happyShift action_48
action_121 (63) = happyShift action_50
action_121 (64) = happyShift action_51
action_121 (68) = happyShift action_52
action_121 (74) = happyShift action_64
action_121 (23) = happyGoto action_128
action_121 (24) = happyGoto action_34
action_121 (25) = happyGoto action_35
action_121 (26) = happyGoto action_36
action_121 (27) = happyGoto action_37
action_121 (28) = happyGoto action_38
action_121 (29) = happyGoto action_39
action_121 (30) = happyGoto action_40
action_121 (31) = happyGoto action_41
action_121 (32) = happyGoto action_42
action_121 (34) = happyGoto action_43
action_121 (35) = happyGoto action_44
action_121 _ = happyFail

action_122 (36) = happyShift action_5
action_122 (37) = happyShift action_6
action_122 (38) = happyShift action_7
action_122 (40) = happyShift action_8
action_122 (43) = happyShift action_45
action_122 (44) = happyShift action_46
action_122 (45) = happyShift action_47
action_122 (46) = happyShift action_48
action_122 (48) = happyShift action_49
action_122 (63) = happyShift action_50
action_122 (64) = happyShift action_51
action_122 (68) = happyShift action_52
action_122 (69) = happyShift action_53
action_122 (71) = happyShift action_54
action_122 (72) = happyShift action_55
action_122 (73) = happyShift action_56
action_122 (74) = happyShift action_57
action_122 (9) = happyGoto action_127
action_122 (10) = happyGoto action_22
action_122 (12) = happyGoto action_24
action_122 (15) = happyGoto action_25
action_122 (16) = happyGoto action_26
action_122 (17) = happyGoto action_27
action_122 (18) = happyGoto action_28
action_122 (19) = happyGoto action_29
action_122 (20) = happyGoto action_30
action_122 (21) = happyGoto action_31
action_122 (22) = happyGoto action_32
action_122 (23) = happyGoto action_33
action_122 (24) = happyGoto action_34
action_122 (25) = happyGoto action_35
action_122 (26) = happyGoto action_36
action_122 (27) = happyGoto action_37
action_122 (28) = happyGoto action_38
action_122 (29) = happyGoto action_39
action_122 (30) = happyGoto action_40
action_122 (31) = happyGoto action_41
action_122 (32) = happyGoto action_42
action_122 (34) = happyGoto action_43
action_122 (35) = happyGoto action_44
action_122 _ = happyFail

action_123 (36) = happyShift action_5
action_123 (37) = happyShift action_6
action_123 (38) = happyShift action_7
action_123 (40) = happyShift action_8
action_123 (43) = happyShift action_45
action_123 (44) = happyShift action_46
action_123 (45) = happyShift action_47
action_123 (46) = happyShift action_48
action_123 (48) = happyShift action_49
action_123 (63) = happyShift action_50
action_123 (64) = happyShift action_51
action_123 (68) = happyShift action_52
action_123 (69) = happyShift action_53
action_123 (71) = happyShift action_54
action_123 (72) = happyShift action_55
action_123 (73) = happyShift action_56
action_123 (74) = happyShift action_57
action_123 (9) = happyGoto action_126
action_123 (10) = happyGoto action_22
action_123 (12) = happyGoto action_24
action_123 (15) = happyGoto action_25
action_123 (16) = happyGoto action_26
action_123 (17) = happyGoto action_27
action_123 (18) = happyGoto action_28
action_123 (19) = happyGoto action_29
action_123 (20) = happyGoto action_30
action_123 (21) = happyGoto action_31
action_123 (22) = happyGoto action_32
action_123 (23) = happyGoto action_33
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

action_124 _ = happyReduce_22

action_125 _ = happyReduce_24

action_126 (70) = happyShift action_131
action_126 _ = happyReduce_29

action_127 _ = happyReduce_31

action_128 (51) = happyShift action_130
action_128 _ = happyFail

action_129 _ = happyReduce_68

action_130 (74) = happyShift action_114
action_130 (16) = happyGoto action_133
action_130 _ = happyFail

action_131 (36) = happyShift action_5
action_131 (37) = happyShift action_6
action_131 (38) = happyShift action_7
action_131 (40) = happyShift action_8
action_131 (43) = happyShift action_45
action_131 (44) = happyShift action_46
action_131 (45) = happyShift action_47
action_131 (46) = happyShift action_48
action_131 (48) = happyShift action_49
action_131 (63) = happyShift action_50
action_131 (64) = happyShift action_51
action_131 (68) = happyShift action_52
action_131 (69) = happyShift action_53
action_131 (71) = happyShift action_54
action_131 (72) = happyShift action_55
action_131 (73) = happyShift action_56
action_131 (74) = happyShift action_57
action_131 (9) = happyGoto action_132
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

action_132 _ = happyReduce_30

action_133 (47) = happyShift action_134
action_133 _ = happyFail

action_134 (36) = happyShift action_5
action_134 (37) = happyShift action_6
action_134 (38) = happyShift action_7
action_134 (40) = happyShift action_8
action_134 (43) = happyShift action_45
action_134 (44) = happyShift action_46
action_134 (45) = happyShift action_47
action_134 (46) = happyShift action_48
action_134 (48) = happyShift action_49
action_134 (63) = happyShift action_50
action_134 (64) = happyShift action_51
action_134 (68) = happyShift action_52
action_134 (69) = happyShift action_53
action_134 (71) = happyShift action_54
action_134 (72) = happyShift action_55
action_134 (73) = happyShift action_56
action_134 (74) = happyShift action_57
action_134 (9) = happyGoto action_135
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
action_134 (34) = happyGoto action_43
action_134 (35) = happyGoto action_44
action_134 _ = happyFail

action_135 _ = happyReduce_32

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
		 (ExpComp CompEq happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  26 happyReduction_47
happyReduction_47 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (ExpComp CompNotEq happy_var_1 happy_var_3
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

happyNewToken action sts stk [] =
	action 75 75 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt -> cont 36;
	TDouble -> cont 37;
	TBoolean -> cont 38;
	TString -> cont 39;
	TVoid -> cont 40;
	TFalseLiteral -> cont 41;
	TTrueLiteral -> cont 42;
	TIntLiteral happy_dollar_dollar -> cont 43;
	TDoubleLiteral happy_dollar_dollar -> cont 44;
	TStringLiteral happy_dollar_dollar -> cont 45;
	TLeftParen -> cont 46;
	TRightParen -> cont 47;
	TLeftBrace -> cont 48;
	TRightBrace -> cont 49;
	TComma -> cont 50;
	TSemicolon -> cont 51;
	TAssignSign -> cont 52;
	TIncrement -> cont 53;
	TDecrement -> cont 54;
	TOr -> cont 55;
	TAnd -> cont 56;
	TEqualsSign -> cont 57;
	TNotEqualsSign -> cont 58;
	TLessSign -> cont 59;
	TGreaterSign -> cont 60;
	TLeOrEqSign -> cont 61;
	TGrOrEqSign -> cont 62;
	TPlusSign -> cont 63;
	TMinusSign -> cont 64;
	TDivSign -> cont 65;
	TModSign -> cont 66;
	TMultiSign -> cont 67;
	TNot -> cont 68;
	TIf -> cont 69;
	TElse -> cont 70;
	TWhile -> cont 71;
	TFor -> cont 72;
	TReturn -> cont 73;
	TIdent happy_dollar_dollar -> cont 74;
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
data Comp = CompEq | CompNotEq
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
		| ExpComp Comp Exp Exp
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
