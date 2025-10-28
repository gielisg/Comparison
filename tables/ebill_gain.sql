drop table if exists "informix".ebill_gain ;
create table "informix".ebill_gain 
  (
    ntwtransid integer not null ,
    recordtype char(2) not null ,
    sequence decimal(9,0),
    service_num char(17),
    ebill_prod_pkg char(3) not null ,
    date_complete date,
    class_code char(2) not null ,
    bus_res_ind char(1),
    service_name varchar(32),
    sub_addr_type char(6),
    sub_addr_num char(4),
    street_num char(5),
    street_num_suff char(3),
    street_name varchar(24),
    street_type char(8),
    street_suffix char(6),
    locality varchar(25),
    state char(3),
    postcode char(4),
    old_service_num char(17),
    provision_ref char(16),
    adnl_addr_info varchar(30)
  );

