execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] run tag @s add allowed

execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.balloon_bomb.pot"}
tag @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] add dead
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed] run function medabots_server:spawn_entities/balloon_bomb
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed] run function medabots_server:set_blocks/pot/balloon_bomb
execute positioned ~ ~0.625 ~ run tag @e[distance=..0.7,tag=balloon_bomb] add no_ticking