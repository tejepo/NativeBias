** assigning missing values**


RECODE FamProducts_1 FamProducts_4 FamProducts_5 FamProducts_6 FamProducts_7 
				FamProducts_12 FamProducts_13 FamProducts_14 FamProducts_15 FamProducts_16 
    FamProducts_17 FamProducts_18 FamProducts_19 FamProducts_20 FamProducts_22 FamProducts_23 FamProducts_24 
    FamProducts_25 FamProducts_26 FamProducts_28 FamProducts_29 FamProducts_31 FamProducts_32 
    FamProducts_34 FamProducts_35 ProductsUsed_x1 ProductsUsed_x4 ProductsUsed_x5 ProductsUsed_x6 ProductsUsed_x7 
				ProductsUsed_x12 ProductsUsed_x13 ProductsUsed_x14 ProductsUsed_x15 ProductsUsed_x16 
    ProductsUsed_x17 ProductsUsed_x18 ProductsUsed_x19 ProductsUsed_x20 ProductsUsed_x22 ProductsUsed_x23 ProductsUsed_x24 
    ProductsUsed_x25 ProductsUsed_x26 ProductsUsed_x28 ProductsUsed_x29 ProductsUsed_x31 ProductsUsed_x32 
    ProductsUsed_x34 ProductsUsed_x35 FamiliarExpressions_1 FamiliarExpressions_2 
    FamiliarExpressions_3 FamiliarExpressions_4 FamiliarExpressions_5 FamiliarExpressions_6 
    FamiliarExpressions_7 FamiliarExpressions_8 FamiliarExpressions_9 FamiliarExpressions_11 ExpressionsUsed_x1 
    ExpressionsUsed_x2 ExpressionsUsed_x3 ExpressionsUsed_x4 ExpressionsUsed_x5 ExpressionsUsed_x6 
    ExpressionsUsed_x7 ExpressionsUsed_x8 ExpressionsUsed_x9 ExpressionsUsed_x11 
Race_1 Race_2 Race_3 Race_4 Race_5 Race_6 Race_7 (-99=0).
EXECUTE.

Missing Values V10 to LibCon (-99). 
execute.




*making scales and checking reliability*
*BROKEN INDIAN NARRATIVE*

    *cultural racism: alpha =.910*

    Compute CultRacism_5_r = 8-CultRacism_5.
    Compute CultRacism_6_r = 8-CultRacism_6.
    execute.

    RELIABILITY
        /VARIABLES=CultRacism_1 CultRacism_2 CultRacism_3 CultRacism_4 CultRacism_5_r CultRacism_6_r
            CultRacism_7 CultRacism_8 CultRacism_9 CultRacism_10 CultRacism_11 CultRacism_12 CultRacism_13
        /SCALE('Cultural Racism') ALL
        /MODEL=ALPHA
        /SUMMARY=TOTAL.

    Compute CultRacism_composite = mean(CultRacism_1, CultRacism_2, CultRacism_3, CultRacism_4, CultRacism_5_r, CultRacism_6_r,
        CultRacism_7, CultRacism_8, CultRacism_9, CultRacism_10, CultRacism_11, CultRacism_12, CultRacism_13).
    execute.

    *broken indian stereotype as problematic:
        alpha = .914*

    RELIABILITY
        /VARIABLES=Stereotyping_3 Stereotyping_4 Stereotyping_7 Stereotyping_8 Stereotyping_11
            Stereotyping_12
        /SCALE('Stereotyping Broken Indian') ALL
        /MODEL=ALPHA
        /SUMMARY=TOTAL.

compute BrokenStereotypes = mean(Stereotyping_3, Stereotyping_4, Stereotyping_7,
 Stereotyping_8, Stereotyping_11, Stereotyping_12).
execute. 




compute BrokenStereotypeEndorsement = mean(Stereotyping_3.0, Stereotyping_4.0, Stereotyping_7.0,
 Stereotyping_8.0, Stereotyping_11.0, Stereotyping_12.0).
execute. 


*Colorblindness
alpha = .889*

    RELIABILITY
      /VARIABLES=Colorblind_1 Colorblind_2 Colorblind_3 Colorblind_4 Colorblind_5
      /SCALE('Colorblindness') ALL
      /MODEL=ALPHA
      /SUMMARY=TOTAL.

compute Colorblind = mean(Colorblind_1, Colorblind_2, Colorblind_3, Colorblind_4, Colorblind_5).
execute. 

*ROMANTICIZATION
alpha =.915*

    RELIABILITY
      /VARIABLES=Stereotyping_1 Stereotyping_2 Stereotyping_5 Stereotyping_6 Stereotyping_9 
        Stereotyping_10
      /SCALE('Romanticization') ALL
      /MODEL=ALPHA
      /SUMMARY=TOTAL.

compute RomanticStereotypes = mean(Stereotyping_1, Stereotyping_2, Stereotyping_5,
 Stereotyping_6, Stereotyping_9, Stereotyping_10).
execute. 

        *Factor Analysis for the Stereotyping measure, which is used across two narratives
        indeed two factors come out that in total account for 72% of the variance and they break down as 
        we hypothesized *

        FACTOR
          /VARIABLES Stereotyping_1 Stereotyping_2 Stereotyping_3 Stereotyping_4 Stereotyping_5 
            Stereotyping_6 Stereotyping_7 Stereotyping_8 Stereotyping_9 Stereotyping_10 Stereotyping_11 
            Stereotyping_12 Stereotyping_13 Stereotyping_14 Stereotyping_15 Stereotyping_17 Stereotyping_18
            Stereotyping_19 Stereotyping_20 Stereotyping_21 Stereotyping_22 Stereotyping_23 Stereotyping_24
            Stereotyping_25
          /MISSING LISTWISE 
          /ANALYSIS Stereotyping_1 Stereotyping_2 Stereotyping_3 Stereotyping_4 Stereotyping_5 
            Stereotyping_6 Stereotyping_7 Stereotyping_8 Stereotyping_9 Stereotyping_10 Stereotyping_11 
            Stereotyping_12 Stereotyping_13 Stereotyping_14 Stereotyping_15 Stereotyping_17 Stereotyping_18
            Stereotyping_19 Stereotyping_20 Stereotyping_21 Stereotyping_22 Stereotyping_23 Stereotyping_24
            Stereotyping_25
          /PRINT INITIAL EXTRACTION ROTATION
          /FORMAT SORT
          /CRITERIA MINEIGEN(1) ITERATE(25)
          /EXTRACTION PC
          /CRITERIA ITERATE(25)
          /ROTATION VARIMAX
          /METHOD=CORRELATION.


*OMISSIONS**

        ***Knowledge Questions***

If (ContempKnow_1 = 2) ContempKnow1_correct = 1. 
If (ContempKnow_2 = 2) ContempKnow2_correct = 1. 
If (ContempKnow_3 = 2) ContempKnow3_correct = 1. 
If (ContempKnow_4 = 1) ContempKnow4_correct = 1. 
If (ContempKnow_5 = 2) ContempKnow5_correct = 1. 
If (ContempKnow_6 = 2) ContempKnow6_correct = 1. 
If (ContempKnow_7 = 2) ContempKnow7_correct = 1. 
If (ContempKnow_8 = 1) ContempKnow8_correct = 1. 
If (ContempKnow_9 = 1) ContempKnow9_correct = 1.
If (ContempKnow_10 = 1) ContempKnow10_correct =1. 

If (ContempKnow_1 = 1) ContempKnow1_correct = 0. 
If (ContempKnow_2 = 1) ContempKnow2_correct = 0. 
If (ContempKnow_3 = 1) ContempKnow3_correct = 0. 
If (ContempKnow_4 = 2) ContempKnow4_correct = 0. 
If (ContempKnow_5 = 1) ContempKnow5_correct = 0. 
If (ContempKnow_6 = 1) ContempKnow6_correct = 0. 
If (ContempKnow_7 = 1) ContempKnow7_correct = 0. 
If (ContempKnow_8 = 2) ContempKnow8_correct = 0. 
If (ContempKnow_9 = 2) ContempKnow9_correct = 0.
If (ContempKnow_10 = 2) ContempKnow10_correct =0. 


If (ContempKnow_1 = 3) ContempKnow1_correct = 0. 
If (ContempKnow_2 = 3) ContempKnow2_correct = 0. 
If (ContempKnow_3 = 3) ContempKnow3_correct = 0. 
If (ContempKnow_4 = 3) ContempKnow4_correct = 0. 
If (ContempKnow_5 = 3) ContempKnow5_correct = 0. 
If (ContempKnow_6 = 3) ContempKnow6_correct = 0. 
If (ContempKnow_7 = 3) ContempKnow7_correct = 0. 
If (ContempKnow_8 = 3) ContempKnow8_correct = 0. 
If (ContempKnow_9 = 3) ContempKnow9_correct = 0.
If (ContempKnow_10 = 3) ContempKnow10_correct =0. 

Missing Values ContempKnow1_correct to ContempKnow10_correct (-99). 
execute.

If (HistoricKnow_1 = 2) HistoricKnow1_correct = 1. 
If (HistoricKnow_2 = 1) HistoricKnow2_correct = 1. 
If (HistoricKnow_3 = 1) HistoricKnow3_correct = 1. 
If (HistoricKnow_4 = 2) HistoricKnow4_correct = 1. 
If (HistoricKnow_5 = 1) HistoricKnow5_correct = 1. 
If (HistoricKnow_6 = 1) HistoricKnow6_correct = 1. 
If (HistoricKnow_7 = 1) HistoricKnow7_correct = 1. 
If (HistoricKnow_8 = 1) HistoricKnow8_correct = 1. 
If (HistoricKnow_9 = 1) HistoricKnow9_correct = 1.
If (HistoricKnow_10 = 2) HistoricKnow10_correct =1. 


If (HistoricKnow_1 = 1) HistoricKnow1_correct = 0. 
If (HistoricKnow_2 = 2) HistoricKnow2_correct = 0. 
If (HistoricKnow_3 = 2) HistoricKnow3_correct = 0. 
If (HistoricKnow_4 = 1) HistoricKnow4_correct = 0. 
If (HistoricKnow_5 = 2) HistoricKnow5_correct = 0. 
If (HistoricKnow_6 = 2) HistoricKnow6_correct = 0. 
If (HistoricKnow_7 = 2) HistoricKnow7_correct = 0. 
If (HistoricKnow_8 = 2) HistoricKnow8_correct = 0. 
If (HistoricKnow_9 = 2) HistoricKnow9_correct = 0.
If (HistoricKnow_10 = 1) HistoricKnow10_correct =0. 


If (HistoricKnow_1 = 3) HistoricKnow1_correct = 0. 
If (HistoricKnow_2 = 3) HistoricKnow2_correct = 0. 
If (HistoricKnow_3 = 3) HistoricKnow3_correct = 0. 
If (HistoricKnow_4 = 3) HistoricKnow4_correct = 0. 
If (HistoricKnow_5 = 3) HistoricKnow5_correct = 0. 
If (HistoricKnow_6 = 3) HistoricKnow6_correct = 0. 
If (HistoricKnow_7 = 3) HistoricKnow7_correct = 0. 
If (HistoricKnow_8 = 3) HistoricKnow8_correct = 0. 
If (HistoricKnow_9 = 3) HistoricKnow9_correct = 0.
If (HistoricKnow_10 = 3) HistoricKnow10_correct =0. 

Missing Values HistoricKnow1_correct to HistoricKnow10_correct (-99). 
execute.

compute HistoricKnow_sum = sum(HistoricKnow1_correct, HistoricKnow2_correct, HistoricKnow3_correct, HistoricKnow4_correct, HistoricKnow5_correct,
HistoricKnow6_correct, HistoricKnow7_correct, HistoricKnow8_correct, HistoricKnow9_correct, HistoricKnow10_correct).
execute. 

compute ContempKnow_sum = sum(ContempKnow1_correct, ContempKnow2_correct, ContempKnow3_correct, ContempKnow4_correct, ContempKnow5_correct, 
ContempKnow6_correct, ContempKnow7_correct, ContempKnow8_correct, ContempKnow9_correct, ContempKnow10_correct). 
execute. 
compute GenKnow_sum =  sum(HistoricKnow_sum, ContempKnow_sum).

        *contact measures
        alpha = .831*

        RELIABILITY
          /VARIABLES=CloseFriends CloseFamily Acquaintances KnowbyName
          /SCALE('Contact') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.
compute Contact = mean(CloseFriends, CloseFamily, Acquaintances, KnowbyName).
execute. 

        *extended contact measures
        alpha = .918*

        RELIABILITY
          /VARIABLES=Extended_people Extended_friends Extended_family
          /SCALE('Extended Contact') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.
compute Extended = mean(Extended_people, Extended_friends, Extended_family).

***COMMISSIONS***

        compute FamProducts_sum = sum(FamProducts_1, FamProducts_4, FamProducts_5, FamProducts_6, FamProducts_7, 
				FamProducts_12, FamProducts_13, FamProducts_14, FamProducts_15, FamProducts_16, 
    FamProducts_17, FamProducts_18, FamProducts_19, FamProducts_20, FamProducts_22, FamProducts_23, FamProducts_24, 
    FamProducts_25, FamProducts_26, FamProducts_28, FamProducts_29, FamProducts_31, FamProducts_32, 
    FamProducts_34, FamProducts_35). 
        execute. 

 compute ProductsUsed_sum = sum(ProductsUsed_x1, ProductsUsed_x4, ProductsUsed_x5, 
ProductsUsed_x6, ProductsUsed_x7, 
				ProductsUsed_x12, ProductsUsed_x13, ProductsUsed_x14, ProductsUsed_x15, ProductsUsed_x16, 
    ProductsUsed_x17, ProductsUsed_x18, ProductsUsed_x19, ProductsUsed_x20, 
ProductsUsed_x22, ProductsUsed_x23, ProductsUsed_x24, 
    ProductsUsed_x25, ProductsUsed_x26, ProductsUsed_x28, 
ProductsUsed_x29, ProductsUsed_x31, ProductsUsed_x32 ,
    ProductsUsed_x34, ProductsUsed_x35). 
        execute. 

        compute FamiliarExpressions_sum = sum(FamiliarExpressions_1,
        FamiliarExpressions_2,FamiliarExpressions_3,FamiliarExpressions_4,
        FamiliarExpressions_5,FamiliarExpressions_6,FamiliarExpressions_7,
        FamiliarExpressions_8,FamiliarExpressions_9,FamiliarExpressions_11).
        execute. 


        *Mascot exposure*

        compute OtherExposure_sum = sum (PlayedSportTeam,
        CommunitySportTeam,FanSportTeam,
        Spiritualpractice,NativeClothing,
        CowboyandIndianPlay).
        execute.

**EQUITY AND JUSTICE MEASURES**


        compute Q38_1_r = 8-Q38_1. 
        compute Q38_2_r = 8-Q38_2. 
        compute Q38_3_r = 8-Q38_3. 
        compute Q38_4_r = 8-Q38_4. 
        execute.

*alpha = .887*

        RELIABILITY
          /VARIABLES=Q38_1_r Q38_2_r Q38_3_r Q38_4_r Q38_5 Q38_6 Q38_7 Q38_8
          /SCALE('SDO Native') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.

   
*alpha = .886*

RELIABILITY
          /VARIABLES= DV2_9 Q38_10 Q38_11 Q38_12 DV2_13 DV2_14
          /SCALE('Material issues our writing') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.

compute MaterialsConcern= mean(DV2_9, Q38_10, Q38_11, Q38_12, DV2_13, DV2_14).
execute. 


        compute Native_SDOadaptation = 8- mean(Q38_1_r, Q38_2_r, Q38_3_r, Q38_4_r, Q38_5, Q38_6, Q38_7, Q38_8).
        execute. 

        *native interests conflict with interests of others*
***alpha = .642*

        compute Conflict_3_r= 8- Conflict_3. 
        execute. 

        RELIABILITY
          /VARIABLES=Conflict_1 Conflict_2 Conflict_3_r
          /SCALE('Conflict') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.

compute Conflict = mean(Conflict_1, Conflict_2, Conflict_3_r).
execute.


        *SLBS*

        compute EconMob_3_r = 8-EconMob_3. 
        compute EconMob_4_r = 8-EconMob_4. 
        compute EconMob_7_r = 8-EconMob_7. 
        compute EconMob_8_r = 8-EconMob_8. 
        compute EconMob_11_r = 8-EconMob_11. 
        compute EconMob_12_r = 8-EconMob_12.
        execute. 

        RELIABILITY
          /VARIABLES=EconMob_3_r EconMob_4_r EconMob_1 EconMob_2
          /SCALE('pwe') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.
        compute pwe = mean(EconMob_1, EconMob_2, EconMob_3_r, EconMob_4_r).
        execute.


        RELIABILITY
          /VARIABLES=EconMob_7_r EconMob_8_r EconMob_5 EconMob_6
          /SCALE('perm') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.
        compute perm = mean(EconMob_5, EconMob_6, EconMob_7_r, EconMob_7_r).
        execute.


        RELIABILITY
          /VARIABLES=EconMob_11_r EconMob_12_r EconMob_9 EconMob_10
          /SCALE('legit') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.
        compute legit = mean(EconMob_9, EconMob_10, EconMob_11_r, EconMob_12_r).
        execute.


        RELIABILITY
          /VARIABLES=EconMob_3_r EconMob_4_r EconMob_7_r EconMob_8_r EconMob_11_r EconMob_12_r EconMob_1 
            EconMob_2 EconMob_5 EconMob_6 EconMob_9 EconMob_10
          /SCALE('slb comp') ALL
          /MODEL=ALPHA
         /SUMMARY=TOTAL.

        compute SLB_comp = mean(EconMob_1, EconMob_2, EconMob_3_r, EconMob_4_r, 
        EconMob_5, EconMob_6, EconMob_7_r, EconMob_8_r, 
        EconMob_9, EconMob_10, EconMob_11_r, EconMob_12_r).
        execute.

compute SLB_cent = SLB_comp - 3.0435.
execute. 

    **Equality Justice CONCERNS***

        compute RacismMini_1_r = 8- RacismMini_1. 
        compute RacismMini_3_r = 8-RacismMini_3. 
        compute RacismMini_8_r = 8-RacismMini_8. 
        compute RacismMini_9_r = 8-RacismMini_9. 
        compute RacismMini_10_r = 8-RacismMini_10. 
        execute.

        RELIABILITY
          /VARIABLES=RacismMini_1_r RacismMini_3_r RacismMini_8_r RacismMini_9_r RacismMini_10_r 
            RacismMini_2 RacismMini_4 RacismMini_5 RacismMini_6 RacismMini_7
          /SCALE('racism minimization') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL. 


        RELIABILITY
          /VARIABLES= RacismMini_8_r RacismMini_9_r RacismMini_10_r 
          /SCALE('denial of dispartieis') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL. 


        RELIABILITY
          /VARIABLES=RacismMini_1_r RacismMini_3_r 
            RacismMini_2 RacismMini_4 RacismMini_5 RacismMini_6 RacismMini_7
          /SCALE('unawareness of racial priviledge') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL. 

compute RacismMini_comp = 8-mean(RacismMini_1_r, RacismMini_3_r, RacismMini_8_r, RacismMini_9_r, RacismMini_10_r, 
            RacismMini_2, RacismMini_4, RacismMini_5, RacismMini_6, RacismMini_7).
execute. 

   

*REPRESENTATION JUSTICE CONCERNS***

        **using native expressions*

        compute ExpressionsUsed = sum(ExpressionsUsed_x1,
        ExpressionsUsed_x2,
        ExpressionsUsed_x3,
        ExpressionsUsed_x4,
        ExpressionsUsed_x5,
        ExpressionsUsed_x6,
        ExpressionsUsed_x7,
        ExpressionsUsed_x8,
        ExpressionsUsed_x9,
        ExpressionsUsed_x11). 
        execute. 


        *repsentation related policy support
        alpha = .892**


        RELIABILITY
          /VARIABLES=DV1_1 DV1_2 DV1_3 DV1_4 DV1_5 DV1_6 DV1_7 DV1_8 DV1_9 DV1_10 DV1_11
          /SCALE('representation policies') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.

        compute RepresentationPolicySupp = mean(DV1_1, DV1_2, DV1_3, DV1_4, DV1_5, DV1_6, 
        DV1_7, DV1_8, DV1_9, DV1_10, DV1_11).
        execute. 


        *Dehumanization
        wht alpha = .875; native alpha =.869*

Rename Variables (Q114_1
Q114_2
Q114_3
Q114_4
Q114_5
Q114_6
Q114_7
Q114_8
Q115_1
Q115_2
Q115_3
Q115_4
Q115_5
Q115_6
Q115_7
Q115_8 = 
Dehuman_white_1
Dehuman_white_2
Dehuman_white_3
Dehuman_white_4
Dehuman_white_5
Dehuman_white_6
Dehuman_white_7
Dehuman_white_8
Dehuman_Native_1
Dehuman_Native_2
Dehuman_Native_3
Dehuman_Native_4
Dehuman_Native_5
Dehuman_Native_6
Dehuman_Native_7
Dehuman_Native_8).
execute. 


        compute wht_childlike_r = 100-Dehuman_wht_5.
        compute Native_childlike_r = 100-Dehuman_Native_5.
        execute. 

        RELIABILITY
          /VARIABLES=wht_childlike_r Dehuman_wht_6 Dehuman_wht_7 Dehuman_wht_8 Dehuman_wht_1 
            Dehuman_wht_2 Dehuman_wht_3 Dehuman_wht_4
          /SCALE('dehuman White') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.

        compute Humanness_wht = mean(wht_childlike_r, Dehuman_wht_6, Dehuman_wht_7, 
        Dehuman_wht_8, Dehuman_wht_1, Dehuman_wht_2, Dehuman_wht_3, Dehuman_wht_4).
        execute. 


        RELIABILITY
          /VARIABLES=Native_childlike_r Dehuman_Native_1 Dehuman_Native_2 Dehuman_Native_3 Dehuman_Native_4 
            Dehuman_Native_6 Dehuman_Native_7 Dehuman_Native_8
          /SCALE('dehuman White') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.

        compute Humanness_Native = mean(Native_childlike_r, Dehuman_Native_1, Dehuman_Native_2, 
        Dehuman_Native_3, Dehuman_Native_4, Dehuman_Native_6, Dehuman_Native_7, Dehuman_Native_8).
        execute. 

compute Human_diff = Humanness_wht-Humanness_Native. 
execute. 


compute Therm_diff = Therms_2- Therms_1. 
execute. 

*MOTIVATION TO APPEAR NON_PREJUDICED*

*Emp alpha = .880; Imp alpha = .848*

        compute IMP_2_r = 8- MCP_7.
        execute. 

        RELIABILITY
          /VARIABLES=MCP_1 MCP_2 MCP_3 MCP_4 MCP_5
          /SCALE('EMP') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.

        compute EMP_comp = mean(MCP_1, MCP_2, MCP_3, MCP_4, MCP_5).
        execute.

        RELIABILITY
          /VARIABLES=MCP_6 MCP_8 MCP_9 MCP_10 IMP_2_r
          /SCALE('IMP') ALL
          /MODEL=ALPHA
          /SUMMARY=TOTAL.

        compute IMP_comp= mean(MCP_6, MCP_8, MCP_9, MCP_10, IMP_2_r).
        execute. 




****Nationalism: alpha =.946; attachment = .925; glorification = .876***


RELIABILITY
  /VARIABLES=Nationalism_1 Nationalism_2 Nationalism_3 Nationalism_4 Nationalism_5 Nationalism_6 
    Nationalism_7 Nationalism_8 Nationalism_9 Nationalism_10 Nationalism_11 Nationalism_12 
    Nationalism_13 Nationalism_14 Nationalism_15 Nationalism_16
  /SCALE('nationalism') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.


compute Nationalism = mean(Nationalism_1, Nationalism_2, Nationalism_3, Nationalism_4, Nationalism_5, Nationalism_6, 
    Nationalism_7, Nationalism_8, Nationalism_9, Nationalism_10, Nationalism_11, Nationalism_12, 
    Nationalism_13, Nationalism_14, Nationalism_15, Nationalism_16).
execute. 


RELIABILITY
  /VARIABLES=Nationalism_1 Nationalism_2 Nationalism_3 Nationalism_4 Nationalism_5 Nationalism_6  
    Nationalism_13 Nationalism_14 Nationalism_15
  /SCALE('nationalism_attachment') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.


RELIABILITY
  /VARIABLES= Nationalism_7 Nationalism_8 Nationalism_9 Nationalism_10 Nationalism_11 Nationalism_12 Nationalism_16
  /SCALE('nationalism_glor') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

compute Nat_Attach = mean(Nationalism_1, Nationalism_2, Nationalism_3, Nationalism_4, Nationalism_5, Nationalism_6, Nationalism_13, Nationalism_14, Nationalism_15).
compute Nat_glor = mean(Nationalism_7, Nationalism_8, Nationalism_9, Nationalism_10, Nationalism_11, Nationalism_12, Nationalism_16). 
execute. 


*must look at seprartely.  
RELIABILITY
  /VARIABLES=Spiritualpractice NativeClothing CowboyandIndianPlay
  /SCALE('non sports') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.


*sports lapha = .669*

RELIABILITY
  /VARIABLES=PlayedSportTeam CommunitySportTeam FanSportTeam
  /SCALE('sports') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

compute Sports = sum(PlayedSportTeam, CommunitySportTeam, FanSportTeam).
execute. 



*masculinity: toughness  alpha = .765; anti-fem = .849*

RELIABILITY
  /VARIABLES=Masc_1 Masc_2 Masc_3 Masc_4
  /SCALE('toughness') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

compute Tough = mean(Masc_1, Masc_2, Masc_3, Masc_4).
execute. 

RELIABILITY
  /VARIABLES=Masc_5 Masc_6 Masc_7 Masc_8
  /SCALE('anti-fem') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.


compute Anti_fem = mean(Masc_5, Masc_6, Masc_7, Masc_8).
execute. 





RECODE Gender (1=-1) (2=1) (ELSE=SYSMIS) INTO Men0.
EXECUTE.


RELIABILITY
  /VARIABLES=DV1_5 DV1_6 DV1_7 DV1_8 DV1_9 DV1_10
  /SCALE('Acknowledge') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

compute Acknowledge = mean(DV1_6, DV1_7, DV1_8, DV1_9, DV1_10).
execute. 

RELIABILITY
  /VARIABLES=Q39_2 Q39_5 Q39_6 Q39_7 Q39_8 Q39_9
  /SCALE('ProtectSov') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

compute ProtectSov = mean(Q39_2, Q39_5, Q39_6, Q39_7, Q39_8, Q39_9).

execute. 

RELIABILITY
  /VARIABLES=DV1_1 DV1_2 DV1_3 DV1_4 DV1_5, DV1_11
  /SCALE('RepConcerns') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

compute RepConcerns = mean(DV1_1, DV1_2, DV1_3, DV1_4,  DV1_5, DV1_11).

execute. 



*computing Race**

DO IF (Race_3 = 1 & Race_1 = 0 & Race_2 = 0 & Race_4 = 0 & Race_5 = 0 & Race_6 = 0 & Race_7 = 0).
compute Wht = 1. 
end if. 
execute. 
RECODE Wht (MISSING=-1).
EXECUTE.

**computing SES***

do if (PrimaryEdu <=3 & SecondEdu <=3).
compute ParentSES = 0.
end if. 
execute.

do if (PrimaryEdu >=4).
compute ParentSES = 1.
end if. 
execute.

do if (SecondEdu >=4).
compute ParentSES = 1.
end if. 
execute. 

do if SecondEdu >= 3. 
RECODE PrimaryEdu (1 thru 3=0) INTO ParentSES.
end if. 
EXECUTE.

do if (Education <=3). 
compute SES = -1. 
end if. 
execute.  

do if (Education >=4). 
compute SES = 1. 
end if. 
execute.  


******additional study 2 items*****

COMPUTE Invisibility=mean(Invisibility_1,Invisibility_2,Invisibility_3,Invisibility_4,
    Invisibility_5,Invisibility_6,Invisibility_7,Invisibility_8).
EXECUTE.

COMPUTE ContemporaryInvisibility=mean(ContempInvisibility_1, ContempInvisibility_2, ContempInvisibility_3,
 ContempInvisibility_4, ContempInvisibility_5, ContempInvisibility_6, ContempInvisibility_7).
EXECUTE.


**calculating the grand mean***

AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES OVERWRITE = YES
  /LibCon_grandmean=MEAN(LibCon) 
  /CultRacism_composite_grandmean=MEAN(CultRacism_composite) 
  /Colorblind_grandmean=MEAN(Colorblind) 
  /FamProducts_sum_grandmean=MEAN(FamProducts_sum) 
  /ProductsUsed_sum_grandmean=MEAN(ProductsUsed_sum) 
  /FamiliarExpressions_sum_grandmean=MEAN(FamiliarExpressions_sum) 
  /Native_SDOadaptation_grandmean=MEAN(Native_SDOadaptation) 
  /Conflict_grandmean=MEAN(Conflict) 
  /SLB_comp_grandmean=MEAN(SLB_comp) 
  /RacismMini_comp_grandmean=MEAN(RacismMini_comp) 
  /ExpressionsUsed_grandmean=MEAN(ExpressionsUsed) 
  /EMP_comp_grandmean=MEAN(EMP_comp) 
  /IMP_comp_grandmean=MEAN(IMP_comp) 
  /Nationalism_grandmean=MEAN(Nationalism) 
  /Nat_Attach_grandmean=MEAN(Nat_Attach) 
  /Nat_glor_grandmean=MEAN(Nat_glor) 
  /Tough_grandmean=MEAN(Tough) 
  /Anti_fem_grandmean=MEAN(Anti_fem) 
  /Therm_diff_grandmean=MEAN(Therm_diff) 
  /Contact_grandmean=MEAN(Contact)
  /GenKnow_grandmean=MEAN(GenKnow_sum)
  /Invisibility_grandmean = MEAN(Invisibility)
  /ContempInvisibility_grandmean = MEAN(ContemporaryInvisibility)
  /PastGuilt_grandmean =MEAN(PastGuilt)
  /ContempGuilt_grandmean = MEAN(ContempGuilt).



compute AntiSov_5_r = 8-  AntiSov_5. 
compute AntiSov_6_r = 8-  AntiSov_6. 
execute. 


***Anti-sov DV: alpha = .772**

RELIABILITY
  /VARIABLES=AntiSov_1 AntiSov_2 AntiSov_3 AntiSov_4 AntiSov_5_r AntiSov_6_r
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

compute AntiSov = mean(AntiSov_1, AntiSov_2, AntiSov_3, AntiSov_4, AntiSov_5_r, AntiSov_6_r). 
execute. 


