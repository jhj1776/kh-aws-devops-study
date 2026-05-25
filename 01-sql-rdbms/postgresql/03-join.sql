-- 03-join.sql
-- INNER JOIN, LEFT JOIN, FULL OUTER JOIN 복습

-- LEFT JOIN 차이를 확인하기 위한 부서 미등록 사원 추가
-- department_id 99는 departments 테이블에 존재하지 않음
DELETE FROM employees
WHERE employee_name = 'Han Yujin'
  AND department_id = 99;

INSERT INTO employees (employee_name, department_id, salary, hire_date)
VALUES ('Han Yujin', 99, 3300000, '2025-05-01');

-- FULL OUTER JOIN 차이를 확인하기 위한 사원 없는 부서 추가
-- department_id 40은 employees 테이블에 존재하지 않음
DELETE FROM departments
WHERE department_id = 40;

INSERT INTO departments (department_id, department_name)
VALUES (40, 'Human Resources');

-- 1. INNER JOIN
-- 양쪽 테이블에 매칭되는 데이터만 조회
-- department_id 99 사원과 department_id 40 부서는 결과에서 제외됨
SELECT
    e.employee_id,
    e.employee_name,
    e.department_id,
    d.department_id,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- 2. LEFT JOIN
-- 왼쪽 테이블인 employees의 데이터는 모두 유지
-- department_id 99는 departments에 없으므로 department_name이 NULL로 조회됨
SELECT
    e.employee_id,
    e.employee_name,
    e.department_id,
    d.department_id,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- 3. LEFT JOIN을 INNER JOIN처럼 사용하는 경우
-- LEFT JOIN 후 오른쪽 테이블 컬럼 조건을 WHERE에 작성하면
-- 매칭되지 않은 NULL 행이 제거되어 INNER JOIN처럼 동작할 수 있음
SELECT
    e.employee_id,
    e.employee_name,
    e.department_id,
    d.department_id,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name IS NOT NULL;

-- 4. FULL OUTER JOIN
-- 양쪽 테이블의 데이터를 모두 유지
-- 매칭되지 않은 사원과 매칭되지 않은 부서도 함께 조회됨
SELECT
    e.employee_id,
    e.employee_name,
    e.department_id,
    d.department_id,
    d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;