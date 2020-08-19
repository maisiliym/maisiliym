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
      astriz = maisiliymAstriz.datom;

      domeinz = {
        uniks = "maisiliym";

        verisign = {
          "maisiliym.xyz" = {};
        };

      };

    };

  };
}
