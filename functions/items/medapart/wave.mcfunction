execute if entity @s[scores={Time=25}] run function medabots_server:items/medapart/wave/25
execute if entity @s[scores={Time=120..}] run function medabots_server:items/medapart/wave/120_

# Increase time by 1
scoreboard players add @s[scores={Wave=1..}] Time 1