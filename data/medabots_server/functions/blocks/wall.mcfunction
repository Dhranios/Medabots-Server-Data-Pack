# Reduce entity count
execute if entity @s[tag=!extended,tag=!dead] run function medabots_server:blocks/wall/extend

# Remove when cleaning up a stage
execute if entity @s[tag=dead,tag=!consumed] run function medabots_server:blocks/wall/clean_up
