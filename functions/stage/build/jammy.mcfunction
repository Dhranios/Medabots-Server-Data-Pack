execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] run tag @s add allowed
execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.jammy.pot"}
tag @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] add dead
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed] run function medabots_server:set_blocks/pot/jammy
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed] run function medabots_server:set_blocks/jammy
tag @e[distance=..0.7,tag=jammy] add no_ticking