# 一个月SQL学习 ( https://github.com/georgezhang/SQLTraining )
## SQL JOIN

SELECT Table1.key1, Table1.key2, Table2.value1, Table2.value1 
FROM Table1, Table2 
WHERE Table1.key1 = Table2.key1

排列“组合“

---------------
# TABLE 1       TABLE 2
key value       key value
 1  A            1   X
 2  B            2   Y
 3  C            3   Z

组合：
1 A 1 X
2 B 2 Y
3 C 3 Z

---------------
# TABLE 1       TABLE 2
key value       key value
 1  A            1   X
 2  B            2   Y
 3  D            4   Z

组合：
INNER JOIN
1 A 1 X
2 B 2 Y

LEFT JOIN
1 A 1 X
2 B 2 Y
3 D null null

FULL JOIN
1 A 1 X
2 B 2 Y
3 D null null
null null 4 Z