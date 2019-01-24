# Protect the user from getting hurt
effect give @e[sort=nearest,limit=1,scores={Medaforce=-2},distance=..5] minecraft:resistance 9 1 true

# Protect teammates from getting hurt
execute if entity @s[tag=ally_team] run effect give @e[sort=nearest,limit=1,distance=..5,tag=ally_medabot] minecraft:resistance 9 1 true
execute if entity @s[tag=enemy_team] run effect give @e[sort=nearest,limit=1,distance=..5,tag=enemy_medabot] minecraft:resistance 9 1 true

# Spawn lightning
summon minecraft:lightning_bolt ~ ~-1.5 ~

# CPU owned simulation
execute if entity @s[tag=cpu_owned,tag=!rotated] run teleport @s ~ ~ ~ facing entity @e[type=!minecraft:player,sort=nearest,limit=1,scores={Medaforce=-2}]
tag @s[tag=!rotated] add rotated
teleport @s[tag=cpu_owned] ^ ^ ^-1 ~ ~-1