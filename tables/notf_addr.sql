drop table if exists "informix".notf_addr ;
create table "informix".notf_addr 
  (
    notf_addr_id serial not null ,
    narrative varchar(254,1) not null ,
    type char(15) not null ,
    method char(5) not null ,
    notf_address varchar(254,1),
    msg_template_id integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (method IN ('Email' ,'SMS' )) constraint "informix".notf_addr_method3,
    
    check (type IN ('System' ,'Customer' ,'ServiceProvider' ,'SalesPerson' ,'ChannelPartner' )) 
              constraint "informix".notf_addr_type2
  );

