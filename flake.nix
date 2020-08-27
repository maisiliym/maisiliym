{
  description = "Maisiliym metastri";

  inputs = {
    xerxes = {
      url = file:///home/li/dev/xerxes;
      type = "git";
      ref = "main";
    };

    liKrimyn = {
      url = file:///home/li/dev/li;
      type = "git";
      ref = "main";
    };
  };

  outputs = { self, xerxes, liKrimyn }@fleiks:
  {
    strok = {
      djenyreicyn = 10;
      spici = "metastri";
    };

    datom = {
      astriz = {
        xerxes = fleiks.xerxes.datom;
      };

      krimynz = {
        li = liKrimyn.datom;
      };

      domeinz = {
        "maisiliym.xyz" = {};
      };

      trost = {
        metastra = 3;

        metastriz = { };

        astriz= {
          xerxes = 3;
        };

        krimynz = {
          li = 3;
          byrd = 1;
        };

      };

    };

  };
}
