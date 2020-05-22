summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.laser"}',Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}],Marker:1b,Tags:["laser","life_time"]}
execute as @e[tag=new] positioned as @s run teleport @s ~ ~ ~ ~ ~
teleport @s ^ ^ ^0.4

tag @s add me

execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:air run tag @s add continue
execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:gray_stained_glass run tag @s add continue
execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:barrier if block ~ ~-1 ~ minecraft:air positioned ~ ~-1 ~ if entity @e[distance=..0.7,tag=algae] run tag @s add continue
execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:black_stained_glass positioned ~ ~-1 ~ if entity @e[distance=..0.7,tag=ice_block] run tag @s add continue
execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:barrier if block ~ ~-1 ~ minecraft:cut_sandstone positioned ~ ~-1 ~ if entity @e[distance=..0.7,tag=mirror] run tag @s add mirror
execute at @s positioned ~ ~1.325 ~ if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s add balloon_bomb
execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:barrier if block ~ ~-1 ~ minecraft:chest positioned ~ ~-1 ~ if entity @e[distance=..0.7,tag=pot] run tag @s add pot
execute at @s positioned ~ ~1.7 ~ as @e[distance=..0.7,tag=!me,tag=!ice_block,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!minecraft:item,type=!minecraft:experience_orb] if data entity @s Health run tag @e[tag=me] add hit
execute at @s positioned ~ ~0.7 ~ as @e[distance=..0.7,tag=!me,tag=!ice_block,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!minecraft:item,type=!minecraft:experience_orb] if data entity @s Health run tag @e[tag=me] add hit
execute if entity @s[tag=!continue,tag=!mirror,tag=!balloon_bomb,tag=!pot,tag=!hit] run function medabots_server:items/medapart/laser/move/door

execute at @s[tag=mirror] run function medabots_server:items/medapart/laser/move/mirror

execute at @s[tag=balloon_bomb] positioned ~ ~1.325 ~ run tag @e[distance=..0.7,tag=balloon_bomb] add burst

execute at @s[tag=pot] positioned ~ ~0.7 ~ run tag @e[distance=..0.7,tag=pot] add broken

execute at @s[tag=hit] run function medabots_server:items/medapart/laser/move/hit

tag @s[tag=!continue,tag=!mirror] add dead
tag @s remove continue
tag @s remove mirror
tag @s remove me
scoreboard players remove @s Steps 1
execute if entity @s[tag=!dead,scores={Steps=1..}] at @s run function medabots_server:items/medapart/laser/move