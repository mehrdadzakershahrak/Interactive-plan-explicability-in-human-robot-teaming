(define (domain rover-domain-modified)
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
        (room-prec ?old-room ?room)
        (visited ?room)
        (to-visit ?room)
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
               ;;(human-acted)
           )

       :effect
           (and
               (at ?rover ?to-loc)
               (been-at ?rover ?to-loc)
               (not (at ?rover ?from-loc))
               ;;(not (human-acted))
               ;;(robot-acted)
           )
   )

   ;;(:action human-noop
;;       :parameters
;;        ()
;;       :precondition
;;            (robot-acted)
;;       :effect
;;            (and
;;                (human-acted)
;;                (not (robot-acted))
;;            )
   ;;)

   (:action set-to-visit
       :parameters
            (?room
             ?old-room
            )
       :precondition
            (and
;;                (room-prec ?old-room ?room)
                (visited ?old-room)
;;                (to-visit ?old-room)
            )
       :effect
            (to-visit ?room)


    )

   (:action visit-room
        :parameters
            (?rover
             ?room
             ?loc
;;             ?old-room
             )

        :precondition
            (and
                (rover ?rover)
                (room ?room)
                (loc ?loc)
                ;;(room ?old-room)
                (is-in ?room ?loc)
                (at ?rover ?loc)
    ;;            (visited ?old-room)
                ;;(room-prec ?old-room ?room)
                (to-visit ?room)
;;                (human-acted)
            )

        :effect
            (and
                (visited ?room)
;;                (not (to-visit ?room))
;;                (not (human-acted))
;;                (robot-acted)
            )
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
;;                 (human-acted)
             )
         :effect
            (and
                (taken ?tool)
;;                (not (human-acted))
;;                (robot-acted)
            )
     )

     (:action set-prec
          :parameters
              (?room
               ?old-room
               )

          :precondition
              (and
                  (room ?room)
                  (room ?old-room)
                  (visited ?old-room)
              )
          :effect
             (and
                 (room-prec ?old-room ?room)
             )
      )

     (:action remove-obstacle
          :parameters
              (?rover
               ?obstacle
               ?from-loc
               ?to-loc
               )

          :precondition
              (and
                  (rover ?rover)
                  (obstacle ?obstacle)
                  (loc ?from-loc)
                  (loc ?to-loc)
;;                  (tool ?tool)
;;                  (taken ?tool)
                  (can-move ?from-loc ?to-loc)
                  (is-in ?obstacle ?to-loc)
                  (at ?rover ?from-loc)
;;                 (human-acted)
              )
          :effect
            (and
                 (not (is-in ?obstacle ?to-loc))
                 (at ?rover ?to-loc)
                 (been-at ?rover ?from-loc)
                 (not (at ?rover ?from-loc))
                 (visible ?from-loc ?to-loc)
;;                 (not (human-acted))
;;                 (robot-acted)
            )
      )
)
