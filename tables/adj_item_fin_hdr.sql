drop table if exists "informix".adj_item_fin_hdr ;
create table "informix".adj_item_fin_hdr 
  (
    adj_item_ref integer not null ,
    fin_ref integer not null ,
    item_total decimal(10,2) 
        default 0.00 not null ,
    item_tax_amount decimal(10,2) 
        default 0.00 not null ,
    item_total_rnd decimal(12,6) 
        default 0.000000 not null ,
    item_amount_rnd decimal(12,6) 
        default 0.000000 not null 
  );

