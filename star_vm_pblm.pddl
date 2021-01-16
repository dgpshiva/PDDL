(define (problem star-3-vm)
  (:domain star-vm-domain)
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
	 
	 
	 (smaller p1 p0) 
	 (smaller p2 p0) 
	 (smaller p3 p0) 
	 	 
	 (smaller p0 p1) 
	 (smaller p0 p2) 
	 (smaller p0 p3) 
	 
	  
	 (validmove d1 p0)
	 (validmove d2 p0)
	 (validmove d2 p0)
	 
	 (validmove p0 p1)
	 (validmove p0 p2)
	 (validmove p0 p3)
	 
	 (validmove p1 p0)
	 (validmove p2 p0)
	 (validmove p3 p0)
	 
	 (validmove p1 d1)
	 (validmove p1 d2)
	 (validmove p1 d3)
	 
	 (validmove p2 d1)
	 (validmove p2 d2)
	 (validmove p2 d3)
	 
	 (validmove p3 d1)
	 (validmove p3 d2)
	 (validmove p3 d3)
	 
	 (validmove d1 p1)
	 (validmove d1 p2)
	 (validmove d1 p3)
	 	 
	 (validmove d2 p1)
	 (validmove d2 p2)
	 (validmove d2 p3)
	 	 
	 (validmove d3 p1)
	 (validmove d3 p2)
	 (validmove d3 p3)
	 
	 
	 
	 (validmove p0 d1)
	 (validmove p0 d2)
	 (validmove p0 d3)
  	 
  	 
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
  	 
  	 (on d1 d2) (on d2 d3) (on d3 p3))
  
  (:goal (and (on d1 d2) (on d2 d3) (on d3 p1))))