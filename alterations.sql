DELETE FROM devices WHERE devices.id NOT IN (SELECT devices.id FROM devices INNER JOIN brands ON devices.brand_id=brands.id WHERE brands.name in ("Nokia", "AT&T"));
DELETE FROM brands WHERE brands.id NOT IN (SELECT DISTINCT devices.brand_id FROM devices);
DELETE FROM devices WHERE id IN (SELECT id FROM devices WHERE battery_size LIKE "&nbsp;");
DELETE FROM devices WHERE id IN (SELECT id FROM devices WHERE display_size LIKE "&nbsp;");
DELETE FROM devices WHERE id IN (SELECT id FROM devices WHERE released_at LIKE "Cancelled");