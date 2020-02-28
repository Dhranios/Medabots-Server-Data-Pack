# Reset ledge grab
scoreboard players set @s EdgeGrabAble 0

# Check for grabbing a ledge for certain users
execute if block ~ ~-1 ~ minecraft:air if block ~ ~ ~ #medabots_server:edge_grab/looking run scoreboard players set @s[gamemode=survival,tag=!sneak_pos] EdgeGrabAble 1
execute if block ~ ~-1 ~ minecraft:air if block ~ ~ ~ #medabots_server:edge_grab/looking run scoreboard players set @s[gamemode=adventure,tag=!sneak_pos] EdgeGrabAble 1

# Check blocks depending on rotation
execute if entity @s[y_rotation=-135..-45,scores={EdgeGrabAble=1}] run function medabots_server:items/medapart/edge_grab/east
execute if entity @s[y_rotation=135..-135,scores={EdgeGrabAble=1}] run function medabots_server:items/medapart/edge_grab/north
execute if entity @s[y_rotation=-45..45,scores={EdgeGrabAble=1}] run function medabots_server:items/medapart/edge_grab/south
execute if entity @s[y_rotation=45..135,scores={EdgeGrabAble=1}] run function medabots_server:items/medapart/edge_grab/west

# Spawn the ledge grab, unless the user sneaks
execute if entity @s[scores={EdgeGrabAble=2,Sneaking=0}] if block ~ ~-1 ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~-1 ~ {CustomName:'{"translate":"medabots_server:move.edge_grab"}',Duration:31,Tags:["edge_grab"]}

# Prevent fall damage
execute if entity @s[scores={EdgeGrabAble=2,Sneaking=0}] if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:resistance 1 9 true

# Sneak to let go
#execute as run data; MC-121807
execute if entity @s[tag=sneak_pos] as @e[distance=..1,type=minecraft:area_effect_cloud,tag=edge_grab] run data merge entity @s {Age:30}

tag @s remove edge_grabbing
execute if entity @e[distance=..1,type=minecraft:area_effect_cloud,tag=edge_grab] run tag @s add edge_grabbing