using test.goodstore as db from '../db/schema';

service CatalogService {
  entity Materials as projection on db.Material {
    *
  } actions {
    action addStockQuantity(@(UI.ParameterDefaultValue : 10)quantity: Integer not null @mandatory ) returns Materials;
    action removeStockQuantity(@(UI.ParameterDefaultValue : 5)quantity: Integer not null @mandatory ) returns Materials;
  };
  entity Suppliers as projection on db.Supplier;
}