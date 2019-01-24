# Make the break, falling and power press attacks do something
function medabots_server:medaparts/break_attack
function medabots_server:medaparts/falling_attack
function medabots_server:medaparts/power_press

# Kill items that get placed in the inventory anyway, as well as teleport dropped items
function medabots_server:other/kill_items
function medabots_server:other/teleport_items

# Prevent items from being destroyed by fire, lava, etc.
data merge entity @s[nbt={Invulnerable:0b}] {Invulnerable:1b}