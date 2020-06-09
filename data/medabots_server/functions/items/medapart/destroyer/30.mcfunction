# Spawn the attack
summon minecraft:armor_stand ^ ^0.1 ^1 {Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}],CustomName:'{"translate":"medabots_server:move.destroy"}',Tags:["destroy"]}
execute positioned ^ ^0.1 ^1 at @e[type=minecraft:armor_stand,tag=destroy,distance=..0.2] rotated as @s run teleport @e[type=minecraft:armor_stand,tag=destroy,distance=..0.2] ~ ~ ~ ~ ~
summon minecraft:armor_stand ^-0.5 ^0.1 ^0.5 {Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}],CustomName:'{"translate":"medabots_server:move.destroy"}',Tags:["destroy"]}
execute positioned ^-0.5 ^0.1 ^0.5 at @e[type=minecraft:armor_stand,tag=destroy,distance=..0.2] rotated as @s run teleport @e[type=minecraft:armor_stand,tag=destroy,distance=..0.2] ~ ~ ~ ~-45 ~
summon minecraft:armor_stand ^0.5 ^0.1 ^0.5 {Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}],CustomName:'{"translate":"medabots_server:move.destroy"}',Tags:["destroy"]}
execute positioned ^0.5 ^0.1 ^0.5 at @e[type=minecraft:armor_stand,tag=destroy,distance=..0.2] rotated as @s run teleport @e[type=minecraft:armor_stand,tag=destroy,distance=..0.2] ~ ~ ~ ~45 ~

# Make the closest destroy moves deal damage
tag @s add me
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=!ally_medabot,tag=!enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=3] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!me] run tag @s add destroyed
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=ally_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=3] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!ally_medabot,tag=!me] run tag @s add destroyed
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[tag=enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=3] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!enemy_medabot,tag=!me] run tag @s add destroyed
execute if entity @s[scores={ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=3] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!me] run tag @s add destroyed_strong
execute if entity @s[scores={ScoutTime=1..},tag=ally_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=3] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!ally_medabot,tag=!me] run tag @s add destroyed_strong
execute if entity @s[scores={ScoutTime=1..},tag=enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=3] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!enemy_medabot,tag=!me] run tag @s add destroyed_strong
tag @s remove me