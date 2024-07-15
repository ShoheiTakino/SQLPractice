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


-- 模範解答:1 
SELECT 口座番号, 名義, 種別, 残高, 更新日 FROM 口座 ORDER BY 口座番号

-- 問題: 2 --
SELECT DISTINCT 名義 FROM 口座 ORDER BY 名義


*/
