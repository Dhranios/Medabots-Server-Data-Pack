# If the a flying player is well in the sky, don't do anything
execute if entity @s[tag=flying_crash] if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~4 ~ minecraft:air run kill @s

# Break a flying player's fall if they have leg part durability left, explode fall if not
execute if entity @e[tag=flying_crash,distance=..0.1] run function medabots_server:medaparts/flying_crash

# Make the destroy attack do something
execute if entity @s[tag=destroy] run function medabots_server:medaparts/destroy_stand

# Who else but Mr. Referee has to referee the battles?
execute if entity @s[tag=mr_referee] run function medabots_server:other/mr_referee

# Any armor stand that exists for a short amount of time
execute if entity @s[tag=life_time] run function medabots_server:any_life_time_stand

# Make mirrors act
execute if entity @s[tag=mirror] run function medabots_server:stage/mirror

# The FAQ for the server
execute if entity @s[tag=name] run function medabots_server:other/faq
