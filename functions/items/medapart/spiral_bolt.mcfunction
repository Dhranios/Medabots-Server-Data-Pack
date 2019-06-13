execute if entity @s[scores={Time=10}] run function medabots_server:items/medapart/spiral_bolt/10
execute if entity @s[scores={Time=10..12}] run function medabots_server:items/medapart/spiral_bolt/10..12
execute if entity @s[scores={Time=50..}] run function medabots_server:items/medapart/spiral_bolt/50..

# Show particles
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 2 1 0 30

# Increase time by 1
scoreboard players add @s[scores={Medaforce=-2}] Time 1

# Name the attack
#execute as run data; MC-121807
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata_medal"}',Tags:["spiral_bolt"]}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata_medal"}',Tags:["spiral_bolt","ally_team"]}
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata_medal"}',Tags:["spiral_bolt","enemy_team"]}
execute if entity @s[scores={ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata_medal"}',Tags:["spiral_bolt","strong"]}
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata_medal"}',Tags:["spiral_bolt","ally_team","strong"]}
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] positioned ~ ~1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!spiral_bolt] run data merge entity @s {CustomName:'{"translate":"medabots_server:move.kuwagata_medal"}',Tags:["spiral_bolt","enemy_team","strong"]}