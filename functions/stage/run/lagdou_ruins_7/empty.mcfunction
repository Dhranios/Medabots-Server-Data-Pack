execute if entity @e[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=42,Medabot=0..,Battle=1..}]
execute unless entity @e[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1280 44 -162 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[-180.0f,0.0f]}
execute as @e[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77,type=!minecraft:player] unless entity @s[scores={Stage=42}] run scoreboard players set @s Stage 42
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_7/empty
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_7_second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_7_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1280 51 -171 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots