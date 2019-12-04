(define (domain rover-domain)
    (:requirements :strips)
    (:predicates
        (can-move ?from-loc ?to-loc)
        (visible ?from-loc ?to-loc)
        (been-at ?rover ?loc)
        (at ?rover ?loc)
        (room ?room)
        (loc ?loc)
        (tool ?tool)
        (obstacle ?obstacle)
        (rover ?rover)
        (is-in ?room ?loc)
        (is-in ?tool ?loc)
        (is-in ?obstacle ?loc)
        (should-visit ?room)
        (visited ?room)
        (robot-action ?robot-acted)
        (human-action ?human-acted)
        (taken ?tool)
    )

    (:action move
       :parameters
           (?rover
            ?from-loc
            ?to-loc
            )

       :precondition
           (and
               (rover ?rover)
               (loc ?from-loc)
               (loc ?to-loc)
               (at ?rover ?from-loc)
               (can-move ?from-loc ?to-loc)
               (visible ?from-loc ?to-loc)
           )

       :effect
           (and
               (at ?rover ?to-loc)
               (been-at ?rover ?to-loc)
               (not (at ?rover ?from-loc))
           )
   )

   (:action visit-room
        :parameters
            (?rover
             ?room
             ?loc
             )

        :precondition
            (and
                (rover ?rover)
                (room ?room)
                (loc ?loc)
                (is-in ?room ?loc)
                (at ?rover ?loc)
                (should-visit ?room)
            )

        :effect
            (visited ?room)
    )

    (:action take-tool
         :parameters
             (?rover
              ?tool
              ?loc
              )

         :precondition
             (and
                 (rover ?rover)
                 (tool ?tool)
                 (loc ?loc)
                 (is-in ?tool ?loc)
                 (at ?rover ?loc)
             )
         :effect
                (taken ?tool)
     )

     (:action remove-obstacle
          :parameters
              (?rover
               ?obstacle
               ?from-loc
               ?to-loc
               ?tool
               )

          :precondition
              (and
                  (rover ?rover)
                  (obstacle ?obstacle)
                  (loc ?from-loc)
                  (loc ?to-loc)
                  (tool ?tool)
                  (taken ?tool)
                  (can-move ?from-loc ?to-loc)
                  (is-in ?obstacle ?to-loc)
                  (at ?rover ?from-loc)
              )
          :effect
            (and
                 (not (is-in ?obstacle ?to-loc))
                 (at ?rover ?to-loc)
                 (been-at ?rover ?to-loc)
                 (not (at ?rover ?from-loc))
                 (visible ?from-loc ?to-loc)
            )
      )
)
