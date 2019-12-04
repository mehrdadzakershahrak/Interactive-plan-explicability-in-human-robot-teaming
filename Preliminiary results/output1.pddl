(define (problem rover-1)

     (:domain
         rover-domain-modified
     )

     (:objects
         room43 room49 room18 room8
         dummy-room

         obstacle25 obstacle28 obstacle41 obstacle64 obstacle7 obstacle56

        

         rover1

         loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 loc10 loc11 loc12 loc13 loc14 loc15 loc16 loc17 loc18 loc19 loc20 loc21 loc22 loc23 loc24 loc25 loc26 loc27 loc28 loc29 loc30 loc31 loc32 loc33 loc34 loc35 loc36 loc37 loc38 loc39 loc40 loc41 loc42 loc43 loc44 loc45 loc46 loc47 loc48 loc49 loc50 loc51 loc52 loc53 loc54 loc55 loc56 loc57 loc58 loc59 loc60 loc61 loc62 loc63 loc64 - loc

     )

     (:init
        (room room43) (room room49) (room room18) (room room8) 
        (room dummy-room)
        (obstacle obstacle25) (obstacle obstacle28) (obstacle obstacle41) (obstacle obstacle64) (obstacle obstacle7) (obstacle obstacle56) 

        (loc loc1) (loc loc2) (loc loc3) (loc loc4) (loc loc5) 

        (loc loc6) (loc loc7) (loc loc8) (loc loc9) (loc loc10) 

        (loc loc11) (loc loc12) (loc loc13) (loc loc14) 

        (loc loc15) (loc loc16) (loc loc17) (loc loc18) (loc loc19) (loc loc20) 

        

        

        

         (can-move loc1 loc2) (can-move loc2 loc3) (can-move loc3 loc4) (can-move loc4 loc5) (can-move loc5 loc6) (can-move loc6 loc7) (can-move loc7 loc8)

         (can-move loc2 loc1) (can-move loc3 loc2) (can-move loc4 loc3) (can-move loc5 loc4) (can-move loc6 loc5) (can-move loc7 loc6) (can-move loc8 loc7) (visible loc1 loc2) (visible loc2 loc1) (visible loc2 loc3) (visible loc3 loc2) (visible loc3 loc4) (visible loc4 loc3) (visible loc4 loc5) (visible loc5 loc4) (visible loc5 loc6) (visible loc6 loc5) (visible loc7 loc6) (visible loc7 loc8)

         (can-move loc9 loc10) (can-move loc10 loc11) (can-move loc11 loc12) (can-move loc12 loc13) (can-move loc13 loc14) (can-move loc14 loc15) (can-move loc15 loc16)

         (can-move loc10 loc9) (can-move loc11 loc10) (can-move loc12 loc11) (can-move loc13 loc12) (can-move loc14 loc13) (can-move loc15 loc14) (can-move loc16 loc15) (visible loc9 loc10) (visible loc10 loc9) (visible loc10 loc11) (visible loc11 loc10) (visible loc11 loc12) (visible loc12 loc11) (visible loc12 loc13) (visible loc13 loc12) (visible loc13 loc14) (visible loc14 loc13) (visible loc14 loc15) (visible loc15 loc14) (visible loc15 loc16) (visible loc16 loc15)

         (can-move loc17 loc18) (can-move loc18 loc19) (can-move loc19 loc20) (can-move loc20 loc21) (can-move loc21 loc22) (can-move loc22 loc23) (can-move loc23 loc24)

         (can-move loc18 loc17) (can-move loc19 loc18) (can-move loc20 loc19) (can-move loc21 loc20) (can-move loc22 loc21) (can-move loc23 loc22) (can-move loc24 loc23) (visible loc17 loc18) (visible loc18 loc17) (visible loc18 loc19) (visible loc19 loc18) (visible loc19 loc20) (visible loc20 loc19) (visible loc20 loc21) (visible loc21 loc20) (visible loc21 loc22) (visible loc22 loc21) (visible loc23 loc22) (visible loc23 loc24)

         (can-move loc25 loc26) (can-move loc26 loc27) (can-move loc27 loc28) (can-move loc28 loc29) (can-move loc29 loc30) (can-move loc30 loc31) (can-move loc31 loc32)

         (can-move loc26 loc25) (can-move loc27 loc26) (can-move loc28 loc27) (can-move loc29 loc28) (can-move loc30 loc29) (can-move loc31 loc30) (can-move loc32 loc31) (visible loc25 loc26) (visible loc26 loc27) (visible loc27 loc26) (visible loc28 loc27) (visible loc28 loc29) (visible loc29 loc30) (visible loc30 loc29) (visible loc30 loc31) (visible loc31 loc30) (visible loc31 loc32) (visible loc32 loc31)

         (can-move loc33 loc34) (can-move loc34 loc35) (can-move loc35 loc36) (can-move loc36 loc37) (can-move loc37 loc38) (can-move loc38 loc39) (can-move loc39 loc40)

         (can-move loc34 loc33) (can-move loc35 loc34) (can-move loc36 loc35) (can-move loc37 loc36) (can-move loc38 loc37) (can-move loc39 loc38) (can-move loc40 loc39) (visible loc33 loc34) (visible loc34 loc33) (visible loc34 loc35) (visible loc35 loc34) (visible loc35 loc36) (visible loc36 loc35) (visible loc36 loc37) (visible loc37 loc36) (visible loc37 loc38) (visible loc38 loc37) (visible loc38 loc39) (visible loc39 loc38) (visible loc39 loc40) (visible loc40 loc39)

         (can-move loc41 loc42) (can-move loc42 loc43) (can-move loc43 loc44) (can-move loc44 loc45) (can-move loc45 loc46) (can-move loc46 loc47) (can-move loc47 loc48)

         (can-move loc42 loc41) (can-move loc43 loc42) (can-move loc44 loc43) (can-move loc45 loc44) (can-move loc46 loc45) (can-move loc47 loc46) (can-move loc48 loc47) (visible loc41 loc42) (visible loc42 loc43) (visible loc43 loc42) (visible loc43 loc44) (visible loc44 loc43) (visible loc45 loc44) (visible loc45 loc46) (visible loc46 loc47) (visible loc47 loc46) (visible loc47 loc48) (visible loc48 loc47)

         (can-move loc49 loc50) (can-move loc50 loc51) (can-move loc51 loc52) (can-move loc52 loc53) (can-move loc53 loc54) (can-move loc54 loc55) (can-move loc55 loc56)

         (can-move loc50 loc49) (can-move loc51 loc50) (can-move loc52 loc51) (can-move loc53 loc52) (can-move loc54 loc53) (can-move loc55 loc54) (can-move loc56 loc55) (visible loc50 loc49) (visible loc50 loc51) (visible loc51 loc52) (visible loc52 loc51) (visible loc52 loc53) (visible loc53 loc52) (visible loc53 loc54) (visible loc54 loc53) (visible loc54 loc55) (visible loc55 loc54) (visible loc56 loc55)

         (can-move loc57 loc58) (can-move loc58 loc59) (can-move loc59 loc60) (can-move loc60 loc61) (can-move loc61 loc62) (can-move loc62 loc63) (can-move loc63 loc64)

         (can-move loc58 loc57) (can-move loc59 loc58) (can-move loc60 loc59) (can-move loc61 loc60) (can-move loc62 loc61) (can-move loc63 loc62) (can-move loc64 loc63) (visible loc57 loc58) (visible loc59 loc58) (visible loc59 loc60) (visible loc60 loc61) (visible loc61 loc60) (visible loc61 loc62) (visible loc62 loc61) (visible loc62 loc63) (visible loc63 loc62) (visible loc64 loc63)

         (can-move loc65 loc66) (can-move loc66 loc67) (can-move loc67 loc68) (can-move loc68 loc69) (can-move loc69 loc70) (can-move loc70 loc71) (can-move loc71 loc72)

         (can-move loc66 loc65) (can-move loc67 loc66) (can-move loc68 loc67) (can-move loc69 loc68) (can-move loc70 loc69) (can-move loc71 loc70) (can-move loc72 loc71) (visible loc65 loc66) (visible loc66 loc65) (visible loc66 loc67) (visible loc67 loc66) (visible loc67 loc68) (visible loc68 loc67) (visible loc68 loc69) (visible loc69 loc68) (visible loc69 loc70) (visible loc70 loc69) (visible loc70 loc71) (visible loc71 loc70) (visible loc71 loc72) (visible loc72 loc71)

        