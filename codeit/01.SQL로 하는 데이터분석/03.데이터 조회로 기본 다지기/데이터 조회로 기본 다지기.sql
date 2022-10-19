SELECT *
FROM copang_main.member
WHERE email = 'taehos@hanmail.net';

SELECT *
FROM copang_main.member
WHERE age BETWEEN 30 AND 39; # NOT BETWEEN

SELECT *
FROM copang_main.member
WHERE address LIKE '서울%'; # 서울이라는 단어로 시작하는 행 검색

SELECT *
FROM copang_main.member
WHERE address LIKE '%고양시%'; # 고양시라는 단어가 포함된 행 검색

SELECT *
FROM copang_main.member
WHERE email LIKE 'c_____@%'; # 이메일 주소가 c로 시작하고 그 뒤에 여섯글자가 있는 행 검색

SELECT *
FROM copang_main.member
WHERE YEAR(birthday) = '1992'; # 연도가 1992년도인 행 검색
# 월 : MONTH , 일 : DAYOFMONTH

SELECT email, sign_up_day, DATEDIFF(sign_up_day, '2019-01-01') # 날짜끼리 차이를 볼 때
FROM copang_main.member;

SELECT email , CURDATE() # 오늘 날짜 구하기
FROM copang_main.member;

SELECT email, sign_up_day, DATE_ADD(sign_up_day, INTERVAL 300 DAY) # 날짜 더하기 , 빼기 : DATE_SUB
FROM copang_main.member;

# UNIX Timestamp 값
SELECT email, UNIX_TIMESTAMP(sign_up_day)
FROM copang_main.member;

# FROM_UNIXTIME
SELECT email, sign_up_day, FROM_UNIXTIME(UNIX_TIMESTAMP(sign_up_day))
FROM copang_main.member;

# 여러개 조건 걸기
# AND 가 OR 보다 우선순위가 높다
SELECT *
FROM copang_main.member
WHERE gender = 'm'
	AND address LIKE '서울%';
    
SELECT *
FROM copang_main.member
WHERE MONTH(sign_up_day) BETWEEN 3 AND 5
	OR MONTH(sign_up_day) BETWEEN 9 AND 11;