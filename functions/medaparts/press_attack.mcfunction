# Spawn black mass
summon minecraft:armor_stand ~ ~-1.5 ~ {Invisible:1b,CustomName:"{\"translate\":\"medabots_server:move.press\"}",NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:coal_block",Count:1b}],Marker:1b,Tags:["LifeTime"]}

# CPU owned simulation
execute if entity @s[tag=cpu_owned,tag=!rotated] run teleport @s ~ ~ ~ facing entity @e[type=!minecraft:player,sort=nearest,limit=1,scores={Press=1..}]
tag @s[tag=cpu_owned,tag=!rotated] add rotated
teleport @s[tag=cpu_owned] ^ ^ ^-1 ~ ~-1

# Damage enemies that come close
execute as @e[tag=!press,distance=..1] run tag @s[tag=hostile] add press
tag @a[tag=press,scores={Press=1..}] remove press
execute as @e[tag=press] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute as @e[tag=press] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
tag @e[tag=press] remove press