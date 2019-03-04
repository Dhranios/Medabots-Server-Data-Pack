# Spawn black mass
summon minecraft:armor_stand ~ ~-1.5 ~ {Invisible:1b,CustomName:'{"translate":"medabots_server:move.press"}',NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:coal_block",Count:1b}],Marker:1b,Tags:["LifeTime"]}

# CPU owned simulation
execute if entity @s[tag=cpu_owned,tag=!rotated] run teleport @s ~ ~ ~ facing entity @e[type=!minecraft:player,sort=nearest,limit=1,scores={Press=1..}]
tag @s[tag=cpu_owned,tag=!rotated] add rotated
teleport @s[tag=cpu_owned] ^ ^ ^-1 ~ ~-1

# Damage enemies that come close
execute if entity @s[tag=!ally_team,tag=!enemy_team] as @e[tag=!press,distance=..1,tag=hostile] unless entity @s[scores={Press=1..}] run function medabots_server:medaparts/press_hit
execute if entity @s[tag=ally_team] as @e[tag=!press,distance=..1,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Press=1..}] run function medabots_server:medaparts/press_hit
execute if entity @s[tag=enemy_team] as @e[tag=!press,distance=..1,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Press=1..}] run function medabots_server:medaparts/press_hit