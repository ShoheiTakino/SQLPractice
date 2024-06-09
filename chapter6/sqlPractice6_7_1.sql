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

  -- 問題: 3 --
select 都市名,
       round(avg(降水量)) as 各都市の平均降水量,
       max(最高気温) as 各都市の最高気温,
       min(最低気温) as 各都市の最低気温
from 都市別気象観測
group by 都市名

-- 模範解答:3
SELECT 都市名, AVG(降水量), MIN(最高気温), MAX(最低気温) -- 模範解答間違ってて草
  FROM 都市別気象観測
 GROUP BY 都市名;

  -- 問題: 4 --
select 月,
       round(avg(降水量)) as 各月の平均降水量,
       max(最高気温) as 各月の最高気温,
       min(最低気温) as 各月の最低気温
from 都市別気象観測
group by 月 
order by 月

-- 模範解答:4
SELECT 月, AVG(降水量), AVG(最高気温), AVG(最低気温)
  FROM 都市別気象観測
 GROUP BY 月

  -- 問題: 5 --
 select 都市名,
       max(最高気温) as 最高気温
from 都市別気象観測
group by 都市名
having max(最高気温) >= 38

-- 模範解答:5
SELECT 都市名, MAX(最高気温)
  FROM 都市別気象観測
 GROUP BY 都市名
HAVING MAX(最高気温) >= 38
