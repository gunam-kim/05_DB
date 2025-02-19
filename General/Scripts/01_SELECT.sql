/*
SELECT
	: 지정된 테이블에서 원하는 데이터가 존재하는
		행,열을 선택해서 조회하는 SQL (구조적 질의 언어)
	: 선택된 데이터 == 조회 결과 묶음 == RESULT SET
	: 조회 결과는 0행 이상 (조건에 맞는 행이 없을 수 있다)	
*/

/*
SELECT 작성법 1

2) SELECT 컬럼명
1) FROM 테이블명;

	: 지정된 테이블의 모든 행에서 특정 열(컬럼)만 조회하기
*/

-- EMPLOYEE 테이블에서 모든 행의 이름(EMP_NAME),급여(SALARY) 컬럼 조회
SELECT EMP_NAME, SALARY
FROM EMPLOYEE;

-- EMPLOYEE 테이블에서 모든 행(모든 사원)의 사번,이름,급여,입사일 조회
SELECT EMP_ID, EMP_NAME, SALARY, HIRE_DATE
FROM EMPLOYEE;

-- EMPLOYEE 테이블에서 모든 행,모든 열(컬럼) 조회 (*(asterisk. 모든))
SELECT *
FROM EMPLOYEE;

-- DEPARTMENT 테이블에서 부서코드,부서명 조회
SELECT DEPT_ID, DEPT_TITLE
FROM DEPARTMENT;

-- EMPLOYEE 테이블에서 이름,이메일,전화번호 조회
SELECT EMP_NAME, EMAIL, PHONE
FROM EMPLOYEE;

---------------------------------------------------------------------

/* 컬럼 값 산술 연산 */
/*
컬럼 값
	: 행과 열이 교차되는 한 칸에 작성된 값
	: SELECT문 작성 시 SELECT절 컬럼명에 산술 연산을 작성하면
		조회 결과(RESULT SET)에서 모든 행에 산술 연산이 적용된
		컬럼 값이 조회된다
*/

-- EMPLOYEE 테이블에서 모든사원의 이름,급여,급여+100만원 조회
SELECT EMP_NAME, SALARY, SALARY + 1000000
FROM EMPLOYEE;

-- 모든 사원의 이름,급여,연봉(급여x12) 조회
SELECT EMP_NAME, SALARY, SALARY * 12
FROM EMPLOYEE;

---------------------------------------------------------------------

/* SYSDATE / CURRENT_DATE / SYSTIMESTAMP / CURRENT_TIMESTAMP */
/*
DB는 날짜/시간 관련 데이터를 다룰 수 있도록 하는 자료형을 제공한다

DATE 타입)
	: 년,월,일,요일,시,분,초 저장
TIMESTAMP 타입)
	: 년,월,일,요일,시,분,초,ms,지역시간 저장
DATE -> TIMESTAMP : ms단위+지역 정보를 추가로 얻어옴

SYS)
	: 시스템에 설정된 시간 기반
CURRENT)
	: 현재 접속한 세션(사용자)의 시간 기반
	
SYSDATE)
	: 현재 시스템 기반 시간 얻어오기
CURRENT_DATE)
	: 현재 사용자 계정 기반 시간 얻어오기


SYSTIMESTAMP)
	: 
CURRENT_TIMESTAMP)
	:
*/
SELECT SYSDATE, CURRENT_DATE 
FROM DUAL;
/* DUAL 테이블 (DUmmy tAbLe)
	: 가짜 테이블
	: 조회 하려는 데이터가 실제 테이블에 저장된 데이터가 아닌 경우
		사용하는 임시 테이블
*/

/* 날짜 데이터 연산하기 (+,-만 가능) */
	-- 날짜 + 정수 : 정수만큼 "일"수 증가 (ex 2/19 + 1 = 2/20)
	-- 날짜 - 정수 : 정수만큼 "일"수 감소 (ex 2/19 - 1 = 2/18)
-- 어제,오늘,내일,모레 조회
SELECT
	CURRENT_DATE - 1,
	CURRENT_DATE,
	CURRENT_DATE + 1,
	CURRENT_DATE + 2
FROM
	DUAL;

-- 시간 연산 응용 (알아두면 도움 많이됨)
SELECT
	CURRENT_DATE,
	CURRENT_DATE + 1/24, -- 1시간
	CURRENT_DATE + 1/24/60, -- 1분
	CURRENT_DATE + 1/24/60/60, -- 1초
	CURRENT_DATE + 1/24/60/60 * 30 -- 30초
FROM DUAL;

/*
SELECT 작성법 2

*/