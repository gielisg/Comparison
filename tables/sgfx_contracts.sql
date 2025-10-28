drop table if exists "informix".sgfx_contracts ;
create table "informix".sgfx_contracts 
  (
    contract_excpt_id serial not null ,
    status_id integer 
        default 0 not null ,
    id varchar(80,20),
    name varchar(80,20),
    order_id varchar(80,10),
    contract_id varchar(80,10),
    group_id varchar(80,20),
    user_id varchar(80,20),
    pricing_model char(5),
    starttime datetime year to second,
    communicat_endtime datetime year to second,
    timezone varchar(30),
    subscription_plan varchar(10),
    max_uplink_frames integer,
    max_dwlink_frames integer,
    token_duration integer,
    max_tokens integer,
    activation_endtime datetime year to second,
    auto_renewal char(1) 
        default 'N' not null ,
    renewal_duration integer,
    createdby varchar(30),
    last_edited_time datetime year to second,
    last_edited_by varchar(30),
    bidir char(1) 
        default 'N' not null ,
    options_id varchar(20),
    options_duration varchar(10),
    options_nb varchar(10),
    level integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (auto_renewal IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (bidir IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check ((status_id >= 0 ) AND (status_id <= 5 ) ) constraint "informix".zero_five27
  );

