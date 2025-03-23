-- 1. 부서(Departments) 테이블 생성
CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

-- 2. 직원(Employees) 테이블 생성
CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER,
    hire_date DATE,
    dept_id NUMBER REFERENCES departments(dept_id)
);

-- 3. 데이터 삽입
INSERT INTO departments VALUES (10, 'Engineering');
INSERT INTO departments VALUES (20, 'Sales');
INSERT INTO departments VALUES (30, 'HR');

INSERT INTO employees VALUES (1, 'Alice', 5000, TO_DATE('2022-03-01', 'YYYY-MM-DD'), 10);
INSERT INTO employees VALUES (2, 'Bob', 4500, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 10);
INSERT INTO employees VALUES (3, 'Charlie', 4000, TO_DATE('2021-09-20', 'YYYY-MM-DD'), 20);
INSERT INTO employees VALUES (4, 'Diana', 6000, TO_DATE('2020-07-11', 'YYYY-MM-DD'), 20);
INSERT INTO employees VALUES (5, 'Eve', 3800, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 30);

-- 4. INNER JOIN 사용: 부서 이름 포함 조회
SELECT e.emp_name, e.salary, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- 5. 서브쿼리: 평균 급여보다 높은 사람
SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 6. GROUP BY + HAVING: 부서별 평균 급여 4500 초과 부서
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) > 4500;

-- 7. 윈도우 함수: 부서별 급여 순위
SELECT emp_name, dept_id, salary,
       RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS rank_in_dept
FROM employees;

-- 8. 날짜 함수: 입사한 지 몇 년 차인지
SELECT emp_name,
       ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/12, 1) AS years_of_service
FROM employees;

-- 9. CASE문: 급여 수준 분류
SELECT emp_name, salary,
       CASE
           WHEN salary >= 5000 THEN 'High'
           WHEN salary >= 4000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_level
FROM employees;

-- 10. 삭제 (연습 후 정리용)
-- DROP TABLE employees;
-- DROP TABLE departments;
