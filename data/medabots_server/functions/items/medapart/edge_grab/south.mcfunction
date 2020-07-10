# Check if the block at the feet is not valid
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~1 #medabots_server:edge_grab/no_holding run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~1 #minecraft:trapdoors[open=false] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~1 #minecraft:trapdoors[open=true,facing=east] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~1 #minecraft:trapdoors[open=true,facing=south] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~1 #minecraft:trapdoors[open=true,facing=west] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~1 minecraft:snow[layers=5] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~1 minecraft:snow[layers=4] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~1 minecraft:snow[layers=3] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~1 minecraft:snow[layers=2] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~ ~1 minecraft:snow[layers=1] run scoreboard players set @s EdgeGrabAble 0

# Check if the block at the head is not valid
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #medabots_server:edge_grab/no_looking run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #minecraft:stairs[facing=north,shape=straight] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #minecraft:stairs[facing=north,shape=inner_left] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #minecraft:stairs[facing=north,shape=inner_right] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #minecraft:stairs[facing=west,shape=inner_right] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #minecraft:stairs[facing=east,shape=inner_left] run scoreboard players set @s EdgeGrabAble 0
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 minecraft:piston_head[facing=north] run scoreboard players set @s EdgeGrabAble 0

# Check if the block at the head is valid
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #medabots_server:edge_grab/looking run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #minecraft:slabs[type=bottom] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #minecraft:slabs[type=top] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #medabots_server:edge_grab/doors[half=upper] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 minecraft:snow[layers=1] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 minecraft:snow[layers=2] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 minecraft:snow[layers=3] run scoreboard players set @s EdgeGrabAble 2
execute if entity @s[scores={EdgeGrabAble=1}] if block ~ ~1 ~1 #minecraft:campfires[lit=false] run scoreboard players set @s EdgeGrabAble 2