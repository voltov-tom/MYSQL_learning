use vk;

-- 1. Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
select
	messages.from_user_id,
	(select concat(firstname, ' ', lastname) from users where id = messages.from_user_id) as friend,
	count(*) as cnt
from messages
	where messages.to_user_id = 3
		and
	messages.from_user_id IN (
		select initiator_user_id FROM friend_requests WHERE (target_user_id = 3) AND status='approved'
			union
		select target_user_id FROM friend_requests WHERE (initiator_user_id = 3) AND status='approved'
		)
	group by messages.from_user_id
	order by cnt desc
	limit 1;

 -- 2. Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.
select 
	COUNT(*) as 'likes'
from likes 
	where media_id in (
		select 
			id 
		from media 
			where user_id in (
			select 
				user_id 
			from profiles
			where TIMESTAMPDIFF(YEAR, birthday, NOW()) < 10
			)
	);
 	
-- 3. Определить кто больше поставил лайков (всего): мужчины или женщины.
select 
	gender, count(*)
from (
	select 
		user_id as user,
			(
				select
					gender
				from vk.profiles
					where user_id = user
			) as gender
	from likes
	) as dummy
	group by gender;