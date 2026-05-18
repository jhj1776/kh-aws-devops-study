-- 01-create-employees.sql
-- PostgreSQL 기준 사원 테이블 생성

CREATE TABLE employees (
    employee_id BIGSERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_id BIGINT,
    salary INTEGER NOT NULL,
    hire_date DATE NOT NULL
);
