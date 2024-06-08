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
