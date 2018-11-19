# Needs a score
execute unless entity @s[scores={Time=0..}] run scoreboard players set @s Time 0

# Change the rotation
scoreboard players remove @s[scores={Time=1..}] Time 1
execute if entity @s[scores={Time=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Destroy=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Press=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Time 10
execute if entity @s[scores={Time=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Hammer=1..}] run scoreboard players set @s Time 10
teleport @s[scores={Time=10},y_rotation=45] ~ ~ ~ -44 ~ 
teleport @s[scores={Time=10},y_rotation=-45] ~ ~ ~ 45 ~ 
teleport @s[scores={Time=10},y_rotation=-44] ~ ~ ~ -45 ~ 
execute if entity @s[scores={Time=10},y_rotation=-45] run playsound medabots_server:block.mirror.rotate block @a ~ ~ ~ 1

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @s[tag=dead]