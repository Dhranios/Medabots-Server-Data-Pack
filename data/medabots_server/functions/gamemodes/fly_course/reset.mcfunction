clear @s minecraft:elytra{medabots_server:{id:"medabots_server:fly_course_wings"}}
clear @s minecraft:firework_rocket{medabots_server:{id:"medabots_server:fly_course_speed"}}
scoreboard players reset @s StageVersion
scoreboard players reset @s Stage
scoreboard players reset @s State
scoreboard players reset @s FlyCourseLapTime
scoreboard players reset @s PayedFee
scoreboard players reset @s StageIndex
scoreboard players reset @s LastPlaceTime
scoreboard players set @s Time 0
scoreboard players set @s MusicType 1
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players reset @s Gamemode
tag @s remove lap_race
tag @s remove force_fallout_on