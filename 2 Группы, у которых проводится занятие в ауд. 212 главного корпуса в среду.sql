select groupe.name as 'Группа' from shedule

inner join groupe on shedule.idGroupe = Groupe.idGroupe
inner join day on shedule.idDay = Day.idDay
inner join auditorium on shedule.idAuditorium = auditorium.idAuditorium

where auditorium.name='212' and day.name='Среда' and auditorium.faculty='КТиИБ'