create database website_visit_db;
use website_visit_db;
CREATE TABLE visitor_profile (
    dob DATE,
    visitID INTEGER,
    country CHAR(100),
    gender TEXT(10)
);
    show tables;
    
    create table visit_data( 
    visitID integer,
    visit_date date,
    form_submitted boolean
    );
    
    insert into visitor_profile (visitID,dob,country,gender)
    values 
    (111, "2001-03-22","India","Male"),
	(222,"2000-01-31","USA","Female");
    
    insert into visit_data (visitID,visit_date,form_submitted)
    values
    (111,"2022-07-22",true),
    (111,"2022-06-13",false),
	(222,"2022-04-13",true);
    
    select*from visitor_profile;
    select*from visit_data;
    
    select visitID,dob,country
    from visitor_profile 
    where gender="female";
    
    select visit_date
    from visit_data
    where form_submitted =1;
    
    SET SQL_SAFE_UPDATEs = 0; 
    
    update visit_data
    set form_submitted=1
    where visit_date = "2022-06-13";
    
    select visit_date
    from visit_data
    order by visit_date desc
    limit 1;
    
    select visit_date
    from visit_data
    order by visit_date asc
    limit 1;
    
    