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

 -- 問題: 3 --
select 注文番号, 注文枝番, 注文金額
from 注文履歴
order by 注文金額 asc
offset 1 rows 
fetch next 3 rows only
-- 模範解答:3
SELECT 注文番号, 注文枝番, 注文金額 FROM 注文履歴
 WHERE 分類 = '1' ORDER BY 注文金額
OFFSET 1 ROW FETCH NEXT 3 ROWS ONLY

-- 問題: 4 --
select 日付, 商品名, 単価, 数量, 注文金額
from 注文履歴
where 分類 = '3'
and 数量 >= 2
order by 日付, 数量 desc

-- 模範解答: 4
SELECT 日付, 商品名, 単価, 数量, 注文金額 FROM 注文履歴
 WHERE 分類 = '3' AND 数量 >= 2 ORDER BY 日付, 数量 DESC

 -- 5
 select distinct 分類, 商品名, サイズ, 単価
from 注文履歴
where  分類 = '1'
union
select distinct 分類, 商品名, null, 単価
from 注文履歴
where  分類 = '2'
union
select distinct 分類, 商品名, null, 単価
from 注文履歴
where  分類 = '3'
order by 1, 2

-- 模範解答:5 --
SELECT DISTINCT 分類, 商品名, サイズ, 単価
  FROM 注文履歴 WHERE 分類 = '1'
 UNION
SELECT DISTINCT 分類, 商品名, NULL, 単価
  FROM 注文履歴 WHERE 分類 = '2'
 UNION
SELECT DISTINCT 分類, 商品名, NULL, 単価
  FROM 注文履歴 WHERE 分類 = '3'
 ORDER BY 1, 2;
