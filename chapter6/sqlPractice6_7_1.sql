-- 6.7.1
-- 問題: 1 --
select sum(降水量) as 年間降水量,
       round(avg(最高気温), 1) as 最高気温の平均,
       round(avg(最低気温), 1) as 最低気温の平均
from 都市別気象観測

-- 模範解答:1
SELECT SUM(降水量), AVG(最高気温), AVG(最低気温)
  FROM 都市別気象観測;

  -- 問題: 2 --
select sum(降水量) as 東京の年間降水量,
       round(avg(最高気温), 1) as 東京の最高気温平均,
       round(avg(最低気温), 1) as 東京の最低気温平均
from 都市別気象観測
where 都市名 = '東京'

-- 模範解答:2
SELECT SUM(降水量), AVG(最高気温), AVG(最低気温)
  FROM 都市別気象観測
 WHERE 都市名 = '東京';
