drop table if exists "informix".cc_inv_deleg_hdr ;
create table "informix".cc_inv_deleg_hdr 
  (
    ccinv_delhdr_id serial not null ,
    cost_centreid integer not null ,
    bill_period integer not null ,
    status_id integer,
    src_fin_ref integer not null ,
    del_inv_fin_ref integer,
    src_crn_fin_ref integer,
    fin_total decimal(10,2),
    tax_amount decimal(10,2),
    fin_total_rnd decimal(12,6),
    tax_amount_rnd decimal(12,6),
    comments text,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

