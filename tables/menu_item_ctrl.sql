drop table if exists "informix".menu_item_ctrl ;
create table "informix".menu_item_ctrl 
  (
    mnuitm_id integer not null ,
    seq_num integer not null ,
    acct_or_cont_flg char(1),
    cont_status char(3),
    type char(1),
    sub_type_code char(2),
    action_flg char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((acct_or_cont_flg IS NULL ) OR (acct_or_cont_flg IN ('A' ,'C' )) ) constraint 
              "informix".check
    
    check (action_flg IN ('S' ,'D' ,'H' )) constraint "informix".check
  );

