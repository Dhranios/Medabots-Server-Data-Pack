execute as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!round_stone,tag=!pot_hitbox,tag=!medabot_model] run function medabots_server:other/death/round_stone
execute if entity @s[scores={Moving=1}] positioned ~0.6 ~ ~ as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!round_stone,tag=!pot_hitbox,tag=!medabot_model] run function medabots_server:other/death/round_stone
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.6 as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!round_stone,tag=!pot_hitbox,tag=!medabot_model] run function medabots_server:other/death/round_stone
execute if entity @s[scores={Moving=3}] positioned ~-0.6 ~ ~ as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!round_stone,tag=!pot_hitbox,tag=!medabot_model] run function medabots_server:other/death/round_stone
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.6 as @e[distance=..0.7,tag=hostile,tag=!had_death,tag=!round_stone,tag=!pot_hitbox,tag=!medabot_model] run function medabots_server:other/death/round_stone