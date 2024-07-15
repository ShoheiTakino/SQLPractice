/* 
-- c.1.3
-- 問題: 1 --
select *
from 口座
where 口座番号 = '0037651'

-- 問題: 2 --
select *
from 口座
where 残高 > 0

-- 問題: 3 --
select *
from 口座
where 口座番号 < '1000000'


-- 模範解答:1 
-- 問題: 1 --
SELECT * FROM 口座 WHRERE 口座番号 = '0037651'

-- 問題: 2 --
SELECT * FROM 口座 WHRERE 残高 > 0

-- 問題: 3 --
SELECT * FROM 口座 WHRERE 口座番号 < '1000000'

*/
