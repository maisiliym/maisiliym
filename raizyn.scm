(define-module (maisiliym))
(use-modules (oop goops)
	     (guix gexp)
	     (uniks))
(export root-li-authorized-keys metaneksys)

(define metaneksys
  (make <metaneksys>
    #:neim "maisiliym"
    #:trost 2
    #:neksiz neksiz))

(define xerxes
  (cons "xerxes"
	(make <neksys>
	  #:neim "xerxes"
	  #:spici "haibrid"
	  #:trost 2
	  #:saiz 2
	  #:prikriom xerxes-prikriom)))

(define dante
  (cons "dante"
	(make <neksys>
	  #:neim "dante"
	  #:spici "haibrid"
	  #:trost 2
	  #:saiz 2
	  #:prikriom dante-prikriom)))

(define xerxes-prikriom
  (make <prikriom>
    #:ful ""
    #:ssh ""
    #:keygrip ""))

(define dante-prikriom
  (make <prikriom>
    #:ful ""
    #:ssh ""
    #:keygrip ""))

(define li-ssh-prikriomz-file
  (local-file "prikriomz/li.pub"))

(define root-li-authorized-keys
  (list
   (list "root" li-ssh-prikriomz-file)
   (list "li" li-ssh-prikriomz-file)))

(define-public %guix-authorized-keys
  (list
   (local-file "prikriomz/dante-guix.pub")
   (local-file "prikriomz/xerxes-guix.pub")))

(define-public %li-keygrips
  (list
   "AD305831DD33E62F9AD587718D4E5E6999CD84EA"
   "63A149ECC539BAF2B001C57E9A55A566BCD48446"))

(define-public %guix-substitute-urls
  (list ""))
