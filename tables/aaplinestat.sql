drop table if exists "informix".aaplinestat ;
create table "informix".aaplinestat 
  (
    aaplinestatid serial not null ,
    cpn char(30) not null ,
    status_dt datetime year to second not null ,
    cust_nbr char(15),
    effective_date date,
    terminate_date date,
    cpn_type_desc char(30),
    pr_carrier varchar(30),
    carrier_desc varchar(30),
    pr_status_desc char(30),
    carrier_response char(30),
    switch_desc char(30),
    application_date date,
    pr_date_sent date,
    pr_date_rcvd date,
    last_toll_date date,
    rate_type char(6),
    cli_class char(6),
    file_name_ref varchar(30),
    override_code char(4),
    bar_status varchar(10),
    eb_status varchar(10),
    eb_response varchar(30),
    eb_date_sent date,
    eb_date_rcvd date,
    eb_toll_date date,
    eb_effect_date date,
    eb_term_date date
  );

