-- 3.7.2練習問題 ---
-- 問題: 1 --
select 都道府県名
from 都道府県
where 都道府県名 like '%川%'
-- 模範解答:1
SELECT 都道府県名 FROM 都道府県
 WHERE 都道府県名 LIKE '%川';

-- 問題: 2 --
select 都道府県名
from 都道府県
WHERE 都道府県名 like '%島%';
-- 模範解答:2
SELECT 都道府県名 FROM 都道府県
 WHERE 都道府県名 LIKE '%島%';

-- 問題: 3 --
select 都道府県名
from 都道府県
WHERE 都道府県名 LIKE '愛%';
-- 模範解答:3
SELECT 都道府県名 FROM 都道府県
 WHERE 都道府県名 LIKE '愛%';

-- 問題: 4 --
select *
from 都道府県
where 県庁所在地 = 都道府県名
-- 模範解答:4
SELECT * FROM 都道府県
 WHERE 都道府県名 = 県庁所在地;

-- 問題: 4 --
select *
from 都道府県
where 県庁所在地 <> 都道府県名
-- 模範解答:5
SELECT * FROM 都道府県
 WHERE 都道府県名 <> 県庁所在地


