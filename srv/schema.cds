using test.goodstore as db from '../db/schema';

service CatalogService {
  entity Materials as projection on db.Material;
  entity Suppliers @readonly as projection on db.Supplier;
}