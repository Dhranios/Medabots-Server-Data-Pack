execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/guard_optial/20
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/guard_optial/30_

# Increase time by 1
scoreboard players add @s[scores={GuardOptical=1..}] Time 1