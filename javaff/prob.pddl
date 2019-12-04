(define (problem rover-6)

     (:domain
         rover-domain-modified
     )

     (:objects
         room5 room2 room4 room3
         dummy-room

         rover1

         loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 loc10 loc11 loc12 loc13

     )

     (:init
        (room room5) (room room2) (room room4) (room room3)
        (room dummy-room)

        (rover rover1)

           (loc loc1) (loc loc2) (loc loc3) (loc loc4) (loc loc5)
        (loc loc6) (loc loc7) (loc loc8) (loc loc9) (loc loc10)
        (loc loc11) (loc loc12) (loc loc13)

        (can-move loc1 loc2) (can-move loc2 loc3) (can-move loc3 loc4) (can-move loc4 loc5)
        (can-move loc6 loc7) (can-move loc7 loc8) (can-move loc8 loc9) (can-move loc9 loc10)
        (can-move loc11 loc12) (can-move loc12 loc13)
        (can-move loc1 loc6) (can-move loc2 loc7) (can-move loc3 loc8) (can-move loc4 loc9)
        (can-move loc5 loc10) (can-move loc6 loc11) (can-move loc7 loc12) (can-move loc8 loc13)
        (can-move loc6 loc1) (can-move loc7 loc2) (can-move loc8 loc3) (can-move loc9 loc4)
        (can-move loc10 loc5) (can-move loc11 loc6) (can-move loc12 loc7) (can-move loc13 loc8)


        (visible loc1 loc2) (visible loc2 loc3) (visible loc3 loc4) (visible loc4 loc5)
        (visible loc6 loc7) (visible loc7 loc8) (visible loc8 loc9) (visible loc9 loc10)
        (visible loc11 loc12) (visible loc12 loc13)
        (visible loc1 loc6) (visible loc2 loc7) (visible loc3 loc8) (visible loc4 loc9)
        (visible loc5 loc10) (visible loc6 loc11) (visible loc7 loc12) (visible loc8 loc13)
        (visible loc6 loc1) (visible loc7 loc2) (visible loc8 loc3) (visible loc9 loc4)
        (visible loc10 loc5) (visible loc11 loc6) (visible loc12 loc7) (visible loc13 loc8)


        (is-in room5 loc5) (is-in room4 loc2) (is-in room3 loc4) (is-in room2 loc3)

        (at rover1 loc7)

        (visited dummy-room)
        (is-in dummy-room loc7)
        (room-prec dummy-room room5)
        (room-prec dummy-room room2)
        (room-prec dummy-room room4)
        (room-prec dummy-room room3)
        (room-prec room5 room2)
        (room-prec room5 room4)
        (room-prec room5 room3)
        (room-prec room2 room4)
        (room-prec room2 room3)
        (room-prec room4 room3)
        (human-acted)

     )


     (:goal
         (and
            (visited room5)
            (visited room2)
            (visited room3)
            (visited room4)
         )
     )
)
