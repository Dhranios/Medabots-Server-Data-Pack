# Reset ledge grab
scoreboard players set @s LedgeGrabAble 0

# Check for grabbing a ledge for certain users
execute if block ~ ~-1 ~ minecraft:air run scoreboard players set @s[gamemode=survival,scores={Sneaking=0}] LedgeGrabAble 1
execute if block ~ ~-1 ~ minecraft:air run scoreboard players set @s[gamemode=adventure,scores={Sneaking=0}] LedgeGrabAble 1

# Check blocks depending on rotation
execute if entity @s[y_rotation=45..135,scores={LedgeGrabAble=1}] run function medabots_server:medaparts/ledge_grab_xn
execute if entity @s[y_rotation=-135..-45,scores={LedgeGrabAble=1}] run function medabots_server:medaparts/ledge_grab_xp
execute if entity @s[y_rotation=135..-135,scores={LedgeGrabAble=1}] run function medabots_server:medaparts/ledge_grab_zn
execute if entity @s[y_rotation=-45..45,scores={LedgeGrabAble=1}] run function medabots_server:medaparts/ledge_grab_zp

# Spawn the ledge grab, unless the user sneaks
execute if entity @s[scores={LedgeGrabAble=2,Sneaking=0}] if block ~ ~-1 ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~-1 ~ {CustomName:"{\"translate\":\"medabots_server:move.ledge_grab\"}",Duration:31,Tags:["ledge_grab"]}

# Prevent fall damage
execute if entity @s[scores={LedgeGrabAble=2,Sneaking=0}] if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:resistance 1 9 true

# Sneak to let go
#execute as run data; MC-121807
execute if entity @s[scores={Sneaking=1..}] as @e[distance=..1,type=minecraft:area_effect_cloud,tag=ledge_grab] run data merge entity @s {Age:30}