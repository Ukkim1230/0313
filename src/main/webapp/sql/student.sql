use ezen;
create table STUDENT_INFO(
SI_NUM INT not null auto_increment primary key,
SI_NAME VARCHAR(30) not null,
SI_ADDRESS VARCHAR(200)
);
select SI_NUM,SI_NAME,SI_ADDRESS from STUDENT_INFO;

create table COURSE_INFO(
CI_NUM INT not null auto_increment primary key,
CI_NAME VARCHAR(30) not null,
CI_MAX tinyint default 10
);

create table MAP_SI_CI(
SI_NUM INT not null,
CI_NUM INT not null,
constraint
foreign key (SI_NUM) references STUDENT_INFO(SI_NUM),
constraint
foreign key (CI_NUM) references COURSE_INFO(CI_NUM)
);
insert into STUDENT_INFO(SI_NAME, SI_ADDRESS)
VALUES('유관순','서울 종로'),
('임꺽정','경기 하남'),
('김철수','경기 광주');
insert into COURSE_INFO(CI_NAME)
VALUES('자바기초'),('JSP'),('SPRING');
insert into MAP_SI_CI
VALUES(1,2),(1,3),(2,1),(3,1);
select * from Student_info;

select SI_NUM,COUNT(*) from MAP_SI_CI
group by SI_NUM;

select SI.* , IFNULL(MSC.CNT,0) as cnt
from Student_info SI
left outer join (select SI_NUM,COUNT(*) as CNT from MAP_SI_CI
group by SI_NUM) MSC
on SI.SI_NUM = MSC.SI_NUM

select CI_NUM,COUNT(*) from MAP_SI_CI
group by CI_NUM;


select ci.*, IFNULL(MSC.CNT,0) as cnt
from COURSE_INFO CI
left outer join (select CI_NUM,COUNT(*)as CNT from MAP_SI_CI
group by CI_NUM) MSC
on CI.CI_NUM = MSC.CI_NUM