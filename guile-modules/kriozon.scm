(define-module (kriozon))
(use-modules (oop goops)
	     (guix gexp)
	     (uniks)
	     (guix gexp)
	     (gnu system file-systems))
(export maisiliym-config
	dante-config xerxes-config
	li-dante-config li-xerxes-config)

(define domain "maisiliym")
(define version "aylfyPraim")
(define dark #t)

(define li-sshz
  '("ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK769R2iKyr5rgBvR9OFeSN2kdo8h+LtXVUjzdFLf4vl openpgp:0xF4AD0223"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEygb1Ft1hIB+ExPGLq08im9rFYvOeYXX+NetgqjI3Db"))

(define li-xerxes-pgp (local-file "li-xexes.asc"))
(define li-dante-pgp (local-file "li-dante.asc"))

(define li-xerxes-config
  (let
      ((li-pgp li-xerxes-pgp)
       (li-keygrip "63A149ECC539BAF2B001C57E9A55A566BCD48446"))
    (make <user-config>
      #:name "li"
      #:spici "kodyr"
      #:akses 3
      #:saiz 2
      #:sshz li-sshz
      #:pgp li-pgp
      #:keygrip li-keygrip
      #:github "maisiliym"
      #:dark dark
      )))

(define li-dante-config
  (let
      ((li-pgp li-dante-pgp)
       (li-keygrip "AD305831DD33E62F9AD587718D4E5E6999CD84EA"))
    (make <user-config>
      #:name "li"
      #:spici "kodyr"
      #:akses 3
      #:saiz 2
      #:sshz li-sshz
      #:pgp li-pgp
      #:keygrip li-keygrip
      #:github "maisiliym"
      #:dark dark
      )))

(define dante-user-configs
  (list li-dante-config))

(define dante-guix-key (local-file "dante-guix.pub"))
(define xerxes-guix-key (local-file "xerxes-guix.pub"))

(define dante-disks
  (list (file-system
          (mount-point "/boot/efi")
          (device (uuid "7B58-5FDE" 'fat32))
          (type "vfat"))
        (file-system
          (mount-point "/")
          (device
           (uuid "42d620dc-f7eb-4e4c-a33d-200aa0f3b830"
                 'ext4))
          (type "ext4"))
        (file-system
          (mount-point "/home")
          (device
           (uuid "1f49b09f-e7a3-4977-ae91-7525d818c620"
                 'ext4))
          (type "ext4"))))

(define dante-config
  (make <os-config>
    #:name "dante"
    #:domain domain
    #:spici "haibrid"
    #:saiz 2
    #:user-configs dante-user-configs
    #:substitute-urls '()
    #:disks dante-disks
    #:model "X230"
    #:arch "intel"
    #:swap-disks (list (uuid "f6b1c20b-6fb7-4fdf-8215-1cbc046e64a6"))
    #:guix-authorized-keys (list xerxes-guix-key)
    #:ssh "AAAAC3NzaC1lZDI1NTE5AAAAIGjgYK7TBRSDa6Iuapw18VkS970p4IgZAo3iC/QiiypL"))

(define xerxes-user-configs
  (list li-xerxes-config))

(define xerxes-disks
  (list (file-system
          (mount-point "/boot/efi")
          (device (uuid "7CAB-E571" 'fat32))
          (type "vfat"))
        (file-system
          (mount-point "/")
          (device
           (uuid "6a72e996-72b2-4e01-9653-2bad30d1635a"
                 'ext4))
          (type "ext4"))))

(define xerxes-config
  (make <os-config>
    #:name "xerxes"
    #:domain domain
    #:spici "haibrid"
    #:saiz 2
    #:user-configs xerxes-user-configs
    #:substitute-urls '()
    #:disks xerxes-disks
    #:arch "intel"
    #:swap-disks (list )
    #:guix-authorized-keys (list dante-guix-key)
    #:ssh "AAAAC3NzaC1lZDI1NTE5AAAAIIFxIyvJxTrKCdXDrLi1ac3kZW8VE/+pW4f/SZVwj2Ue"))

(define maisiliym-config
  (make <cluster-config>
    #:name domain
    #:version version
    #:os-configs (list xerxes-config dante-config)))
