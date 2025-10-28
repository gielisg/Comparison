drop table if exists "informix".ord_dtl ;
create table "informix".ord_dtl 
  (
    ord_id integer not null ,
    ord_line_num smallint not null ,
    prod_code char(20),
    qty smallint not null ,
    bck_ord_qty smallint not null ,
    unit_price decimal(6,2) not null ,
    discount decimal(6,2) not null ,
    unit_tax_amt decimal(6,2) not null ,
    ord_line_stat char(1) not null ,
    par_line_num smallint,
    qty_shppd smallint,
    qty_rtnd smallint,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

