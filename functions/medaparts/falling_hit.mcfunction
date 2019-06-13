effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 false
effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 false
effect give @s minecraft:levitation 1 4 false
effect give @s minecraft:nausea 5 0 false
scoreboard players set @s[scores={Time=2..}] Time 950
kill @e[distance=..0.1,tag=falling]