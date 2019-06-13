# Make the press attack do something
execute if entity @s[tag=press] run function medabots_server:items/medapart/press/attack

# Make the kuwagata attack do something
execute if entity @s[tag=spiral_bolt] run function medabots_server:items/medapart/spiral_bolt/attack