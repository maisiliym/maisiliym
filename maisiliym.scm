(define-module (maisiliym)
  #:use-module (guix gexp)
  #:export (root-li-authorized-keys))

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
  (list "http://[fd43:6908:a1dd:0:685c:4fef:f9bf:ed56]:8080")) ; verihaki
