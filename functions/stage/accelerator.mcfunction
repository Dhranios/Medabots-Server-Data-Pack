# Play sound
playsound medabots_server:block.accelerator block @a ~ ~ ~ 1

# Move to the direction the comparator fases
execute if block ~ ~ ~ minecraft:comparator[facing=north,mode=compare,powered=false] run data merge entity @s {Motion:[0.0d,0.1d,2.0d]}
execute if block ~ ~ ~ minecraft:comparator[facing=east,mode=compare,powered=false] run data merge entity @s {Motion:[-2.0d,0.1d,0.0d]}
execute if block ~ ~ ~ minecraft:comparator[facing=south,mode=compare,powered=false] run data merge entity @s {Motion:[0.0d,0.1d,-2.0d]}
execute if block ~ ~ ~ minecraft:comparator[facing=west,mode=compare,powered=false] run data merge entity @s {Motion:[2.0d,0.1d,0.0d]}

# Player's nbt cannot be edited :(
execute if entity @s[type=minecraft:player] run function medabots_server:stage/accelerator_player