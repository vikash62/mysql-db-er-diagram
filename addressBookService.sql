create database addressBookService;
show databases;
use addressBookService;

create table addressBook (firstname varchar(20),lastname varchar(20),address varchar(20),
city varchar(20),state varchar(20),zip varchar(6),phone varchar(12),email varchar(20));
desc addressBook;

insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('vikash','pathak','Manewada','Nagpur',
'Maharashtra','440024','9561272972','Vikash@gmail.com' ),('Deepika','Ganorkar','Wadi','Nagpur','Maharashtra','440021','9422101502','deepikag@gmail.com')
,('Rohit','Sharma','Dattawadi','Nagpur','Maharashtra','440006','8626001501','rohit@gmail.com');
select *from addressBook;

update addressBook set phone = '9172322399' where firstname = 'Vikash';

delete from addressBook where firstname = 'Deepika';

select *from addressBook where city = 'Nagpur';

select count(*) from addressBook where state = 'Maharashtra';

select *from addressBook where state = 'Maharashtra' order by firstname;

alter table addressBook add column bookname varchar(20), add column booktype varchar(20);
update addressBook set bookname='Book1' where firstname = 'Vikash';
update addressBook set bookname='Book2' where firstname = 'Deepika';
update addressBook set bookname='Book3' where firstname = 'Rohit';
update addressBook set booktype='Family' where firstname = 'Vikash';
update addressBook set booktype='Friends' where firstname = 'Deepika';
update addressBook set booktype='Profession' where firstname = 'Rohit';


select booktype, count(*) from addressBook group by booktype;