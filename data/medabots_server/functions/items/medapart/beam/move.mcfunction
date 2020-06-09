summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.beam"}',Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:red_stained_glass",Count:1b}],Marker:1b,Tags:["beam","life_time"]}
execute as @e[tag=new] positioned as @s run teleport @s ~ ~ ~ ~ ~
teleport @s ^ ^ ^0.4

tag @s add me

execute at @s positioned ~ ~1.7 ~ if block ~ ~ ~ minecraft:air run tag @s add continue
execute at @s positioned ~ ~1.325 ~ if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s add balloon_bomb
execute at @s positioned ~ ~0.7 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=pot] run tag @s add pot
execute at @s positioned ~ ~1.7 ~ if entity @e[type=minecraft:area_effect_cloud,distance=..0.7,tag=pot] run tag @s add pot
execute at @s positioned ~ ~1.7 ~ as @e[distance=..0.7,tag=!me,tag=!ice_block,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!minecraft:item,type=!minecraft:experience_orb] if data entity @s Health run tag @e[tag=me] add hit
execute at @s positioned ~ ~0.7 ~ as @e[distance=..0.7,tag=!me,tag=!ice_block,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!minecraft:item,type=!minecraft:experience_orb] if data entity @s Health run tag @e[tag=me] add hit
execute if entity @s[tag=!continue,tag=!balloon_bomb,tag=!pot,tag=!hit] run function medabots_server:items/medapart/beam/move/door

execute at @s[tag=balloon_bomb] positioned ~ ~1.325 ~ run tag @e[distance=..0.7,tag=balloon_bomb] add burst

execute at @s[tag=pot] positioned ~ ~0.7 ~ run tag @e[distance=..0.7,tag=pot] add broken

execute at @s[tag=hit] run function medabots_server:items/medapart/beam/move/hit

tag @s[tag=!continue,tag=!pot,tag=!hit,tag=!balloon_bomb] add dead
tag @s remove continue
tag @s remove me
tag @s remove pot
tag @s remove hit
tag @s remove balloon_bomb
scoreboard players remove @s Steps 1
execute if entity @s[tag=!dead,scores={Steps=1..}] at @s run function medabots_server:items/medapart/beam/move