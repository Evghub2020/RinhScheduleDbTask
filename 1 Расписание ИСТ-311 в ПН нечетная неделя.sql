select sequence as 'Пара', timeStart as 'Начало', timeEnd as 'Конец', discipline.name as 'Название предмета',
teacher.name as 'Преподаватель', typeLesson.name as 'Формат занятия', auditorium.name as 'Номер аудитории', auditorium.faculty as 'Факультет' from shedule

inner join groupe on shedule.idGroupe = Groupe.idGroupe
inner join week on shedule.idWeek = Week.idWeek
inner join day on shedule.idDay = Day.idDay
inner join auditorium on shedule.idAuditorium = auditorium.idAuditorium
inner join typelesson on shedule.idTypeLesson = typelesson.idTypeLesson
inner join teacher on shedule.idTeacher = teacher.idTeacher
inner join discipline on shedule.idDiscipline = discipline.idDiscipline

where groupe.name='ИСТ-311' and week.name='Нечетная' and day.name='Понедельник'