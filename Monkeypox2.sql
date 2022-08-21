create database Monkeypox
exec sp_databases

select count(*) from Monkeypox

select * from Monkeypox

alter table Monkeypox drop column Location, Age, Date_onset, Hospitalised_Y_N_NA, Date_hospitalisation, Isolated_Y_N_NA

alter table Monkeypox drop column Date_isolation, Outcome, Contact_comment, Contact_ID, Contact_location, Travel_history_Y_N_NA

alter table Monkeypox drop column Travel_history_entry, Travel_history_start, Travel_history_location, Travel_history_country

alter table Monkeypox drop column Genomics_Metadata, Confirmation_method, Source, Source_II, Source_III 

select * from Monkeypox 
where Status <> 'confirmed'

delete from Monkeypox 
where Status <> 'confirmed'

select 
	count(*) as Cases, Gender 
from Monkeypox
where Gender is not null
group by Gender

select
   count(*) as Cases, Country
   from Monkeypox
group by country
order by count(*) desc

select
   count(*) as Cases, Date_confirmation
   from Monkeypox
   where Date_confirmation is not null
group by Date_confirmation
order by Date_confirmation asc

select
   count(*) as Cases_in_England, Date_confirmation
   from Monkeypox
   where Country = 'England'
group by Date_confirmation
order by Date_confirmation asc

select
   count(*) as Cases_in_Spain, Date_confirmation
   from Monkeypox
   where Country = 'Spain'
group by Date_confirmation
order by Date_confirmation asc


select
   count(*) as Cases_in_Portugal, Date_confirmation
   from Monkeypox
   where Country = 'Portugal'
group by Date_confirmation
order by Date_confirmation asc


