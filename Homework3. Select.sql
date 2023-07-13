-- Задание 2

select track_name, duration
from tracks
where duration = (select max(duration)
				  from tracks)

select track_name
from tracks
where duration >= 3.5*60

select collection_name 
from collections
where year_release between 2018 and 2020

select executor_name
from executors
where executor_name not like '% %'

select track_name
from tracks
where lower(track_name) like 'мой%' 
   or lower(track_name) like  'my%' 
				  
-- Задание 3
				  
select g.genre_name, count(*)
from executorsgenres e 
left join genres g on g.genre_id = e.genre_id 
group by g.genre_name

select count(*)
from tracks t 
left join albums a on a.album_id = t.album_id 
where a.year_release between 2019 and 2020

select a.album_name, avg(t.duration)
from tracks t 
left join albums a on a.album_id = t.album_id 
group by a.album_name

select e2.executor_name 
from executorsalbums e 
left join executors e2 on e2.executor_id = e.executor_id
left join albums a on a.album_id = e.album_id 
where a.year_release != 2020

select c.collection_name 
from trackscollections t
left join collections c on c.collection_id = t.collection_id 
left join tracks t2 on t2.track_id = t.track_id
left join executorsalbums e on e.album_id = t2.album_id 
left join executors e2 on e2.executor_id = e.executor_id 
where e2.executor_name = 'Испольнитель 3'
group by c.collection_name 
