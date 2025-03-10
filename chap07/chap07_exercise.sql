SELECT SUM(SAL)
  FROM EMP;

SELECT ENAME, SUM(SAL)
  FROM EMP;

SELECT SUM(COMM)
  FROM EMP;

SELECT SUM(DISTINCT SAL),
       SUM(ALL SAL),
       SUM(SAL)
  FROM EMP;

SELECT COUNT(*)
  FROM EMP;

SELECT COUNT(*)
  FROM EMP
 WHERE DEPTNO = 30;

SELECT COUNT(DISTINCT SAL),
       COUNT(ALL SAL),
       COUNT(SAL)
  FROM EMP;

SELECT COUNT(COMM)
  FROM EMP;

SELECT COUNT(COMM)
  FROM EMP
 WHERE COMM IS NOT NULL;

SELECT MAX(SAL)
  FROM EMP
 WHERE DEPTNO = 10;

SELECT MIN(SAL)
  FROM EMP
 WHERE DEPTNO = 10;

SELECT MAX(HIREDATE)
  FROM EMP
 WHERE DEPTNO = 20;

SELECT MIN(HIREDATE)
  FROM EMP
 WHERE DEPTNO = 20;

SELECT AVG(SAL)
  FROM EMP
 WHERE DEPTNO = 30;

SELECT AVG(DISTINCT SAL)
  FROM EMP
 WHERE DEPTNO = 30;

SELECT AVG(SAL), '10' AS DEPTNO FROM EMP WHERE DEPTNO = 10
UNION ALL
SELECT AVG(SAL), '20' AS DEPTNO FROM EMP WHERE DEPTNO = 20
UNION ALL
SELECT AVG(SAL), '30' AS DEPTNO FROM EMP WHERE DEPTNO = 30;

SELECT AVG(SAL), DEPTNO
  FROM EMP
GROUP BY DEPTNO;

SELECT DEPTNO, JOB, AVG(SAL)
  FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

SELECT ENAME, DEPTNO, AVG(SAL)
  FROM EMP
GROUP BY DEPTNO;

SELECT DEPTNO, JOB, AVG(SAL)
  FROM EMP
GROUP BY DEPTNO, JOB
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO, JOB;

SELECT DEPTNO, JOB, AVG(SAL)
  FROM EMP
 WHERE AVG(SAL) >= 2000
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

SELECT DEPTNO, JOB, AVG(SAL)
  FROM EMP
GROUP BY DEPTNO, JOB
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO, JOB;

SELECT DEPTNO, JOB, AVG(SAL)
  FROM EMP
 WHERE SAL <= 3000
GROUP BY DEPTNO, JOB
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO, JOB;
