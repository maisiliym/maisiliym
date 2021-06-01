(define-module (maisiliym)
  #:use-module (guix gexp)
  #:export (root-li-authorized-keys))

(define li-ssh-prikriomz
  (list (local-file "priKriomz/li-xerxes.pub")
	(local-file "priKriomz/li-dante.pub")))

(define (make-authorized-key user prikriom)
  (list user prikriom))

(define (make-li-key prikriom)
  (make-authorized-key "li" prikriom))

(define (make-root-key prikriom)
  (make-authorized-key "root" prikriom))

(define root-li-authorized-keys
  (append
   (map make-li-key li-ssh-prikriomz)
   (map make-root-key li-ssh-prikriomz)))
