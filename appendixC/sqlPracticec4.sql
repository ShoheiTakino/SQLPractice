/* 
-- c.1.4
-- 問題: 1 --
select *
from 口座
order by 口座番号 asc

-- 問題: 2 --
select distinct 名義
from 口座
order by 名義 asc

-- 問題: 3 --
select *
from 口座
order by 残高 desc,
口座番号 asc

-- 問題: 4 --
select *
from 口座
where 更新日 is not null
order by 更新日
offset 0 rows
fetch next 10 rows only


-- 模範解答:1 
SELECT 口座番号, 名義, 種別, 残高, 更新日 FROM 口座 ORDER BY 口座番号

-- 問題: 2 --
SELECT DISTINCT 名義 FROM 口座 ORDER BY 名義

-- 問題: 3 --
SELECT 口座番号, 名義, 種別, 残高, 更新日 FROM 口座 ORDER BY 4 desc, 1

-- 問題: 4 --
SELECT * FROM 口座 Owhere 更新日 is not null order by 更新日 OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY


*/
