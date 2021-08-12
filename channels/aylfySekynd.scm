(list
 (channel
  (name 'guix)
  (url "file:///git/git.savannah.gnu.org/git/guix")
  (commit "94f772dad8cb1064d0e8cf11285ad9963ba00224")
  (introduction
   (make-channel-introduction
    "9edb3f66fd807b096b48283debdcddccfea34bad"
    (openpgp-fingerprint
     "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA"))))
 (channel
  (name 'nonguix)
  (url "https://gitlab.com/nonguix/nonguix")
  (commit "935a9e4f124589e9c4989497d9d4f0d3e5f4c2f4")
  (introduction
   (make-channel-introduction
    "897c1a470da759236cc11798f4e0a5f7d4d59fbc"
    (openpgp-fingerprint "2A39 3FFF 68F4 EF7A 3D29  12AF 6F51 20A0 22FB B2D5"))))
 (channel
  (name 'rde)
  (url "https://git.sr.ht/~abcdw/rde")
  (introduction
   (make-channel-introduction
    "257cebd587b66e4d865b3537a9a88cccd7107c95"
    (openpgp-fingerprint
     "2841 9AC6 5038 7440 C7E9  2FFA 2208 D209 58C1 DEB0"))))
 (channel
  (name 'flat)
  (url "https://github.com/flatwhatson/guix-channel.git")
  (commit "91fd421b488aabeb4eb4e17aacdee395212d93b4")
  (introduction
   (make-channel-introduction
    "33f86a4b48205c0dc19d7c036c85393f0766f806"
    (openpgp-fingerprint "736A C00E 1254 378B A982  7AF6 9DBE 8265 81B6 4490")))))
