-- ICECROWN CITADEL trash spawn conditionals
-- modify boss link spawn conditions for creatures with DB GUID in (200965,137757,201029,201093,200902,201189,200966,201253,201572,201604,201126,200935,201222,151784,201031,200936,201255,201032,201160,200969,201511,201033,201065,201607,201129,45828,201193,137762,95035,201066,201130,201672,200939,201226,137763,201322,201163,201482,137764,201036,201355,201132,201674,201275,137765,201037,201001,201640,200878,45829,200942,200974,137766,201530,151764,201553,201589,200911,200943,201246,137767,201294,201071,201335,201306,201296,201385,151761,137768,201550,137748,201437,201136,201168,200945,151762,137769,201041,201446,201346,201501,45830,201201,151763,201010,201252,201286,201106,200883,201493,200947,201234,201011,201043,201075,201107,200884,201577,200948,201424,137772,201044,201076,201108,201673,201172,201259,201444,137773,201555,201458,201097,201396,151787,201479,151767,137774,201646,201078,137750,207210,200919,200990,201238,137775,45827,201334,137771,151806,151812,137755,1636,151801,151800,201080,151799,151794,201176,151798,201240,201272,151793,151802,151795,201145,201177,151785,151797,151803,201560,151792,201114,201146,201433,151796,200987,151804,201051,201593,151805,200892,151786,151791,200988,201020,201307,151788,151789,151790,201180,151783,201499,201276,137789,201595,137760,201659,201181,137749,201245,151807,201564,137747,137752,201660,201182,137753,137751,151808,201055,201087,201119,200896,137761,137770,200992,151809,201310,137756,201630,201662,201247,201244,200993,151810,201632,201089,201376,201435,200930,201472,137754,151811,201058,201090,201122,201067,201186,201218,200995,201027,201314,207211,200881,201155,200913,200964,200996,201283,201570,200917,201124,201521)

-- remove existing spawn conditionals
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 and `ConditionTypeOrReference`=13 and `SourceEntry` IN (200965,137757,201029,201093,200902,201189,200966,201253,201572,201604,201126,200935,201222,151784,201031,200936,201255,201032,201160,200969,201511,201033,201065,201607,201129,45828,201193,137762,95035,201066,201130,201672,200939,201226,137763,201322,201163,201482,137764,201036,201355,201132,201674,201275,137765,201037,201001,201640,200878,45829,200942,200974,137766,201530,151764,201553,201589,200911,200943,201246,137767,201294,201071,201335,201306,201296,201385,151761,137768,201550,137748,201437,201136,201168,200945,151762,137769,201041,201446,201346,201501,45830,201201,151763,201010,201252,201286,201106,200883,201493,200947,201234,201011,201043,201075,201107,200884,201577,200948,201424,137772,201044,201076,201108,201673,201172,201259,201444,137773,201555,201458,201097,201396,151787,201479,151767,137774,201646,201078,137750,207210,200919,200990,201238,137775,45827,201334,137771,151806,151812,137755,1636,151801,151800,201080,151799,151794,201176,151798,201240,201272,151793,151802,151795,201145,201177,151785,151797,151803,201560,151792,201114,201146,201433,151796,200987,151804,201051,201593,151805,200892,151786,151791,200988,201020,201307,151788,151789,151790,201180,151783,201499,201276,137789,201595,137760,201659,201181,137749,201245,151807,201564,137747,137752,201660,201182,137753,137751,151808,201055,201087,201119,200896,137761,137770,200992,151809,201310,137756,201630,201662,201247,201244,200993,151810,201632,201089,201376,201435,200930,201472,137754,151811,201058,201090,201122,201067,201186,201218,200995,201027,201314,207211,200881,201155,200913,200964,200996,201283,201570,200917,201124,201521);

-- add new conditions
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
    (27,200965,13,0,3,2,1,"Only spawn creature 200965 if boss 'LordMarrowgar' (0) is not done"),
    (27,137757,13,9,3,2,1,"Only spawn creature 137757 if boss 'SisterSvalna' (9) is not done"),
    (27,201029,13,0,3,2,1,"Only spawn creature 201029 if boss 'LordMarrowgar' (0) is not done"),
    (27,201093,13,0,3,2,1,"Only spawn creature 201093 if boss 'LordMarrowgar' (0) is not done"),
    (27,200902,13,1,3,2,1,"Only spawn creature 200902 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,201189,13,2,3,2,1,"Only spawn creature 201189 if boss 'GunshipBattle' (2) is not done"),
    (27,200966,13,0,3,2,1,"Only spawn creature 200966 if boss 'LordMarrowgar' (0) is not done"),
    (27,201253,13,6,3,2,1,"Only spawn creature 201253 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201572,13,6,3,2,1,"Only spawn creature 201572 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201604,13,8,3,2,1,"Only spawn creature 201604 if boss 'BloodQueen' (8) is not done"),
    (27,201126,13,1,3,2,1,"Only spawn creature 201126 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,200935,13,6,3,2,1,"Only spawn creature 200935 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201222,13,6,3,2,1,"Only spawn creature 201222 if boss 'ProfessorPutricide' (6) is not done"),
    (27,151784,13,11,3,2,1,"Only spawn creature 151784 if boss 'Sindragosa' (11) is not done"),
    (27,201031,13,2,3,2,1,"Only spawn creature 201031 if boss 'GunshipBattle' (2) is not done"),
    (27,200936,13,0,3,2,1,"Only spawn creature 200936 if boss 'LordMarrowgar' (0) is not done"),
    (27,201255,13,4,3,2,1,"Only spawn creature 201255 if boss 'Festergut' (4) is not done"),
    (27,201032,13,2,3,2,1,"Only spawn creature 201032 if boss 'GunshipBattle' (2) is not done"),
    (27,201160,13,0,3,2,1,"Only spawn creature 201160 if boss 'LordMarrowgar' (0) is not done"),
    (27,200969,13,0,3,2,1,"Only spawn creature 200969 if boss 'LordMarrowgar' (0) is not done"),
    (27,201511,13,6,3,2,1,"Only spawn creature 201511 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201033,13,1,3,2,1,"Only spawn creature 201033 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,201065,13,0,3,2,1,"Only spawn creature 201065 if boss 'LordMarrowgar' (0) is not done"),
    (27,201607,13,6,3,2,1,"Only spawn creature 201607 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201129,13,1,3,2,1,"Only spawn creature 201129 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,45828,13,2,3,2,1,"Only spawn creature 45828 if boss 'GunshipBattle' (2) is not done"),
    (27,201193,13,2,3,2,1,"Only spawn creature 201193 if boss 'GunshipBattle' (2) is not done"),
    (27,137762,13,9,3,2,1,"Only spawn creature 137762 if boss 'SisterSvalna' (9) is not done"),
    (27,95035,13,2,3,2,1,"Only spawn creature 95035 if boss 'GunshipBattle' (2) is not done"),
    (27,201066,13,0,3,2,1,"Only spawn creature 201066 if boss 'LordMarrowgar' (0) is not done"),
    (27,201130,13,0,3,2,1,"Only spawn creature 201130 if boss 'LordMarrowgar' (0) is not done"),
    (27,201672,13,6,3,2,1,"Only spawn creature 201672 if boss 'ProfessorPutricide' (6) is not done"),
    (27,200939,13,0,3,2,1,"Only spawn creature 200939 if boss 'LordMarrowgar' (0) is not done"),
    (27,201226,13,6,3,2,1,"Only spawn creature 201226 if boss 'ProfessorPutricide' (6) is not done"),
    (27,137763,13,9,3,2,1,"Only spawn creature 137763 if boss 'SisterSvalna' (9) is not done"),
    (27,201322,13,12,3,2,1,"Only spawn creature 201322 if boss 'TheLichKing' (12) is not done"),
    (27,201163,13,2,3,2,1,"Only spawn creature 201163 if boss 'GunshipBattle' (2) is not done"),
    (27,201482,13,7,3,2,1,"Only spawn creature 201482 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,137764,13,9,3,2,1,"Only spawn creature 137764 if boss 'SisterSvalna' (9) is not done"),
    (27,201036,13,0,3,2,1,"Only spawn creature 201036 if boss 'LordMarrowgar' (0) is not done"),
    (27,201355,13,6,3,2,1,"Only spawn creature 201355 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201132,13,2,3,2,1,"Only spawn creature 201132 if boss 'GunshipBattle' (2) is not done"),
    (27,201674,13,6,3,2,1,"Only spawn creature 201674 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201275,13,8,3,2,1,"Only spawn creature 201275 if boss 'BloodQueen' (8) is not done"),
    (27,137765,13,9,3,2,1,"Only spawn creature 137765 if boss 'SisterSvalna' (9) is not done"),
    (27,201037,13,0,3,2,1,"Only spawn creature 201037 if boss 'LordMarrowgar' (0) is not done"),
    (27,201001,13,8,3,2,1,"Only spawn creature 201001 if boss 'BloodQueen' (8) is not done"),
    (27,201640,13,8,3,2,1,"Only spawn creature 201640 if boss 'BloodQueen' (8) is not done"),
    (27,200878,13,0,3,2,1,"Only spawn creature 200878 if boss 'LordMarrowgar' (0) is not done"),
    (27,45829,13,2,3,2,1,"Only spawn creature 45829 if boss 'GunshipBattle' (2) is not done"),
    (27,200942,13,1,3,2,1,"Only spawn creature 200942 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,200974,13,2,3,2,1,"Only spawn creature 200974 if boss 'GunshipBattle' (2) is not done"),
    (27,137766,13,9,3,2,1,"Only spawn creature 137766 if boss 'SisterSvalna' (9) is not done"),
    (27,201530,13,8,3,2,1,"Only spawn creature 201530 if boss 'BloodQueen' (8) is not done"),
    (27,151764,13,9,3,2,1,"Only spawn creature 151764 if boss 'SisterSvalna' (9) is not done"),
    (27,201553,13,8,3,2,1,"Only spawn creature 201553 if boss 'BloodQueen' (8) is not done"),
    (27,201589,13,8,3,2,1,"Only spawn creature 201589 if boss 'BloodQueen' (8) is not done"),
    (27,200911,13,2,3,2,1,"Only spawn creature 200911 if boss 'GunshipBattle' (2) is not done"),
    (27,200943,13,2,3,2,1,"Only spawn creature 200943 if boss 'GunshipBattle' (2) is not done"),
    (27,201246,13,8,3,2,1,"Only spawn creature 201246 if boss 'BloodQueen' (8) is not done"),
    (27,137767,13,9,3,2,1,"Only spawn creature 137767 if boss 'SisterSvalna' (9) is not done"),
    (27,201294,13,6,3,2,1,"Only spawn creature 201294 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201071,13,2,3,2,1,"Only spawn creature 201071 if boss 'GunshipBattle' (2) is not done"),
    (27,201335,13,8,3,2,1,"Only spawn creature 201335 if boss 'BloodQueen' (8) is not done"),
    (27,201306,13,8,3,2,1,"Only spawn creature 201306 if boss 'BloodQueen' (8) is not done"),
    (27,201296,13,8,3,2,1,"Only spawn creature 201296 if boss 'BloodQueen' (8) is not done"),
    (27,201385,13,8,3,2,1,"Only spawn creature 201385 if boss 'BloodQueen' (8) is not done"),
    (27,151761,13,9,3,2,1,"Only spawn creature 151761 if boss 'SisterSvalna' (9) is not done"),
    (27,137768,13,9,3,2,1,"Only spawn creature 137768 if boss 'SisterSvalna' (9) is not done"),
    (27,201550,13,8,3,2,1,"Only spawn creature 201550 if boss 'BloodQueen' (8) is not done"),
    (27,137748,13,10,3,2,1,"Only spawn creature 137748 if boss 'Dreamwalker' (10) is not done"),
    (27,201437,13,6,3,2,1,"Only spawn creature 201437 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201136,13,2,3,2,1,"Only spawn creature 201136 if boss 'GunshipBattle' (2) is not done"),
    (27,201168,13,2,3,2,1,"Only spawn creature 201168 if boss 'GunshipBattle' (2) is not done"),
    (27,200945,13,2,3,2,1,"Only spawn creature 200945 if boss 'GunshipBattle' (2) is not done"),
    (27,151762,13,9,3,2,1,"Only spawn creature 151762 if boss 'SisterSvalna' (9) is not done"),
    (27,137769,13,9,3,2,1,"Only spawn creature 137769 if boss 'SisterSvalna' (9) is not done"),
    (27,201041,13,2,3,2,1,"Only spawn creature 201041 if boss 'GunshipBattle' (2) is not done"),
    (27,201446,13,8,3,2,1,"Only spawn creature 201446 if boss 'BloodQueen' (8) is not done"),
    (27,201346,13,8,3,2,1,"Only spawn creature 201346 if boss 'BloodQueen' (8) is not done"),
    (27,201501,13,8,3,2,1,"Only spawn creature 201501 if boss 'BloodQueen' (8) is not done"),
    (27,45830,13,2,3,2,1,"Only spawn creature 45830 if boss 'GunshipBattle' (2) is not done"),
    (27,201201,13,6,3,2,1,"Only spawn creature 201201 if boss 'ProfessorPutricide' (6) is not done"),
    (27,151763,13,9,3,2,1,"Only spawn creature 151763 if boss 'SisterSvalna' (9) is not done"),
    (27,201010,13,1,3,2,1,"Only spawn creature 201010 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,201252,13,7,3,2,1,"Only spawn creature 201252 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,201286,13,7,3,2,1,"Only spawn creature 201286 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,201106,13,0,3,2,1,"Only spawn creature 201106 if boss 'LordMarrowgar' (0) is not done"),
    (27,200883,13,0,3,2,1,"Only spawn creature 200883 if boss 'LordMarrowgar' (0) is not done"),
    (27,201493,13,7,3,2,1,"Only spawn creature 201493 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,200947,13,6,3,2,1,"Only spawn creature 200947 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201234,13,6,3,2,1,"Only spawn creature 201234 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201011,13,0,3,2,1,"Only spawn creature 201011 if boss 'LordMarrowgar' (0) is not done"),
    (27,201043,13,0,3,2,1,"Only spawn creature 201043 if boss 'LordMarrowgar' (0) is not done"),
    (27,201075,13,2,3,2,1,"Only spawn creature 201075 if boss 'GunshipBattle' (2) is not done"),
    (27,201107,13,0,3,2,1,"Only spawn creature 201107 if boss 'LordMarrowgar' (0) is not done"),
    (27,200884,13,1,3,2,1,"Only spawn creature 200884 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,201577,13,7,3,2,1,"Only spawn creature 201577 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,200948,13,1,3,2,1,"Only spawn creature 200948 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,201424,13,6,3,2,1,"Only spawn creature 201424 if boss 'ProfessorPutricide' (6) is not done"),
    (27,137772,13,9,3,2,1,"Only spawn creature 137772 if boss 'SisterSvalna' (9) is not done"),
    (27,201044,13,2,3,2,1,"Only spawn creature 201044 if boss 'GunshipBattle' (2) is not done"),
    (27,201076,13,2,3,2,1,"Only spawn creature 201076 if boss 'GunshipBattle' (2) is not done"),
    (27,201108,13,0,3,2,1,"Only spawn creature 201108 if boss 'LordMarrowgar' (0) is not done"),
    (27,201673,13,7,3,2,1,"Only spawn creature 201673 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,201172,13,2,3,2,1,"Only spawn creature 201172 if boss 'GunshipBattle' (2) is not done"),
    (27,201259,13,7,3,2,1,"Only spawn creature 201259 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,201444,13,7,3,2,1,"Only spawn creature 201444 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,137773,13,9,3,2,1,"Only spawn creature 137773 if boss 'SisterSvalna' (9) is not done"),
    (27,201555,13,6,3,2,1,"Only spawn creature 201555 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201458,13,7,3,2,1,"Only spawn creature 201458 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,201097,13,0,3,2,1,"Only spawn creature 201097 if boss 'LordMarrowgar' (0) is not done"),
    (27,201396,13,7,3,2,1,"Only spawn creature 201396 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,151787,13,11,3,2,1,"Only spawn creature 151787 if boss 'Sindragosa' (11) is not done"),
    (27,201479,13,7,3,2,1,"Only spawn creature 201479 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,151767,13,9,3,2,1,"Only spawn creature 151767 if boss 'SisterSvalna' (9) is not done"),
    (27,137774,13,9,3,2,1,"Only spawn creature 137774 if boss 'SisterSvalna' (9) is not done"),
    (27,201646,13,7,3,2,1,"Only spawn creature 201646 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,201078,13,2,3,2,1,"Only spawn creature 201078 if boss 'GunshipBattle' (2) is not done"),
    (27,137750,13,10,3,2,1,"Only spawn creature 137750 if boss 'Dreamwalker' (10) is not done"),
    (27,207210,13,11,3,2,1,"Only spawn creature 207210 if boss 'Sindragosa' (11) is not done"),
    (27,200919,13,0,3,2,1,"Only spawn creature 200919 if boss 'LordMarrowgar' (0) is not done"),
    (27,200990,13,2,3,2,1,"Only spawn creature 200990 if boss 'GunshipBattle' (2) is not done"),
    (27,201238,13,7,3,2,1,"Only spawn creature 201238 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,137775,13,9,3,2,1,"Only spawn creature 137775 if boss 'SisterSvalna' (9) is not done"),
    (27,45827,13,2,3,2,1,"Only spawn creature 45827 if boss 'GunshipBattle' (2) is not done"),
    (27,201334,13,6,3,2,1,"Only spawn creature 201334 if boss 'ProfessorPutricide' (6) is not done"),
    (27,137771,13,9,3,2,1,"Only spawn creature 137771 if boss 'SisterSvalna' (9) is not done"),
    (27,151806,13,11,3,2,1,"Only spawn creature 151806 if boss 'Sindragosa' (11) is not done"),
    (27,151812,13,11,3,2,1,"Only spawn creature 151812 if boss 'Sindragosa' (11) is not done"),
    (27,137755,13,9,3,2,1,"Only spawn creature 137755 if boss 'SisterSvalna' (9) is not done"),
    (27,1636,13,10,3,2,1,"Only spawn creature 1636 if boss 'Dreamwalker' (10) is not done"),
    (27,151801,13,11,3,2,1,"Only spawn creature 151801 if boss 'Sindragosa' (11) is not done"),
    (27,151800,13,11,3,2,1,"Only spawn creature 151800 if boss 'Sindragosa' (11) is not done"),
    (27,201080,13,0,3,2,1,"Only spawn creature 201080 if boss 'LordMarrowgar' (0) is not done"),
    (27,151799,13,11,3,2,1,"Only spawn creature 151799 if boss 'Sindragosa' (11) is not done"),
    (27,151794,13,11,3,2,1,"Only spawn creature 151794 if boss 'Sindragosa' (11) is not done"),
    (27,201176,13,2,3,2,1,"Only spawn creature 201176 if boss 'GunshipBattle' (2) is not done"),
    (27,151798,13,11,3,2,1,"Only spawn creature 151798 if boss 'Sindragosa' (11) is not done"),
    (27,201240,13,4,3,2,1,"Only spawn creature 201240 if boss 'Festergut' (4) is not done"),
    (27,201272,13,6,3,2,1,"Only spawn creature 201272 if boss 'ProfessorPutricide' (6) is not done"),
    (27,151793,13,11,3,2,1,"Only spawn creature 151793 if boss 'Sindragosa' (11) is not done"),
    (27,151802,13,11,3,2,1,"Only spawn creature 151802 if boss 'Sindragosa' (11) is not done"),
    (27,151795,13,11,3,2,1,"Only spawn creature 151795 if boss 'Sindragosa' (11) is not done"),
    (27,201145,13,0,3,2,1,"Only spawn creature 201145 if boss 'LordMarrowgar' (0) is not done"),
    (27,201177,13,0,3,2,1,"Only spawn creature 201177 if boss 'LordMarrowgar' (0) is not done"),
    (27,151785,13,11,3,2,1,"Only spawn creature 151785 if boss 'Sindragosa' (11) is not done"),
    (27,151797,13,11,3,2,1,"Only spawn creature 151797 if boss 'Sindragosa' (11) is not done"),
    (27,151803,13,11,3,2,1,"Only spawn creature 151803 if boss 'Sindragosa' (11) is not done"),
    (27,201560,13,6,3,2,1,"Only spawn creature 201560 if boss 'ProfessorPutricide' (6) is not done"),
    (27,151792,13,11,3,2,1,"Only spawn creature 151792 if boss 'Sindragosa' (11) is not done"),
    (27,201114,13,2,3,2,1,"Only spawn creature 201114 if boss 'GunshipBattle' (2) is not done"),
    (27,201146,13,0,3,2,1,"Only spawn creature 201146 if boss 'LordMarrowgar' (0) is not done"),
    (27,201433,13,5,3,2,1,"Only spawn creature 201433 if boss 'Rotface' (5) is not done"),
    (27,151796,13,11,3,2,1,"Only spawn creature 151796 if boss 'Sindragosa' (11) is not done"),
    (27,200987,13,0,3,2,1,"Only spawn creature 200987 if boss 'LordMarrowgar' (0) is not done"),
    (27,151804,13,11,3,2,1,"Only spawn creature 151804 if boss 'Sindragosa' (11) is not done"),
    (27,201051,13,2,3,2,1,"Only spawn creature 201051 if boss 'GunshipBattle' (2) is not done"),
    (27,201593,13,6,3,2,1,"Only spawn creature 201593 if boss 'ProfessorPutricide' (6) is not done"),
    (27,151805,13,11,3,2,1,"Only spawn creature 151805 if boss 'Sindragosa' (11) is not done"),
    (27,200892,13,0,3,2,1,"Only spawn creature 200892 if boss 'LordMarrowgar' (0) is not done"),
    (27,151786,13,11,3,2,1,"Only spawn creature 151786 if boss 'Sindragosa' (11) is not done"),
    (27,151791,13,11,3,2,1,"Only spawn creature 151791 if boss 'Sindragosa' (11) is not done"),
    (27,200988,13,2,3,2,1,"Only spawn creature 200988 if boss 'GunshipBattle' (2) is not done"),
    (27,201020,13,2,3,2,1,"Only spawn creature 201020 if boss 'GunshipBattle' (2) is not done"),
    (27,201307,13,7,3,2,1,"Only spawn creature 201307 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,151788,13,11,3,2,1,"Only spawn creature 151788 if boss 'Sindragosa' (11) is not done"),
    (27,151789,13,11,3,2,1,"Only spawn creature 151789 if boss 'Sindragosa' (11) is not done"),
    (27,151790,13,11,3,2,1,"Only spawn creature 151790 if boss 'Sindragosa' (11) is not done"),
    (27,201180,13,2,3,2,1,"Only spawn creature 201180 if boss 'GunshipBattle' (2) is not done"),
    (27,151783,13,11,3,2,1,"Only spawn creature 151783 if boss 'Sindragosa' (11) is not done"),
    (27,201499,13,6,3,2,1,"Only spawn creature 201499 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201276,13,6,3,2,1,"Only spawn creature 201276 if boss 'ProfessorPutricide' (6) is not done"),
    (27,137789,13,10,3,2,1,"Only spawn creature 137789 if boss 'Dreamwalker' (10) is not done"),
    (27,201595,13,8,3,2,1,"Only spawn creature 201595 if boss 'BloodQueen' (8) is not done"),
    (27,137760,13,9,3,2,1,"Only spawn creature 137760 if boss 'SisterSvalna' (9) is not done"),
    (27,201659,13,7,3,2,1,"Only spawn creature 201659 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,201181,13,2,3,2,1,"Only spawn creature 201181 if boss 'GunshipBattle' (2) is not done"),
    (27,137749,13,10,3,2,1,"Only spawn creature 137749 if boss 'Dreamwalker' (10) is not done"),
    (27,201245,13,12,3,2,1,"Only spawn creature 201245 if boss 'TheLichKing' (12) is not done"),
    (27,151807,13,11,3,2,1,"Only spawn creature 151807 if boss 'Sindragosa' (11) is not done"),
    (27,201564,13,6,3,2,1,"Only spawn creature 201564 if boss 'ProfessorPutricide' (6) is not done"),
    (27,137747,13,10,3,2,1,"Only spawn creature 137747 if boss 'Dreamwalker' (10) is not done"),
    (27,137752,13,10,3,2,1,"Only spawn creature 137752 if boss 'Dreamwalker' (10) is not done"),
    (27,201660,13,6,3,2,1,"Only spawn creature 201660 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201182,13,1,3,2,1,"Only spawn creature 201182 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,137753,13,9,3,2,1,"Only spawn creature 137753 if boss 'SisterSvalna' (9) is not done"),
    (27,137751,13,10,3,2,1,"Only spawn creature 137751 if boss 'Dreamwalker' (10) is not done"),
    (27,151808,13,11,3,2,1,"Only spawn creature 151808 if boss 'Sindragosa' (11) is not done"),
    (27,201055,13,2,3,2,1,"Only spawn creature 201055 if boss 'GunshipBattle' (2) is not done"),
    (27,201087,13,0,3,2,1,"Only spawn creature 201087 if boss 'LordMarrowgar' (0) is not done"),
    (27,201119,13,0,3,2,1,"Only spawn creature 201119 if boss 'LordMarrowgar' (0) is not done"),
    (27,200896,13,2,3,2,1,"Only spawn creature 200896 if boss 'GunshipBattle' (2) is not done"),
    (27,137761,13,9,3,2,1,"Only spawn creature 137761 if boss 'SisterSvalna' (9) is not done"),
    (27,137770,13,9,3,2,1,"Only spawn creature 137770 if boss 'SisterSvalna' (9) is not done"),
    (27,200992,13,0,3,2,1,"Only spawn creature 200992 if boss 'LordMarrowgar' (0) is not done"),
    (27,151809,13,11,3,2,1,"Only spawn creature 151809 if boss 'Sindragosa' (11) is not done"),
    (27,201310,13,6,3,2,1,"Only spawn creature 201310 if boss 'ProfessorPutricide' (6) is not done"),
    (27,137756,13,9,3,2,1,"Only spawn creature 137756 if boss 'SisterSvalna' (9) is not done"),
    (27,201630,13,8,3,2,1,"Only spawn creature 201630 if boss 'BloodQueen' (8) is not done"),
    (27,201662,13,6,3,2,1,"Only spawn creature 201662 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201247,13,5,3,2,1,"Only spawn creature 201247 if boss 'Rotface' (5) is not done"),
    (27,201244,13,6,3,2,1,"Only spawn creature 201244 if boss 'ProfessorPutricide' (6) is not done"),
    (27,200993,13,2,3,2,1,"Only spawn creature 200993 if boss 'GunshipBattle' (2) is not done"),
    (27,151810,13,11,3,2,1,"Only spawn creature 151810 if boss 'Sindragosa' (11) is not done"),
    (27,201632,13,6,3,2,1,"Only spawn creature 201632 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201089,13,2,3,2,1,"Only spawn creature 201089 if boss 'GunshipBattle' (2) is not done"),
    (27,201376,13,6,3,2,1,"Only spawn creature 201376 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201435,13,6,3,2,1,"Only spawn creature 201435 if boss 'ProfessorPutricide' (6) is not done"),
    (27,200930,13,1,3,2,1,"Only spawn creature 200930 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,201472,13,6,3,2,1,"Only spawn creature 201472 if boss 'ProfessorPutricide' (6) is not done"),
    (27,137754,13,9,3,2,1,"Only spawn creature 137754 if boss 'SisterSvalna' (9) is not done"),
    (27,151811,13,11,3,2,1,"Only spawn creature 151811 if boss 'Sindragosa' (11) is not done"),
    (27,201058,13,2,3,2,1,"Only spawn creature 201058 if boss 'GunshipBattle' (2) is not done"),
    (27,201090,13,0,3,2,1,"Only spawn creature 201090 if boss 'LordMarrowgar' (0) is not done"),
    (27,201122,13,3,3,2,1,"Only spawn creature 201122 if boss 'Deathbringer' (3) is not done"),
    (27,201067,13,1,3,2,1,"Only spawn creature 201067 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,201186,13,0,3,2,1,"Only spawn creature 201186 if boss 'LordMarrowgar' (0) is not done"),
    (27,201218,13,8,3,2,1,"Only spawn creature 201218 if boss 'BloodQueen' (8) is not done"),
    (27,200995,13,0,3,2,1,"Only spawn creature 200995 if boss 'LordMarrowgar' (0) is not done"),
    (27,201027,13,2,3,2,1,"Only spawn creature 201027 if boss 'GunshipBattle' (2) is not done"),
    (27,201314,13,7,3,2,1,"Only spawn creature 201314 if boss 'BloodPrinceCouncil' (7) is not done"),
    (27,207211,13,11,3,2,1,"Only spawn creature 207211 if boss 'Sindragosa' (11) is not done"),
    (27,200881,13,1,3,2,1,"Only spawn creature 200881 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,201155,13,1,3,2,1,"Only spawn creature 201155 if boss 'LadyDeathwhisper' (1) is not done"),
    (27,200913,13,0,3,2,1,"Only spawn creature 200913 if boss 'LordMarrowgar' (0) is not done"),
    (27,200964,13,2,3,2,1,"Only spawn creature 200964 if boss 'GunshipBattle' (2) is not done"),
    (27,200996,13,0,3,2,1,"Only spawn creature 200996 if boss 'LordMarrowgar' (0) is not done"),
    (27,201283,13,6,3,2,1,"Only spawn creature 201283 if boss 'ProfessorPutricide' (6) is not done"),
    (27,201570,13,6,3,2,1,"Only spawn creature 201570 if boss 'ProfessorPutricide' (6) is not done"),
    (27,200917,13,2,3,2,1,"Only spawn creature 200917 if boss 'GunshipBattle' (2) is not done"),
    (27,201124,13,0,3,2,1,"Only spawn creature 201124 if boss 'LordMarrowgar' (0) is not done"),
    (27,201521,13,6,3,2,1,"Only spawn creature 201521 if boss 'ProfessorPutricide' (6) is not done");