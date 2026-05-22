-- 02-where-orderby.sql
-- WHERE 조건 조회와 ORDER BY 정렬 복습

-- 급여가 3000000 이상인 사원 조회
SELECT employee_id, employee_name, salary
FROM employees
WHERE salary >= 3000000;

-- 부서 ID가 10인 사원 조회
SELECT employee_id, employee_name, department_id
FROM employees
WHERE department_id = 10;

-- 급여가 3000000 이상이고 부서 ID가 20인 사원 조회
SELECT employee_id, employee_name, department_id, salary
FROM employees
WHERE salary >= 3000000
  AND department_id = 20;

-- 부서 ID가 10 또는 20인 사원 조회
SELECT employee_id, employee_name, department_id
FROM employees
WHERE department_id IN (10, 20);

-- 이름에 'Kim'이 포함된 사원 조회
SELECT employee_id, employee_name
FROM employees
WHERE employee_name LIKE '%Kim%';

-- 이름이 'K'로 시작하는 사원 조회
SELECT employee_id, employee_name
FROM employees
WHERE employee_name LIKE 'K%';

-- 이름이 3글자인 사원 조회
SELECT employee_id, employee_name
FROM employees
WHERE employee_name LIKE '___';

-- 이름의 두 번째 글자가 'i'인 사원 조회
SELECT employee_id, employee_name
FROM employees
WHERE employee_name LIKE '_i%';

-- 입사일이 2024년 이후인 사원 조회
SELECT employee_id, employee_name, hire_date
FROM employees
WHERE hire_date >= '2024-01-01';

-- 급여 높은 순서로 정렬
SELECT employee_id, employee_name, salary
FROM employees
ORDER BY salary DESC;

-- 입사일 오래된 순서로 정렬
SELECT employee_id, employee_name, hire_date
FROM employees
ORDER BY hire_date ASC;
