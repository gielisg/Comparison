drop table if exists "informix".ord_credit_enq ;
create table "informix".ord_credit_enq 
  (
    ord_id integer not null ,
    enq_name char(71),
    enq_firstname char(15),
    enq_midname char(1),
    enq_sex char(18),
    enq_dob date,
    enq_drvr_lic char(9),
    enq_unit_no char(5),
    enq_street_no char(8),
    enq_street char(25),
    enq_street_type char(3) 
        default 'ST' not null ,
    enq_locality char(22),
    enq_state char(3),
    enq_postcode char(4),
    prv_unit_no char(5),
    prv_street_no char(8),
    prv_street char(25),
    prv_street_type char(3),
    prv_locality char(22),
    prv_state char(3),
    prv_postcode char(4),
    enq_areacode char(3),
    enq_phone_no char(15),
    enq_company_type char(3),
    enq_acn char(9),
    enq_abn char(11)
  );

