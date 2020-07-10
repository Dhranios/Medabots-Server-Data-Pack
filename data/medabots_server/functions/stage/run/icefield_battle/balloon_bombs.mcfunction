execute if entity @e[x=0,y=51,z=0,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=48},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=0,y=51,z=0,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=48},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=0,y=51,z=0,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=48},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=0,y=51,z=0,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 48
execute as @e[scores={Stage=48},tag=practice_battle] run tag @e[scores={Stage=48},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/icefield_battle
tag @s[scores={BattlingMedabots=1,State=1..},tag=story_battle,advancements={medabots_server:story_progression/infinity={vs_spyke=true,vs_spyke_battle=false}}] add dialog_infinity_vs_spyke_battle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=48}] run function medabots_server:stage/get_score/time_damage_kills
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=48}] positioned 23 59 24 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots