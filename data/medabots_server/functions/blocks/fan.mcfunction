# Is this door powered?
execute if score @s PowerAmount >= @s PowerNeeded run tag @s add powered
execute unless score @s PowerAmount >= @s PowerNeeded run tag @s remove powered

scoreboard players add @s[tag=custom_stage,tag=powered,tag=!changed,tag=!reverse] Moving 1
scoreboard players remove @s[tag=custom_stage,tag=powered,tag=!changed,tag=reverse] Moving 1
tag @s[tag=custom_stage,tag=powered,tag=!changed] add changed
scoreboard players remove @s[tag=custom_stage,tag=!powered,tag=changed,tag=!reverse] Moving 1
scoreboard players add @s[tag=custom_stage,tag=!powered,tag=changed,tag=reverse] Moving 1
tag @s[tag=custom_stage,tag=!powered] remove changed

# Moving speed
scoreboard players add @s[scores={Moving=1}] Time 1
scoreboard players add @s[scores={Moving=2}] Time 2
scoreboard players set @s[scores={Moving=3}] Moving 0
scoreboard players set @s[scores={Moving=-1}] Moving 2
scoreboard players set @s[tag=dead] Moving 0

# Play the sound
execute if entity @s[scores={Time=10},tag=!dead] run playsound medabots_server:block.fan block @a ~ ~ ~ 1

# Move objects depending on the facing
tag @s[scores={Moving=1..}] remove stopped
execute if block ~ ~1 ~ minecraft:furnace[facing=north] align xyz if entity @s[tag=!stopped] run function medabots_server:blocks/fan/north
execute if block ~ ~1 ~ minecraft:furnace[facing=south] align xyz if entity @s[tag=!stopped] run function medabots_server:blocks/fan/south
execute if block ~ ~1 ~ minecraft:furnace[facing=east] align xyz if entity @s[tag=!stopped] run function medabots_server:blocks/fan/east
execute if block ~ ~1 ~ minecraft:furnace[facing=west] align xyz if entity @s[tag=!stopped] run function medabots_server:blocks/fan/west
tag @s[scores={Moving=0}] add stopped

# Remove when cleaning up stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @s[tag=dead]

# Reset the timer
scoreboard players set @s[scores={Time=10}] Time 0

# Change the moving speed
execute if entity @s[scores={Time=0}] run function medabots_server:blocks/fan/hit

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object