execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/auxiliary_charge/20
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/auxiliary_charge/30..

# Increase time by 1
scoreboard players add @s[scores={AuxiliaryCharge=1..}] Time 1