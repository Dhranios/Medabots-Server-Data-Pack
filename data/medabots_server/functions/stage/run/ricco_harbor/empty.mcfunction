execute if entity @e[x=0,y=49,z=0,dx=275,dy=41,dz=93,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=46},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=0,y=49,z=0,dx=275,dy=41,dz=93,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=46},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=0,y=49,z=0,dx=275,dy=41,dz=93,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=46},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=0,y=49,z=0,dx=275,dy=41,dz=93,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 46
execute as @e[scores={Stage=46},tag=practice_battle] run tag @e[scores={Stage=46},tag=medabot] add practice_robattle
execute as @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/ricco_harbor
advancement grant @a[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/ricco_harbor
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=46}] run function medabots_server:stage/get_score/time_damage_kills
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=46}] positioned 64 92 52 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[scores={Stage=46}] at @s if block ~ ~-1 ~ minecraft:white_wool run effect give @s minecraft:jump_boost 1 3 true
tag @a[x=64,y=85,z=47,dx=8,dy=5,dz=8,advancements={medabots_server:main/screw_you_all=false}] add achieve_screw_you_all
execute as @a[tag=achieve_screw_you_all] at @s if block ~ ~1 ~ minecraft:water run advancement grant @s only medabots_server:main/screw_you_all
tag @a[tag=achieve_screw_you_all,nbt={OnGround:1b}] remove achieve_screw_you_all