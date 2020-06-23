
/* Drop Tables */

DROP TABLE t_emp CASCADE CONSTRAINTS;
DROP TABLE t_dept CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE sq_dept;
DROP SEQUENCE sq_emp;




/* Create Sequences */

CREATE SEQUENCE sq_dept INCREMENT BY 10 START WITH 10;
CREATE SEQUENCE sq_emp;



/* Create Tables */

CREATE TABLE t_dept
(
	deptno number NOT NULL,
	dname varchar2(20) NOT NULL,
	PRIMARY KEY (deptno)
);


CREATE TABLE t_emp
(
	empno number NOT NULL,
	ename varchar2(20) NOT NULL,
	sal number DEFAULT 0 NOT NULL,
	deptno number NOT NULL,
	PRIMARY KEY (empno)
);



/* Create Foreign Keys */

ALTER TABLE t_emp
	ADD FOREIGN KEY (deptno)
	REFERENCES t_dept (deptno)
;

select * from t_dept;
select * from t_emp;

insert into t_dept(deptno, dname)
values(sq_dept.nextval, '운영부');
insert into t_dept(deptno, dname)
values(sq_dept.nextval, '영업부');
insert into t_dept(deptno, dname)
values(sq_dept.nextval, '개발부');
select * from t_dept;

insert into t_emp(empno, ename, sal, deptno)
values(sq_emp.nextval, '신해철', 7000000, 10);
insert into t_emp(empno, ename, sal, deptno)
values(sq_emp.nextval, '유재하', 8000000, 20);
insert into t_emp(empno, ename, sal, deptno)
values(sq_emp.nextval, '서태지', 6000000, 30);
insert into t_emp(empno, ename, sal, deptno)
values(sq_emp.nextval, '박진영', 5000000, 20);
select * from t_emp;
commit

-- ansi join
t_emp e, t_dept d
e.ename, e.sal, d.dname
select e.ename, e.sal, d.dname
from   t_emp e inner join t_dept d
on     e.deptno = d.deptno;









