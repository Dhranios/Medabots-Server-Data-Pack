execute if entity @e[x=-1256,y=0,z=-58,dx=59,dy=50,dz=83,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=38},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-1256,y=0,z=-58,dx=59,dy=50,dz=83,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=38},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-1256,y=0,z=-58,dx=59,dy=50,dz=83,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=38},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=-1256,y=0,z=-58,dx=59,dy=48,dz=83,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 38
execute as @e[scores={Stage=38},tag=practice_battle] run tag @e[scores={Stage=38},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_3
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_3_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_3_second_go
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_3_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_3_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1227 51 -19 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots