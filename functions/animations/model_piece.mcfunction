# Remove tags
tag @s[tag=!found_owner] remove found_owner_2
tag @s remove found_owner

# Model piece specifics
execute if entity @s[tag=medabot_model] run function medabots_server:animations/medabot
execute if entity @s[tag=guard_model] run function medabots_server:animations/guard

# Remove if no owner
kill @s[tag=!found_owner_2]
