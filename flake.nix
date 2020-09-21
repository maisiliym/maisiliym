{
  description = "Maisiliym metastri";

  inputs = {
    xerxes = {
      url = file:///home/li/dev/xerxes;
      type = "git";
      ref = "main";
    };

    dante = {
      url = file:///home/li/dev/dante;
      type = "git";
      ref = "fainyli";
    };

    eibetik = {
      url = file:///home/li/dev/eibetik;
      type = "git";
      ref = "main";
    };

    liKrimyn = {
      url = file:///home/li/dev/li;
      type = "git";
      ref = "main";
    };
  };

  outputs = { self, ... }@fleiks:
  {
    strok = {
      djenyreicyn = 10;
      spici = "metastri";
    };

    datom = {
      astriz = {
        xerxes = fleiks.xerxes.datom;
        dante = fleiks.dante.datom;
        eibetik = fleiks.eibetik.datom;
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
          dante = 3;
          eibetik = 2;
        };

        krimynz = {
          li = 3;
          byrd = 1;
        };

      };

    };

  };
}
