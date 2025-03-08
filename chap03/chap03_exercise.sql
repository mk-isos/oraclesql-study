-- 맥북 환경에서 실행하는 오라클 SQL 실습 

-- 1️⃣ SYSDBA 권한으로 SQL*Plus 실행
-- 터미널에서 실행
-- docker exec -it oracle19c sqlplus / as sysdba

-- 2️⃣ SCOTT 계정 생성을 위한 설정
ALTER SESSION SET "_oracle_script"=true;

-- 3️⃣ SCOTT 계정 생성 및 권한 부여
CREATE USER scott IDENTIFIED BY tiger
DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;
GRANT CREATE SESSION, CREATE TABLE TO scott;

-- 4️⃣ SCOTT 계정으로 접속 확인
conn scott/tiger;
SHOW USER;

-- 5️⃣ 세션 설정 (날짜 형식 및 언어 설정)
ALTER SESSION SET nls_date_language='american';
ALTER SESSION SET nls_date_format='dd-MON-rr';

-- 6️⃣ SQL 스크립트 실행 (테이블 생성 및 데이터 삽입)
@/home/oracle/doitoracle_scott.sql;

-- 7️⃣ 테이블 구조 확인
desc emp;
desc dept;
desc salgrade;

-- 8️⃣ 데이터 조회
SELECT * FROM EMP;
