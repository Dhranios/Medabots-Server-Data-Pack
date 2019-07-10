# Spawn black mass
summon minecraft:armor_stand ~ ~-1.5 ~ {Invisible:1b,CustomName:'{"translate":"medabots_server:move.press"}',NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:coal_block",Count:1b}],Marker:1b,Tags:["life_time"]}

# Damage enemies that come close
execute if entity @s[tag=!ally_team,tag=!enemy_team,tag=!strong] as @e[tag=!press,distance=..1,tag=hostile] unless entity @s[scores={Press=1..}] run function medabots_server:items/medapart/press/hit
execute if entity @s[tag=ally_team,tag=!strong] as @e[tag=!press,distance=..1,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Press=1..}] run function medabots_server:items/medapart/press/hit
execute if entity @s[tag=enemy_team,tag=!strong] as @e[tag=!press,distance=..1,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Press=1..}] run function medabots_server:items/medapart/press/hit
execute if entity @s[tag=!ally_team,tag=!enemy_team,tag=strong] as @e[tag=!press,distance=..1,tag=hostile] unless entity @s[scores={Press=1..}] run function medabots_server:items/medapart/press/strong_hit
execute if entity @s[tag=ally_team,tag=strong] as @e[tag=!press,distance=..1,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Press=1..}] run function medabots_server:items/medapart/press/strong_hit
execute if entity @s[tag=enemy_team,tag=strong] as @e[tag=!press,distance=..1,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Press=1..}] run function medabots_server:items/medapart/press/strong_hit