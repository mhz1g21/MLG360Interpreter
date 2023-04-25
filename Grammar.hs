{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,195) ([3040,16380,236,57439,25087,7,32,49392,512,0,0,49342,50175,61454,65029,30239,0,0,0,24704,0,57344,64523,60479,24320,65504,1889,64,0,0,2,0,48640,65472,3779,1520,8190,32886,61487,45311,31747,65409,7559,3040,16380,236,8,0,16384,0,0,0,0,0,0,0,61440,65029,30239,12160,65520,944,33148,34815,57373,64523,60479,24320,65504,1889,0,0,0,256,1920,48646,65472,3779,1520,8190,32886,61487,45311,31747,65409,7559,3040,16380,236,57439,25087,63495,65282,15119,0,0,0,0,0,0,0,0,32768,0,3087,1024,30720,57440,64523,60479,24320,65504,1889,760,65535,49403,63511,57343,7,0,0,0,0,0,0,0,31744,65409,7559,3040,16380,236,0,0,0,4,49392,6080,32760,472,49342,50175,61454,65029,30239,12160,65520,4031,33148,65535,125,32,0,24320,65504,1889,0,0,49152,63511,55423,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12160,65520,4031,33148,65535,57469,64523,60479,24320,65504,1889,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,512,0,63488,65282,64511,6080,65528,2015,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,2048,0,49152,63511,55423,1,4,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseJulio","ExpSeq","Exp","repeat","joinH","joinV","int","var","'='","'('","')'","'{'","'}'","';'","'<<'","'>>'","not","rotate","scale","reflectX","reflectY","'_'","and","or","subtile","gibb","true","false","lt","gt","eq","neq","while","if","else","width","height","print","'+'","'-'","%eof"]
        bit_start = st Prelude.* 43
        bit_end = (st Prelude.+ 1) Prelude.* 43
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..42]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_3
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (12) = happyShift action_8
action_0 (19) = happyShift action_9
action_0 (20) = happyShift action_10
action_0 (21) = happyShift action_11
action_0 (22) = happyShift action_12
action_0 (23) = happyShift action_13
action_0 (24) = happyShift action_14
action_0 (25) = happyShift action_15
action_0 (26) = happyShift action_16
action_0 (27) = happyShift action_17
action_0 (28) = happyShift action_18
action_0 (29) = happyShift action_19
action_0 (30) = happyShift action_20
action_0 (35) = happyShift action_21
action_0 (36) = happyShift action_22
action_0 (38) = happyShift action_23
action_0 (39) = happyShift action_24
action_0 (40) = happyShift action_25
action_0 (4) = happyGoto action_26
action_0 (5) = happyGoto action_27
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_3
action_1 (7) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (9) = happyShift action_6
action_1 (10) = happyShift action_7
action_1 (12) = happyShift action_8
action_1 (19) = happyShift action_9
action_1 (20) = happyShift action_10
action_1 (21) = happyShift action_11
action_1 (22) = happyShift action_12
action_1 (23) = happyShift action_13
action_1 (24) = happyShift action_14
action_1 (25) = happyShift action_15
action_1 (26) = happyShift action_16
action_1 (27) = happyShift action_17
action_1 (28) = happyShift action_18
action_1 (29) = happyShift action_19
action_1 (30) = happyShift action_20
action_1 (35) = happyShift action_21
action_1 (36) = happyShift action_22
action_1 (38) = happyShift action_23
action_1 (39) = happyShift action_24
action_1 (40) = happyShift action_25
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (16) = happyShift action_57
action_2 (31) = happyShift action_29
action_2 (32) = happyShift action_30
action_2 (33) = happyShift action_31
action_2 (34) = happyShift action_32
action_2 (41) = happyShift action_33
action_2 (42) = happyShift action_34
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (9) = happyShift action_56
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (6) = happyShift action_3
action_4 (7) = happyShift action_4
action_4 (8) = happyShift action_5
action_4 (9) = happyShift action_6
action_4 (10) = happyShift action_7
action_4 (12) = happyShift action_8
action_4 (19) = happyShift action_9
action_4 (20) = happyShift action_10
action_4 (21) = happyShift action_11
action_4 (22) = happyShift action_12
action_4 (23) = happyShift action_13
action_4 (24) = happyShift action_14
action_4 (25) = happyShift action_15
action_4 (26) = happyShift action_16
action_4 (27) = happyShift action_17
action_4 (28) = happyShift action_18
action_4 (29) = happyShift action_19
action_4 (30) = happyShift action_20
action_4 (35) = happyShift action_21
action_4 (36) = happyShift action_22
action_4 (38) = happyShift action_23
action_4 (39) = happyShift action_24
action_4 (40) = happyShift action_25
action_4 (5) = happyGoto action_55
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (6) = happyShift action_3
action_5 (7) = happyShift action_4
action_5 (8) = happyShift action_5
action_5 (9) = happyShift action_6
action_5 (10) = happyShift action_7
action_5 (12) = happyShift action_8
action_5 (19) = happyShift action_9
action_5 (20) = happyShift action_10
action_5 (21) = happyShift action_11
action_5 (22) = happyShift action_12
action_5 (23) = happyShift action_13
action_5 (24) = happyShift action_14
action_5 (25) = happyShift action_15
action_5 (26) = happyShift action_16
action_5 (27) = happyShift action_17
action_5 (28) = happyShift action_18
action_5 (29) = happyShift action_19
action_5 (30) = happyShift action_20
action_5 (35) = happyShift action_21
action_5 (36) = happyShift action_22
action_5 (38) = happyShift action_23
action_5 (39) = happyShift action_24
action_5 (40) = happyShift action_25
action_5 (5) = happyGoto action_54
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_7

action_7 (11) = happyShift action_51
action_7 (17) = happyShift action_52
action_7 (18) = happyShift action_53
action_7 _ = happyReduce_8

action_8 (6) = happyShift action_3
action_8 (7) = happyShift action_4
action_8 (8) = happyShift action_5
action_8 (9) = happyShift action_6
action_8 (10) = happyShift action_7
action_8 (12) = happyShift action_8
action_8 (19) = happyShift action_9
action_8 (20) = happyShift action_10
action_8 (21) = happyShift action_11
action_8 (22) = happyShift action_12
action_8 (23) = happyShift action_13
action_8 (24) = happyShift action_14
action_8 (25) = happyShift action_15
action_8 (26) = happyShift action_16
action_8 (27) = happyShift action_17
action_8 (28) = happyShift action_18
action_8 (29) = happyShift action_19
action_8 (30) = happyShift action_20
action_8 (35) = happyShift action_21
action_8 (36) = happyShift action_22
action_8 (38) = happyShift action_23
action_8 (39) = happyShift action_24
action_8 (40) = happyShift action_25
action_8 (5) = happyGoto action_50
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_3
action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (9) = happyShift action_6
action_9 (10) = happyShift action_7
action_9 (12) = happyShift action_8
action_9 (19) = happyShift action_9
action_9 (20) = happyShift action_10
action_9 (21) = happyShift action_11
action_9 (22) = happyShift action_12
action_9 (23) = happyShift action_13
action_9 (24) = happyShift action_14
action_9 (25) = happyShift action_15
action_9 (26) = happyShift action_16
action_9 (27) = happyShift action_17
action_9 (28) = happyShift action_18
action_9 (29) = happyShift action_19
action_9 (30) = happyShift action_20
action_9 (35) = happyShift action_21
action_9 (36) = happyShift action_22
action_9 (38) = happyShift action_23
action_9 (39) = happyShift action_24
action_9 (40) = happyShift action_25
action_9 (5) = happyGoto action_49
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (9) = happyShift action_48
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (9) = happyShift action_47
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_3
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (9) = happyShift action_6
action_12 (10) = happyShift action_7
action_12 (12) = happyShift action_8
action_12 (19) = happyShift action_9
action_12 (20) = happyShift action_10
action_12 (21) = happyShift action_11
action_12 (22) = happyShift action_12
action_12 (23) = happyShift action_13
action_12 (24) = happyShift action_14
action_12 (25) = happyShift action_15
action_12 (26) = happyShift action_16
action_12 (27) = happyShift action_17
action_12 (28) = happyShift action_18
action_12 (29) = happyShift action_19
action_12 (30) = happyShift action_20
action_12 (35) = happyShift action_21
action_12 (36) = happyShift action_22
action_12 (38) = happyShift action_23
action_12 (39) = happyShift action_24
action_12 (40) = happyShift action_25
action_12 (5) = happyGoto action_46
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_3
action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (9) = happyShift action_6
action_13 (10) = happyShift action_7
action_13 (12) = happyShift action_8
action_13 (19) = happyShift action_9
action_13 (20) = happyShift action_10
action_13 (21) = happyShift action_11
action_13 (22) = happyShift action_12
action_13 (23) = happyShift action_13
action_13 (24) = happyShift action_14
action_13 (25) = happyShift action_15
action_13 (26) = happyShift action_16
action_13 (27) = happyShift action_17
action_13 (28) = happyShift action_18
action_13 (29) = happyShift action_19
action_13 (30) = happyShift action_20
action_13 (35) = happyShift action_21
action_13 (36) = happyShift action_22
action_13 (38) = happyShift action_23
action_13 (39) = happyShift action_24
action_13 (40) = happyShift action_25
action_13 (5) = happyGoto action_45
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_3
action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_5
action_14 (9) = happyShift action_6
action_14 (10) = happyShift action_7
action_14 (12) = happyShift action_8
action_14 (19) = happyShift action_9
action_14 (20) = happyShift action_10
action_14 (21) = happyShift action_11
action_14 (22) = happyShift action_12
action_14 (23) = happyShift action_13
action_14 (24) = happyShift action_14
action_14 (25) = happyShift action_15
action_14 (26) = happyShift action_16
action_14 (27) = happyShift action_17
action_14 (28) = happyShift action_18
action_14 (29) = happyShift action_19
action_14 (30) = happyShift action_20
action_14 (35) = happyShift action_21
action_14 (36) = happyShift action_22
action_14 (38) = happyShift action_23
action_14 (39) = happyShift action_24
action_14 (40) = happyShift action_25
action_14 (5) = happyGoto action_44
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_3
action_15 (7) = happyShift action_4
action_15 (8) = happyShift action_5
action_15 (9) = happyShift action_6
action_15 (10) = happyShift action_7
action_15 (12) = happyShift action_8
action_15 (19) = happyShift action_9
action_15 (20) = happyShift action_10
action_15 (21) = happyShift action_11
action_15 (22) = happyShift action_12
action_15 (23) = happyShift action_13
action_15 (24) = happyShift action_14
action_15 (25) = happyShift action_15
action_15 (26) = happyShift action_16
action_15 (27) = happyShift action_17
action_15 (28) = happyShift action_18
action_15 (29) = happyShift action_19
action_15 (30) = happyShift action_20
action_15 (35) = happyShift action_21
action_15 (36) = happyShift action_22
action_15 (38) = happyShift action_23
action_15 (39) = happyShift action_24
action_15 (40) = happyShift action_25
action_15 (5) = happyGoto action_43
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_3
action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (9) = happyShift action_6
action_16 (10) = happyShift action_7
action_16 (12) = happyShift action_8
action_16 (19) = happyShift action_9
action_16 (20) = happyShift action_10
action_16 (21) = happyShift action_11
action_16 (22) = happyShift action_12
action_16 (23) = happyShift action_13
action_16 (24) = happyShift action_14
action_16 (25) = happyShift action_15
action_16 (26) = happyShift action_16
action_16 (27) = happyShift action_17
action_16 (28) = happyShift action_18
action_16 (29) = happyShift action_19
action_16 (30) = happyShift action_20
action_16 (35) = happyShift action_21
action_16 (36) = happyShift action_22
action_16 (38) = happyShift action_23
action_16 (39) = happyShift action_24
action_16 (40) = happyShift action_25
action_16 (5) = happyGoto action_42
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (9) = happyShift action_41
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (9) = happyShift action_40
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_22

action_20 _ = happyReduce_23

action_21 (6) = happyShift action_3
action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (9) = happyShift action_6
action_21 (10) = happyShift action_7
action_21 (12) = happyShift action_8
action_21 (19) = happyShift action_9
action_21 (20) = happyShift action_10
action_21 (21) = happyShift action_11
action_21 (22) = happyShift action_12
action_21 (23) = happyShift action_13
action_21 (24) = happyShift action_14
action_21 (25) = happyShift action_15
action_21 (26) = happyShift action_16
action_21 (27) = happyShift action_17
action_21 (28) = happyShift action_18
action_21 (29) = happyShift action_19
action_21 (30) = happyShift action_20
action_21 (35) = happyShift action_21
action_21 (36) = happyShift action_22
action_21 (38) = happyShift action_23
action_21 (39) = happyShift action_24
action_21 (40) = happyShift action_25
action_21 (5) = happyGoto action_39
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_3
action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (9) = happyShift action_6
action_22 (10) = happyShift action_7
action_22 (12) = happyShift action_8
action_22 (19) = happyShift action_9
action_22 (20) = happyShift action_10
action_22 (21) = happyShift action_11
action_22 (22) = happyShift action_12
action_22 (23) = happyShift action_13
action_22 (24) = happyShift action_14
action_22 (25) = happyShift action_15
action_22 (26) = happyShift action_16
action_22 (27) = happyShift action_17
action_22 (28) = happyShift action_18
action_22 (29) = happyShift action_19
action_22 (30) = happyShift action_20
action_22 (35) = happyShift action_21
action_22 (36) = happyShift action_22
action_22 (38) = happyShift action_23
action_22 (39) = happyShift action_24
action_22 (40) = happyShift action_25
action_22 (5) = happyGoto action_38
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_3
action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (9) = happyShift action_6
action_23 (10) = happyShift action_7
action_23 (12) = happyShift action_8
action_23 (19) = happyShift action_9
action_23 (20) = happyShift action_10
action_23 (21) = happyShift action_11
action_23 (22) = happyShift action_12
action_23 (23) = happyShift action_13
action_23 (24) = happyShift action_14
action_23 (25) = happyShift action_15
action_23 (26) = happyShift action_16
action_23 (27) = happyShift action_17
action_23 (28) = happyShift action_18
action_23 (29) = happyShift action_19
action_23 (30) = happyShift action_20
action_23 (35) = happyShift action_21
action_23 (36) = happyShift action_22
action_23 (38) = happyShift action_23
action_23 (39) = happyShift action_24
action_23 (40) = happyShift action_25
action_23 (5) = happyGoto action_37
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_3
action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (9) = happyShift action_6
action_24 (10) = happyShift action_7
action_24 (12) = happyShift action_8
action_24 (19) = happyShift action_9
action_24 (20) = happyShift action_10
action_24 (21) = happyShift action_11
action_24 (22) = happyShift action_12
action_24 (23) = happyShift action_13
action_24 (24) = happyShift action_14
action_24 (25) = happyShift action_15
action_24 (26) = happyShift action_16
action_24 (27) = happyShift action_17
action_24 (28) = happyShift action_18
action_24 (29) = happyShift action_19
action_24 (30) = happyShift action_20
action_24 (35) = happyShift action_21
action_24 (36) = happyShift action_22
action_24 (38) = happyShift action_23
action_24 (39) = happyShift action_24
action_24 (40) = happyShift action_25
action_24 (5) = happyGoto action_36
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_3
action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (9) = happyShift action_6
action_25 (10) = happyShift action_7
action_25 (12) = happyShift action_8
action_25 (19) = happyShift action_9
action_25 (20) = happyShift action_10
action_25 (21) = happyShift action_11
action_25 (22) = happyShift action_12
action_25 (23) = happyShift action_13
action_25 (24) = happyShift action_14
action_25 (25) = happyShift action_15
action_25 (26) = happyShift action_16
action_25 (27) = happyShift action_17
action_25 (28) = happyShift action_18
action_25 (29) = happyShift action_19
action_25 (30) = happyShift action_20
action_25 (35) = happyShift action_21
action_25 (36) = happyShift action_22
action_25 (38) = happyShift action_23
action_25 (39) = happyShift action_24
action_25 (40) = happyShift action_25
action_25 (5) = happyGoto action_35
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (43) = happyAccept
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (16) = happyShift action_28
action_27 (31) = happyShift action_29
action_27 (32) = happyShift action_30
action_27 (33) = happyShift action_31
action_27 (34) = happyShift action_32
action_27 (41) = happyShift action_33
action_27 (42) = happyShift action_34
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_3
action_28 (7) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (9) = happyShift action_6
action_28 (10) = happyShift action_7
action_28 (12) = happyShift action_8
action_28 (19) = happyShift action_9
action_28 (20) = happyShift action_10
action_28 (21) = happyShift action_11
action_28 (22) = happyShift action_12
action_28 (23) = happyShift action_13
action_28 (24) = happyShift action_14
action_28 (25) = happyShift action_15
action_28 (26) = happyShift action_16
action_28 (27) = happyShift action_17
action_28 (28) = happyShift action_18
action_28 (29) = happyShift action_19
action_28 (30) = happyShift action_20
action_28 (35) = happyShift action_21
action_28 (36) = happyShift action_22
action_28 (38) = happyShift action_23
action_28 (39) = happyShift action_24
action_28 (40) = happyShift action_25
action_28 (4) = happyGoto action_58
action_28 (5) = happyGoto action_27
action_28 _ = happyReduce_2

action_29 (6) = happyShift action_3
action_29 (7) = happyShift action_4
action_29 (8) = happyShift action_5
action_29 (9) = happyShift action_6
action_29 (10) = happyShift action_7
action_29 (12) = happyShift action_8
action_29 (19) = happyShift action_9
action_29 (20) = happyShift action_10
action_29 (21) = happyShift action_11
action_29 (22) = happyShift action_12
action_29 (23) = happyShift action_13
action_29 (24) = happyShift action_14
action_29 (25) = happyShift action_15
action_29 (26) = happyShift action_16
action_29 (27) = happyShift action_17
action_29 (28) = happyShift action_18
action_29 (29) = happyShift action_19
action_29 (30) = happyShift action_20
action_29 (35) = happyShift action_21
action_29 (36) = happyShift action_22
action_29 (38) = happyShift action_23
action_29 (39) = happyShift action_24
action_29 (40) = happyShift action_25
action_29 (5) = happyGoto action_79
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_3
action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (9) = happyShift action_6
action_30 (10) = happyShift action_7
action_30 (12) = happyShift action_8
action_30 (19) = happyShift action_9
action_30 (20) = happyShift action_10
action_30 (21) = happyShift action_11
action_30 (22) = happyShift action_12
action_30 (23) = happyShift action_13
action_30 (24) = happyShift action_14
action_30 (25) = happyShift action_15
action_30 (26) = happyShift action_16
action_30 (27) = happyShift action_17
action_30 (28) = happyShift action_18
action_30 (29) = happyShift action_19
action_30 (30) = happyShift action_20
action_30 (35) = happyShift action_21
action_30 (36) = happyShift action_22
action_30 (38) = happyShift action_23
action_30 (39) = happyShift action_24
action_30 (40) = happyShift action_25
action_30 (5) = happyGoto action_78
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_3
action_31 (7) = happyShift action_4
action_31 (8) = happyShift action_5
action_31 (9) = happyShift action_6
action_31 (10) = happyShift action_7
action_31 (12) = happyShift action_8
action_31 (19) = happyShift action_9
action_31 (20) = happyShift action_10
action_31 (21) = happyShift action_11
action_31 (22) = happyShift action_12
action_31 (23) = happyShift action_13
action_31 (24) = happyShift action_14
action_31 (25) = happyShift action_15
action_31 (26) = happyShift action_16
action_31 (27) = happyShift action_17
action_31 (28) = happyShift action_18
action_31 (29) = happyShift action_19
action_31 (30) = happyShift action_20
action_31 (35) = happyShift action_21
action_31 (36) = happyShift action_22
action_31 (38) = happyShift action_23
action_31 (39) = happyShift action_24
action_31 (40) = happyShift action_25
action_31 (5) = happyGoto action_77
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_3
action_32 (7) = happyShift action_4
action_32 (8) = happyShift action_5
action_32 (9) = happyShift action_6
action_32 (10) = happyShift action_7
action_32 (12) = happyShift action_8
action_32 (19) = happyShift action_9
action_32 (20) = happyShift action_10
action_32 (21) = happyShift action_11
action_32 (22) = happyShift action_12
action_32 (23) = happyShift action_13
action_32 (24) = happyShift action_14
action_32 (25) = happyShift action_15
action_32 (26) = happyShift action_16
action_32 (27) = happyShift action_17
action_32 (28) = happyShift action_18
action_32 (29) = happyShift action_19
action_32 (30) = happyShift action_20
action_32 (35) = happyShift action_21
action_32 (36) = happyShift action_22
action_32 (38) = happyShift action_23
action_32 (39) = happyShift action_24
action_32 (40) = happyShift action_25
action_32 (5) = happyGoto action_76
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_3
action_33 (7) = happyShift action_4
action_33 (8) = happyShift action_5
action_33 (9) = happyShift action_6
action_33 (10) = happyShift action_7
action_33 (12) = happyShift action_8
action_33 (19) = happyShift action_9
action_33 (20) = happyShift action_10
action_33 (21) = happyShift action_11
action_33 (22) = happyShift action_12
action_33 (23) = happyShift action_13
action_33 (24) = happyShift action_14
action_33 (25) = happyShift action_15
action_33 (26) = happyShift action_16
action_33 (27) = happyShift action_17
action_33 (28) = happyShift action_18
action_33 (29) = happyShift action_19
action_33 (30) = happyShift action_20
action_33 (35) = happyShift action_21
action_33 (36) = happyShift action_22
action_33 (38) = happyShift action_23
action_33 (39) = happyShift action_24
action_33 (40) = happyShift action_25
action_33 (5) = happyGoto action_75
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_3
action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (9) = happyShift action_6
action_34 (10) = happyShift action_7
action_34 (12) = happyShift action_8
action_34 (19) = happyShift action_9
action_34 (20) = happyShift action_10
action_34 (21) = happyShift action_11
action_34 (22) = happyShift action_12
action_34 (23) = happyShift action_13
action_34 (24) = happyShift action_14
action_34 (25) = happyShift action_15
action_34 (26) = happyShift action_16
action_34 (27) = happyShift action_17
action_34 (28) = happyShift action_18
action_34 (29) = happyShift action_19
action_34 (30) = happyShift action_20
action_34 (35) = happyShift action_21
action_34 (36) = happyShift action_22
action_34 (38) = happyShift action_23
action_34 (39) = happyShift action_24
action_34 (40) = happyShift action_25
action_34 (5) = happyGoto action_74
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (31) = happyShift action_29
action_35 (32) = happyShift action_30
action_35 (33) = happyShift action_31
action_35 (34) = happyShift action_32
action_35 (41) = happyShift action_33
action_35 (42) = happyShift action_34
action_35 _ = happyReduce_33

action_36 (31) = happyShift action_29
action_36 (32) = happyShift action_30
action_36 (33) = happyShift action_31
action_36 (34) = happyShift action_32
action_36 (41) = happyShift action_33
action_36 (42) = happyShift action_34
action_36 _ = happyReduce_32

action_37 (31) = happyShift action_29
action_37 (32) = happyShift action_30
action_37 (33) = happyShift action_31
action_37 (34) = happyShift action_32
action_37 (41) = happyShift action_33
action_37 (42) = happyShift action_34
action_37 _ = happyReduce_31

action_38 (14) = happyShift action_73
action_38 (31) = happyShift action_29
action_38 (32) = happyShift action_30
action_38 (33) = happyShift action_31
action_38 (34) = happyShift action_32
action_38 (41) = happyShift action_33
action_38 (42) = happyShift action_34
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (14) = happyShift action_72
action_39 (31) = happyShift action_29
action_39 (32) = happyShift action_30
action_39 (33) = happyShift action_31
action_39 (34) = happyShift action_32
action_39 (41) = happyShift action_33
action_39 (42) = happyShift action_34
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (6) = happyShift action_3
action_40 (7) = happyShift action_4
action_40 (8) = happyShift action_5
action_40 (9) = happyShift action_6
action_40 (10) = happyShift action_7
action_40 (12) = happyShift action_8
action_40 (19) = happyShift action_9
action_40 (20) = happyShift action_10
action_40 (21) = happyShift action_11
action_40 (22) = happyShift action_12
action_40 (23) = happyShift action_13
action_40 (24) = happyShift action_14
action_40 (25) = happyShift action_15
action_40 (26) = happyShift action_16
action_40 (27) = happyShift action_17
action_40 (28) = happyShift action_18
action_40 (29) = happyShift action_19
action_40 (30) = happyShift action_20
action_40 (35) = happyShift action_21
action_40 (36) = happyShift action_22
action_40 (38) = happyShift action_23
action_40 (39) = happyShift action_24
action_40 (40) = happyShift action_25
action_40 (5) = happyGoto action_71
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (6) = happyShift action_3
action_41 (7) = happyShift action_4
action_41 (8) = happyShift action_5
action_41 (9) = happyShift action_6
action_41 (10) = happyShift action_7
action_41 (12) = happyShift action_8
action_41 (19) = happyShift action_9
action_41 (20) = happyShift action_10
action_41 (21) = happyShift action_11
action_41 (22) = happyShift action_12
action_41 (23) = happyShift action_13
action_41 (24) = happyShift action_14
action_41 (25) = happyShift action_15
action_41 (26) = happyShift action_16
action_41 (27) = happyShift action_17
action_41 (28) = happyShift action_18
action_41 (29) = happyShift action_19
action_41 (30) = happyShift action_20
action_41 (35) = happyShift action_21
action_41 (36) = happyShift action_22
action_41 (38) = happyShift action_23
action_41 (39) = happyShift action_24
action_41 (40) = happyShift action_25
action_41 (5) = happyGoto action_70
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_3
action_42 (7) = happyShift action_4
action_42 (8) = happyShift action_5
action_42 (9) = happyShift action_6
action_42 (10) = happyShift action_7
action_42 (12) = happyShift action_8
action_42 (19) = happyShift action_9
action_42 (20) = happyShift action_10
action_42 (21) = happyShift action_11
action_42 (22) = happyShift action_12
action_42 (23) = happyShift action_13
action_42 (24) = happyShift action_14
action_42 (25) = happyShift action_15
action_42 (26) = happyShift action_16
action_42 (27) = happyShift action_17
action_42 (28) = happyShift action_18
action_42 (29) = happyShift action_19
action_42 (30) = happyShift action_20
action_42 (31) = happyShift action_29
action_42 (32) = happyShift action_30
action_42 (33) = happyShift action_31
action_42 (34) = happyShift action_32
action_42 (35) = happyShift action_21
action_42 (36) = happyShift action_22
action_42 (38) = happyShift action_23
action_42 (39) = happyShift action_24
action_42 (40) = happyShift action_25
action_42 (41) = happyShift action_33
action_42 (42) = happyShift action_34
action_42 (5) = happyGoto action_69
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (6) = happyShift action_3
action_43 (7) = happyShift action_4
action_43 (8) = happyShift action_5
action_43 (9) = happyShift action_6
action_43 (10) = happyShift action_7
action_43 (12) = happyShift action_8
action_43 (19) = happyShift action_9
action_43 (20) = happyShift action_10
action_43 (21) = happyShift action_11
action_43 (22) = happyShift action_12
action_43 (23) = happyShift action_13
action_43 (24) = happyShift action_14
action_43 (25) = happyShift action_15
action_43 (26) = happyShift action_16
action_43 (27) = happyShift action_17
action_43 (28) = happyShift action_18
action_43 (29) = happyShift action_19
action_43 (30) = happyShift action_20
action_43 (31) = happyShift action_29
action_43 (32) = happyShift action_30
action_43 (33) = happyShift action_31
action_43 (34) = happyShift action_32
action_43 (35) = happyShift action_21
action_43 (36) = happyShift action_22
action_43 (38) = happyShift action_23
action_43 (39) = happyShift action_24
action_43 (40) = happyShift action_25
action_43 (41) = happyShift action_33
action_43 (42) = happyShift action_34
action_43 (5) = happyGoto action_68
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (31) = happyShift action_29
action_44 (32) = happyShift action_30
action_44 (33) = happyShift action_31
action_44 (34) = happyShift action_32
action_44 (41) = happyShift action_33
action_44 (42) = happyShift action_34
action_44 _ = happyReduce_17

action_45 (31) = happyShift action_29
action_45 (32) = happyShift action_30
action_45 (33) = happyShift action_31
action_45 (34) = happyShift action_32
action_45 (41) = happyShift action_33
action_45 (42) = happyShift action_34
action_45 _ = happyReduce_16

action_46 (31) = happyShift action_29
action_46 (32) = happyShift action_30
action_46 (33) = happyShift action_31
action_46 (34) = happyShift action_32
action_46 (41) = happyShift action_33
action_46 (42) = happyShift action_34
action_46 _ = happyReduce_15

action_47 (6) = happyShift action_3
action_47 (7) = happyShift action_4
action_47 (8) = happyShift action_5
action_47 (9) = happyShift action_6
action_47 (10) = happyShift action_7
action_47 (12) = happyShift action_8
action_47 (19) = happyShift action_9
action_47 (20) = happyShift action_10
action_47 (21) = happyShift action_11
action_47 (22) = happyShift action_12
action_47 (23) = happyShift action_13
action_47 (24) = happyShift action_14
action_47 (25) = happyShift action_15
action_47 (26) = happyShift action_16
action_47 (27) = happyShift action_17
action_47 (28) = happyShift action_18
action_47 (29) = happyShift action_19
action_47 (30) = happyShift action_20
action_47 (35) = happyShift action_21
action_47 (36) = happyShift action_22
action_47 (38) = happyShift action_23
action_47 (39) = happyShift action_24
action_47 (40) = happyShift action_25
action_47 (5) = happyGoto action_67
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (6) = happyShift action_3
action_48 (7) = happyShift action_4
action_48 (8) = happyShift action_5
action_48 (9) = happyShift action_6
action_48 (10) = happyShift action_7
action_48 (12) = happyShift action_8
action_48 (19) = happyShift action_9
action_48 (20) = happyShift action_10
action_48 (21) = happyShift action_11
action_48 (22) = happyShift action_12
action_48 (23) = happyShift action_13
action_48 (24) = happyShift action_14
action_48 (25) = happyShift action_15
action_48 (26) = happyShift action_16
action_48 (27) = happyShift action_17
action_48 (28) = happyShift action_18
action_48 (29) = happyShift action_19
action_48 (30) = happyShift action_20
action_48 (35) = happyShift action_21
action_48 (36) = happyShift action_22
action_48 (38) = happyShift action_23
action_48 (39) = happyShift action_24
action_48 (40) = happyShift action_25
action_48 (5) = happyGoto action_66
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (31) = happyShift action_29
action_49 (32) = happyShift action_30
action_49 (33) = happyShift action_31
action_49 (34) = happyShift action_32
action_49 (41) = happyShift action_33
action_49 (42) = happyShift action_34
action_49 _ = happyReduce_12

action_50 (13) = happyShift action_65
action_50 (31) = happyShift action_29
action_50 (32) = happyShift action_30
action_50 (33) = happyShift action_31
action_50 (34) = happyShift action_32
action_50 (41) = happyShift action_33
action_50 (42) = happyShift action_34
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_3
action_51 (7) = happyShift action_4
action_51 (8) = happyShift action_5
action_51 (9) = happyShift action_6
action_51 (10) = happyShift action_7
action_51 (12) = happyShift action_8
action_51 (19) = happyShift action_9
action_51 (20) = happyShift action_10
action_51 (21) = happyShift action_11
action_51 (22) = happyShift action_12
action_51 (23) = happyShift action_13
action_51 (24) = happyShift action_14
action_51 (25) = happyShift action_15
action_51 (26) = happyShift action_16
action_51 (27) = happyShift action_17
action_51 (28) = happyShift action_18
action_51 (29) = happyShift action_19
action_51 (30) = happyShift action_20
action_51 (35) = happyShift action_21
action_51 (36) = happyShift action_22
action_51 (38) = happyShift action_23
action_51 (39) = happyShift action_24
action_51 (40) = happyShift action_25
action_51 (5) = happyGoto action_64
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_3
action_52 (7) = happyShift action_4
action_52 (8) = happyShift action_5
action_52 (9) = happyShift action_6
action_52 (10) = happyShift action_7
action_52 (12) = happyShift action_8
action_52 (19) = happyShift action_9
action_52 (20) = happyShift action_10
action_52 (21) = happyShift action_11
action_52 (22) = happyShift action_12
action_52 (23) = happyShift action_13
action_52 (24) = happyShift action_14
action_52 (25) = happyShift action_15
action_52 (26) = happyShift action_16
action_52 (27) = happyShift action_17
action_52 (28) = happyShift action_18
action_52 (29) = happyShift action_19
action_52 (30) = happyShift action_20
action_52 (35) = happyShift action_21
action_52 (36) = happyShift action_22
action_52 (38) = happyShift action_23
action_52 (39) = happyShift action_24
action_52 (40) = happyShift action_25
action_52 (5) = happyGoto action_63
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_3
action_53 (7) = happyShift action_4
action_53 (8) = happyShift action_5
action_53 (9) = happyShift action_6
action_53 (10) = happyShift action_7
action_53 (12) = happyShift action_8
action_53 (19) = happyShift action_9
action_53 (20) = happyShift action_10
action_53 (21) = happyShift action_11
action_53 (22) = happyShift action_12
action_53 (23) = happyShift action_13
action_53 (24) = happyShift action_14
action_53 (25) = happyShift action_15
action_53 (26) = happyShift action_16
action_53 (27) = happyShift action_17
action_53 (28) = happyShift action_18
action_53 (29) = happyShift action_19
action_53 (30) = happyShift action_20
action_53 (35) = happyShift action_21
action_53 (36) = happyShift action_22
action_53 (38) = happyShift action_23
action_53 (39) = happyShift action_24
action_53 (40) = happyShift action_25
action_53 (5) = happyGoto action_62
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_3
action_54 (7) = happyShift action_4
action_54 (8) = happyShift action_5
action_54 (9) = happyShift action_6
action_54 (10) = happyShift action_7
action_54 (12) = happyShift action_8
action_54 (19) = happyShift action_9
action_54 (20) = happyShift action_10
action_54 (21) = happyShift action_11
action_54 (22) = happyShift action_12
action_54 (23) = happyShift action_13
action_54 (24) = happyShift action_14
action_54 (25) = happyShift action_15
action_54 (26) = happyShift action_16
action_54 (27) = happyShift action_17
action_54 (28) = happyShift action_18
action_54 (29) = happyShift action_19
action_54 (30) = happyShift action_20
action_54 (31) = happyShift action_29
action_54 (32) = happyShift action_30
action_54 (33) = happyShift action_31
action_54 (34) = happyShift action_32
action_54 (35) = happyShift action_21
action_54 (36) = happyShift action_22
action_54 (38) = happyShift action_23
action_54 (39) = happyShift action_24
action_54 (40) = happyShift action_25
action_54 (41) = happyShift action_33
action_54 (42) = happyShift action_34
action_54 (5) = happyGoto action_61
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_3
action_55 (7) = happyShift action_4
action_55 (8) = happyShift action_5
action_55 (9) = happyShift action_6
action_55 (10) = happyShift action_7
action_55 (12) = happyShift action_8
action_55 (19) = happyShift action_9
action_55 (20) = happyShift action_10
action_55 (21) = happyShift action_11
action_55 (22) = happyShift action_12
action_55 (23) = happyShift action_13
action_55 (24) = happyShift action_14
action_55 (25) = happyShift action_15
action_55 (26) = happyShift action_16
action_55 (27) = happyShift action_17
action_55 (28) = happyShift action_18
action_55 (29) = happyShift action_19
action_55 (30) = happyShift action_20
action_55 (31) = happyShift action_29
action_55 (32) = happyShift action_30
action_55 (33) = happyShift action_31
action_55 (34) = happyShift action_32
action_55 (35) = happyShift action_21
action_55 (36) = happyShift action_22
action_55 (38) = happyShift action_23
action_55 (39) = happyShift action_24
action_55 (40) = happyShift action_25
action_55 (41) = happyShift action_33
action_55 (42) = happyShift action_34
action_55 (5) = happyGoto action_60
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (14) = happyShift action_59
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (6) = happyShift action_3
action_57 (7) = happyShift action_4
action_57 (8) = happyShift action_5
action_57 (9) = happyShift action_6
action_57 (10) = happyShift action_7
action_57 (12) = happyShift action_8
action_57 (19) = happyShift action_9
action_57 (20) = happyShift action_10
action_57 (21) = happyShift action_11
action_57 (22) = happyShift action_12
action_57 (23) = happyShift action_13
action_57 (24) = happyShift action_14
action_57 (25) = happyShift action_15
action_57 (26) = happyShift action_16
action_57 (27) = happyShift action_17
action_57 (28) = happyShift action_18
action_57 (29) = happyShift action_19
action_57 (30) = happyShift action_20
action_57 (35) = happyShift action_21
action_57 (36) = happyShift action_22
action_57 (38) = happyShift action_23
action_57 (39) = happyShift action_24
action_57 (40) = happyShift action_25
action_57 (4) = happyGoto action_58
action_57 (5) = happyGoto action_27
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_1

action_59 (6) = happyShift action_3
action_59 (7) = happyShift action_4
action_59 (8) = happyShift action_5
action_59 (9) = happyShift action_6
action_59 (10) = happyShift action_7
action_59 (12) = happyShift action_8
action_59 (19) = happyShift action_9
action_59 (20) = happyShift action_10
action_59 (21) = happyShift action_11
action_59 (22) = happyShift action_12
action_59 (23) = happyShift action_13
action_59 (24) = happyShift action_14
action_59 (25) = happyShift action_15
action_59 (26) = happyShift action_16
action_59 (27) = happyShift action_17
action_59 (28) = happyShift action_18
action_59 (29) = happyShift action_19
action_59 (30) = happyShift action_20
action_59 (35) = happyShift action_21
action_59 (36) = happyShift action_22
action_59 (38) = happyShift action_23
action_59 (39) = happyShift action_24
action_59 (40) = happyShift action_25
action_59 (4) = happyGoto action_84
action_59 (5) = happyGoto action_27
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (31) = happyShift action_29
action_60 (32) = happyShift action_30
action_60 (33) = happyShift action_31
action_60 (34) = happyShift action_32
action_60 (41) = happyShift action_33
action_60 (42) = happyShift action_34
action_60 _ = happyReduce_4

action_61 (31) = happyShift action_29
action_61 (32) = happyShift action_30
action_61 (33) = happyShift action_31
action_61 (34) = happyShift action_32
action_61 (41) = happyShift action_33
action_61 (42) = happyShift action_34
action_61 _ = happyReduce_6

action_62 (31) = happyShift action_29
action_62 (32) = happyShift action_30
action_62 (33) = happyShift action_31
action_62 (34) = happyShift action_32
action_62 (41) = happyShift action_33
action_62 (42) = happyShift action_34
action_62 _ = happyReduce_11

action_63 (31) = happyShift action_29
action_63 (32) = happyShift action_30
action_63 (33) = happyShift action_31
action_63 (34) = happyShift action_32
action_63 (41) = happyShift action_33
action_63 (42) = happyShift action_34
action_63 _ = happyReduce_10

action_64 (31) = happyShift action_29
action_64 (32) = happyShift action_30
action_64 (33) = happyShift action_31
action_64 (34) = happyShift action_32
action_64 (41) = happyShift action_33
action_64 (42) = happyShift action_34
action_64 _ = happyReduce_9

action_65 _ = happyReduce_5

action_66 (31) = happyShift action_29
action_66 (32) = happyShift action_30
action_66 (33) = happyShift action_31
action_66 (34) = happyShift action_32
action_66 (41) = happyShift action_33
action_66 (42) = happyShift action_34
action_66 _ = happyReduce_13

action_67 (31) = happyShift action_29
action_67 (32) = happyShift action_30
action_67 (33) = happyShift action_31
action_67 (34) = happyShift action_32
action_67 (41) = happyShift action_33
action_67 (42) = happyShift action_34
action_67 _ = happyReduce_14

action_68 (31) = happyShift action_29
action_68 (32) = happyShift action_30
action_68 (33) = happyShift action_31
action_68 (34) = happyShift action_32
action_68 (41) = happyShift action_33
action_68 (42) = happyShift action_34
action_68 _ = happyReduce_18

action_69 (31) = happyShift action_29
action_69 (32) = happyShift action_30
action_69 (33) = happyShift action_31
action_69 (34) = happyShift action_32
action_69 (41) = happyShift action_33
action_69 (42) = happyShift action_34
action_69 _ = happyReduce_19

action_70 (6) = happyShift action_3
action_70 (7) = happyShift action_4
action_70 (8) = happyShift action_5
action_70 (9) = happyShift action_6
action_70 (10) = happyShift action_7
action_70 (12) = happyShift action_8
action_70 (19) = happyShift action_9
action_70 (20) = happyShift action_10
action_70 (21) = happyShift action_11
action_70 (22) = happyShift action_12
action_70 (23) = happyShift action_13
action_70 (24) = happyShift action_14
action_70 (25) = happyShift action_15
action_70 (26) = happyShift action_16
action_70 (27) = happyShift action_17
action_70 (28) = happyShift action_18
action_70 (29) = happyShift action_19
action_70 (30) = happyShift action_20
action_70 (31) = happyShift action_29
action_70 (32) = happyShift action_30
action_70 (33) = happyShift action_31
action_70 (34) = happyShift action_32
action_70 (35) = happyShift action_21
action_70 (36) = happyShift action_22
action_70 (38) = happyShift action_23
action_70 (39) = happyShift action_24
action_70 (40) = happyShift action_25
action_70 (41) = happyShift action_33
action_70 (42) = happyShift action_34
action_70 (5) = happyGoto action_83
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (6) = happyShift action_3
action_71 (7) = happyShift action_4
action_71 (8) = happyShift action_5
action_71 (9) = happyShift action_6
action_71 (10) = happyShift action_7
action_71 (12) = happyShift action_8
action_71 (19) = happyShift action_9
action_71 (20) = happyShift action_10
action_71 (21) = happyShift action_11
action_71 (22) = happyShift action_12
action_71 (23) = happyShift action_13
action_71 (24) = happyShift action_14
action_71 (25) = happyShift action_15
action_71 (26) = happyShift action_16
action_71 (27) = happyShift action_17
action_71 (28) = happyShift action_18
action_71 (29) = happyShift action_19
action_71 (30) = happyShift action_20
action_71 (31) = happyShift action_29
action_71 (32) = happyShift action_30
action_71 (33) = happyShift action_31
action_71 (34) = happyShift action_32
action_71 (35) = happyShift action_21
action_71 (36) = happyShift action_22
action_71 (38) = happyShift action_23
action_71 (39) = happyShift action_24
action_71 (40) = happyShift action_25
action_71 (41) = happyShift action_33
action_71 (42) = happyShift action_34
action_71 (5) = happyGoto action_82
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (6) = happyShift action_3
action_72 (7) = happyShift action_4
action_72 (8) = happyShift action_5
action_72 (9) = happyShift action_6
action_72 (10) = happyShift action_7
action_72 (12) = happyShift action_8
action_72 (19) = happyShift action_9
action_72 (20) = happyShift action_10
action_72 (21) = happyShift action_11
action_72 (22) = happyShift action_12
action_72 (23) = happyShift action_13
action_72 (24) = happyShift action_14
action_72 (25) = happyShift action_15
action_72 (26) = happyShift action_16
action_72 (27) = happyShift action_17
action_72 (28) = happyShift action_18
action_72 (29) = happyShift action_19
action_72 (30) = happyShift action_20
action_72 (35) = happyShift action_21
action_72 (36) = happyShift action_22
action_72 (38) = happyShift action_23
action_72 (39) = happyShift action_24
action_72 (40) = happyShift action_25
action_72 (4) = happyGoto action_81
action_72 (5) = happyGoto action_27
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (6) = happyShift action_3
action_73 (7) = happyShift action_4
action_73 (8) = happyShift action_5
action_73 (9) = happyShift action_6
action_73 (10) = happyShift action_7
action_73 (12) = happyShift action_8
action_73 (19) = happyShift action_9
action_73 (20) = happyShift action_10
action_73 (21) = happyShift action_11
action_73 (22) = happyShift action_12
action_73 (23) = happyShift action_13
action_73 (24) = happyShift action_14
action_73 (25) = happyShift action_15
action_73 (26) = happyShift action_16
action_73 (27) = happyShift action_17
action_73 (28) = happyShift action_18
action_73 (29) = happyShift action_19
action_73 (30) = happyShift action_20
action_73 (35) = happyShift action_21
action_73 (36) = happyShift action_22
action_73 (38) = happyShift action_23
action_73 (39) = happyShift action_24
action_73 (40) = happyShift action_25
action_73 (4) = happyGoto action_80
action_73 (5) = happyGoto action_27
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (31) = happyShift action_29
action_74 (32) = happyShift action_30
action_74 (33) = happyShift action_31
action_74 (34) = happyShift action_32
action_74 (41) = happyShift action_33
action_74 (42) = happyShift action_34
action_74 _ = happyReduce_35

action_75 (31) = happyShift action_29
action_75 (32) = happyShift action_30
action_75 (33) = happyShift action_31
action_75 (34) = happyShift action_32
action_75 (41) = happyShift action_33
action_75 (42) = happyShift action_34
action_75 _ = happyReduce_34

action_76 (31) = happyShift action_29
action_76 (32) = happyShift action_30
action_76 (33) = happyShift action_31
action_76 (34) = happyShift action_32
action_76 (41) = happyShift action_33
action_76 (42) = happyShift action_34
action_76 _ = happyReduce_27

action_77 (31) = happyShift action_29
action_77 (32) = happyShift action_30
action_77 (33) = happyShift action_31
action_77 (34) = happyShift action_32
action_77 (41) = happyShift action_33
action_77 (42) = happyShift action_34
action_77 _ = happyReduce_26

action_78 (31) = happyShift action_29
action_78 (32) = happyShift action_30
action_78 (33) = happyShift action_31
action_78 (34) = happyShift action_32
action_78 (41) = happyShift action_33
action_78 (42) = happyShift action_34
action_78 _ = happyReduce_25

action_79 (31) = happyShift action_29
action_79 (32) = happyShift action_30
action_79 (33) = happyShift action_31
action_79 (34) = happyShift action_32
action_79 (41) = happyShift action_33
action_79 (42) = happyShift action_34
action_79 _ = happyReduce_24

action_80 (15) = happyShift action_89
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (15) = happyShift action_88
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (6) = happyShift action_3
action_82 (7) = happyShift action_4
action_82 (8) = happyShift action_5
action_82 (9) = happyShift action_6
action_82 (10) = happyShift action_7
action_82 (12) = happyShift action_8
action_82 (19) = happyShift action_9
action_82 (20) = happyShift action_10
action_82 (21) = happyShift action_11
action_82 (22) = happyShift action_12
action_82 (23) = happyShift action_13
action_82 (24) = happyShift action_14
action_82 (25) = happyShift action_15
action_82 (26) = happyShift action_16
action_82 (27) = happyShift action_17
action_82 (28) = happyShift action_18
action_82 (29) = happyShift action_19
action_82 (30) = happyShift action_20
action_82 (31) = happyShift action_29
action_82 (32) = happyShift action_30
action_82 (33) = happyShift action_31
action_82 (34) = happyShift action_32
action_82 (35) = happyShift action_21
action_82 (36) = happyShift action_22
action_82 (38) = happyShift action_23
action_82 (39) = happyShift action_24
action_82 (40) = happyShift action_25
action_82 (41) = happyShift action_33
action_82 (42) = happyShift action_34
action_82 (5) = happyGoto action_87
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (6) = happyShift action_3
action_83 (7) = happyShift action_4
action_83 (8) = happyShift action_5
action_83 (9) = happyShift action_6
action_83 (10) = happyShift action_7
action_83 (12) = happyShift action_8
action_83 (19) = happyShift action_9
action_83 (20) = happyShift action_10
action_83 (21) = happyShift action_11
action_83 (22) = happyShift action_12
action_83 (23) = happyShift action_13
action_83 (24) = happyShift action_14
action_83 (25) = happyShift action_15
action_83 (26) = happyShift action_16
action_83 (27) = happyShift action_17
action_83 (28) = happyShift action_18
action_83 (29) = happyShift action_19
action_83 (30) = happyShift action_20
action_83 (31) = happyShift action_29
action_83 (32) = happyShift action_30
action_83 (33) = happyShift action_31
action_83 (34) = happyShift action_32
action_83 (35) = happyShift action_21
action_83 (36) = happyShift action_22
action_83 (38) = happyShift action_23
action_83 (39) = happyShift action_24
action_83 (40) = happyShift action_25
action_83 (41) = happyShift action_33
action_83 (42) = happyShift action_34
action_83 (5) = happyGoto action_86
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (15) = happyShift action_85
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_3

action_86 (31) = happyShift action_29
action_86 (32) = happyShift action_30
action_86 (33) = happyShift action_31
action_86 (34) = happyShift action_32
action_86 (41) = happyShift action_33
action_86 (42) = happyShift action_34
action_86 _ = happyReduce_20

action_87 (31) = happyShift action_29
action_87 (32) = happyShift action_30
action_87 (33) = happyShift action_31
action_87 (34) = happyShift action_32
action_87 (41) = happyShift action_33
action_87 (42) = happyShift action_34
action_87 _ = happyReduce_21

action_88 _ = happyReduce_30

action_89 (37) = happyShift action_90
action_89 _ = happyReduce_28

action_90 (14) = happyShift action_91
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (6) = happyShift action_3
action_91 (7) = happyShift action_4
action_91 (8) = happyShift action_5
action_91 (9) = happyShift action_6
action_91 (10) = happyShift action_7
action_91 (12) = happyShift action_8
action_91 (19) = happyShift action_9
action_91 (20) = happyShift action_10
action_91 (21) = happyShift action_11
action_91 (22) = happyShift action_12
action_91 (23) = happyShift action_13
action_91 (24) = happyShift action_14
action_91 (25) = happyShift action_15
action_91 (26) = happyShift action_16
action_91 (27) = happyShift action_17
action_91 (28) = happyShift action_18
action_91 (29) = happyShift action_19
action_91 (30) = happyShift action_20
action_91 (35) = happyShift action_21
action_91 (36) = happyShift action_22
action_91 (38) = happyShift action_23
action_91 (39) = happyShift action_24
action_91 (40) = happyShift action_25
action_91 (4) = happyGoto action_92
action_91 (5) = happyGoto action_27
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (15) = happyShift action_93
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_29

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (ExpSeq happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Exp happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 5 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TNumber (AlexPn x y z) happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Repeat happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (JoinH happy_var_2 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (JoinV happy_var_2 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 (HappyTerminal (TNumber (AlexPn x y z) happy_var_1))
	 =  HappyAbsSyn5
		 (Int happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyTerminal (TIdentifier (AlexPn x y z) happy_var_1))
	 =  HappyAbsSyn5
		 (Var happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TIdentifier (AlexPn x y z) happy_var_1))
	 =  HappyAbsSyn5
		 (Equals happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TIdentifier (AlexPn x y z) happy_var_1))
	 =  HappyAbsSyn5
		 (Import happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TIdentifier (AlexPn x y z) happy_var_1))
	 =  HappyAbsSyn5
		 (Export happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Not happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TNumber (AlexPn x y z) happy_var_2))
	_
	 =  HappyAbsSyn5
		 (Rotate happy_var_2 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TNumber (AlexPn x y z) happy_var_2))
	_
	 =  HappyAbsSyn5
		 (Scale happy_var_2 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (ReflectX happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (ReflectY happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Blank happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (And happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Or happy_var_2 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 5 5 happyReduction_20
happyReduction_20 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyTerminal (TNumber (AlexPn x y z) happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Subtile happy_var_2 happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 5 5 happyReduction_21
happyReduction_21 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyTerminal (TNumber (AlexPn x y z) happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Gibb happy_var_2 happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 (HappyTerminal (TBool (AlexPn x y z) happy_var_1))
	 =  HappyAbsSyn5
		 (Bool happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 (HappyTerminal (TBool (AlexPn x y z) happy_var_1))
	 =  HappyAbsSyn5
		 (Bool happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (IsEqual happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 5 5 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 9 5 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_2 happy_var_4 Else happy_var_8
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 5 5 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_2  5 happyReduction_31
happyReduction_31 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Width happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  5 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Height happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  5 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Print happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  5 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Add happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  5 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 43 43 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TRepeat happy_dollar_dollar -> cont 6;
	TJoinH   happy_dollar_dollar -> cont 7;
	TJoinV   happy_dollar_dollar -> cont 8;
	TNumber (AlexPn x y z) happy_dollar_dollar -> cont 9;
	TIdentifier (AlexPn x y z) happy_dollar_dollar -> cont 10;
	TEquals happy_dollar_dollar -> cont 11;
	TLeftParen happy_dollar_dollar -> cont 12;
	TRightParen happy_dollar_dollar -> cont 13;
	TLeftBrace happy_dollar_dollar -> cont 14;
	TRightBrace happy_dollar_dollar -> cont 15;
	TSemiColon happy_dollar_dollar -> cont 16;
	TImport happy_dollar_dollar -> cont 17;
	TExport happy_dollar_dollar -> cont 18;
	TNot happy_dollar_dollar -> cont 19;
	TRotate happy_dollar_dollar -> cont 20;
	TScale happy_dollar_dollar -> cont 21;
	TReflectX happy_dollar_dollar -> cont 22;
	TReflectY happy_dollar_dollar -> cont 23;
	TBlank happy_dollar_dollar -> cont 24;
	TAnd happy_dollar_dollar -> cont 25;
	TOr happy_dollar_dollar -> cont 26;
	TSubtile happy_dollar_dollar -> cont 27;
	TGibb happy_dollar_dollar -> cont 28;
	TBool (AlexPn x y z) happy_dollar_dollar -> cont 29;
	TBool (AlexPn x y z) happy_dollar_dollar -> cont 30;
	TLessThan happy_dollar_dollar -> cont 31;
	TGreaterThan happy_dollar_dollar -> cont 32;
	TIsEqual happy_dollar_dollar -> cont 33;
	TNotEqual happy_dollar_dollar -> cont 34;
	TWhile happy_dollar_dollar -> cont 35;
	TIf happy_dollar_dollar -> cont 36;
	TElse happy_dollar_dollar -> cont 37;
	TWidth happy_dollar_dollar -> cont 38;
	THeight happy_dollar_dollar -> cont 39;
	TPrint happy_dollar_dollar -> cont 40;
	TAdd happy_dollar_dollar -> cont 41;
	TSub happy_dollar_dollar -> cont 42;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 43 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parseJulio tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError (x:xs) = error ("Parse error at "++ (tokenPosn x))

data ExpSeq = ExpSeq Exp ExpSeq 
		| Exp Exp 
		deriving Show

data Exp = Repeat Int ExpSeq
         | JoinH Exp Exp
         | JoinV Exp Exp
         | Import String Exp
         | Export String Exp
         | Equals String Exp
         | Not Exp
         | Int Int
         | Var String
         | Rotate Int Exp
         | Scale Int Exp
         | ReflectX Exp
         | ReflectY Exp
         | Blank Exp
         | And Exp Exp
         | Or Exp Exp
         | Subtile Int Exp Exp Exp
         | Gibb Int Exp Exp Exp
         | Bool Bool
         | LessThan Exp Exp
         | GreaterThan Exp Exp
         | IsEqual Exp Exp
         | NotEqual Exp Exp
         | While Exp ExpSeq
         | Width Exp
         | Height Exp
         | Print Exp
         | Add Exp Exp
         | Sub Exp Exp
         | If Exp ExpSeq
         | If Exp ExpSeq Else ExpSeq
         deriving Show
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









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
