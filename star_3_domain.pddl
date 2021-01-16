(define (domain star-domain)
  (:requirements :equality)
  (:predicates (disk ?x) (smaller ?x ?y) (on ?x ?y) (clear ?x) (pin ?x))
  
  (:action move-disk
           :parameters (?disk ?below-disk ?pin ?new-below-disk ?new-pin)
           :precondition (and (pin ?pin)
                              (pin ?new-pin)
                              
                              (not (= ?pin ?new-pin))
                              (pincheck ?pin ?new-pin)                              
           
           		      (disk ?disk)
                              (smaller ?disk ?new-below-disk) 
                              
                              (not (= ?new-below-disk ?below-disk))
                              (not (= ?new-below-disk ?disk))
                              (not (= ?below-disk ?disk))
                              (on ?disk ?below-disk)
                              (clear ?disk)
                              (clear ?new-below-disk))
                              
           :effect (and (clear ?below-disk)
                        (on ?disk ?new-below-disk ?new-pin)
                        (not (on ?disk ?below-disk ?pin))
                        (not (clear ?new-below-disk)))))