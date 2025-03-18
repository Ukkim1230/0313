use ezen;
create table CPU_INFO(
CI_NUM INT not null auto_increment primary key,
CI_NAME VARCHAR(200) not null,
CI_PRICE INT default 0,
CI_DESC VARCHAR(4000)
);

insert into CPU_INFO(CI_NAME, CI_PRICE)
values('I5-1세대',100000),
('I7-2세대',120000),
('I3-3세대',70000),
('R3-3세대',100000),
('R7-5세대',300000);

select CI_NUM, CI_NAME, CI_PRICE, CI_DESC from CPU_INFO;

use ezen;
create table desktop_info(
DI_NUM INT not null auto_increment primary key,
DI_NAME VARCHAR(200) not null,
CI_NUM INT not null,
DI_RAM VARCHAR(10) not null,
DI_SSD VARCHAR(10) not null,
DI_DESC VARCHAR(4000)
);
insert into DESKTOP_INFO(DI_NAME, CI_NUM, DI_RAM, DI_SSD, DI_DESC)
values('Ryzen 9600x',1,'32GB','솔리다임1tb','good');

alter table DESKTOP_INFO
add constraint FK_DI_CI_NUM
foreign key (CI_NUM) references CPU_INFO(CI_NUM);
desc desktop_info;
