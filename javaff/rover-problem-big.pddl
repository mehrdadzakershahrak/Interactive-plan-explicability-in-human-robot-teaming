(define (problem rover-1)

    (:domain
        rover-domain-modified
    )

    (:objects
        room1 room2 room3 dummy-room

        rover1

        loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 loc10 loc11 loc12 loc13 loc14
    )

    (:init
        (room room2) (room room1) (room room3)
        (room dummy-room)
        (rover rover1)

        (loc loc1) (loc loc2) (loc loc3) (loc loc4) (loc loc5) (loc loc6) (loc loc7) (loc loc8)
        (loc loc9) (loc loc10) (loc loc11) (loc loc12) (loc loc13) (loc loc14)

        (can-move loc1 loc2) (can-move loc2 loc3) (can-move loc3 loc4) (can-move loc4 loc5) (can-move loc5 loc6) (can-move loc6 loc7) (can-move loc7 loc8)
        (can-move loc9 loc10) (can-move loc10 loc11) (can-move loc11 loc12) (can-move loc12 loc13) (can-move loc13 loc14)
        (can-move loc2 loc1) (can-move loc3 loc2) (can-move loc4 loc3) (can-move loc5 loc4) (can-move loc6 loc5) (can-move loc7 loc6) (can-move loc8 loc7)
        (can-move loc10 loc9) (can-move loc11 loc10) (can-move loc12 loc11) (can-move loc13 loc12) (can-move loc14 loc13)
        (can-move loc1 loc9) (can-move loc2 loc10) (can-move loc3 loc11) (can-move loc4 loc12) (can-move loc5 loc13) (can-move loc6 loc14)
        (can-move loc9 loc1) (can-move loc10 loc2) (can-move loc11 loc3) (can-move loc12 loc4) (can-move loc13 loc5) (can-move loc14 loc6)

        (visible loc1 loc2) (visible loc2 loc3) (visible loc3 loc4) (visible loc4 loc5) (visible loc5 loc6) (visible loc6 loc7) (visible loc7 loc8)
        (visible loc9 loc10) (visible loc10 loc11) (visible loc11 loc12) (visible loc12 loc13) (visible loc13 loc14)
        (visible loc2 loc1) (visible loc3 loc2) (visible loc4 loc3) (visible loc5 loc4) (visible loc6 loc5) (visible loc7 loc6) (visible loc8 loc7)
        (visible loc10 loc9) (visible loc11 loc10) (visible loc12 loc11) (visible loc13 loc12) (visible loc14 loc13)
        (visible loc1 loc9) (visible loc2 loc10) (visible loc3 loc11) (visible loc4 loc12) (visible loc5 loc13) (visible loc6 loc14)
        (visible loc9 loc1) (visible loc10 loc2) (visible loc11 loc3) (visible loc12 loc4) (visible loc13 loc5) (visible loc6 loc14)



        (is-in room3 loc3) (is-in room2 loc2) (is-in room1 loc7)

        (at rover1 loc9)

        (visited dummy-room)
        (room-prec dummy-room room1)
        (room-prec dummy-room room2)
        (room-prec dummy-room room3)
        (room-prec room1 room2)
        (room-prec room2 room3)
        (room-prec room1 room3)
        (human-acted)

    )

    (:goal
        (and
            (visited room1)
            (visited room2)
            (visited room3)
        )
    )
)
