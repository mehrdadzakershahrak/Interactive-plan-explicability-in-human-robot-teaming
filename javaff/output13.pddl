(define (problem rover-1)

     (:domain
         rover-domain-modified
     )

     (:objects
         room1 room2 room3 room4
         dummy-room

         obstacle1 obstacle2 obstacle3



         rover1

         loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 loc10 loc11 loc12 loc13 loc14 loc15 loc16 loc17 loc18 loc19 loc20 loc21 loc22 loc23 loc24 loc25 loc26 loc27 loc28 loc29 loc30 loc31 loc32 loc33 loc34 loc35 loc36 - loc

     )

     (:init
        (room room1) (room room2) (room room3) (room room4)
        (room dummy-room)
        (obstacle obstacle1) (obstacle obstacle2) (obstacle obstacle3)

        (loc loc1) (loc loc2) (loc loc3) (loc loc4) (loc loc5) (loc loc6) (loc loc7) (loc loc8) (loc loc9) (loc loc10) (loc loc11) (loc loc12) (loc loc13) (loc loc14) (loc loc15) (loc loc16) (loc loc17) (loc loc18) (loc loc19) (loc loc20) (loc loc21) (loc loc22) (loc loc23) (loc loc24) (loc loc25) (loc loc26) (loc loc27) (loc loc28) (loc loc29) (loc loc30) (loc loc31) (loc loc32) (loc loc33) (loc loc34) (loc loc35) (loc loc36)
        (open loc1) (open loc2) (open loc3) (open loc4) (open loc5) (open loc6) (open loc7) (open loc9) (open loc10) (open loc11) (open loc12) (open loc13) (open loc15) (open loc16) (open loc17) (open loc18) (open loc19) (open loc20) (open loc21) (open loc22) (open loc23) (open loc24) (open loc25) (open loc26) (open loc27) (open loc28) (open loc29) (open loc30) (open loc31) (open loc32) (open loc33) (open loc34) (open loc35) (open loc36)




        (can-move loc3 loc4)(can-move loc4 loc5)(can-move loc5 loc6)

        (can-move loc4 loc3)(can-move loc5 loc4)(can-move loc6 loc5) (visible loc3 loc4) (visible loc4 loc3) (visible loc4 loc5) (visible loc5 loc4) (visible loc5 loc6) (visible loc6 loc5)

        (can-move loc7 loc8)(can-move loc8 loc9)(can-move loc11 loc12)

        (can-move loc8 loc7)(can-move loc9 loc8)(can-move loc12 loc11) (visible loc8 loc7) (visible loc8 loc9) (visible loc11 loc12) (visible loc12 loc11)

        (can-move loc13 loc14)(can-move loc14 loc15)

        (can-move loc14 loc13)(can-move loc15 loc14) (visible loc14 loc13) (visible loc14 loc15)





        (can-move loc25 loc26)(can-move loc26 loc27)(can-move loc29 loc30)

        (can-move loc26 loc25)(can-move loc27 loc26)(can-move loc30 loc29) (visible loc25 loc26) (visible loc26 loc25) (visible loc26 loc27) (visible loc27 loc26) (visible loc29 loc30) (visible loc30 loc29)

        (can-move loc35 loc36)

        (can-move loc36 loc35) (visible loc35 loc36) (visible loc36 loc35)

        (can-move loc7 loc13)(can-move loc13 loc7)(can-move loc13 loc19)(can-move loc19 loc13)(can-move loc19 loc25)(can-move loc25 loc19)(can-move loc25 loc31)(can-move loc31 loc25)

        (visible loc7 loc13)(visible loc13 loc7)(visible loc13 loc19)(visible loc19 loc13)(visible loc19 loc25)(visible loc25 loc19)(visible loc25 loc31)(visible loc31 loc25)

        (can-move loc8 loc14)(can-move loc14 loc8)



        (can-move loc3 loc9)(can-move loc9 loc3)(can-move loc9 loc15)(can-move loc15 loc9)(can-move loc15 loc21)(can-move loc21 loc15)(can-move loc21 loc27)(can-move loc27 loc21)(can-move loc27 loc33)(can-move loc33 loc27)

        (visible loc3 loc9)(visible loc9 loc3)(visible loc9 loc15)(visible loc15 loc9)(visible loc15 loc21)(visible loc21 loc15)(visible loc21 loc27)(visible loc27 loc21)(visible loc27 loc33)(visible loc33 loc27)





        (can-move loc5 loc11)(can-move loc11 loc5)(can-move loc11 loc17)(can-move loc17 loc11)(can-move loc17 loc23)(can-move loc23 loc17)(can-move loc23 loc29)(can-move loc29 loc23)(can-move loc29 loc35)(can-move loc35 loc29)

        (visible loc5 loc11)(visible loc11 loc5)(visible loc11 loc17)(visible loc17 loc11)(visible loc17 loc23)(visible loc23 loc17)(visible loc23 loc29)(visible loc29 loc23)(visible loc29 loc35)(visible loc35 loc29)

        (can-move loc6 loc12)(can-move loc12 loc6)(can-move loc30 loc36)(can-move loc36 loc30)

        (visible loc6 loc12)(visible loc12 loc6)(visible loc30 loc36)(visible loc36 loc30)



        (is-in room1 loc6)(is-in room2 loc7)(is-in room3 loc29)(is-in room4 loc33)

        (rover rover1)

        (at rover1 loc31)

        (is-in obstacle1 loc8) (is-in obstacle2 loc14)





        (visited dummy-room)


        (room-prec dummy-room room1)
        (room-prec dummy-room room2)
        (room-prec dummy-room room3)
        (room-prec dummy-room room4)
        (to-visit dummy-room)


     )


     (:goal
         (and
            (visited room1)
            (visited room2)
            (visited room3)
            (visited room4)
         )
     )
)
