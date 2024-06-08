-- 4.7.2
-- 問題: 1 --
select 値 
from 奇数
union
select 値
from 偶数
order by 値

-- 模範解答:1
SELECT 値 FROM 奇数 UNION SELECT 値 FROM 偶数;

-- 問題: 2 --
select 値 
from 整数
except
select 値
from 偶数
order by 値

-- 模範解答:2
SELECT 値 FROM 整数 EXCEPT SELECT 値 FROM 偶数
