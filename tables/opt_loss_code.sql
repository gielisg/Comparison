drop table if exists "informix".opt_loss_code ;
create table "informix".opt_loss_code 
  (
    loss_code char(2) not null ,
    loss_narr varchar(100) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

