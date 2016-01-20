-- tenant id --

ALTER TABLE ACT_RE_DEPLOYMENT 
  ADD TENANT_ID_ varchar(255);
  
create index ACT_IDX_DEPLOYMENT_TENANT_ID on ACT_RE_DEPLOYMENT(TENANT_ID_);

ALTER TABLE ACT_RE_PROCDEF 
  ADD TENANT_ID_ varchar(255);

ALTER TABLE ACT_RE_PROCDEF
       DROP CONSTRAINT ACT_UNIQ_PROCDEF;
  
alter table ACT_RE_PROCDEF
    add constraint ACT_UNIQ_PROCDEF
    unique (KEY_,VERSION_,TENANT_ID_);
    
create index ACT_IDX_PROCDEF_TENANT_ID ON ACT_RE_PROCDEF(TENANT_ID_);

ALTER TABLE ACT_RU_EXECUTION 
  ADD TENANT_ID_ varchar(255);

create index ACT_IDX_EXEC_TENANT_ID on ACT_RU_EXECUTION(TENANT_ID_);
