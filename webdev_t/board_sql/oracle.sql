
/* Drop Tables */

DROP TABLE t_board CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE t_board_no_seq;




/* Create Sequences */

CREATE SEQUENCE t_board_no_seq;



/* Create Tables */

CREATE TABLE t_board
(
	no number NOT NULL,
	title varchar2(100) NOT NULL,
	name varchar2(20) NOT NULL,
	passwd varchar2(128) NOT NULL,
	content clob NOT NULL,
	regdate date DEFAULT sysdate NOT NULL,
	readcount number(6) DEFAULT 0 NOT NULL,
	PRIMARY KEY (no)
);
select * from t_board;

select no, title, name, regdate, readcount
from   t_board
order  by no desc;

update t_board set
       name   = 'aaa'
      ,title  = 'bbb'
      ,content= 'ccc'
where  no = 10
and    passwd = 'dddd';

delete t_board
where  no = 10
and    passwd = 'pppp';

