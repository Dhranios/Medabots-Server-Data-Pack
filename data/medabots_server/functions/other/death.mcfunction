# Penalty for dying, losing all items you got in that stage
clear @s #minecraft:all{medabots_server:{stage_item:1b}}

# Remove kill streak
scoreboard players set @s KillStreak 0
tag @s remove main