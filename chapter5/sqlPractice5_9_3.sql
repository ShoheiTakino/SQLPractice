-- 5.9.3
-- 問題: 1 --
update 受注
set 文字数 = length(replace(文字, ' ', ''))

-- 模範解答:1
UPDATE 受注
   SET 文字数 = LENGTH(REPLACE(文字,' ', ''))