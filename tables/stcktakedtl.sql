drop table if exists "informix".stcktakedtl ;
create table "informix".stcktakedtl 
  (
    stcktakedtlid serial not null ,
    stcktakeid integer not null ,
    stcktaledtl_status smallint not null ,
    stcklocncode char(10) not null ,
    stck_id integer,
    stcktransid integer,
    expected_qty integer,
    counted_qty integer,
    note lvarchar(1000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (stcktaledtl_status IN (1 ,2 ,3 ,4 ,5 ,10 )) constraint "informix".chk_stcktake2
  );

