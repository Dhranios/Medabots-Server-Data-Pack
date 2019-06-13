execute store result score @s BattlingMedabots if entity @e[scores={Stage=47,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,tag=mr_referee] run summon minecraft:armor_stand -1948 45 -610 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}
execute as @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=47}] run scoreboard players set @s Stage 47
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/woods_battle/action_floors_1
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..},tag=!story_battle] -1949 51 -617 14
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..},tag=!story_battle] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..},tag=!story_battle] Music 299
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1949 51 -617 -180 0
tag @s[scores={BattlingMedabots=1,Battle=1..}] remove story_battle
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots