select * from best_selling_video_games;

alter table best_selling_video_games
rename column `Platform(s)` to Platform;

alter table best_selling_video_games
rename column `Initial release date` to Release_Date;

alter table best_selling_video_games
rename column `Developer(s)[a]` to Developer;

alter table best_selling_video_games
rename column `Publisher(s)[a]` to Publisher;

select * from best_selling_video_games
where Sales="" or Series="" or Platform="" or Release_Date="" or Developer="" or Publisher="";

delete from best_selling_video_games where Sales = "" ; 
