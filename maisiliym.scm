(define-module (maisiliym)
  #:use-module (guix gexp)
  #:export (root-li-authorized-keys))

(define li-ssh-prikriomz-file
  (local-file "prikriomz/li.pub"))

(define root-li-authorized-keys
  (list
   (list "root" li-ssh-prikriomz-file)
   (list "li" li-ssh-prikriomz-file)))
