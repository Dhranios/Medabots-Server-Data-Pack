# Blown away
execute at @s[scores={Moving=0}] run function medabots_server:stage/balloon_bomb_hit

# Reset if this is a valid move
execute if entity @s[scores={Moving=1..}] run function medabots_server:stage/balloon_bomb_valid_move

# Move if this is a valid move
scoreboard players set @s[tag=!valid_move] Moving 0
teleport @s[scores={Moving=1}] ~1 ~ ~
teleport @s[scores={Moving=2}] ~ ~ ~1
teleport @s[scores={Moving=3}] ~-1 ~ ~
teleport @s[scores={Moving=4}] ~ ~ ~-1

# Crush enemies
execute if entity @s[scores={Moving=1..}] run function medabots_server:stage/balloon_bomb_crush

# Remove old blocks
execute at @s[scores={Moving=1..}] run fill ~-1 ~ ~-1 ~1 ~3 ~1 minecraft:air replace minecraft:sponge
execute at @s[scores={Moving=1..}] run fill ~-1 ~ ~-1 ~1 ~3 ~1 minecraft:air replace minecraft:wet_sponge

# Set new block
execute at @s run fill ~ ~1 ~ ~ ~1 ~ minecraft:sponge replace minecraft:air
execute at @s run fill ~ ~1 ~ ~ ~1 ~ minecraft:sponge replace minecraft:wet_sponge

# Stop moving
scoreboard players set @s[scores={Moving=1..}] Moving 0

# Drop bomb if hit by an arrow
execute at @s[tag=burst] run function medabots_server:stage/balloon_bomb_burst

# Remove when cleaning up a stage
execute at @s[tag=dead] run fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:sponge
kill @s[tag=dead]