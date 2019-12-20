# Penalty for dying, losing all items you got in that stage
clear @s minecraft:chest{medabots_server:{id:"medabots_server:loot_container"}}

# Remove kill streak
scoreboard players set @s KillStreak 0
tag @s remove main