experience add @s 1 points
scoreboard players remove @s MedabotLevel 1
execute if entity @s[scores={MedabotLevel=1..}] run function medabots_server:gamemodes/default/load_points