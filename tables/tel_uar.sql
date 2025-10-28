drop table if exists "informix".tel_uar ;
create table "informix".tel_uar 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    spcode char(3),
    fileinstid char(8),
    recseq integer,
    ebillfileid char(8),
    prodbillid char(8),
    billelemcd char(8),
    invarrangid char(10),
    srvarrangid char(10),
    fullnatnum char(29),
    a_party char(25),
    b_party char(25),
    origdate date,
    origtime datetime hour to second,
    toarea char(12),
    unitofmeasure char(5),
    quantity decimal(12,2),
    callduration interval hour(5) to second,
    calltypecode char(3),
    rectype char(1),
    price decimal(15,7),
    usgadjreas char(3),
    closeusrgrpid char(5),
    revchargeind char(1),
    call_desc_1900 varchar(30,1)
  );

