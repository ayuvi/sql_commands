/*
1. full text index
2. membuat full text index 
3. coba fullltext index */

create table article(
	id int primary key auto_increment,
	title varchar(100),
	post text,
	fulltext (post)
);

-- menambahkan dengan alter
alter table article add fulltext post_article_idx (post);

-- menambahkan dengan create
create fulltext index post_article_idx on article(post);

show index from article;
drop index post_article_idx on article;

insert into article(title,post) values ('selayang layang 2','siapa yang mau menjadi apa yang ada mendalah bagaimana gakjkag aigia');
select * from article where match(post) against('adalah');
