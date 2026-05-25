# JOIN

## 핵심 정리

- JOIN은 두 개 이상의 테이블을 연결해서 조회할 때 사용
- INNER JOIN은 양쪽 테이블에 매칭되는 데이터만 조회
- LEFT JOIN은 왼쪽 테이블의 데이터를 모두 유지
- FULL OUTER JOIN은 양쪽 테이블의 데이터를 모두 유지
- 매칭되지 않은 컬럼은 NULL로 조회
- PostgreSQL에서 `LEFT JOIN`과 `LEFT OUTER JOIN`은 같은 의미
- PostgreSQL에서 `FULL JOIN`과 `FULL OUTER JOIN`은 같은 의미

## 실습 내용

- INNER JOIN 조회
- LEFT JOIN 조회
- LEFT JOIN을 INNER JOIN처럼 사용하는 방법 확인
- FULL OUTER JOIN 조회

## 복습 메모

### JOIN 결과를 비교하려면 매칭되지 않는 데이터가 필요
현재 실습에서는 JOIN 차이를 확인하기 위해 일부러 매칭되지 않는 데이터를 추가

```
employees.department_id = 99: departments에 없는 부서 ID
departments.department_id = 40: employees에 없는 부서 ID
```
- 매칭되지 않는 데이터가 없으면 INNER JOIN과 LEFT JOIN 결과가 같아 보일 수 있다.
- LEFT JOIN시 좌측 테이블의 행 모두 조회
- LEFT JOIN사용 후 WHERE로 우측 테이블의 NULL행을 제거하면 INNER JOIN처럼 사용 가능 

## 학습 중 생긴 의문

### 의문: JOIN 시 ON에 조건을 사용하는 것과 WHERE에 조건을 사용하는 것은 어떻게 다른가?

#### 답변: `ON`은 두 테이블을 어떻게 연결할지 조건이고, WHERE은 JOIN이 끝난 뒤 최종 결과에서 어떤 행을 남길지 정하는 조건이다.
- INNER JOIN에서는 조건을 ON에 쓰는 것과 WHERE에 쓰는 것이 결과상 비슷해 보일 수 있다.
- OUTER JOIN에서는 차이가 생길 수 있다.
- 오른쪽 테이블 조건을 `WHERE`에 작성하면 INNER JOIN처럼 보일 수 있다.
```SQL
SELECT
    e.employee_id,
    e.employee_name,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Development';
```
- `ON`에 조건을 작성하면 LEFT JOIN의 기준인 employees 행은 유지된다.
```SQL
SELECT
    e.employee_id,
    e.employee_name,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
AND d.department_name = 'Development';
```
