execute if entity @e[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=37},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=37},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=37},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53,type=!minecraft:player] unless entity @s[scores={Stage=37}] run scoreboard players set @s Stage 37
execute as @e[scores={Stage=37},tag=practice_battle] run tag @e[scores={Stage=37},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_2
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_2_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_2_second_go
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_2_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_2_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1295 51 -32 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots