(define-module (kriyraizyn))
(use-modules (oop goops)
	     (guix gexp)
	     (uniks))
(export maisiliym-kriyraizyn)

(define maisiliym-kriyraizyn
  (make <kriyraizyn>
    #:neksiz (list maisiliym-neksys)))

(define maisiliym-neksys
  (cons
   "maisiliym"
   (make <neksys>
     #:trost 2
     #:prineksiz
     (list
      (cons
       "xerxes" (make <prineksys>
		  #:spici "haibrid"
		  #:trost 2
		  #:saiz 2
		  #:prikriom
		  (make <prikriom>
		    #:pidjipi ""
		    #:ssh ""
		    #:keygrip "")))
      (cons
       "dante" (make <prineksys>
		 #:spici "haibrid"
		 #:trost 2
		 #:saiz 2
		 #:prikriom
		 (make <prikriom>
		   #:pidjipi ""
		   #:ssh ""
		   #:keygrip ""))))
     #:krimynz
     (list
      (cons
       "li" (make <krimyn>
	      #:spici "kodyr"
	      #:trost 2
	      #:saiz 2
	      #:github "maisiliym"
	      #:prikriomz
	      (list
	       (cons
		"xerxes"
		(make <prikriom>
		  #:ful (get-string-all "./xerxes.asc")
		  #:ssh "AAAAC3NzaC1lZDI1NTE5AAAAIEygb1Ft1hIB+ExPGLq08im9rFYvOeYXX+NetgqjI3Db"
		  #:keygrip "AD305831DD33E62F9AD587718D4E5E6999CD84EA"))
	       (cons
		"dante"
		(make <prikriom>
		  #:ful (get-string-all "./dante.asc")
		  #:ssh "AAAAC3NzaC1lZDI1NTE5AAAAIEygb1Ft1hIB+ExPGLq08im9rFYvOeYXX+NetgqjI3Db"
		  #:keygrip "AD305831DD33E62F9AD587718D4E5E6999CD84EA")))))))))
