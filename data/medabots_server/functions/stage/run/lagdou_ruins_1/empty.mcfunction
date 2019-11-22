execute if entity @e[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=36,Medabot=0..,Battle=1..}]
execute unless entity @e[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1298 46 -73 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-180.0f,0.0f]}
execute as @e[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,type=!minecraft:player] unless entity @s[scores={Stage=36}] run scoreboard players set @s Stage 36
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_1
advancement grant @a[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_1_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_1_second_go
advancement grant @a[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_1_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_1_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1298 51 -87 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots