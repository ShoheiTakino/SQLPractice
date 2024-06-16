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

問題: 2(復習する)
select 飼育県 as 都道府県名,
       個体識別番号,
       case 雌雄コード 
       when '1' then '雄'
       when '2' then '雌'
       end as 雌雄
from 個体識別
where 飼育県 in (
select 飼育県
from 頭数集計
order by 頭数集計 desc
offset 0 rows fetch next 3 rows only
)

-- 模範解答:2
SELECT 飼育県 AS 都道府県名, 個体識別番号,
  CASE 雌雄コード WHEN '1' THEN '雄'
                WHEN '2' THEN '雌' END AS 雌雄
  FROM 個体識別
 WHERE 飼育県 IN (SELECT 飼育県 FROM 頭数集計
                  ORDER BY 頭数 DESC
                 OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY);


*/
