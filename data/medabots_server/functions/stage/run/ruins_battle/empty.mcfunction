execute if entity @e[x=0,y=51,z=0,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=49},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=0,y=51,z=0,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=49},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=0,y=51,z=0,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=49},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=0,y=51,z=0,dx=42,dy=7,dz=42,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 49
execute as @e[scores={Stage=49},tag=practice_battle] run tag @e[scores={Stage=49},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/ruins_battle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=49}] run function medabots_server:stage/get_score/time_damage_kills
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=49}] positioned 20 59 21 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots