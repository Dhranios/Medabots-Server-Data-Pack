execute if entity @e[x=0,y=52,z=0,dx=56,dy=14,dz=98,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=45},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=0,y=52,z=0,dx=56,dy=14,dz=98,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=45},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=0,y=52,z=0,dx=56,dy=14,dz=98,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=45},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=0,y=52,z=0,dx=56,dy=14,dz=98,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 45
execute as @e[scores={Stage=45},tag=practice_battle] run tag @e[scores={Stage=45},tag=medabot] add practice_robattle
execute as @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_10
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=true}] only medabots_server:main/hero_of_magvel
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=false}] only medabots_server:stages/wave_1/lagdou_ruins_10
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=45}] run function medabots_server:stage/get_score/time_damage_kills
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=45}] positioned 28 67 34 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots