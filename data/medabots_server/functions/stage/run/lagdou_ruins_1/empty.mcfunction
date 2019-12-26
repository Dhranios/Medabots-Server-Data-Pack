execute if entity @e[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=36},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=36},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=36},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 36
execute as @e[scores={Stage=36},tag=practice_battle] run tag @e[scores={Stage=36},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_1
advancement grant @a[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_1_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_1_second_go
advancement grant @a[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_1_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_1_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1298 51 -87 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots