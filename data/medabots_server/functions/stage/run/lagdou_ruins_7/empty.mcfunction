execute if entity @e[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=42},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=42},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=42},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77,type=!minecraft:player] unless entity @s[scores={Stage=42}] run scoreboard players set @s Stage 42
execute as @e[scores={Stage=42},tag=practice_battle] run tag @e[scores={Stage=42},tag=medabot] add practice_robattle
execute as @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_7
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_7_second_go
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_7_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1280 51 -171 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots