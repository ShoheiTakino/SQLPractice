-- 3.7.1練習問題 ---
-- 問題: 1 --
select *
from 気象観測テーブル
where 月 = 6
-- 模範解答:1
SELECT * FROM 気象観測 WHERE 月 = 6

-- 問題: 2 --
select *
from 気象観測
where not 月 = 6
-- 模範解答:2
SELECT * FROM 気象観測 WHERE 月 <> 6

-- 問題: 3 --
select *
from 気象観測
where 降水量 < 100
-- 模範解答:3
SELECT * FROM 気象観測 WHERE 降水量 < 100

-- 問題: 4 --
select *
from 気象観測
where 降水量 > 200
-- 模範解答:4
SELECT * FROM 気象観測 WHERE 降水量 > 200

-- 問題: 5 --
select *
from 気象観測
where 最高気温 >= 30
-- 模範解答:5
SELECT * FROM 気象観測 WHERE 最高気温 >= 30

-- 問題: 6 --
select *
from 気象観測
where 最低気温 <= 0
-- 模範解答:6
SELECT * FROM 気象観測 WHERE 最低気温 <= 0

-- 問題: 7 --
select *
from 気象観測
where 月 in (3 ,5, 7)
-- 模範解答:7 INを使う場合
SELECT * FROM 気象観測 WHERE 月 IN (3, 5, 7);
-- 模範解答:7 ORを使う場合
SELECT * FROM 気象観測
 WHERE 月 = 3 OR 月 = 5 OR 月 = 7;

-- 問題: 8 --
select *
from 気象観測
where not 月 in (3 ,5, 7)
8 NOT INを使う場合
SELECT * FROM 気象観測 WHERE 月 NOT IN (3, 5, 7);
-- 模範解答:8 ANDを使う場合
SELECT * FROM 気象観測
 WHERE 月 <> 3 AND 月 <> 5 AND 月 <> 7;

-- 問題: 9 --
select *
from 気象観測
where 降水量 <= 100
-- and 湿度 < 50
-- 模範解答:9
SELECT * FROM 気象観測
 WHERE 降水量 <= 100 AND 湿度 < 50;

-- 問題: 10 --
select *
from 気象観測
where 最低気温 < 5 
or 最高気温 > 35
-- 模範解答:10
SELECT * FROM 気象観測
 WHERE 最低気温 < 5 OR 最高気温 > 35;

-- 問題: 11 --
select *
from 気象観測
where 湿度 
between 60 and 79
-- 模範解答:11 BETWEENを使う場合
SELECT * FROM 気象観測
 WHERE 湿度 BETWEEN 60 AND 79;
-- 模範解答:11 ANDを使う場合
SELECT * FROM 気象観測
 WHERE 湿度 >= 60 AND 湿度 <= 79;

-- 問題: 12 --
select *
from 気象観測
where 降水量 is null
or 最高気温 is null
or 最低気温 is null
or 湿度 is null
-- 模範解答:12
SELECT * FROM 気象観測
 WHERE 降水量 IS NULL OR 最高気温 IS NULL
    OR 最低気温 IS NULL OR 湿度 IS NULL
