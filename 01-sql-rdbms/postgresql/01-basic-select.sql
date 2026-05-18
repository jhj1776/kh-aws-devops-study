-- 01-basic-select.sql
-- SELECT 기본 조회 복습

-- 전체 컬럼 조회
SELECT *
FROM employees;

-- 필요한 컬럼만 조회
SELECT employee_id, employee_name, department_id
FROM employees;

-- 조건으로 조회
SELECT employee_id, employee_name, salary
FROM employees
WHERE salary >= 3000000;

-- 정렬해서 조회
SELECT employee_id, employee_name, salary
FROM employees
ORDER BY salary DESC;
