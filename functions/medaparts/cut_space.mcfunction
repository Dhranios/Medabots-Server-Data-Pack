# Spawn lightning
summon minecraft:lightning_bolt ~ ~-1.5 ~

# Protect the user from getting hurt
execute if entity @s[tag=!rotated] run effect give @e[sort=nearest,limit=1,scores={Medaforce=-2}] minecraft:resistance 1 5 true

# CPU owned simulation
execute if entity @s[tag=cpu_owned,tag=!rotated] run teleport @s ~ ~ ~ facing entity @e[type=!minecraft:player,sort=nearest,limit=1,scores={Medaforce=-2}]
tag @s[tag=!rotated] add rotated
teleport @s[tag=cpu_owned] ^ ^ ^-1 ~ ~-1