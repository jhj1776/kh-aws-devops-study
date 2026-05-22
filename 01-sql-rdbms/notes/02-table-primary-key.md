# table 생성 및 데이터 삽입

## 핵심 정리

- `CREATE TABLE 테이블명()` 으로 테이블 생성
- `INSERT INTO 테이블명(컬럼1,2,...) VALUES (값1,2,...),(값1,2,...),(값1,2,...)` 으로 데이터 삽입
- PRIMARY KEY: 각 행을 구분하는 기본 키 설정
- BIGSERIAL: PostgreSQL에서 자동 증가 숫자 생성

## 실습 내용

- 테이블 생성
- 데이터 삽입

## 복습 메모

### BIGSERIAL PRIMARY KEY

```sql
employee_id BIGSERIAL PRIMARY KEY
```

- 기본키는 중복 불가
- 기본키는 NULL 불가
  
## 학습 중 생긴 의문

### 의문: BIGSERIAL은 그럼 무슨 타입인가?

#### 답변: 실제 저장 타입으로 보면 BIGINT이다.

- BIGINT 타입의 자동 증가 설정을 편하게 해주는 것이다.
- SMALLSERIAL → SMALLINT 기반 자동 증가
- SERIAL      → INTEGER 기반 자동 증가
- BIGSERIAL   → BIGINT 기반 자동 증가


