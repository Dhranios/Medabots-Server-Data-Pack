# Reduce entity count
execute if entity @s[tag=!extended,tag=!dead] run function medabots_server:blocks/stone/extend

# Remove when cleaning up a stage
execute if entity @s[tag=dead,tag=!consumed] run function medabots_server:blocks/stone/clean_up
