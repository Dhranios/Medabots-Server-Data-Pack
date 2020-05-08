# Crush feet
execute as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!balloon_bomb] run function medabots_server:other/death/balloon_bomb
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!balloon_bomb] run function medabots_server:other/death/balloon_bomb
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!balloon_bomb] run function medabots_server:other/death/balloon_bomb
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!balloon_bomb] run function medabots_server:other/death/balloon_bomb
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!balloon_bomb] run function medabots_server:other/death/balloon_bomb

# Crush head
execute positioned ~ ~-1 ~ as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!balloon_bomb] run function medabots_server:other/death/balloon_bomb
execute if entity @s[scores={Moving=1}] positioned ~1 ~-1 ~ as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!balloon_bomb] run function medabots_server:other/death/balloon_bomb
execute if entity @s[scores={Moving=2}] positioned ~ ~-1 ~1 as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!balloon_bomb] run function medabots_server:other/death/balloon_bomb
execute if entity @s[scores={Moving=3}] positioned ~-1 ~-1 ~ as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!balloon_bomb] run function medabots_server:other/death/balloon_bomb
execute if entity @s[scores={Moving=4}] positioned ~ ~-1 ~-1 as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!balloon_bomb] run function medabots_server:other/death/balloon_bomb