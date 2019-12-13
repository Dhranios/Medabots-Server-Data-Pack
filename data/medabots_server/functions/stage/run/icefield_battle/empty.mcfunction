execute if entity @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=48},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=48},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=48},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=48}] run scoreboard players set @s Stage 48
execute as @e[scores={Stage=48},tag=practice_battle] run tag @e[scores={Stage=48},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/icefield_battle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1999 51 -608 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots