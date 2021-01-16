(define (domain star-pin-domain)
  (:requirements :equality)
  (:predicates (disk ?x) (smaller ?x ?y) (on ?x ?y ?z) (clear ?x) (pin ?x) (validmove ?x ?y))
  
  (:action move-disk
           :parameters (?disk ?below-disk ?from-pin ?new-below-disk ?to-pin)
           :precondition (and (disk ?disk)
           
           		      (pin ?from-pin)
           		      (pin ?to-pin)           		      
           		      
                              (smaller ?disk ?new-below-disk)
                              
                              (not (= ?new-below-disk ?below-disk))
                              (not (= ?new-below-disk ?disk))
                              (not (= ?below-disk ?disk))
                              (not (= ?from-pin ?to-pin))
                              
                              (on ?disk ?below-disk ?from-pin)
                              
                              (validmove ?from-pin ?to-pin)                              
                              
                              (clear ?disk)
                              (clear ?new-below-disk))
                              
           :effect (and (clear ?below-disk)
                        (on ?disk ?new-below-disk ?to-pin)
                        (not (on ?disk ?below-disk ?from-pin))
                        (not (clear ?new-below-disk)))))