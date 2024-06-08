-- 5.9.2
-- 問題: 1 -- (ちょいむずかった)
update 回答者
set 国名 
= case substring(
                trim(メールアドレス),
                length(trim(メールアドレス)) - 1,
                2
                )
when 'jp' then '日本'
when 'uk' then 'イギリス'
when 'cn' then '中国'
when 'fr' then 'フランス'
when 'vn' then 'ベトナム'
end

-- 模範解答:1
UPDATE 回答者
   SET 国名 = CASE SUBSTRING(TRIM(メールアドレス),
                            LENGTH(TRIM(メールアドレス))-1, 2)
             WHEN 'jp' THEN '日本'
             WHEN 'uk' THEN 'イギリス'
             WHEN 'cn' THEN '中国'
             WHEN 'fr' THEN 'フランス'
             WHEN 'vn' THEN 'ベトナム' END;

-- 問題: 2 -- (ちょいむずかった)
select trim(メールアドレス) as メールアドレス,
        case when 20 <= 年齢 and 年齢 < 30 then '20代'
             when 30 <= 年齢 and 年齢 < 40 then '30代'
             when 40 <= 年齢 and 年齢 < 50 then '40代'
             when 50 <= 年齢 and 年齢 < 60 then '50代'
        end
        || '' ||
        case 住居 
             when 'C' then '集合住宅'
             when 'D' then '戸建て'
        end
        as 属性
from 回答者


-- 模範解答:2
SELECT TRIM(メールアドレス) AS メールアドレス,
       CASE WHEN 年齢 >= 20 AND 年齢 < 30 THEN '20代'
            WHEN 年齢 >= 30 AND 年齢 < 40 THEN '30代'
            WHEN 年齢 >= 40 AND 年齢 < 50 THEN '40代'
            WHEN 年齢 >= 50 AND 年齢 < 60 THEN '50代' END
       || '：' ||
       CASE 住居 WHEN 'D' THEN '戸建て'
                WHEN 'C' THEN '集合住宅' END AS 属性
  FROM 回答者