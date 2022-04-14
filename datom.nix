{
  astriz = {
    balboa = {
      spici = "sentyr";
      mycin = {
        spici = "metyl";
        ark = "arm64";
        modyl = "rock64";
        korz = 4;
      };
      priKriomz = {
        eseseitc = "AAAAC3NzaC1lZDI1NTE5AAAAIPvxPTAPPKe6Ne9MW4C04Ihe0g4NS12xydci/JW59pIe";
      };
      io = {
        disks = {
          "/" = {
            device = "/dev/disk/by-label/NIXOS_SD";
            fsType = "ext4";
          };
        };
      };
    };

    xerxes = {
      spici = "haibrid";
      saiz = 3;
      trost = 3;
      mycin = {
        spici = "metyl";
        ark = "x86-64";
        modyl = "ThinkPadX240";
        korz = 2;
      };

      neksysIp = "5::1/128";
      linkLocalIPs = [{ spici = "ethernet"; suffix = "aec6:ecad:34e0:b41f"; }];
      wireguardPriKriom = "oOeqiGZC+oaIL0rKirFyiJ4N6qDQWICZ2wRelLMOR0o=";

      io = {
        kibord = "colemak";
        butlodyr = "uefi";
        disks = {
          "/" = {
            device = "/dev/disk/by-uuid/c5788e39-39da-41f1-9f6c-4137abb0c406";
            fsType = "btrfs";
            options = [ "subvol=__active/root" ];
          };
          "/nix" = {
            device = "/dev/disk/by-uuid/c5788e39-39da-41f1-9f6c-4137abb0c406";
            fsType = "btrfs";
            options = [ "subvol=__active/nix" ];
          };
          "/home" = {
            device = "/dev/disk/by-uuid/c5788e39-39da-41f1-9f6c-4137abb0c406";
            fsType = "btrfs";
            options = [ "subvol=__active/home" ];
          };
          "/var" = {
            device = "/dev/disk/by-uuid/c5788e39-39da-41f1-9f6c-4137abb0c406";
            fsType = "btrfs";
            options = [ "subvol=__active/var" ];
          };
          "/boot" = {
            device = "/dev/disk/by-uuid/0A84-F61D";
            fsType = "vfat";
          };
        };
        swapDevices = [
          { device = "/dev/disk/by-uuid/03a014a2-9d6c-4c8e-b4be-b01415ad1beb"; }
        ];
      };
      priKriomz = {
        eseseitc = "AAAAC3NzaC1lZDI1NTE5AAAAIE172GOItdwxQwJhnVeaSuHIwYrcj5bENafKL9y/mKZX";
        niksPriKriom = "AAqjPi1kOaOWyZrwupTpHNL/7SYjYmaeDu1J+hNtVFA=";
      };
    };

    dante = {
      spici = "haibrid";
      saiz = 1;
      trost = 3;
      mycin = {
        spici = "metyl";
        ark = "x86-64";
        modyl = "ThinkPadX230";
        korz = 2;
      };

      neksysIp = "5::2/128";
      linkLocalIPs = [{ spici = "ethernet"; suffix = "3e97:eff:fea3:30d2"; }];
      wireguardPriKriom = "3HeLSQr+lbJp4w9oUILEVWrBpYYCoQzxkARWDCBf5j8=";

      io = {
        kibord = "colemak";
        butlodyr = "uefi";
        disks = {
          "/" = {
            device = "/dev/disk/by-uuid/6d6f8638-a0a7-49f9-81c2-2143b42ef3d5";
            fsType = "xfs";
          };
          "/boot" = {
            device = "/dev/disk/by-uuid/DE95-8F37";
            fsType = "vfat";
          };
        };
        swapDevices = [ ];
      };
    };

    juno = {
      spici = "haibrid";
      saiz = 3;
      trost = 3;
      mycin = {
        spici = "metyl";
        ark = "x86-64";
        modyl = "ThinkPadX230";
        korz = 2;
      };
      io = {
        kibord = "colemak";
        butlodyr = "uefi";
        disks = {
          "/" = {
            device = "/dev/disk/by-uuid/63ff7f56-4f1f-4676-9b69-1b729bfcb555";
            fsType = "xfs";
          };
          "/home" = {
            device = "/dev/disk/by-uuid/fdfc8c28-7ea3-4cbc-962b-e156114e765d";
            fsType = "xfs";
          };
          "/boot" = {
            device = "/dev/disk/by-uuid/293E-399F";
            fsType = "vfat";
          };
        };
        swapDevices = [ ];
      };
      priKriomz = {
        yggdrasil = {
          priKriom = "834f26b8d12a4f787fc8262114f2a873641f331e1b26e9ce0e01539f35f2f160";
          address = "200:922:1a8f:40f8:db97:38ab:a7aa:1b39";
          subnet = "300:922:1a8f:40f8::";
        };
        niksPriKriom = "";
      };
    };

    eibetik = {
      spici = "sentyr";
      saiz = 1;
      trost = 2;
      mycin = {
        spici = "pod";
        ubyrAstri = "xerxes";
        ubyrKrimyn = "li";
        korz = 1;
      };
    };
  };

  krimynz = {
    li = {
      spici = "Onlimityd";
      saiz = 3;
      kibord = "colemak";
      githubId = "maisiliym";
      priKriomz = {
        dante = {
          eseseitc = "AAAAC3NzaC1lZDI1NTE5AAAAIK769R2iKyr5rgBvR9OFeSN2kdo8h+LtXVUjzdFLf4vl";
          keygrip = "AD305831DD33E62F9AD587718D4E5E6999CD84EA";
        };
        xerxes = {
          eseseitc = "AAAAC3NzaC1lZDI1NTE5AAAAIEygb1Ft1hIB+ExPGLq08im9rFYvOeYXX+NetgqjI3Db";
          keygrip = "63A149ECC539BAF2B001C57E9A55A566BCD48446";
        };
      };
    };

    bird = {
      spici = "Sema";
      saiz = 3;
      kibord = "colemak";
      priKriomz = {
        juno = {
          eseseitc = "AAAAC3NzaC1lZDI1NTE5AAAAIKTc1b3BgAHoY1R7gY8YsaPI7AeTZzDyWJPhlyEkjv/e";
          keygrip = "2B02ECA0AE0D9A027C013234DEB7888B37E70DBF";
        };
      };
    };

    maikro = {
      spici = "Uniks";
      saiz = 1;
      kibord = "colemak";
      priKriomz = {
        xerxes = {
          eseseitc = "AAAAC3NzaC1lZDI1NTE5AAAAIEygb1Ft1hIB+ExPGLq08im9rFYvOeYXX+NetgqjI3Db";
          keygrip = "63A149ECC539BAF2B001C57E9A55A566BCD48446";
        };
      };

    };
  };

  domeinz = { };

  trost = {
    metastra = 3;
    metastriz = { };
    astriz = {
      balboa = 3;
      xerxes = 3;
      dante = 3;
      eibetik = 2;
      juno = 2;
    };
    krimynz = {
      maikro = 3;
      li = 3;
      bird = 1;
    };
  };
}
