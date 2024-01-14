scooter_rent=# SELECT c.login, COUNT(o.id) AS deliverycount FROM "Couriers" AS c LEFT JOIN "Orders" AS o ON c.id = o."courierId" WHERE o."inDelivery" = true GROUP BY c.id;
 login | deliverycount
-------+---------------
 ded   |             2
 dod   |             4
 dyd   |             4
 dad   |             2
 dud   |             4
(5 rows)

scooter_rent=# SELECT track, CASE WHEN finished = true THEN 2 WHEN cancelled = true THEN -1 WHEN "inDelivery" = true THEN 1 ELSE 0 END AS status FROM "Orders";
 track  | status
--------+--------
 937868 |      1
 937868 |      1
  72106 |      1
  72106 |      1
 545607 |      1
 545607 |      1
 990209 |      1
 990209 |      1
 275059 |      1
 275059 |      1
 205833 |      1
 546222 |      1
 546222 |      1
 995794 |      1
 995794 |      2
 205833 |      2
 842603 |      0
 791945 |      0
 915327 |     -1
(19 rows)
