(list
 (channel
  (name 'guix)
  (url "file:///git/git.savannah.gnu.org/git/guix")
  (commit "c017e0b62c3cb42a46db7f7603b63bb17c966e4a")
  (introduction
   (make-channel-introduction
    "9edb3f66fd807b096b48283debdcddccfea34bad"
    (openpgp-fingerprint
     "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA"))))
 (channel
  (name 'nonguix)
  (url "https://gitlab.com/nonguix/nonguix")
  (commit "f5cffdf94888351fb2e077e31878ddc53072d210")
  (introduction
   (make-channel-introduction
    "897c1a470da759236cc11798f4e0a5f7d4d59fbc"
    (openpgp-fingerprint "2A39 3FFF 68F4 EF7A 3D29  12AF 6F51 20A0 22FB B2D5"))))
 (channel
  (name 'rde)
  (url "https://git.sr.ht/~abcdw/rde")
  (introduction
   (make-channel-introduction
    "79306da62622bf8896823e92386edfee1d5c3bd9"
    (openpgp-fingerprint
     "2841 9AC6 5038 7440 C7E9  2FFA 2208 D209 58C1 DEB0"))))
 (channel
  (name 'flat)
  (url "https://github.com/flatwhatson/guix-channel.git")
  (commit "a14d79fc33649f55755fb4e705ab82de7852d8da")
  (introduction
   (make-channel-introduction
    "33f86a4b48205c0dc19d7c036c85393f0766f806"
    (openpgp-fingerprint "736A C00E 1254 378B A982  7AF6 9DBE 8265 81B6 4490")))))
