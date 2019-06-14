# Make the break, falling and power press attacks do something
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:break"}}}}] add break
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:falling"}}}}] add falling
tag @s[tag=!do_not_teleport,nbt={Item:{tag:{medabots_server:{id:"medabots_server:damage_ball"}}}}] add damage_ball
execute if entity @s[tag=break] run function medabots_server:items/medapart/break/attack
execute if entity @s[tag=falling] run function medabots_server:items/medapart/falling/attack
execute if entity @s[tag=damage_ball] run function medabots_server:items/medapart/damage_ball/attack

# Kill items that get placed in the inventory anyway, as well as teleport dropped items
function #medabots_server:all_items

# Prevent items from being destroyed by fire, lava, etc.
data merge entity @s[nbt={Invulnerable:0b}] {Invulnerable:1b}