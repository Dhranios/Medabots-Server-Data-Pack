# Remove tags
tag @s[tag=!found_owner] remove found_owner_2
tag @s remove found_owner

# Remove if no owner
tag @s[tag=!found_owner_2] add dead
scoreboard players reset @s[tag=dead]
kill @s[tag=dead]
