# Protect the user from getting hurt
effect give @e[sort=nearest,limit=1,scores={Medaforce=-2},distance=..5] minecraft:resistance 9 1 true

# Protect teammates from getting hurt
execute if entity @s[tag=ally_team] run effect give @e[sort=nearest,limit=1,distance=..5,tag=ally_medabot] minecraft:resistance 9 1 true
execute if entity @s[tag=enemy_team] run effect give @e[sort=nearest,limit=1,distance=..5,tag=enemy_medabot] minecraft:resistance 9 1 true

# Spawn lightning
summon minecraft:lightning_bolt ~ ~-1.5 ~
execute if entity @s[tag=strong] run summon minecraft:lightning_bolt ~ ~-1.5 ~

# CPU owned simulation
execute if entity @s[tag=cpu_owned,tag=!rotated] run teleport @s ~ ~ ~ facing entity @e[type=!minecraft:player,tag=enemy_medabot,sort=nearest,limit=1,scores={Medaforce=-2}]
teleport @s[tag=cpu_owned,tag=rotated] ^ ^ ^-1 ~ ~-1
tag @s[tag=!rotated] add rotated
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:lava run kill @s