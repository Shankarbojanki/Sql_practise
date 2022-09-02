
select  Users.user_name,comment_text,count(photo_id) as posts,count(like_id) as likes,count(comment_text) as comments
from Users
left join Photos on Photos.user_id=Users.id
left join likes on likes.user_id=Users.id
left join comments on comments.user_id=Users.id
where id=23
group by id;












select count(photo_id) as posts,count(like_id) as likes,count(comment_text)
from Users
left join Photos on Photos.user_id=Users.id
left join likes on likes.user_id=Users.id
left join comments on comments.user_id=Users.id
where id=5;

























select count(comment_text) from comments where comments.user_id=5;

select count(like_id) from likes where user_id=5;