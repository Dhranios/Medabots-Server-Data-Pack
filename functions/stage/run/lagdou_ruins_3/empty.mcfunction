execute store result score @s BattlingMedabots if entity @e[scores={Stage=38,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-1256,y=0,z=-58,dx=59,dy=50,dz=83,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1238 46 -9 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-90.0f,0.0f]}
execute as @e[x=-1256,y=0,z=-58,dx=59,dy=48,dz=83,type=!minecraft:player] unless entity @s[scores={Stage=38}] run scoreboard players set @s Stage 38
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_3/empty
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_3_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_3_second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_3_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_3_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1224 51 -19 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots