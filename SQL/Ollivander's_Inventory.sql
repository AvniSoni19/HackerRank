/*
Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
*/

SELECT w.id, p.age, w.coins_needed, w.power
FROM Wands w
JOIN Wands_Property p ON w.code = p.code
WHERE w.coins_needed = (SELECT MIN(coins_needed)
                            FROM Wands w1
                            INNER JOIN Wands_Property p1 ON w1.code = p1.code
                            WHERE p1.is_evil = 0 AND p1.age = p.age AND w.power = w1.power )
ORDER BY w.power DESC, p.age DESC;