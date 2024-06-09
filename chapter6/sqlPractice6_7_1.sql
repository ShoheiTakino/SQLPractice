-- 6.7.1
-- 問題: 1 --
select sum(降水量) as 年間降水量,
       round(avg(最高気温), 1) as 最高気温の平均,
       round(avg(最低気温), 1) as 最低気温の平均
from 都市別気象観測

-- 模範解答:1
SELECT SUM(降水量), AVG(最高気温), AVG(最低気温)
  FROM 都市別気象観測;

  

