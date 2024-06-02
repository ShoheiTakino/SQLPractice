-- 4.7.1
-- 問題: 1 --
select *
from 注文履歴
order by 注文番号, 注文枝番 asc
-- 模範解答:1
SELECT * FROM 注文履歴 ORDER BY 注文番号, 注文枝番

-- 問題: 2 --
select distinct 商品名
from 注文履歴
where '2024-01-01' <= 日付 
and  日付 <= '2024-01-31'
order by 商品名 asc 
-- 模範解答:2
SELECT DISTINCT 商品名 FROM 注文履歴
 WHERE 日付 >= '2024-01-01' AND 日付 <= '2024-01-31'
 ORDER BY 商品名