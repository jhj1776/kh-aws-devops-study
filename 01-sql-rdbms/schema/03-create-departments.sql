-- 03-create-departments.sql
-- PostgreSQL 기준 부서 테이블 생성

CREATE TABLE departments (
    department_id BIGSERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);
