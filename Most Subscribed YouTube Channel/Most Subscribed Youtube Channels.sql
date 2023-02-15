use project;

select * from most_subscribed_youtube_channel;

# COUNT NO OF RECORDS FOR BRANDED CHANNELS AND NON-BRANDED CHANNELS
select distinct `brand channel` as 'Brand Channel', count(*) as 'No of records'
from most_subscribed_youtube_channel
group by `brand channel`;

# MOST SUBSCRIBED CHANNEL
select * from most_subscribed_youtube_channel
limit 2;
select `Name`,`brand channel`, max(`Subscribers (millions)`) as Subscribers, `Primary language`,Category,Country
from most_subscribed_youtube_channel;

# COUNT WHICH CATEGORY HAS THE HIGHEST SUBSCRIBERS AND SHOW ALL DETAILS OF TOP 2 CATEGORIES 
select * from most_subscribed_youtube_channel;
select distinct Category, count(*) as 'Total Channels'
from most_subscribed_youtube_channel
group by Category
order by `Total Channels` desc ;
select * from most_subscribed_youtube_channel
where Category = 'Music';
select * from most_subscribed_youtube_channel
where Category = 'Entertainment';

# SHOW DETAILS FOR ALL LANGUAGE CHANNELS
select * from most_subscribed_youtube_channel;
select `Primary language`, count(*) as Total 
from most_subscribed_youtube_channel
group by `Primary language` 
order by Total desc;
select * from most_subscribed_youtube_channel
where `Primary language` like 'Hindi%' ;
select * from most_subscribed_youtube_channel
where `Primary language` like 'English%' ;

#COUNT THE CHANNELS FOR EACH COUNTRY
select Country, count(*) as 'Total Channels'
from most_subscribed_youtube_channel
group by Country
order by 'Total Channels' desc;
select * from most_subscribed_youtube_channel
where Country in ('Â India','Â United States');


# DISPLAY ALL THE CHANNELS WHOSE SUBSCRIBERS ARE > 100 AND FROM INDIA
select `Subscribers (millions)`,Country, `Name`,Category
from most_subscribed_youtube_channel
where Country ='Â India' and `Subscribers (millions)` > '100';

