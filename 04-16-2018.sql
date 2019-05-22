select distinct a.LIST_NAME as 'List Name', a.LIST_SERV_NAME as 'List Serv Name', 
a.LIST_USE_OTHER_DESCRIPTION as'category', 
e.DISPLAYNAME  as 'Contact Name',
e.MAIL as  'Contact email'  , e.TELEPHONENUMBER as 
'Contact phone number', c.LDAP_UID, e.TITLE, e.STREET,
 e.O as 'Plan-ID', f.BCBSLEGALNAME, f.BCBSPOCITY, f.BCBSPOSTATE,
 f.BCBSPOCODE, e.BCBSFLOORANDCUBICLE, e.MAIL, e.FACSIMILETELEPHONENUMBER
from [dbo].[LIST_TBL] a, [dbo].[LIST_CONTACT_TBL] b,
[dbo].[CONTACTS_TBL] c, [dbo].[CONTACTS_TBL] d,
ldaplms.dbo.USER_TBL e,  LDAPLMS.dbo.ORG_TBL f
where a.LIST_UID=b.LIST_UID
and b.CONTACT_UID= c.CONTACT_UID
and a.LIST_OWNER_ID=d.CONTACT_UID
and c.LDAP_UID=e.UID
 and e.o=f.o and 
a.EXPIRE_DATE>getdate()
and e.O!='bcbsa-chg'
and (a.LIST_NAME like 'WRG%'
or a.LIST_NAME like 'SWRG%')
order by a.LIST_NAME



select * from  ldaplms.dbo.user_tbl where mail=
'BCBSA_Governance@bcbsa.com'

select * from list.[dbo].[CONTACTS_HISTORY_TBL]

where [CONTACT_EMAIL]='BCBSA_Governance@bcbsa.com'

select * from list.[dbo].[CONTACTS_HISTORY_TBL]
where [CONTACT_EMAIL]='BCBSA-PCS@bcbsa.com'




select * from  ldaplms.dbo.user_tbl where mail=
'BCBSA-PCS@bcbsa.com'


select * from list.dbo.CONTACTS_TBL where LDAP_UID='BCBSA_Governance'

select * from list.dbo.CONTACTS_TBL where [CONTACT_EMAIL]='BCBSA-PCS@bcbsa.com'

select * from list.dbo.CONTACTS_TBL where LDAP_UID='BCBSA-PCS'

select * from list.[dbo].[LIST_ROLES_TBL]

BCBSA_Governance@bcbsa.com

'42210'

'WRG Enterprise Architecture Advisory Group '

select * from list.dbo.LIST_TBL where LIST_NAME=
'WRG Enterprise Architecture Advisory Group'

select * from list.dbo.LIST_CONTACT_TBL where 
list_uid='1709'
order by CONTACT_UID

select * from list.dbo.list_tbl where list_uid='1709'

select * from list.dbo.LIST_TBL where LIST_NAME=
'bob test list edited 10-11-2017'


select a.list_uid  list.dbo.l from list.dbo.CONTACTS_TBL b
where b.LDAP_UID='BCBSA_Governance' and a.
a.list_uid='1847'
order by CONTACT_UID


select * from list.[dbo].[CONTACTS_TBL]
where ldap_uid in ('lmsmidware','CR07206')

select * from list.dbo.list_tbl where LIST_OWNER_ID in 
('31832', '37074')

select * from list.dbo.list_tbl where LIST_OWNER_ID in 
('62802')


select * from list.dbo.LIST_CONTACT_TBL where 
list_uid='1847'
order by CONTACT_UID

'62802'mailbox,BCBSA-PCS@bcbsa.com 

select * from list.dbo.list_tbl
where LIST_NAME like 'Bob%'

'34332'

select * from list.dbo.CONTACTS_TBL where CONTACT_EMAIL=
'BCBSA_Governance@bcbsa.com'

 select * from list.[dbo].[LIST_TBL]
 where [LIST_NAME]='WRG National Account Executives'


   select * from list.[dbo].[LIST_TBL]
 where --list_name='bob test list edited 10-11-2017'
 LIST_UID=1847
  select * from list.[dbo].[LIST_HISTORY_TBL]
 where --list_name='bob test list edited 10-11-2017'
 LIST_UID=1847
 order by HISTORY_DATE

   select * from list.[dbo].[LIST_HISTORY_TBL]
 where list_name='WRG Senior Markets Workgroup'

  select * from list.[dbo].[LIST_TBL]
 where [LIST_NAME]='WRG Chief Information Security Officer Workgroup'

  select * from list.[dbo].[LIST_TBL]
 where LIST_SERV_NAME= 'boblist'


 select * from list.[dbo].[LIST_HEADER_HISTORY_TBL]
 where [LIST_UID]=1510



 update list.dbo.list_tbl d set d.BCBSA_CONTACT=

 select a.HISTORY_DATE, a.LIST_UID, a.LIST_NAME, a.BCBSA_CONTACT , b.BCBSA_CONTACT
 from   list.[dbo].[LIST_HISTORY_TBL] a, 
 list.dbo.list_tbl b
 where a.[LIST_NAME]=b.LIST_NAME and (b.BCBSA_CONTACT is null
 or b.BCBSA_CONTACT='')
 and (a.BCBSA_CONTACT is not null or a.BCBSA_CONTACT!='')
 and b.EXPIRE_DATE >=getdate()
 --
 --and a.HISTORY_DATE=( select  max(c.HISTORY_DATE) from list.[dbo].[LIST_HISTORY_TBL] c, list.dbo.list_tbl d
 --where
  --c.LIST_UID= d.list_uid)
 order by a.LIST_NAME, a.HISTORY_DATE

 
 --update list.dbo.list_tbl d set d.BCBSA_CONTACT=

 (select b.BCBSA_CONTACT
 from   list.[dbo].[LIST_HISTORY_TBL] a, 
 list.dbo.list_tbl b
 where a.[LIST_NAME]=b.LIST_NAME and (b.BCBSA_CONTACT is null
 or b.BCBSA_CONTACT='')
 and (a.BCBSA_CONTACT is not null or a.BCBSA_CONTACT!='')
 and b.EXPIRE_DATE >=getdate()
 )
 --
 --and a.HISTORY_DATE=( select  max(c.HISTORY_DATE) from list.[dbo].[LIST_HISTORY_TBL] c, list.dbo.list_tbl d
 --where
  --c.LIST_UID= d.list_uid)


 order by a.LIST_NAME, a.HISTORY_DATE



 select [HISTORY_DATE], [LIST_UID],[LIST_NAME], [BCBSA_CONTACT]
from (
       select m.*, row_number() over (partition 
	   by user order by [HISTORY_DATE] desc, [LIST_UID]) as rn
       from  list.[dbo].[LIST_HISTORY_TBL] m
     ) m2
where m2.rn = 1


SELECT Date, User, Status, Notes  
FROM Test_Most_Recent 
WHERE Date in ( SELECT MAX(Date) from Test_Most_Recent group by User)


 select a.HISTORY_DATE, a.LIST_UID, a.LIST_NAME, a.BCBSA_CONTACT , b.BCBSA_CONTACT
 from   list.[dbo].[LIST_HISTORY_TBL] a, 
 list.dbo.list_tbl b
 where a.[LIST_NAME]=b.LIST_NAME and (b.BCBSA_CONTACT is null
 or b.BCBSA_CONTACT='')
 and (a.BCBSA_CONTACT is not null or a.BCBSA_CONTACT!='')
 and b.EXPIRE_DATE >=getdate()
 and 
 a.HISTORY_DATE in 
 ( SELECT MAX([HISTORY_DATE]) from list.[dbo].[LIST_HISTORY_TBL] group by [LIST_UID])
 --
 --and a.HISTORY_DATE=( select  max(c.HISTORY_DATE) from list.[dbo].[LIST_HISTORY_TBL] c, list.dbo.list_tbl d
 --where
  --c.LIST_UID= d.list_uid)
   and 
 a.HISTORY_DATE in 
 ( SELECT MAX([HISTORY_DATE]) from list.[dbo].[LIST_HISTORY_TBL] group by [LIST_UID])

 order by a.LIST_NAME, a.HISTORY_DATE




 
  Select a.[HISTORY_DATE],a.[LIST_UID],a.[LIST_NAME],a.[BCBSA_CONTACT] ,
   b.BCBSA_CONTACT
    from list.[dbo].[LIST_HISTORY_TBL] a
    inner join 
    (
        Select max([HISTORY_DATE]) as LatestDate, [LIST_UID]
        from list.[dbo].[LIST_HISTORY_TBL]
        Group by [LIST_UID]
    ) SubMax 
    on   a.HISTORY_DATE = SubMax.LatestDate
    and a.[LIST_UID] = SubMax.LIST_UID
	--and a.LIST_NAME like 'WRG%'
	--and a.LIST_NAME='WRG Chief Information Security Officer Workgroup'
	INNER JOIN 
	list.dbo.list_tbl b
	on a.LIST_UID=b.LIST_UID
	where ( a.BCBSA_CONTACT is not null or a.BCBSA_CONTACT!='')
	and ( b.BCBSA_CONTACT is  null or b.BCBSA_CONTACT='')
	order by a.LIST_NAME, a.HISTORY_DATE


update list.dbo.list_tbl set list.dbo.list_tbl.BCBSA_CONTACT=i.BCBSA_CONTACT
  from( Select a.[BCBSA_CONTACT] , a.LIST_UID
  
    from list.[dbo].[LIST_HISTORY_TBL] a
    inner join 
    (
        Select max([HISTORY_DATE]) as LatestDate, [LIST_UID]
        from list.[dbo].[LIST_HISTORY_TBL]
        Group by [LIST_UID]
    ) SubMax 
    on   a.HISTORY_DATE = SubMax.LatestDate
    and a.[LIST_UID] = SubMax.LIST_UID
	--and a.LIST_NAME like 'WRG%'
	--and a.LIST_NAME='WRG Chief Information Security Officer Workgroup'
	INNER JOIN 
	list.dbo.list_tbl b
	on a.LIST_UID=b.LIST_UID
	where ( a.BCBSA_CONTACT is not null or a.BCBSA_CONTACT!='')
	and ( b.BCBSA_CONTACT is  null or b.BCBSA_CONTACT='')

	) i
where list.dbo.list_tbl.list_uid=i.LIST_UID


	order by a.LIST_NAME, a.HISTORY_DATE



	select count(list_uid) from list.dbo.list_tbl where LIST_NAME
	like 'WRG%'
	
select list_uid ,  LIST_NAME from list.dbo.list_tbl where LIST_NAME
	like 'WRG%'
	-- and  EXPIRE_DATE >=getdate()
	 and ( BCBSA_CONTACT is null or BCBSA_CONTACT='')



	 Select a.OFFICER , a.LIST_UID, b.OFFICER
    from list.[dbo].[LIST_HISTORY_TBL] a
    inner join 
    (
        Select max([HISTORY_DATE]) as LatestDate, [LIST_UID]
        from list.[dbo].[LIST_HISTORY_TBL]
        Group by [LIST_UID]
    ) SubMax 
    on   a.HISTORY_DATE = SubMax.LatestDate
    and a.[LIST_UID] = SubMax.LIST_UID
	--and a.LIST_NAME like 'WRG%'
	--and a.LIST_NAME='WRG Chief Information Security Officer Workgroup'
	INNER JOIN 
	list.dbo.list_tbl b
	on a.LIST_UID=b.LIST_UID
	where ( a.OFFICER is not null or a.OFFICER!='')
	and ( b.OFFICER is  null or b.OFFICER='')


	
	 Select a.DIVISION_OWNER, a.LIST_UID, b.DIVISION_OWNER
    from list.[dbo].[LIST_HISTORY_TBL] a
    inner join 
    (
        Select max([HISTORY_DATE]) as LatestDate, [LIST_UID]
        from list.[dbo].[LIST_HISTORY_TBL]
        Group by [LIST_UID]
    ) SubMax 
    on   a.HISTORY_DATE = SubMax.LatestDate
    and a.[LIST_UID] = SubMax.LIST_UID
	--and a.LIST_NAME like 'WRG%'
	--and a.LIST_NAME='WRG Chief Information Security Officer Workgroup'
	INNER JOIN 
	list.dbo.list_tbl b
	on a.LIST_UID=b.LIST_UID
	where ( a.DIVISION_OWNER is not null or a.DIVISION_OWNER!='')
	and ( b.DIVISION_OWNER is  null or b.DIVISION_OWNER='')



	select * from list.[dbo].[LIST_HISTORY_TBL] a
	where a.LIST_NAME=
	'WRG CareSourcing Workgroup'
	order by HISTORY_DATE desc

	select a.list_uid, a.list_name , a.OFFICER ,a.DIVISION_OWNER, b.OFFICER, b.DIVISION_OWNER
	 from list.dbo.LIST_TBL a , list.dbo.LIST_HISTORY_TBL b
	where a.OFFICER is null and a.list_name  like 'WRG%'
	and a.LIST_UID= b.LIST_UID
	and
	(CONVERT(VARCHAR(10), b.HISTORY_DATE , 103))='29/01/2018'


	--and b.HISTORY_DATE='01-29-2018'

	select  distinct a.BCBSSTATUS  from  ldaplms.dbo.USER_TBL a