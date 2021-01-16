(define (problem star-pin-test-3)
  (:domain star-pin-test-domain)
  (:objects p1 p2 p3 p0 d1 d2 d3)
  
  (:init (smaller d1 p1) 
  	 (smaller d2 p1) 
  	 (smaller d3 p1) 
  	 
  	 (smaller d1 p2) 
  	 (smaller d2 p2) 
  	 (smaller d3 p2) 
  	 
  	 (smaller d1 p3) 
  	 (smaller d2 p3) 
  	 (smaller d3 p3) 
  	 
  	 (smaller d1 p0) 
	 (smaller d2 p0) 
	 (smaller d3 p0) 
  	 
  	 
  	 (smaller d1 d2) 
  	 (smaller d1 d3) 
  	 (smaller d2 d3) 
  	 
  	 (clear p1) 
  	 (clear p2) 
  	 (clear p0)
  	 (clear d1)
  	 
  	 (disk d1) 
  	 (disk d2) 
  	 (disk d3) 
  	 
  	 (pin p1)
  	 (pin p2)
  	 (pin p3)
  	 (pin p0)
  	 
  	 
  	 (validmove p0 p1)
	 (validmove p0 p2)
  	 (validmove p0 p3)
  	 
  	 (validmove p1 p0)
	 (validmove p2 p0)
	 (validmove p3 p0)
  	 
  	 
  	 (on d1 d2 p3) (on d2 d3 p3) (on d3 p3 p3))
  
  (:goal (and (on d1 d2 p1) (on d2 d3 p1) (on d3 p1 p1))))