# Spawn black mass
summon minecraft:armor_stand ~ ~-1.5 ~ {Invisible:1b,CustomName:'{"translate":"medabots_server:move.press"}',NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:coal_block",Count:1b}],Marker:1b,Tags:["life_time"]}

# CPU owned simulation
execute if entity @s[tag=cpu_owned,tag=!rotated] run teleport @s ~ ~ ~ facing entity @e[type=!minecraft:player,sort=nearest,limit=1,scores={Press=1..}]
tag @s[tag=cpu_owned,tag=!rotated] add rotated
teleport @s[tag=cpu_owned] ^ ^ ^-1 ~ ~-1
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:lava run kill @s

# Damage enemies that come close
execute if entity @s[tag=!ally_team,tag=!enemy_team] as @e[tag=!press,distance=..1,tag=hostile] unless entity @s[scores={Press=1..}] run function medabots_server:medaparts/press_hit
execute if entity @s[tag=ally_team] as @e[tag=!press,distance=..1,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Press=1..}] run function medabots_server:medaparts/press_hit
execute if entity @s[tag=enemy_team] as @e[tag=!press,distance=..1,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Press=1..}] run function medabots_server:medaparts/press_hit