drop table if exists "informix".kore_cdr ;
create table "informix".kore_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    import_dt varchar(30),
    subscri_num varchar(30),
    imsi_min varchar(20),
    duration varchar(18),
    answer_dt varchar(30),
    end_dt varchar(30),
    record_type varchar(38),
    tot_vol varchar(15),
    tot_vol_up varchar(15),
    tot_vol_down varchar(15),
    origin_txt varchar(20),
    destin_txt varchar(20),
    sender_txt varchar(10),
    sender_type varchar(10),
    called_num varchar(30),
    organi_nm varchar(30),
    longdis_fl char(1),
    longdis_type varchar(30),
    calling_cty varchar(60),
    nala_calling varchar(40),
    nalc_calling varchar(30),
    calling_num varchar(30),
    called_cty varchar(60),
    nala_called varchar(40),
    nalc_called varchar(60),
    tollfree_fl char(1),
    gmt_offset varchar(6),
    nala_roamcf varchar(40),
    nalc_roamcf varchar(30),
    roamcf_cty varchar(60),
    roamcf_npa varchar(3),
    roamcf_nxx varchar(3),
    sms_ind varchar(5),
    
    check (longdis_fl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (tollfree_fl IN ('Y' ,'N' )) constraint "informix".yes_no
  );

