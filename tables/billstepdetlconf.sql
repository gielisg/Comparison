drop table if exists "informix".billstepdetlconf ;
create table "informix".billstepdetlconf 
  (
    billstepconfcode char(4) not null ,
    cnt_heading1 varchar(255),
    val_heading1 varchar(255),
    cnt_heading2 varchar(255),
    val_heading2 varchar(255),
    cnt_heading3 varchar(255),
    val_heading3 varchar(255),
    cnt_heading4 varchar(255),
    val_heading4 varchar(255),
    cnt_heading5 varchar(255),
    val_heading5 varchar(255),
    cnt_heading6 varchar(255),
    val_heading6 varchar(255),
    cnt_heading7 varchar(255),
    val_heading7 varchar(255),
    display char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (display IN ('Y' ,'N' )) constraint "informix".yes_no
  );

