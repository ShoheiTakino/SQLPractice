/*
7.6.3
問題: 1
insert into 頭数集計(飼育県, 頭数)
select 飼育県, count(個体識別番号)
from 個体識別
group by 飼育県

-- 模範解答:1
INSERT INTO 頭数集計
SELECT 飼育県, COUNT(個体識別番号)
  FROM 個体識別
 GROUP BY 飼育県;

 

*/
