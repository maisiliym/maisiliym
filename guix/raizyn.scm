(define-module (raizyn))
(use-modules (oop goops)
	     (guix gexp)
	     (giiks formats))
(export root-li-authorized-keys metaneksys)

(define li-ssh-prikriomz-file
  (plain-file "li.pub"
   (newline-strings
    '("ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK769R2iKyr5rgBvR9OFeSN2kdo8h+LtXVUjzdFLf4vl openpgp:0xF4AD0223"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEygb1Ft1hIB+ExPGLq08im9rFYvOeYXX+NetgqjI3Db"))))

(define root-li-authorized-keys
  (list
   (list "root" li-ssh-prikriomz-file)
   (list "li" li-ssh-prikriomz-file)))

(define-public %guix-authorized-keys
  (list
   (plain-file "dante-guix.pub" "(public-key
 (ecc
  (curve Ed25519)
  (q #452E0610900972150F4B609388EBAFC3607F7556FF5411504B6F20FB362D281A#)
  )
)")
   (plain-file "xerxes-guix.pub" "(public-key
 (ecc
  (curve Ed25519)
  (q #2F50F6A9DCF506037B16BF659E50B1DDAF68B16EFABCDCA0B35BEFD1460115D3#)
  )
 )")))

(define-public %li-keygrips
  (list
   "AD305831DD33E62F9AD587718D4E5E6999CD84EA"
   "63A149ECC539BAF2B001C57E9A55A566BCD48446"))

(define-public %guix-substitute-urls
  (list ""))
