(define (problem star-4)
  (:domain star-domain-try3)
  (:objects p1 p2 p3 p0 d1 d2 d3 d4)
  
  (:init (smaller d1 p1) 
  	 (smaller d2 p1) 
  	 (smaller d3 p1) 
  	 (smaller d4 p1) 
  	 
  	 (smaller d1 p2) 
  	 (smaller d2 p2) 
  	 (smaller d3 p2) 
  	 (smaller d4 p2) 
  	 
  	 (smaller d1 p3) 
  	 (smaller d2 p3) 
  	 (smaller d3 p3) 
  	 (smaller d4 p3) 

  	 (smaller d1 p0) 
  	 (smaller d2 p0) 
  	 (smaller d3 p0) 
  	 (smaller d4 p0) 

  	   	   	 
  	 (smaller d1 d2) 
  	 (smaller d1 d3) 
  	 (smaller d1 d4) 
  	 
  	 (smaller d2 d3) 
  	 (smaller d2 d4) 
  	 
  	 (smaller d3 d4) 
  	 
  	 (equal p0 p0)
  	 (equal d1 d1)
  	 (equal d2 d2)
  	 (equal d3 d3)
  	 
  	 (clear p1) 
  	 (clear p2) 
  	 (clear p0) 
  	 (clear d1)
  	 
  	 (disk d1) 
  	 (disk d2) 
  	 (disk d3) 
  	 (disk d4) 
  	 
  	 (on d1 d2) (on d2 d3) (on d3 d4) (on d4 p3))
  
  (:goal (and (on d1 d2) (on d2 d3) (on d3 d4) (on d4 p1))))