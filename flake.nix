{
  description = "Maisiliym metastri";

  outputs = { self }:
    { datom = import ./datom.nix; };
}
