# Part of team?
execute if entity @e[scores={AntiFly=1..,Time=20..60},tag=ally_medabot] run tag @s[tag=!life_time] add ally_team
execute if entity @e[scores={AntiFly=1..,Time=20..60},tag=enemy_medabot] run tag @s[tag=!life_time] add enemy_team

# Leave a 2 tick trail
tag @s add life_time
execute if entity @s[scores={LifeTime=2..},tag=!ally_team,tag=!enemy_team] run summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"medabots_server:move.anti_fly"}',Invisible:1b,NoGravity:1b,Marker:1b,Small:1b,Invulnerable:1b,Tags:["anti_fly","life_time"]}
execute if entity @s[scores={LifeTime=2..},tag=ally_team] run summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"medabots_server:move.anti_fly"}',Invisible:1b,NoGravity:1b,Marker:1b,Small:1b,Invulnerable:1b,Tags:["anti_fly","life_time","ally_team"]}
execute if entity @s[scores={LifeTime=2..},tag=enemy_team] run summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"medabots_server:move.anti_fly"}',Invisible:1b,NoGravity:1b,Marker:1b,Small:1b,Invulnerable:1b,Tags:["anti_fly","life_time","enemy_team"]}

# destroy fly legs if close to a player
execute if entity @s[tag=in_ground,tag=!ally_team,tag=!enemy_team] run scoreboard players set @e[distance=..3,scores={Fly=1..},tag=hostile] LegsArmor 0
execute if entity @s[tag=in_ground,tag=ally_team] run scoreboard players set @a[distance=..3,scores={Fly=1..},tag=hostile,tag=!ally_medabot] LegsArmor 0
execute if entity @s[tag=in_ground,tag=enemy_team] run scoreboard players set @a[distance=..3,scores={Fly=1..},tag=hostile,tag=!enemy_medabot] LegsArmor 0