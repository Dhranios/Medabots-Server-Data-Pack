# Make the press attack do something
execute if entity @s[tag=press] run function medabots_server:medaparts/press_attack

# Make the kuwagata attack do something
execute if entity @s[tag=spiral_bolt] run function medabots_server:medaparts/spiral_bolt_attack