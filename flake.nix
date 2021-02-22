{
  description = "Maisiliym metastri";

  inputs = {
    xerxes = {
      url = file:///home/li/dev/xerxes;
      type = "git";
      ref = "spinyr";
    };

    dante = {
      url = file:///home/li/dev/dante;
      type = "git";
      ref = "uyrld";
    };

    juno = {
      url = file:///home/li/dev/juno;
      type = "git";
      ref = "main";
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

    bird = {
      url = file:///home/li/dev/bird;
      type = "git";
      ref = "main";
    };

    maikro = {
      url = file:///home/li/dev/maikro;
      type = "git";
      ref = "main";
    };

  };

  outputs = { self, ... }@fleiks:
    {
      datom = {
        astriz = {
          xerxes = fleiks.xerxes.datom;
          dante = fleiks.dante.datom;
          juno = fleiks.juno.datom;
          eibetik = fleiks.eibetik.datom;
        };

        krimynz = {
          li = fleiks.liKrimyn.datom;
          bird = fleiks.bird.datom;
          maikro = fleiks.maikro.datom;
        };

        domeinz = {
          "maisiliym.xyz" = { };
        };

        trost = {
          metastra = 3;

          metastriz = { };

          astriz = {
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

      };

    };
}
