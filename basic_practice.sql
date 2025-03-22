-- 1. 테이블 생성
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    major VARCHAR2(50),
    admission_year NUMBER
);

-- 2. 데이터 삽입
INSERT INTO students VALUES (1, 'Alice', 'Computer Engineering', 2023);
INSERT INTO students VALUES (2, 'Bob', 'Business', 2022);
INSERT INTO students VALUES (3, 'Charlie', 'Computer Engineering', 2021);

-- 3. 기본 조회
SELECT * FROM students;

-- 4. 조건 조회
SELECT * FROM students WHERE major = 'Computer Engineering';

-- 5. 정렬
SELECT * FROM students ORDER BY admission_year DESC;

-- 6. 컬럼 선택 및 별칭 사용
SELECT name AS "Student Name", major FROM students;

-- 7. 데이터 수정
UPDATE students SET major = 'Software Engineering' WHERE student_id = 1;

-- 8. 데이터 삭제
DELETE FROM students WHERE student_id = 3;

-- 9. COUNT, GROUP BY 사용
SELECT major, COUNT(*) AS "Number of Students"
FROM students
GROUP BY major;

-- 10. 테이블 삭제
DROP TABLE students;
