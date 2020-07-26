execute if entity @e[x=0,y=0,z=-16,dx=53,dy=87,dz=53,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=63},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=0,y=0,z=-16,dx=53,dy=87,dz=53,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=63},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=0,y=0,z=-16,dx=53,dy=87,dz=53,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=63},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[type=!minecraft:player,distance=0..] unless entity @s[scores={Stage=0..}] unless entity @s[x=0,y=43,z=33,dx=49,dy=2,dz=2] unless entity @s[x=26,y=27,z=41,dx=4,dy=2,dz=4] run scoreboard players set @s Stage 63
execute as @e[scores={Stage=63},tag=practice_battle] run tag @e[scores={Stage=63},tag=medabot] add practice_robattle
execute as @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/final_destination_3
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/final_destination_3
scoreboard players add @s[scores={BattlingMedabots=1,State=1..,KillStreak=..4}] KillStreak 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=63}] run function medabots_server:stage/get_score/time_damage_kills
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=63}] positioned 25 43 34 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots

execute as @e[scores={Stage=63},tag=!dying] at @s run teleport @s[y=0,dy=10] 25 52 10
execute as @e[scores={Stage=63},tag=!dying] at @s if block ~ ~-1 ~ minecraft:barrier positioned ~ ~-2 ~ align xyz unless entity @e[type=minecraft:area_effect_cloud,dx=0,dy=3,dz=0,limit=1] run teleport @s 25 52 10
execute as @e[scores={Stage=63},tag=!dying] at @s if block ~ ~-1 ~ minecraft:black_wool run teleport @s 25 52 10
execute as @e[scores={Stage=63},tag=!dying] at @s if block ~ ~-1 ~ minecraft:command_block run teleport @s 25 52 10