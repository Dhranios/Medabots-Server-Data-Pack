# Reset if this is a valid move
tag @s remove valid_move
execute if entity @s[scores={Moving=1}] if block ~1 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=2}] if block ~ ~ ~1 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=3}] if block ~-1 ~ ~ minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move
execute if entity @s[scores={Moving=4}] if block ~ ~ ~-1 minecraft:air run tag @s add valid_move
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 if entity @e[distance=..0.7,tag=balloon_bomb] run tag @s remove valid_move

# Move if this is a valid move
scoreboard players set @s[tag=!valid_move] Moving 0
teleport @s[scores={Moving=1}] ~1 ~ ~
teleport @s[scores={Moving=2}] ~ ~ ~1
teleport @s[scores={Moving=3}] ~-1 ~ ~
teleport @s[scores={Moving=4}] ~ ~ ~-1

# Crush enemies
execute if entity @s[scores={Moving=1..}] run tag @a[distance=..0.5,tag=hostile] add had_death
execute if entity @s[scores={Moving=1..}] as @a[distance=..0.5,tag=hostile] run tellraw @a {"translate":"medabots_server:death.balloon_bomb","with":[{"selector":"@s"},{"translate":"medabots_server:entity.balloon_bomb"}]}
execute if entity @s[scores={Moving=1..}] run tag @e[distance=..0.5,tag=hostile,tag=!balloon_bomb,type=!minecraft:item] add dead
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.balloon_bomb","with":[{"selector":"@s"},{"translate":"medabots_server:entity.balloon_bomb"}]}
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ run tag @e[distance=..0.7,tag=hostile,tag=!balloon_bomb,type=!minecraft:item] add dead
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.balloon_bomb","with":[{"selector":"@s"},{"translate":"medabots_server:entity.balloon_bomb"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 run tag @e[distance=..0.7,tag=hostile,tag=!balloon_bomb,type=!minecraft:item] add dead
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.balloon_bomb","with":[{"selector":"@s"},{"translate":"medabots_server:entity.balloon_bomb"}]}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ run tag @e[distance=..0.7,tag=hostile,tag=!balloon_bomb,type=!minecraft:item] add dead
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.balloon_bomb","with":[{"selector":"@s"},{"translate":"medabots_server:entity.balloon_bomb"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 run tag @e[distance=..0.7,tag=hostile,tag=!balloon_bomb,type=!minecraft:item] add dead

# Remove old blocks
execute at @s[scores={Moving=1..}] run fill ~-1 ~ ~-1 ~1 ~3 ~1 minecraft:air replace minecraft:sponge

# Set new block
execute at @s run fill ~ ~1 ~ ~ ~1 ~ minecraft:sponge replace minecraft:air
execute at @s run fill ~ ~1 ~ ~ ~1 ~ minecraft:sponge replace minecraft:wet_sponge

# Stop moving
scoreboard players set @s[scores={Moving=1..}] Moving 0

# Drop bomb if hit by an arrow
execute at @s[tag=burst] run summon minecraft:tnt ~ ~1 ~ {Fuse:100s,CustomName:"{\"translate\":\"medabots_server:entity.bomb\"}",Tags:["bomb"]}
execute at @s[tag=burst,scores={ActionFloorNr=0..}] positioned ~ ~1 ~ run scoreboard players operation @e[distance=..0.7,type=minecraft:tnt,tag=bomb] ActionFloorNr = @s ActionFloorNr
tag @s[tag=burst] add dead

# Blown away
execute at @s[scores={Moving=0}] positioned ~-1 ~ ~ at @a[distance=..1,scores={Wave=1..}] run scoreboard players set @s Moving 1
execute at @s[scores={Moving=0}] positioned ~ ~ ~-1 at @a[distance=..1,scores={Wave=1..}] run scoreboard players set @s Moving 2
execute at @s[scores={Moving=0}] positioned ~1 ~ ~ at @a[distance=..1,scores={Wave=1..}] run scoreboard players set @s Moving 3
execute at @s[scores={Moving=0}] positioned ~ ~ ~1 at @a[distance=..1,scores={Wave=1..}] run scoreboard players set @s Moving 4

# Remove when cleaning up a stage
execute at @s[tag=dead] run fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:sponge
kill @s[tag=dead]