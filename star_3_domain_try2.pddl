(define (domain star-domain-try2)
  (:requirements :equality)
  (:predicates (disk ?x) (smaller ?x ?y) (on ?x ?y) (clear ?x))
  
  (:action move-disk
           :parameters (?disk ?below-disk ?new-below-disk ?frompin ?to-pin)
           :precondition (and (disk ?disk)
                              (smaller ?disk ?new-below-disk)
                              (not (= ?new-below-disk ?below-disk))
                              (not (= ?new-below-disk ?disk))
                              (not (= ?below-disk ?disk))
                              (on ?disk ?below-disk)
                              (clear ?disk)
                              (clear ?new-below-disk)
                              
                              (not (= ?from-pin ?to-pin))
           		      (pincheck ?from-pin ?to-pin)
           		      
                              )
           :effect (and (clear ?below-disk)
                        (on ?disk ?new-below-disk)
                        (not (on ?disk ?below-disk))
                        (not (clear ?new-below-disk))
                        
                        )))