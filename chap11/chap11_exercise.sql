CREATE TABLE DEPT_TCL
    AS SELECT *
         FROM DEPT;

SELECT * FROM DEPT_TCL;

INSERT INTO DEPT_TCL VALUES(50, 'DATABASE', 'SEOUL');

UPDATE DEPT_TCL SET LOC = 'BUSAN' WHERE DEPTNO = 40;

DELETE FROM DEPT_TCL WHERE DNAME = 'RESEARCH';

SELECT * FROM DEPT_TCL;

ROLLBACK;

SELECT * FROM DEPT_TCL;

INSERT INTO DEPT_TCL VALUES(50, 'NETWORK', 'SEOUL');

UPDATE DEPT_TCL SET LOC = 'BUSAN' WHERE DEPTNO = 20;

DELETE FROM DEPT_TCL WHERE DEPTNO = 40;

SELECT * FROM DEPT_TCL;

COMMIT;

SELECT * FROM DEPT_TCL;

ROLLBACK;

SELECT * FROM DEPT_TCL;

SELECT * FROM DEPT_TCL;

SELECT * FROM DEPT_TCL;

DELETE FROM DEPT_TCL
 WHERE DEPTNO = 50;

SELECT * FROM DEPT_TCL;

SELECT * FROM DEPT_TCL;

COMMIT;

SELECT * FROM DEPT_TCL;

SELECT * FROM DEPT_TCL;

SELECT * FROM DEPT_TCL;

SELECT * FROM DEPT_TCL;

UPDATE DEPT_TCL SET LOC='SEOUL'
 WHERE DEPTNO = 30;

SELECT * FROM DEPT_TCL;

SELECT * FROM DEPT_TCL;

UPDATE DEPT_TCL SET DNAME='DATABASE'
 WHERE DEPTNO = 30;

COMMIT;

SELECT * FROM DEPT_TCL;

SELECT * FROM DEPT_TCL;

COMMIT;

SELECT * FROM DEPT_TCL;
