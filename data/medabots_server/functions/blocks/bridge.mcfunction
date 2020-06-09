# Reduce entity count
execute if entity @s[tag=!extended,tag=!dead] run function medabots_server:blocks/bridge/extend

# Remove when cleaning up a stage
execute if entity @s[tag=dead,tag=!consumed] run function medabots_server:blocks/bridge/clean_up
