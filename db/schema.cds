namespace test.goodstore;

entity Material {
  key ID : UUID;
  title  : String;
  supplier : Association to Supplier;
  stock  : Integer;
}

entity Supplier {
  key ID : UUID;
  name   : String;
  material  : Association to many Material on material.supplier = $self;
}
