(define (problem star-3)
  (:domain star-domain-try2)
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

  	 (pincheck p0 p1)
  	 (pincheck p0 p2)
  	 (pincheck p0 p3)
  	 
  	 (pincheck p1 p0)
  	 (pincheck p2 p0)
  	 (pincheck p3 p0)
  	 
  	   	 
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
  	 
  	 (on d1 d2) (on d2 d3) (on d3 p3))
  
  (:goal (and (on d1 d2) (on d2 d3) (on d3 p1))))