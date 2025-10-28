drop table if exists "informix".commexclcalltype ;
create table "informix".commexclcalltype 
  (
    exclcalltypeid serial not null ,
    tar_class_code smallint not null ,
    exclperc decimal(5,2) 
        default 100.00 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

