-- 02-insert-employees.sql
-- PostgreSQL 기준 사원 샘플 데이터 입력

INSERT INTO employees (employee_name, department_id, salary, hire_date)
VALUES
    ('Kim Minjun', 10, 3200000, '2024-01-15'),
    ('Lee Seoyeon', 20, 4100000, '2023-08-01'),
    ('Park Jiho', 10, 2800000, '2025-03-10'),
    ('Choi Hayoon', 30, 5000000, '2022-11-20'),
    ('Jung Doyun', 20, 3600000, '2024-06-03');
