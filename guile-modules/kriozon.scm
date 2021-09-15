(define-module (kriozon))
(use-modules (oop goops)
	     (guix gexp)
	     (uniks) (uniks net)
	     (guix gexp)
	     (gnu system file-systems))
(export maisiliymClusterConfig
	danteOsConfig xerxesOsConfig
	liDanteUserConfig liXerxesUserConfig)

(define domain "maisiliym")
(define version "aylfySekynd")
(define dark #f)

(define li-sshz
  '("ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK769R2iKyr5rgBvR9OFeSN2kdo8h+LtXVUjzdFLf4vl openpgp:0xF4AD0223"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEygb1Ft1hIB+ExPGLq08im9rFYvOeYXX+NetgqjI3Db"))

(define li-xerxes-pgp (local-file "li-xexes.asc"))
(define li-dante-pgp (local-file "li-dante.asc"))

(define liXerxesUserConfig
  (let
      ((li-pgp li-xerxes-pgp)
       (li-keygrip "63A149ECC539BAF2B001C57E9A55A566BCD48446"))
    (make UserConfig
      #:name "li"
      #:spici "kodyr"
      #:akses 3
      #:saiz 2
      #:sshz li-sshz
      #:pgp li-pgp
      #:keygrip li-keygrip
      #:github "maisiliym"
      #:dark dark)))

(define liDanteUserConfig
  (let
      ((li-pgp li-dante-pgp)
       (li-keygrip "AD305831DD33E62F9AD587718D4E5E6999CD84EA"))
    (make UserConfig
      #:name "li"
      #:spici "kodyr"
      #:akses 3
      #:saiz 2
      #:sshz li-sshz
      #:pgp li-pgp
      #:keygrip li-keygrip
      #:github "maisiliym"
      #:dark dark)))

(define dante-user-configs
  (list liDanteUserConfig))

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
           (uuid "42d620dc-f7eb-4e4c-a33d-200aa0f3b830" 'ext4))
          (type "ext4"))
        (file-system
          (mount-point "/home")
          (device
           (uuid "1f49b09f-e7a3-4977-ae91-7525d818c620" 'ext4))
          (type "ext4"))
	;; ; (bug? (support? xfs guix))
	;; (file-system
        ;;   (mount-point "/disks/internal")
        ;;   (device
        ;;    (uuid "56aa3da0-e926-4c64-97f2-36b730e7ebe7"))
        ;;   (type "xfs"))
	))

(define danteOsConfig
  (make OsConfig
    #:name "dante"
    #:domain domain
    #:spici "haibrid"
    #:akses 3
    #:saiz 2
    #:user-configs dante-user-configs
    #:substitute-urls '()
    #:disks dante-disks
    #:model "X230"
    #:arch "intel"
    #:swap-disks (list (uuid "f6b1c20b-6fb7-4fdf-8215-1cbc046e64a6"))
    #:guix-authorized-keys (list xerxes-guix-key)
    #:ssh "AAAAC3NzaC1lZDI1NTE5AAAAIGjgYK7TBRSDa6Iuapw18VkS970p4IgZAo3iC/QiiypL"
    #:NeksPubkey "MCowBQYDK2VuAyEA/vXhjE8ZCdH2K3mTM1lpOivAWU4/zod/SG1+ld7zyRQ="
    #:EthernetLinks (list
		     (make EthernetLink #:Interface "enp0s25"
			   #:Subnet "d7b:187e:fa98:a7fd"))))

(define xerxes-user-configs
  (list liXerxesUserConfig))

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

(define xerxesOsConfig
  (make OsConfig
    #:name "xerxes"
    #:domain domain
    #:spici "haibrid"
    #:akses 3
    #:saiz 2
    #:user-configs xerxes-user-configs
    #:substitute-urls '()
    #:disks xerxes-disks
    #:arch "intel"
    #:swap-disks (list )
    #:guix-authorized-keys (list dante-guix-key)
    #:ssh "AAAAC3NzaC1lZDI1NTE5AAAAIIFxIyvJxTrKCdXDrLi1ac3kZW8VE/+pW4f/SZVwj2Ue"
    #:NeksPubkey "MCowBQYDK2VuAyEAxfL+wNwNDLG83dbRV07g3Dc4m/5/OayL6BkBelzVIGo="
    #:EthernetLinks (list
		     (make EthernetLink #:Interface "enp0s25"
			   #:Subnet "5c8:47b7:81af:b079"))))

(define maisiliymClusterConfig
  (make ClusterConfig
    #:name domain
    #:version version
    #:OsConfigs (list xerxesOsConfig danteOsConfig)))
