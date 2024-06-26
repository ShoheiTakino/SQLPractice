-- 6.7.2
-- 問題: 1 --
select count(*) as 入室中社員数
from 入退室管理
where 退室 is null

-- 模範解答:1
SELECT COUNT(*) AS 社員数
  FROM 入退室管理
 WHERE 退室 IS NULL

-- 問題: 2 --
 select 社員名,
       count(社員名) as 入室回数
from 入退室管理
group by 社員名
order by count(社員名) desc

-- 模範解答:2
SELECT 社員名, COUNT(*) AS 入室回数
  FROM 入退室管理
 GROUP BY 社員名
 ORDER BY 2 DESC

-- 問題: 3 --
 select case 事由区分
       when '1' then 'メンテナンス'
       when '2' then 'リリース作業'
       when '3' then '障害対応'
       when '9' then 'その他'
       end
       as 入室した理由,
       count(事由区分) as 入室した回数
from 入退室管理
group by 事由区分
order by 2 desc

-- 模範解答:3
SELECT CASE 事由区分 WHEN '1' THEN 'メンテナンス'
                    WHEN '2' THEN 'リリース作業'
                    WHEN '3' THEN '障害対応'
                    WHEN '9' THEN 'その他'
       END AS 事由,
       COUNT(*) AS 入室回数
  FROM 入退室管理
 GROUP BY 事由区分

-- 問題: 4 --
select 社員名,
       count(社員名) as 入室回数
from 入退室管理
group by 社員名
having count(社員名) > 10
order by 2 desc

-- 模範解答:4
SELECT 社員名, COUNT(*) AS 入室回数
  FROM 入退室管理
 GROUP BY 社員名
HAVING COUNT(*) > 10

-- 問題: 5 --
select 日付,
       count(*) as 障害対応
from 入退室管理
where 事由区分 = '3'
group by 日付

-- 模範解答:5
SELECT 日付, COUNT(社員名) AS 対応社員数
  FROM 入退室管理
 WHERE 事由区分 = '3'
 GROUP BY 日付
