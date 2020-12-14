SELECT customer_name FROM customer, premise WHERE (customer.customer_id = premise.customer_id) GROUP BY customer_name HAVING COUNT(customer_name) > 1

SELECT COUNT(*) FROM ( SELECT sector_name FROM supply, plant, sector WHERE supply.plant_id = plant.plant_id AND supply.sector_id = sector.sector_id GROUP BY sector_name HAVING COUNT(sector_name) > 1)x

SELECT meter_number FROM Premise WHERE status = 'suspended'

SELECT MAX(nbr_of_premises) FROM (SELECT sector_name, COUNT(premise_id) AS nbr_of_premises FROM sector, premise, zone WHERE zone.zone_id = premise.zone_id AND sector.sector_id = zone.sector_id GROUP BY sector_name)x

SELECT meter_number FROM Premise WHERE status = 'active'

SELECT customer_name FROM (SELECT customer_name, charge, amount_paid FROM customer, premise, bill, payment, charge_structure WHERE bill.bill_id = payment.bill_id AND bill.tarrif_id = charge_structure.tarrif_id AND bill.premise_id = premise.premise_id AND premise.customer_id = customer.customer_id )x WHERE charge - amount_paid <> 0

SELECT COUNT(customer.customer_name) FROM customer INNER JOIN premise ON customer.customer_id = premise.premise_id WHERE premise.status = "suspended"

SELECT staff.staff_name, sector.sector_name FROM staff INNER JOIN sector ON staff.sector_id = sector.sector_id

SELECT customer_name, zone_name FROM (SELECT customer_name, tarrif_name, zone_name FROM bill, tarrif, premise, zone, customer WHERE tarrif.tarrif_id = bill.tarrif_id AND bill.premise_id = premise.premise_id AND customer.customer_id = premise.customer_id AND premise.zone_id = zone.zone_id)x WHERE tarrif_name = "commercial"

SELECT sector_name FROM ( SELECT sector_name FROM supply, plant, sector WHERE supply.plant_id = plant.plant_id AND supply.sector_id = sector.sector_id GROUP BY sector_name HAVING COUNT(sector_name) = 1)x

SELECT zone_name, COUNT(customer_name) FROM customer, premise, zone WHERE zone.zone_id = premise.zone_id AND premise.customer_id = customer.customer_id GROUP BY zone_name



