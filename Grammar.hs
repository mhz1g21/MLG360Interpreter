{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,71) ([3040,1020,57439,31,32,512,0,49342,61503,65029,1,0,24704,57344,64523,24323,8160,64,0,2,48640,16320,1520,510,0,31744,32641,3040,1020,0,0,32,6080,2040,49342,61503,65029,1,0,0,57344,64523,24323,8160,0,0,32,48640,16320,1520,33278,61487,31759,32641,3040,1020,256,63488,65282,0,0,49342,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseJulio","ExpSeq","Exp","repeat","joinH","joinV","int","var","'='","'('","')'","'{'","'}'","';'","'<<'","'>>'","'not'","rotate","scale","reflectX","reflectY","'_'","and","or","%eof"]
        bit_start = st Prelude.* 27
        bit_end = (st Prelude.+ 1) Prelude.* 27
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..26]
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
action_0 (4) = happyGoto action_17
action_0 (5) = happyGoto action_18
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
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (16) = happyShift action_34
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (9) = happyShift action_33
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
action_4 (5) = happyGoto action_32
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
action_5 (5) = happyGoto action_31
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_7

action_7 (11) = happyShift action_28
action_7 (17) = happyShift action_29
action_7 (18) = happyShift action_30
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
action_8 (5) = happyGoto action_27
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
action_9 (5) = happyGoto action_26
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (9) = happyShift action_25
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (9) = happyShift action_24
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
action_12 (5) = happyGoto action_23
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
action_13 (5) = happyGoto action_22
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_17

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
action_15 (5) = happyGoto action_21
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
action_16 (5) = happyGoto action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (27) = happyAccept
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (16) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_3
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (9) = happyShift action_6
action_19 (10) = happyShift action_7
action_19 (12) = happyShift action_8
action_19 (19) = happyShift action_9
action_19 (20) = happyShift action_10
action_19 (21) = happyShift action_11
action_19 (22) = happyShift action_12
action_19 (23) = happyShift action_13
action_19 (24) = happyShift action_14
action_19 (25) = happyShift action_15
action_19 (26) = happyShift action_16
action_19 (4) = happyGoto action_35
action_19 (5) = happyGoto action_18
action_19 _ = happyReduce_2

action_20 (6) = happyShift action_3
action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (9) = happyShift action_6
action_20 (10) = happyShift action_7
action_20 (12) = happyShift action_8
action_20 (19) = happyShift action_9
action_20 (20) = happyShift action_10
action_20 (21) = happyShift action_11
action_20 (22) = happyShift action_12
action_20 (23) = happyShift action_13
action_20 (24) = happyShift action_14
action_20 (25) = happyShift action_15
action_20 (26) = happyShift action_16
action_20 (5) = happyGoto action_46
action_20 _ = happyFail (happyExpListPerState 20)

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
action_21 (5) = happyGoto action_45
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_16

action_23 _ = happyReduce_15

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
action_24 (5) = happyGoto action_44
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
action_25 (5) = happyGoto action_43
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_12

action_27 (13) = happyShift action_42
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
action_28 (5) = happyGoto action_41
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
action_29 (5) = happyGoto action_40
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
action_30 (5) = happyGoto action_39
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
action_31 (5) = happyGoto action_38
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
action_32 (5) = happyGoto action_37
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (14) = happyShift action_36
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
action_34 (4) = happyGoto action_35
action_34 (5) = happyGoto action_18
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_1

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
action_36 (4) = happyGoto action_47
action_36 (5) = happyGoto action_18
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_4

action_38 _ = happyReduce_6

action_39 _ = happyReduce_11

action_40 _ = happyReduce_10

action_41 _ = happyReduce_9

action_42 _ = happyReduce_5

action_43 _ = happyReduce_13

action_44 _ = happyReduce_14

action_45 _ = happyReduce_18

action_46 _ = happyReduce_19

action_47 (15) = happyShift action_48
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_3

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

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn5
		 (Blank
	)

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

happyNewToken action sts stk [] =
	action 27 27 notHappyAtAll (HappyState action) sts stk []

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
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 27 tk tks = happyError' (tks, explist)
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
    | Blank
    | And Exp Exp
    | Or Exp Exp
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
