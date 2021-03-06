execute if entity @e[x=0,y=51,z=0,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=47},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=0,y=51,z=0,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=47},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=0,y=51,z=0,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=47},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=0,y=51,z=0,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 47
execute as @e[scores={Stage=47},tag=practice_battle] run tag @e[scores={Stage=47},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/woods_battle
tag @s[scores={BattlingMedabots=1,State=1..,KillStreak=2},tag=story_battle] add dialog_infinity_postgame_koji_battle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=47}] run function medabots_server:stage/get_score/time_damage_kills
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=47}] positioned 23 59 24 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots