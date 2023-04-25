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
happyExpList = Happy_Data_Array.listArray (0,143) ([3040,65532,1007,57439,32767,31,32,0,512,0,0,49342,65535,61502,65029,63487,1,0,0,24704,0,57344,64523,61439,24323,65504,8063,64,0,0,2,0,48640,65472,16127,1520,65534,33271,61487,49151,31759,65409,32255,3040,65532,1007,8,0,16384,0,0,0,0,0,0,0,61440,65029,63487,12161,65520,4031,33148,65535,57469,64523,61439,24323,65504,8063,760,65535,49403,63511,57343,48647,65472,16127,1520,65534,33271,61487,49151,31759,65409,32255,0,0,0,1024,0,63488,65282,64511,6080,65528,2015,49342,65535,62,0,0,0,0,0,0,0,0,32,0,0,1,0,760,65535,49403,63511,57343,48647,65472,16127,1520,65534,33271,61487,49151,31759,65409,32255,3040,65532,1007,57439,32767,31,0,0,0,0,0,0,0,61440,65029,63487,12161,65520,4031,0,0,0,16,0,24320,65504,8063,760,65535,49403,63511,57343,48647,65472,16127,1520,65534,503,128,0,31744,65409,32255,0,0,0,57439,32767,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,48640,65472,16127,1520,65534,503,0,0,0,0,0,0,0,0,0,0,63488,65282,64511,6080,65528,2015,0,0,0,0,0,0,1,0,2048,0,57344,64523,61439,24323,65504,8063,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,8192,0,0,57439,32767,31,16,0,0,0,0,0
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
action_0 (31) = happyShift action_21
action_0 (32) = happyShift action_22
action_0 (33) = happyShift action_23
action_0 (34) = happyShift action_24
action_0 (35) = happyShift action_25
action_0 (36) = happyShift action_26
action_0 (38) = happyShift action_27
action_0 (39) = happyShift action_28
action_0 (40) = happyShift action_29
action_0 (41) = happyShift action_30
action_0 (42) = happyShift action_31
action_0 (4) = happyGoto action_32
action_0 (5) = happyGoto action_33
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
action_1 (31) = happyShift action_21
action_1 (32) = happyShift action_22
action_1 (33) = happyShift action_23
action_1 (34) = happyShift action_24
action_1 (35) = happyShift action_25
action_1 (36) = happyShift action_26
action_1 (38) = happyShift action_27
action_1 (39) = happyShift action_28
action_1 (40) = happyShift action_29
action_1 (41) = happyShift action_30
action_1 (42) = happyShift action_31
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (16) = happyShift action_63
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (9) = happyShift action_62
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
action_4 (31) = happyShift action_21
action_4 (32) = happyShift action_22
action_4 (33) = happyShift action_23
action_4 (34) = happyShift action_24
action_4 (35) = happyShift action_25
action_4 (36) = happyShift action_26
action_4 (38) = happyShift action_27
action_4 (39) = happyShift action_28
action_4 (40) = happyShift action_29
action_4 (41) = happyShift action_30
action_4 (42) = happyShift action_31
action_4 (5) = happyGoto action_61
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
action_5 (31) = happyShift action_21
action_5 (32) = happyShift action_22
action_5 (33) = happyShift action_23
action_5 (34) = happyShift action_24
action_5 (35) = happyShift action_25
action_5 (36) = happyShift action_26
action_5 (38) = happyShift action_27
action_5 (39) = happyShift action_28
action_5 (40) = happyShift action_29
action_5 (41) = happyShift action_30
action_5 (42) = happyShift action_31
action_5 (5) = happyGoto action_60
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_7

action_7 (11) = happyShift action_57
action_7 (17) = happyShift action_58
action_7 (18) = happyShift action_59
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
action_8 (31) = happyShift action_21
action_8 (32) = happyShift action_22
action_8 (33) = happyShift action_23
action_8 (34) = happyShift action_24
action_8 (35) = happyShift action_25
action_8 (36) = happyShift action_26
action_8 (38) = happyShift action_27
action_8 (39) = happyShift action_28
action_8 (40) = happyShift action_29
action_8 (41) = happyShift action_30
action_8 (42) = happyShift action_31
action_8 (5) = happyGoto action_56
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
action_9 (31) = happyShift action_21
action_9 (32) = happyShift action_22
action_9 (33) = happyShift action_23
action_9 (34) = happyShift action_24
action_9 (35) = happyShift action_25
action_9 (36) = happyShift action_26
action_9 (38) = happyShift action_27
action_9 (39) = happyShift action_28
action_9 (40) = happyShift action_29
action_9 (41) = happyShift action_30
action_9 (42) = happyShift action_31
action_9 (5) = happyGoto action_55
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (9) = happyShift action_54
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (9) = happyShift action_53
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
action_12 (31) = happyShift action_21
action_12 (32) = happyShift action_22
action_12 (33) = happyShift action_23
action_12 (34) = happyShift action_24
action_12 (35) = happyShift action_25
action_12 (36) = happyShift action_26
action_12 (38) = happyShift action_27
action_12 (39) = happyShift action_28
action_12 (40) = happyShift action_29
action_12 (41) = happyShift action_30
action_12 (42) = happyShift action_31
action_12 (5) = happyGoto action_52
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
action_13 (31) = happyShift action_21
action_13 (32) = happyShift action_22
action_13 (33) = happyShift action_23
action_13 (34) = happyShift action_24
action_13 (35) = happyShift action_25
action_13 (36) = happyShift action_26
action_13 (38) = happyShift action_27
action_13 (39) = happyShift action_28
action_13 (40) = happyShift action_29
action_13 (41) = happyShift action_30
action_13 (42) = happyShift action_31
action_13 (5) = happyGoto action_51
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
action_14 (31) = happyShift action_21
action_14 (32) = happyShift action_22
action_14 (33) = happyShift action_23
action_14 (34) = happyShift action_24
action_14 (35) = happyShift action_25
action_14 (36) = happyShift action_26
action_14 (38) = happyShift action_27
action_14 (39) = happyShift action_28
action_14 (40) = happyShift action_29
action_14 (41) = happyShift action_30
action_14 (42) = happyShift action_31
action_14 (5) = happyGoto action_50
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
action_15 (31) = happyShift action_21
action_15 (32) = happyShift action_22
action_15 (33) = happyShift action_23
action_15 (34) = happyShift action_24
action_15 (35) = happyShift action_25
action_15 (36) = happyShift action_26
action_15 (38) = happyShift action_27
action_15 (39) = happyShift action_28
action_15 (40) = happyShift action_29
action_15 (41) = happyShift action_30
action_15 (42) = happyShift action_31
action_15 (5) = happyGoto action_49
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
action_16 (31) = happyShift action_21
action_16 (32) = happyShift action_22
action_16 (33) = happyShift action_23
action_16 (34) = happyShift action_24
action_16 (35) = happyShift action_25
action_16 (36) = happyShift action_26
action_16 (38) = happyShift action_27
action_16 (39) = happyShift action_28
action_16 (40) = happyShift action_29
action_16 (41) = happyShift action_30
action_16 (42) = happyShift action_31
action_16 (5) = happyGoto action_48
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (9) = happyShift action_47
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (9) = happyShift action_46
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
action_21 (31) = happyShift action_21
action_21 (32) = happyShift action_22
action_21 (33) = happyShift action_23
action_21 (34) = happyShift action_24
action_21 (35) = happyShift action_25
action_21 (36) = happyShift action_26
action_21 (38) = happyShift action_27
action_21 (39) = happyShift action_28
action_21 (40) = happyShift action_29
action_21 (41) = happyShift action_30
action_21 (42) = happyShift action_31
action_21 (5) = happyGoto action_45
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
action_22 (31) = happyShift action_21
action_22 (32) = happyShift action_22
action_22 (33) = happyShift action_23
action_22 (34) = happyShift action_24
action_22 (35) = happyShift action_25
action_22 (36) = happyShift action_26
action_22 (38) = happyShift action_27
action_22 (39) = happyShift action_28
action_22 (40) = happyShift action_29
action_22 (41) = happyShift action_30
action_22 (42) = happyShift action_31
action_22 (5) = happyGoto action_44
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
action_23 (31) = happyShift action_21
action_23 (32) = happyShift action_22
action_23 (33) = happyShift action_23
action_23 (34) = happyShift action_24
action_23 (35) = happyShift action_25
action_23 (36) = happyShift action_26
action_23 (38) = happyShift action_27
action_23 (39) = happyShift action_28
action_23 (40) = happyShift action_29
action_23 (41) = happyShift action_30
action_23 (42) = happyShift action_31
action_23 (5) = happyGoto action_43
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
action_24 (31) = happyShift action_21
action_24 (32) = happyShift action_22
action_24 (33) = happyShift action_23
action_24 (34) = happyShift action_24
action_24 (35) = happyShift action_25
action_24 (36) = happyShift action_26
action_24 (38) = happyShift action_27
action_24 (39) = happyShift action_28
action_24 (40) = happyShift action_29
action_24 (41) = happyShift action_30
action_24 (42) = happyShift action_31
action_24 (5) = happyGoto action_42
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
action_25 (31) = happyShift action_21
action_25 (32) = happyShift action_22
action_25 (33) = happyShift action_23
action_25 (34) = happyShift action_24
action_25 (35) = happyShift action_25
action_25 (36) = happyShift action_26
action_25 (38) = happyShift action_27
action_25 (39) = happyShift action_28
action_25 (40) = happyShift action_29
action_25 (41) = happyShift action_30
action_25 (42) = happyShift action_31
action_25 (5) = happyGoto action_41
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_3
action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (9) = happyShift action_6
action_26 (10) = happyShift action_7
action_26 (12) = happyShift action_8
action_26 (19) = happyShift action_9
action_26 (20) = happyShift action_10
action_26 (21) = happyShift action_11
action_26 (22) = happyShift action_12
action_26 (23) = happyShift action_13
action_26 (24) = happyShift action_14
action_26 (25) = happyShift action_15
action_26 (26) = happyShift action_16
action_26 (27) = happyShift action_17
action_26 (28) = happyShift action_18
action_26 (29) = happyShift action_19
action_26 (30) = happyShift action_20
action_26 (31) = happyShift action_21
action_26 (32) = happyShift action_22
action_26 (33) = happyShift action_23
action_26 (34) = happyShift action_24
action_26 (35) = happyShift action_25
action_26 (36) = happyShift action_26
action_26 (38) = happyShift action_27
action_26 (39) = happyShift action_28
action_26 (40) = happyShift action_29
action_26 (41) = happyShift action_30
action_26 (42) = happyShift action_31
action_26 (5) = happyGoto action_40
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_3
action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (9) = happyShift action_6
action_27 (10) = happyShift action_7
action_27 (12) = happyShift action_8
action_27 (19) = happyShift action_9
action_27 (20) = happyShift action_10
action_27 (21) = happyShift action_11
action_27 (22) = happyShift action_12
action_27 (23) = happyShift action_13
action_27 (24) = happyShift action_14
action_27 (25) = happyShift action_15
action_27 (26) = happyShift action_16
action_27 (27) = happyShift action_17
action_27 (28) = happyShift action_18
action_27 (29) = happyShift action_19
action_27 (30) = happyShift action_20
action_27 (31) = happyShift action_21
action_27 (32) = happyShift action_22
action_27 (33) = happyShift action_23
action_27 (34) = happyShift action_24
action_27 (35) = happyShift action_25
action_27 (36) = happyShift action_26
action_27 (38) = happyShift action_27
action_27 (39) = happyShift action_28
action_27 (40) = happyShift action_29
action_27 (41) = happyShift action_30
action_27 (42) = happyShift action_31
action_27 (5) = happyGoto action_39
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
action_28 (31) = happyShift action_21
action_28 (32) = happyShift action_22
action_28 (33) = happyShift action_23
action_28 (34) = happyShift action_24
action_28 (35) = happyShift action_25
action_28 (36) = happyShift action_26
action_28 (38) = happyShift action_27
action_28 (39) = happyShift action_28
action_28 (40) = happyShift action_29
action_28 (41) = happyShift action_30
action_28 (42) = happyShift action_31
action_28 (5) = happyGoto action_38
action_28 _ = happyFail (happyExpListPerState 28)

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
action_29 (31) = happyShift action_21
action_29 (32) = happyShift action_22
action_29 (33) = happyShift action_23
action_29 (34) = happyShift action_24
action_29 (35) = happyShift action_25
action_29 (36) = happyShift action_26
action_29 (38) = happyShift action_27
action_29 (39) = happyShift action_28
action_29 (40) = happyShift action_29
action_29 (41) = happyShift action_30
action_29 (42) = happyShift action_31
action_29 (5) = happyGoto action_37
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
action_30 (31) = happyShift action_21
action_30 (32) = happyShift action_22
action_30 (33) = happyShift action_23
action_30 (34) = happyShift action_24
action_30 (35) = happyShift action_25
action_30 (36) = happyShift action_26
action_30 (38) = happyShift action_27
action_30 (39) = happyShift action_28
action_30 (40) = happyShift action_29
action_30 (41) = happyShift action_30
action_30 (42) = happyShift action_31
action_30 (5) = happyGoto action_36
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
action_31 (31) = happyShift action_21
action_31 (32) = happyShift action_22
action_31 (33) = happyShift action_23
action_31 (34) = happyShift action_24
action_31 (35) = happyShift action_25
action_31 (36) = happyShift action_26
action_31 (38) = happyShift action_27
action_31 (39) = happyShift action_28
action_31 (40) = happyShift action_29
action_31 (41) = happyShift action_30
action_31 (42) = happyShift action_31
action_31 (5) = happyGoto action_35
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (43) = happyAccept
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (16) = happyShift action_34
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
action_34 (31) = happyShift action_21
action_34 (32) = happyShift action_22
action_34 (33) = happyShift action_23
action_34 (34) = happyShift action_24
action_34 (35) = happyShift action_25
action_34 (36) = happyShift action_26
action_34 (38) = happyShift action_27
action_34 (39) = happyShift action_28
action_34 (40) = happyShift action_29
action_34 (41) = happyShift action_30
action_34 (42) = happyShift action_31
action_34 (4) = happyGoto action_64
action_34 (5) = happyGoto action_33
action_34 _ = happyReduce_2

action_35 (6) = happyShift action_3
action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_5
action_35 (9) = happyShift action_6
action_35 (10) = happyShift action_7
action_35 (12) = happyShift action_8
action_35 (19) = happyShift action_9
action_35 (20) = happyShift action_10
action_35 (21) = happyShift action_11
action_35 (22) = happyShift action_12
action_35 (23) = happyShift action_13
action_35 (24) = happyShift action_14
action_35 (25) = happyShift action_15
action_35 (26) = happyShift action_16
action_35 (27) = happyShift action_17
action_35 (28) = happyShift action_18
action_35 (29) = happyShift action_19
action_35 (30) = happyShift action_20
action_35 (31) = happyShift action_21
action_35 (32) = happyShift action_22
action_35 (33) = happyShift action_23
action_35 (34) = happyShift action_24
action_35 (35) = happyShift action_25
action_35 (36) = happyShift action_26
action_35 (38) = happyShift action_27
action_35 (39) = happyShift action_28
action_35 (40) = happyShift action_29
action_35 (41) = happyShift action_30
action_35 (42) = happyShift action_31
action_35 (5) = happyGoto action_85
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_3
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_5
action_36 (9) = happyShift action_6
action_36 (10) = happyShift action_7
action_36 (12) = happyShift action_8
action_36 (19) = happyShift action_9
action_36 (20) = happyShift action_10
action_36 (21) = happyShift action_11
action_36 (22) = happyShift action_12
action_36 (23) = happyShift action_13
action_36 (24) = happyShift action_14
action_36 (25) = happyShift action_15
action_36 (26) = happyShift action_16
action_36 (27) = happyShift action_17
action_36 (28) = happyShift action_18
action_36 (29) = happyShift action_19
action_36 (30) = happyShift action_20
action_36 (31) = happyShift action_21
action_36 (32) = happyShift action_22
action_36 (33) = happyShift action_23
action_36 (34) = happyShift action_24
action_36 (35) = happyShift action_25
action_36 (36) = happyShift action_26
action_36 (38) = happyShift action_27
action_36 (39) = happyShift action_28
action_36 (40) = happyShift action_29
action_36 (41) = happyShift action_30
action_36 (42) = happyShift action_31
action_36 (5) = happyGoto action_84
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_33

action_38 _ = happyReduce_32

action_39 _ = happyReduce_31

action_40 (14) = happyShift action_83
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (14) = happyShift action_82
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
action_42 (31) = happyShift action_21
action_42 (32) = happyShift action_22
action_42 (33) = happyShift action_23
action_42 (34) = happyShift action_24
action_42 (35) = happyShift action_25
action_42 (36) = happyShift action_26
action_42 (38) = happyShift action_27
action_42 (39) = happyShift action_28
action_42 (40) = happyShift action_29
action_42 (41) = happyShift action_30
action_42 (42) = happyShift action_31
action_42 (5) = happyGoto action_81
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
action_43 (31) = happyShift action_21
action_43 (32) = happyShift action_22
action_43 (33) = happyShift action_23
action_43 (34) = happyShift action_24
action_43 (35) = happyShift action_25
action_43 (36) = happyShift action_26
action_43 (38) = happyShift action_27
action_43 (39) = happyShift action_28
action_43 (40) = happyShift action_29
action_43 (41) = happyShift action_30
action_43 (42) = happyShift action_31
action_43 (5) = happyGoto action_80
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_3
action_44 (7) = happyShift action_4
action_44 (8) = happyShift action_5
action_44 (9) = happyShift action_6
action_44 (10) = happyShift action_7
action_44 (12) = happyShift action_8
action_44 (19) = happyShift action_9
action_44 (20) = happyShift action_10
action_44 (21) = happyShift action_11
action_44 (22) = happyShift action_12
action_44 (23) = happyShift action_13
action_44 (24) = happyShift action_14
action_44 (25) = happyShift action_15
action_44 (26) = happyShift action_16
action_44 (27) = happyShift action_17
action_44 (28) = happyShift action_18
action_44 (29) = happyShift action_19
action_44 (30) = happyShift action_20
action_44 (31) = happyShift action_21
action_44 (32) = happyShift action_22
action_44 (33) = happyShift action_23
action_44 (34) = happyShift action_24
action_44 (35) = happyShift action_25
action_44 (36) = happyShift action_26
action_44 (38) = happyShift action_27
action_44 (39) = happyShift action_28
action_44 (40) = happyShift action_29
action_44 (41) = happyShift action_30
action_44 (42) = happyShift action_31
action_44 (5) = happyGoto action_79
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (6) = happyShift action_3
action_45 (7) = happyShift action_4
action_45 (8) = happyShift action_5
action_45 (9) = happyShift action_6
action_45 (10) = happyShift action_7
action_45 (12) = happyShift action_8
action_45 (19) = happyShift action_9
action_45 (20) = happyShift action_10
action_45 (21) = happyShift action_11
action_45 (22) = happyShift action_12
action_45 (23) = happyShift action_13
action_45 (24) = happyShift action_14
action_45 (25) = happyShift action_15
action_45 (26) = happyShift action_16
action_45 (27) = happyShift action_17
action_45 (28) = happyShift action_18
action_45 (29) = happyShift action_19
action_45 (30) = happyShift action_20
action_45 (31) = happyShift action_21
action_45 (32) = happyShift action_22
action_45 (33) = happyShift action_23
action_45 (34) = happyShift action_24
action_45 (35) = happyShift action_25
action_45 (36) = happyShift action_26
action_45 (38) = happyShift action_27
action_45 (39) = happyShift action_28
action_45 (40) = happyShift action_29
action_45 (41) = happyShift action_30
action_45 (42) = happyShift action_31
action_45 (5) = happyGoto action_78
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_3
action_46 (7) = happyShift action_4
action_46 (8) = happyShift action_5
action_46 (9) = happyShift action_6
action_46 (10) = happyShift action_7
action_46 (12) = happyShift action_8
action_46 (19) = happyShift action_9
action_46 (20) = happyShift action_10
action_46 (21) = happyShift action_11
action_46 (22) = happyShift action_12
action_46 (23) = happyShift action_13
action_46 (24) = happyShift action_14
action_46 (25) = happyShift action_15
action_46 (26) = happyShift action_16
action_46 (27) = happyShift action_17
action_46 (28) = happyShift action_18
action_46 (29) = happyShift action_19
action_46 (30) = happyShift action_20
action_46 (31) = happyShift action_21
action_46 (32) = happyShift action_22
action_46 (33) = happyShift action_23
action_46 (34) = happyShift action_24
action_46 (35) = happyShift action_25
action_46 (36) = happyShift action_26
action_46 (38) = happyShift action_27
action_46 (39) = happyShift action_28
action_46 (40) = happyShift action_29
action_46 (41) = happyShift action_30
action_46 (42) = happyShift action_31
action_46 (5) = happyGoto action_77
action_46 _ = happyFail (happyExpListPerState 46)

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
action_47 (31) = happyShift action_21
action_47 (32) = happyShift action_22
action_47 (33) = happyShift action_23
action_47 (34) = happyShift action_24
action_47 (35) = happyShift action_25
action_47 (36) = happyShift action_26
action_47 (38) = happyShift action_27
action_47 (39) = happyShift action_28
action_47 (40) = happyShift action_29
action_47 (41) = happyShift action_30
action_47 (42) = happyShift action_31
action_47 (5) = happyGoto action_76
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
action_48 (31) = happyShift action_21
action_48 (32) = happyShift action_22
action_48 (33) = happyShift action_23
action_48 (34) = happyShift action_24
action_48 (35) = happyShift action_25
action_48 (36) = happyShift action_26
action_48 (38) = happyShift action_27
action_48 (39) = happyShift action_28
action_48 (40) = happyShift action_29
action_48 (41) = happyShift action_30
action_48 (42) = happyShift action_31
action_48 (5) = happyGoto action_75
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_3
action_49 (7) = happyShift action_4
action_49 (8) = happyShift action_5
action_49 (9) = happyShift action_6
action_49 (10) = happyShift action_7
action_49 (12) = happyShift action_8
action_49 (19) = happyShift action_9
action_49 (20) = happyShift action_10
action_49 (21) = happyShift action_11
action_49 (22) = happyShift action_12
action_49 (23) = happyShift action_13
action_49 (24) = happyShift action_14
action_49 (25) = happyShift action_15
action_49 (26) = happyShift action_16
action_49 (27) = happyShift action_17
action_49 (28) = happyShift action_18
action_49 (29) = happyShift action_19
action_49 (30) = happyShift action_20
action_49 (31) = happyShift action_21
action_49 (32) = happyShift action_22
action_49 (33) = happyShift action_23
action_49 (34) = happyShift action_24
action_49 (35) = happyShift action_25
action_49 (36) = happyShift action_26
action_49 (38) = happyShift action_27
action_49 (39) = happyShift action_28
action_49 (40) = happyShift action_29
action_49 (41) = happyShift action_30
action_49 (42) = happyShift action_31
action_49 (5) = happyGoto action_74
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_17

action_51 _ = happyReduce_16

action_52 _ = happyReduce_15

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
action_53 (31) = happyShift action_21
action_53 (32) = happyShift action_22
action_53 (33) = happyShift action_23
action_53 (34) = happyShift action_24
action_53 (35) = happyShift action_25
action_53 (36) = happyShift action_26
action_53 (38) = happyShift action_27
action_53 (39) = happyShift action_28
action_53 (40) = happyShift action_29
action_53 (41) = happyShift action_30
action_53 (42) = happyShift action_31
action_53 (5) = happyGoto action_73
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
action_54 (31) = happyShift action_21
action_54 (32) = happyShift action_22
action_54 (33) = happyShift action_23
action_54 (34) = happyShift action_24
action_54 (35) = happyShift action_25
action_54 (36) = happyShift action_26
action_54 (38) = happyShift action_27
action_54 (39) = happyShift action_28
action_54 (40) = happyShift action_29
action_54 (41) = happyShift action_30
action_54 (42) = happyShift action_31
action_54 (5) = happyGoto action_72
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_12

action_56 (13) = happyShift action_71
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
action_57 (31) = happyShift action_21
action_57 (32) = happyShift action_22
action_57 (33) = happyShift action_23
action_57 (34) = happyShift action_24
action_57 (35) = happyShift action_25
action_57 (36) = happyShift action_26
action_57 (38) = happyShift action_27
action_57 (39) = happyShift action_28
action_57 (40) = happyShift action_29
action_57 (41) = happyShift action_30
action_57 (42) = happyShift action_31
action_57 (5) = happyGoto action_70
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (6) = happyShift action_3
action_58 (7) = happyShift action_4
action_58 (8) = happyShift action_5
action_58 (9) = happyShift action_6
action_58 (10) = happyShift action_7
action_58 (12) = happyShift action_8
action_58 (19) = happyShift action_9
action_58 (20) = happyShift action_10
action_58 (21) = happyShift action_11
action_58 (22) = happyShift action_12
action_58 (23) = happyShift action_13
action_58 (24) = happyShift action_14
action_58 (25) = happyShift action_15
action_58 (26) = happyShift action_16
action_58 (27) = happyShift action_17
action_58 (28) = happyShift action_18
action_58 (29) = happyShift action_19
action_58 (30) = happyShift action_20
action_58 (31) = happyShift action_21
action_58 (32) = happyShift action_22
action_58 (33) = happyShift action_23
action_58 (34) = happyShift action_24
action_58 (35) = happyShift action_25
action_58 (36) = happyShift action_26
action_58 (38) = happyShift action_27
action_58 (39) = happyShift action_28
action_58 (40) = happyShift action_29
action_58 (41) = happyShift action_30
action_58 (42) = happyShift action_31
action_58 (5) = happyGoto action_69
action_58 _ = happyFail (happyExpListPerState 58)

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
action_59 (31) = happyShift action_21
action_59 (32) = happyShift action_22
action_59 (33) = happyShift action_23
action_59 (34) = happyShift action_24
action_59 (35) = happyShift action_25
action_59 (36) = happyShift action_26
action_59 (38) = happyShift action_27
action_59 (39) = happyShift action_28
action_59 (40) = happyShift action_29
action_59 (41) = happyShift action_30
action_59 (42) = happyShift action_31
action_59 (5) = happyGoto action_68
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (6) = happyShift action_3
action_60 (7) = happyShift action_4
action_60 (8) = happyShift action_5
action_60 (9) = happyShift action_6
action_60 (10) = happyShift action_7
action_60 (12) = happyShift action_8
action_60 (19) = happyShift action_9
action_60 (20) = happyShift action_10
action_60 (21) = happyShift action_11
action_60 (22) = happyShift action_12
action_60 (23) = happyShift action_13
action_60 (24) = happyShift action_14
action_60 (25) = happyShift action_15
action_60 (26) = happyShift action_16
action_60 (27) = happyShift action_17
action_60 (28) = happyShift action_18
action_60 (29) = happyShift action_19
action_60 (30) = happyShift action_20
action_60 (31) = happyShift action_21
action_60 (32) = happyShift action_22
action_60 (33) = happyShift action_23
action_60 (34) = happyShift action_24
action_60 (35) = happyShift action_25
action_60 (36) = happyShift action_26
action_60 (38) = happyShift action_27
action_60 (39) = happyShift action_28
action_60 (40) = happyShift action_29
action_60 (41) = happyShift action_30
action_60 (42) = happyShift action_31
action_60 (5) = happyGoto action_67
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (6) = happyShift action_3
action_61 (7) = happyShift action_4
action_61 (8) = happyShift action_5
action_61 (9) = happyShift action_6
action_61 (10) = happyShift action_7
action_61 (12) = happyShift action_8
action_61 (19) = happyShift action_9
action_61 (20) = happyShift action_10
action_61 (21) = happyShift action_11
action_61 (22) = happyShift action_12
action_61 (23) = happyShift action_13
action_61 (24) = happyShift action_14
action_61 (25) = happyShift action_15
action_61 (26) = happyShift action_16
action_61 (27) = happyShift action_17
action_61 (28) = happyShift action_18
action_61 (29) = happyShift action_19
action_61 (30) = happyShift action_20
action_61 (31) = happyShift action_21
action_61 (32) = happyShift action_22
action_61 (33) = happyShift action_23
action_61 (34) = happyShift action_24
action_61 (35) = happyShift action_25
action_61 (36) = happyShift action_26
action_61 (38) = happyShift action_27
action_61 (39) = happyShift action_28
action_61 (40) = happyShift action_29
action_61 (41) = happyShift action_30
action_61 (42) = happyShift action_31
action_61 (5) = happyGoto action_66
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (14) = happyShift action_65
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (6) = happyShift action_3
action_63 (7) = happyShift action_4
action_63 (8) = happyShift action_5
action_63 (9) = happyShift action_6
action_63 (10) = happyShift action_7
action_63 (12) = happyShift action_8
action_63 (19) = happyShift action_9
action_63 (20) = happyShift action_10
action_63 (21) = happyShift action_11
action_63 (22) = happyShift action_12
action_63 (23) = happyShift action_13
action_63 (24) = happyShift action_14
action_63 (25) = happyShift action_15
action_63 (26) = happyShift action_16
action_63 (27) = happyShift action_17
action_63 (28) = happyShift action_18
action_63 (29) = happyShift action_19
action_63 (30) = happyShift action_20
action_63 (31) = happyShift action_21
action_63 (32) = happyShift action_22
action_63 (33) = happyShift action_23
action_63 (34) = happyShift action_24
action_63 (35) = happyShift action_25
action_63 (36) = happyShift action_26
action_63 (38) = happyShift action_27
action_63 (39) = happyShift action_28
action_63 (40) = happyShift action_29
action_63 (41) = happyShift action_30
action_63 (42) = happyShift action_31
action_63 (4) = happyGoto action_64
action_63 (5) = happyGoto action_33
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_1

action_65 (6) = happyShift action_3
action_65 (7) = happyShift action_4
action_65 (8) = happyShift action_5
action_65 (9) = happyShift action_6
action_65 (10) = happyShift action_7
action_65 (12) = happyShift action_8
action_65 (19) = happyShift action_9
action_65 (20) = happyShift action_10
action_65 (21) = happyShift action_11
action_65 (22) = happyShift action_12
action_65 (23) = happyShift action_13
action_65 (24) = happyShift action_14
action_65 (25) = happyShift action_15
action_65 (26) = happyShift action_16
action_65 (27) = happyShift action_17
action_65 (28) = happyShift action_18
action_65 (29) = happyShift action_19
action_65 (30) = happyShift action_20
action_65 (31) = happyShift action_21
action_65 (32) = happyShift action_22
action_65 (33) = happyShift action_23
action_65 (34) = happyShift action_24
action_65 (35) = happyShift action_25
action_65 (36) = happyShift action_26
action_65 (38) = happyShift action_27
action_65 (39) = happyShift action_28
action_65 (40) = happyShift action_29
action_65 (41) = happyShift action_30
action_65 (42) = happyShift action_31
action_65 (4) = happyGoto action_90
action_65 (5) = happyGoto action_33
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_4

action_67 _ = happyReduce_6

action_68 _ = happyReduce_11

action_69 _ = happyReduce_10

action_70 _ = happyReduce_9

action_71 _ = happyReduce_5

action_72 _ = happyReduce_13

action_73 _ = happyReduce_14

action_74 _ = happyReduce_18

action_75 _ = happyReduce_19

action_76 (6) = happyShift action_3
action_76 (7) = happyShift action_4
action_76 (8) = happyShift action_5
action_76 (9) = happyShift action_6
action_76 (10) = happyShift action_7
action_76 (12) = happyShift action_8
action_76 (19) = happyShift action_9
action_76 (20) = happyShift action_10
action_76 (21) = happyShift action_11
action_76 (22) = happyShift action_12
action_76 (23) = happyShift action_13
action_76 (24) = happyShift action_14
action_76 (25) = happyShift action_15
action_76 (26) = happyShift action_16
action_76 (27) = happyShift action_17
action_76 (28) = happyShift action_18
action_76 (29) = happyShift action_19
action_76 (30) = happyShift action_20
action_76 (31) = happyShift action_21
action_76 (32) = happyShift action_22
action_76 (33) = happyShift action_23
action_76 (34) = happyShift action_24
action_76 (35) = happyShift action_25
action_76 (36) = happyShift action_26
action_76 (38) = happyShift action_27
action_76 (39) = happyShift action_28
action_76 (40) = happyShift action_29
action_76 (41) = happyShift action_30
action_76 (42) = happyShift action_31
action_76 (5) = happyGoto action_89
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (6) = happyShift action_3
action_77 (7) = happyShift action_4
action_77 (8) = happyShift action_5
action_77 (9) = happyShift action_6
action_77 (10) = happyShift action_7
action_77 (12) = happyShift action_8
action_77 (19) = happyShift action_9
action_77 (20) = happyShift action_10
action_77 (21) = happyShift action_11
action_77 (22) = happyShift action_12
action_77 (23) = happyShift action_13
action_77 (24) = happyShift action_14
action_77 (25) = happyShift action_15
action_77 (26) = happyShift action_16
action_77 (27) = happyShift action_17
action_77 (28) = happyShift action_18
action_77 (29) = happyShift action_19
action_77 (30) = happyShift action_20
action_77 (31) = happyShift action_21
action_77 (32) = happyShift action_22
action_77 (33) = happyShift action_23
action_77 (34) = happyShift action_24
action_77 (35) = happyShift action_25
action_77 (36) = happyShift action_26
action_77 (38) = happyShift action_27
action_77 (39) = happyShift action_28
action_77 (40) = happyShift action_29
action_77 (41) = happyShift action_30
action_77 (42) = happyShift action_31
action_77 (5) = happyGoto action_88
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_24

action_79 _ = happyReduce_25

action_80 _ = happyReduce_26

action_81 _ = happyReduce_27

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
action_82 (31) = happyShift action_21
action_82 (32) = happyShift action_22
action_82 (33) = happyShift action_23
action_82 (34) = happyShift action_24
action_82 (35) = happyShift action_25
action_82 (36) = happyShift action_26
action_82 (38) = happyShift action_27
action_82 (39) = happyShift action_28
action_82 (40) = happyShift action_29
action_82 (41) = happyShift action_30
action_82 (42) = happyShift action_31
action_82 (4) = happyGoto action_87
action_82 (5) = happyGoto action_33
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
action_83 (31) = happyShift action_21
action_83 (32) = happyShift action_22
action_83 (33) = happyShift action_23
action_83 (34) = happyShift action_24
action_83 (35) = happyShift action_25
action_83 (36) = happyShift action_26
action_83 (38) = happyShift action_27
action_83 (39) = happyShift action_28
action_83 (40) = happyShift action_29
action_83 (41) = happyShift action_30
action_83 (42) = happyShift action_31
action_83 (4) = happyGoto action_86
action_83 (5) = happyGoto action_33
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_34

action_85 _ = happyReduce_35

action_86 (15) = happyShift action_95
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (15) = happyShift action_94
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (6) = happyShift action_3
action_88 (7) = happyShift action_4
action_88 (8) = happyShift action_5
action_88 (9) = happyShift action_6
action_88 (10) = happyShift action_7
action_88 (12) = happyShift action_8
action_88 (19) = happyShift action_9
action_88 (20) = happyShift action_10
action_88 (21) = happyShift action_11
action_88 (22) = happyShift action_12
action_88 (23) = happyShift action_13
action_88 (24) = happyShift action_14
action_88 (25) = happyShift action_15
action_88 (26) = happyShift action_16
action_88 (27) = happyShift action_17
action_88 (28) = happyShift action_18
action_88 (29) = happyShift action_19
action_88 (30) = happyShift action_20
action_88 (31) = happyShift action_21
action_88 (32) = happyShift action_22
action_88 (33) = happyShift action_23
action_88 (34) = happyShift action_24
action_88 (35) = happyShift action_25
action_88 (36) = happyShift action_26
action_88 (38) = happyShift action_27
action_88 (39) = happyShift action_28
action_88 (40) = happyShift action_29
action_88 (41) = happyShift action_30
action_88 (42) = happyShift action_31
action_88 (5) = happyGoto action_93
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (6) = happyShift action_3
action_89 (7) = happyShift action_4
action_89 (8) = happyShift action_5
action_89 (9) = happyShift action_6
action_89 (10) = happyShift action_7
action_89 (12) = happyShift action_8
action_89 (19) = happyShift action_9
action_89 (20) = happyShift action_10
action_89 (21) = happyShift action_11
action_89 (22) = happyShift action_12
action_89 (23) = happyShift action_13
action_89 (24) = happyShift action_14
action_89 (25) = happyShift action_15
action_89 (26) = happyShift action_16
action_89 (27) = happyShift action_17
action_89 (28) = happyShift action_18
action_89 (29) = happyShift action_19
action_89 (30) = happyShift action_20
action_89 (31) = happyShift action_21
action_89 (32) = happyShift action_22
action_89 (33) = happyShift action_23
action_89 (34) = happyShift action_24
action_89 (35) = happyShift action_25
action_89 (36) = happyShift action_26
action_89 (38) = happyShift action_27
action_89 (39) = happyShift action_28
action_89 (40) = happyShift action_29
action_89 (41) = happyShift action_30
action_89 (42) = happyShift action_31
action_89 (5) = happyGoto action_92
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (15) = happyShift action_91
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_3

action_92 _ = happyReduce_20

action_93 _ = happyReduce_21

action_94 _ = happyReduce_30

action_95 (37) = happyShift action_96
action_95 _ = happyReduce_28

action_96 (14) = happyShift action_97
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (6) = happyShift action_3
action_97 (7) = happyShift action_4
action_97 (8) = happyShift action_5
action_97 (9) = happyShift action_6
action_97 (10) = happyShift action_7
action_97 (12) = happyShift action_8
action_97 (19) = happyShift action_9
action_97 (20) = happyShift action_10
action_97 (21) = happyShift action_11
action_97 (22) = happyShift action_12
action_97 (23) = happyShift action_13
action_97 (24) = happyShift action_14
action_97 (25) = happyShift action_15
action_97 (26) = happyShift action_16
action_97 (27) = happyShift action_17
action_97 (28) = happyShift action_18
action_97 (29) = happyShift action_19
action_97 (30) = happyShift action_20
action_97 (31) = happyShift action_21
action_97 (32) = happyShift action_22
action_97 (33) = happyShift action_23
action_97 (34) = happyShift action_24
action_97 (35) = happyShift action_25
action_97 (36) = happyShift action_26
action_97 (38) = happyShift action_27
action_97 (39) = happyShift action_28
action_97 (40) = happyShift action_29
action_97 (41) = happyShift action_30
action_97 (42) = happyShift action_31
action_97 (4) = happyGoto action_98
action_97 (5) = happyGoto action_33
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (15) = happyShift action_99
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_29

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
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (LessThan happy_var_2 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TGreaterThan happy_var_1))
	 =  HappyAbsSyn5
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (IsEqual happy_var_2 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (NotEqual happy_var_2 happy_var_3
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
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Add happy_var_2 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  5 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Sub happy_var_2 happy_var_3
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
