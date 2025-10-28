drop table if exists "informix".ord_group ;
create table "informix".ord_group 
  (
    ord_group_num serial not null ,
    pro_code char(5) not null ,
    pkg_code integer not null ,
    contract_code char(4),
    contract_num char(10),
    contr_catagory char(1) not null ,
    
    check (contr_catagory IN ('N' ,'U' )) constraint "informix".contr_category15,
    
    check (contr_catagory IN ('N' ,'U' )) constraint "informix".contr_category22
  );

