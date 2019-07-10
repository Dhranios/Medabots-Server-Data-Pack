execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] run tag @s add allowed
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:water unless block ~ ~-1 ~ minecraft:water run tag @s add allowed
execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.guard.pot"}
tag @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] add dead
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=73}] run function medabots_server:set_blocks/pot/guard/slow
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=74}] run function medabots_server:set_blocks/pot/guard/normal
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=75}] run function medabots_server:set_blocks/pot/guard/fast
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=73}] run function medabots_server:spawn_entities/guard/slow
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=74}] run function medabots_server:spawn_entities/guard/normal
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=75}] run function medabots_server:spawn_entities/guard/fast
tag @e[distance=..0.7,tag=guard] add no_ticking