clear @s minecraft:elytra{medabots_server:{id:"medabots_server:fly_course_wings"}}
clear @s minecraft:firework_rocket{medabots_server:{id:"medabots_server:fly_course_speed"}}
scoreboard players reset @s FlyTime
scoreboard players reset @s FlyCourseLapTime
scoreboard players set @s Time 0
scoreboard players set @s MusicType 1
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players reset @s Gamemode
scoreboard players reset @s FlyCourse