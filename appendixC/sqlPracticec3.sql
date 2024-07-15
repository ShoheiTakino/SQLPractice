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

-- 問題: 4 --
select *
from 口座
where 更新日 <= '2023-12-31'

-- 問題: 5 --
select *
from 口座
where 残高 >= 1000000

-- 問題: 6 --
select *
from 口座
where 種別 <> '1'

-- 問題: 7 --
select *
from 口座
where 更新日 is null

-- 問題: 8 --
select *
from 口座
where 名義 like '%ハシ%'

-- 問題: 9 --
select *
from 口座
where 更新日 >= '2024-01-01'
and 更新日 <= '2024-01-31'

-- 問題: 10 --
select *
from 口座
where 種別 != '1'

-- 問題: 11 --
select *
from 口座
where 名義 
in (
'サカタ　リョウヘイ',
'マツモト　ミワコ',
'ハマダ　サトシ'
)


-- 模範解答:1 
-- 問題: 1 --
SELECT * FROM 口座 WHRERE 口座番号 = '0037651'

-- 問題: 2 --
SELECT * FROM 口座 WHRERE 残高 > 0

-- 問題: 3 --
SELECT * FROM 口座 WHRERE 口座番号 < '1000000'

-- 問題: 4 --
SELECT * FROM 口座 WHRERE 更新日 < '2024-01-01'

-- 問題: 5 --
SELECT * FROM 口座 WHRERE 残高 >= 1000000

-- 問題: 6 --
SELECT * FROM 口座 WHRERE 種別 <> '1'

-- 問題: 7 --
SELECT * FROM 口座 WHRERE 更新日 IS NULL

-- 問題: 8 --
SELECT * FROM 口座 WHRERE 名義 LIKE '%ハシ%'

-- 問題: 9 --
SELECT * FROM 口座 WHERE 更新 BETWEEN '2024-01-01' and '2024-01-31'

-- 問題: 10 --
SELECT * FROM 口座 WHERE 種別 in ('2', '3')

-- 問題: 11 --
SELECT *
FROM 口座
WHERE 名義 
IN ('サカタ　リョウヘイ', 'マツモト　ミワコ', 'ハマダ　サトシ')


*/
