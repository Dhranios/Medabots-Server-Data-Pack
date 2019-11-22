execute if entity @e[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=45,Medabot=0..,Battle=1..}]
execute unless entity @e[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1356 39 -77 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[90.0f,0.0f]}
execute as @e[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98,type=!minecraft:player] unless entity @s[scores={Stage=45}] run scoreboard players set @s Stage 45
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_10
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=true}] only medabots_server:main/hero_of_magvel
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=false}] only medabots_server:stages/wave_1/lagdou_ruins_10
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1361 51 -80 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots