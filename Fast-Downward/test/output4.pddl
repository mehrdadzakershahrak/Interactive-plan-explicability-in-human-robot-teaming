(define (problem rover-1)

     (:domain
         rover-domain-modified
     )

     (:objects
         room7 room4 room6 room11
         dummy-room

         obstacle20 obstacle15 obstacle17 obstacle19 obstacle13 obstacle16

         tool5

         rover1

         loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 loc10 loc11 loc12 loc13 loc14 loc15 loc16 loc17 loc18 loc19 loc20

     )

     (:init
        (room room7) (room room4) (room room6) (room room11) 
        (room dummy-room)
        (obstacle obstacle11) (obstacle obstacle15) (obstacle obstacle17) (obstacle obstacle19) (obstacle obstacle7) (obstacle obstacle13) (obstacle obstacle16) 

        (loc loc1) (loc loc2) (loc loc3) (loc loc4) (loc loc5) 

        (loc loc6) (loc loc7) (loc loc8) (loc loc9) (loc loc10) 

        (loc loc11) (loc loc12) (loc loc13) (loc loc14) 

        (loc loc15) (loc loc16) (loc loc17) (loc loc18) (loc loc19) (loc loc20) 

        

        

        

         (can-move loc1 loc2) (can-move loc2 loc3) (can-move loc3 loc4) (can-move loc4 loc5)

         (can-move loc2 loc1) (can-move loc3 loc2) (can-move loc4 loc3) (can-move loc5 loc4) (visible loc1 loc2) (visible loc2 loc3) (visible loc3 loc4) (visible loc4 loc5)

         (visible loc2 loc1) (visible loc3 loc2) (visible loc4 loc3) (visible loc5 loc4) (can-move loc6 loc7) (can-move loc7 loc8) (can-move loc8 loc9) (can-move loc9 loc10)

         (can-move loc7 loc6) (can-move loc8 loc7) (can-move loc9 loc8) (can-move loc10 loc9) (visible loc6 loc7) (visible loc7 loc8) (visible loc8 loc9) (visible loc9 loc10)

         (visible loc7 loc6) (visible loc8 loc7) (visible loc9 loc8) (visible loc10 loc9) (can-move loc11 loc12) (can-move loc12 loc13) (can-move loc13 loc14) (can-move loc14 loc15)

         (can-move loc12 loc11) (can-move loc13 loc12) (can-move loc14 loc13) (can-move loc15 loc14) (visible loc11 loc12) (visible loc12 loc13) (visible loc13 loc14) (visible loc14 loc15)

         (visible loc12 loc11) (visible loc13 loc12) (visible loc14 loc13) (visible loc15 loc14) (can-move loc16 loc17) (can-move loc17 loc18) (can-move loc18 loc19) (can-move loc19 loc20)

         (can-move loc17 loc16) (can-move loc18 loc17) (can-move loc19 loc18) (can-move loc20 loc19) (visible loc16 loc17) (visible loc17 loc18) (visible loc18 loc19) (visible loc19 loc20)

         (visible loc17 loc16) (visible loc18 loc17) (visible loc19 loc18) (visible loc20 loc19)(can-move loc1 loc6)(can-move loc6 loc11)(can-move loc11 loc16)

        (can-move loc6 loc1)(can-move loc11 loc6)(can-move loc16 loc11) (visible loc1 loc6) (visible loc6 loc11) (visible loc11 loc16)

         (visible loc6 loc1) (visible loc11 loc6) (visible loc16 loc11)(can-move loc2 loc7)(can-move loc7 loc12)(can-move loc12 loc17)

        (can-move loc7 loc2)(can-move loc12 loc7)(can-move loc17 loc12) (visible loc2 loc7) (visible loc7 loc12) (visible loc12 loc17)

         (visible loc7 loc2) (visible loc12 loc7) (visible loc17 loc12)(can-move loc3 loc8)(can-move loc8 loc13)(can-move loc13 loc18)

        (can-move loc8 loc3)(can-move loc13 loc8)(can-move loc18 loc13) (visible loc3 loc8) (visible loc8 loc13) (visible loc13 loc18)

         (visible loc8 loc3) (visible loc13 loc8) (visible loc18 loc13)(can-move loc4 loc9)(can-move loc9 loc14)(can-move loc14 loc19)

        (can-move loc9 loc4)(can-move loc14 loc9)(can-move loc19 loc14) (visible loc4 loc9) (visible loc9 loc14) (visible loc14 loc19)

         (visible loc9 loc4) (visible loc14 loc9) (visible loc19 loc14)(can-move loc5 loc10)(can-move loc10 loc15)(can-move loc15 loc20)

        (can-move loc10 loc5)(can-move loc15 loc10)(can-move loc20 loc15) (visible loc5 loc10) (visible loc10 loc15) (visible loc15 loc20)

         (visible loc10 loc5) (visible loc15 loc10) (visible loc20 loc15)

        (is-in room7 loc7)(is-in room4 loc4)(is-in room6 loc6)(is-in room11 loc11)

        (rover rover1)

        (at rover1 loc20)

        (is-in obsctacle15 loc15) (is-in obsctacle17 loc17) (is-in obsctacle19 loc19) (is-in obsctacle13 loc13) (is-in obsctacle16 loc16) 

        (tool tool5) 

        (is-in tool5 loc5) 

        (visited dummy-room)
        (room-prec dummy-room room7)
        (room-prec room7 room4)
        (room-prec room4 room6)
        (room-prec room6 room11)
        (human-acted)

     )


     (:goal
         (and
            (visited room7)
            (visited room4)
            (visited room6)
            (visited room11)
         )
     )
)
