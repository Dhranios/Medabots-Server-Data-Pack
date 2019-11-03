execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/guard_gunpowder/20
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/guard_gunpowder/30_

# Increase time by 1
scoreboard players add @s[scores={MedapartType=13}] Time 1