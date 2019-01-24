# Make the break, falling and power press attacks do something
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:break"}}}}] add break
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:falling"}}}}] add falling
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:power_press"}}}}] add power_press
execute if entity @s[tag=break] run function medabots_server:medaparts/break_attack
execute if entity @s[tag=falling] run function medabots_server:medaparts/falling_attack
execute if entity @s[tag=power_press] run function medabots_server:medaparts/power_press

# Kill items that get placed in the inventory anyway, as well as teleport dropped items
function medabots_server:other/kill_items
function medabots_server:other/teleport_items

# Prevent items from being destroyed by fire, lava, etc.
data merge entity @s[nbt={Invulnerable:0b}] {Invulnerable:1b}