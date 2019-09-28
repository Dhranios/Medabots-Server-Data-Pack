# Remove tags
tag @s[tag=!found_owner] remove found_owner_2
tag @s remove found_owner

execute if entity @s[tag=medabot_model] run function medabots_server:animations/medabot

# Remove if no owner
kill @s[tag=!found_owner_2]
