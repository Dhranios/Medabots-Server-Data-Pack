execute as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!bomb] run function medabots_server:other/death/bomb
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!bomb] run function medabots_server:other/death/bomb
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!bomb] run function medabots_server:other/death/bomb
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!bomb] run function medabots_server:other/death/bomb
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!bomb] run function medabots_server:other/death/bomb