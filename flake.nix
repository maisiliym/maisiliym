{
  description = "Maisiliym-Net metastra";

  inputs = {
    maisiliymAstriz = {
      url = file:///home/li/dev/astriz;
      type = "git";
      ref = "master";
    };
  };

  outputs = { self, maisiliymAstriz }:
  {
    datom = {
      metastriz = {};

      astriz = maisiliymAstriz.datom;

      krimynz = {};

      domeinz = {
        uniks = "maisiliym";

        verisign = {
          "maisiliym.xyz" = {};
        };

      };

    };

  };
}
