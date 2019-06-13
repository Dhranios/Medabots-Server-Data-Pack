execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/melee_trap/20
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/melee_trap/30..

# Increase time by 1
scoreboard players add @s[scores={MeleeTrap=1..}] Time 1