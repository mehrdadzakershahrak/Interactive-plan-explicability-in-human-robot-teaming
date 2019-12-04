(define (problem rover-1)

    (:domain
        rover-domain-modified
    )

    (:objects
        room1 room2 room3
        dummy-room

        rover1

        loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9

    )

    (:init
        (room room2) (room room1) (room room3)
        (room dummy-room)

        (loc loc1) (loc loc2) (loc loc3) (loc loc4) (loc loc5)
        (loc loc6) (loc loc7) (loc loc8) (loc loc9)

        (can-move loc1 loc2) (can-move loc2 loc3) (can-move loc3 loc6)
        (can-move loc4 loc5) (can-move loc5 loc6) (can-move loc6 loc9)
        (can-move loc7 loc8) (can-move loc8 loc9) (can-move loc9 loc6)
        (can-move loc1 loc4) (can-move loc4 loc1) (can-move loc6 loc3)
        (can-move loc2 loc5) (can-move loc5 loc2) (can-move loc5 loc8)
        (can-move loc8 loc5) (can-move loc4 loc7) (can-move loc7 loc4)
        (can-move loc2 loc1) (can-move loc3 loc2) (can-move loc5 loc4)
        (can-move loc6 loc5) (can-move loc8 loc7) (can-move loc9 loc8)

        (visible loc1 loc2) (visible loc2 loc3) (visible loc3 loc6)
        (visible loc4 loc5) (visible loc5 loc6) (visible loc6 loc9)
        (visible loc7 loc8) (visible loc8 loc9) (visible loc9 loc6)
        (visible loc1 loc4) (visible loc4 loc1) (visible loc6 loc3)
        (visible loc2 loc5) (visible loc5 loc2) (visible loc5 loc8)
        (visible loc8 loc5) (visible loc4 loc7) (visible loc7 loc4)
        (visible loc2 loc1) (visible loc3 loc2) (visible loc5 loc4)
        (visible loc6 loc5) (visible loc8 loc7) (visible loc9 loc8)

        (is-in room3 loc3) (is-in room2 loc2) (is-in room1 loc7)
        (rover rover1)
        (at rover1 loc9)

        (is-in dummy-room loc9)
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
