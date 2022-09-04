select * from dbo.[Superstore Example]




with #TEL as (
SELECT * FROM(SELECT *, ROW_NUMBER()
OVER (PARTITION BY Telephone ORDER BY individualid)
AS cnt FROM [XXX]) [XXX] WHERE (cnt = 1 and left(Telephone,2)<>'07') or Telephone = ''
) 
SELECT * into [XXX_U] FROM(SELECT *, ROW_NUMBER()
OVER (PARTITION BY [Mobile Number] ORDER BY individualid)
AS cnt2 FROM #TEL) #TEL WHERE (cnt2 = 1 and left ([Mobile Number],2) ='07') or [Mobile Number] = ''
go--
alter table [XXX_U]  drop column cnt, cnt2





