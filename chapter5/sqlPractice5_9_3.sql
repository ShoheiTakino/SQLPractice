-- 5.9.3
-- 問題: 1 --
update 受注
set 文字数 = length(replace(文字, ' ', ''))

-- 模範解答:1
UPDATE 受注
   SET 文字数 = LENGTH(REPLACE(文字,' ', ''))

-- 問題: 2 --
select 受注日,受注id,文字数,
case 書体コード when '1' then 'ブロック体'
when '2' then '筆記体'
when '3' then '草書体'
else 'ブロック体' -- COALESCEをす使用すれば、else分岐いらない
end
as 書体名,
case 書体コード
when '1' then 100
when '2' then 150
when '3' then 200
else 100 -- COALESCEをす使用すれば、else分岐いらない
end
as 単価,
case when 文字数 > 10 then 500
else 0
end
特別加工料
from 受注
order by 受注日, 受注id

-- 模範解答:2
SELECT 受注日, 受注ID, 文字数,
       CASE COALESCE(書体コード, '1')
           WHEN '1' THEN 'ブロック体'
           WHEN '2' THEN '筆記体'
           WHEN '3' THEN '草書体' END AS 書体名,
       CASE COALESCE(書体コード, '1')
           WHEN '1' THEN 100
           WHEN '2' THEN 150
           WHEN '3' THEN 200  END AS 単価,
       CASE WHEN 文字数 > 10 THEN 500
            ELSE 0 END AS 特別加工料
  FROM 受注 ORDER BY 受注日, 受注ID

  -- 問題: 3 --
update 受注
set 文字 = replace(文字, ' ', '★') 
where 受注id = '113'

-- 模範解答:3
UPDATE 受注
   SET 文字 = REPLACE(文字, ' ', '★')
 WHERE 受注ID = '113'
