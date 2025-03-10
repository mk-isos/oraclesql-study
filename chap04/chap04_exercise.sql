-- 실습 4

DESC EMP;

DESC DEPT;

DESC SALGRADE;

SELECT * FROM EMP;

SELECT EMPNO, ENAME, DEPTNO
  FROM EMP;

SELECT DISTINCT DEPTNO
  FROM EMP;

SELECT DISTINCT JOB, DEPTNO
  FROM EMP;

SELECT ALL JOB, DEPTNO
  FROM EMP;

SELECT ENAME, SAL, SAL*12+COMM, COMM
  FROM EMP;

SELECT ENAME, SAL, SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+SAL+COMM, COMM
  FROM EMP;

SELECT ENAME, SAL, SAL*12+COMM AS ANNSAL, COMM
  FROM EMP;

SELECT *
  FROM EMP
ORDER BY SAL;

SELECT *
  FROM EMP
ORDER BY SAL DESC;

SELECT *
  FROM EMP
ORDER BY DEPTNO ASC, SAL DESC;

