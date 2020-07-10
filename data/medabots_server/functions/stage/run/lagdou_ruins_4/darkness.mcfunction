execute if entity @e[x=0,y=46,z=0,dx=62,dy=10,dz=86,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=39},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=0,y=46,z=0,dx=62,dy=10,dz=86,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=39},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=0,y=46,z=0,dx=62,dy=10,dz=86,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=39},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=0,y=46,z=0,dx=62,dy=10,dz=86,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 39
execute as @e[scores={Stage=39},tag=practice_battle] run tag @e[scores={Stage=39},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_4
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_4_second_go
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_4_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=39}] run function medabots_server:stage/get_score/time_damage_kills
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=39}] positioned 31 58 78 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots