drop table if exists "informix".veda_enquiries ;
create table "informix".veda_enquiries 
  (
    request_id integer not null ,
    request_type char(18),
    ord_num char(10),
    veda_filenumber varchar(32),
    enq_name varchar(71),
    enq_firstname varchar(15),
    enq_midname varchar(15),
    enq_sex char(1),
    enq_dob char(10),
    enq_drvr_lic char(9),
    enq_propertyname varchar(64),
    enq_unit_no char(5),
    enq_street_no char(8),
    enq_street varchar(25),
    enq_street_type char(3),
    enq_locality varchar(22),
    enq_state char(3),
    enq_postcode char(4),
    enq_country_code char(2),
    prv_propertyname varchar(64),
    prv_unit_no char(5),
    prv_street_no char(8),
    prv_street varchar(25),
    prv_street_type char(3),
    prv_locality varchar(22),
    prv_state char(3),
    prv_postcode char(4),
    enq_areacode char(3),
    prv_country_code char(2),
    enq_phone_no char(15),
    enq_company_type char(3),
    enq_acn varchar(9),
    enq_abn varchar(11),
    ewp_match char(1),
    vericheck_match char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

