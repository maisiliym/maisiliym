{
  description = "Maisiliym metastri";

  outputs = { self }:
    { NeksysProposal = import ./datom.nix; };
}
