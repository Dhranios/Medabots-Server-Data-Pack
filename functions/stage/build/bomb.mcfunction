execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] run tag @s add allowed
execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed

execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.bomb.pot"}
tag @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] add dead
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=76}] run function medabots_server:set_blocks/pot/bomb/delay_0
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=77}] run function medabots_server:set_blocks/pot/bomb/delay_5
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=78}] run function medabots_server:set_blocks/pot/bomb/delay_10
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=79}] run function medabots_server:set_blocks/pot/bomb/delay_30
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=80}] run function medabots_server:set_blocks/pot/bomb/delay_60
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=81}] run function medabots_server:set_blocks/pot/bomb/delay_90
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=82}] run function medabots_server:set_blocks/pot/bomb/delay_120
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=76}] run function medabots_server:spawn_entities/bomb/delay_0
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=77}] run function medabots_server:spawn_entities/bomb/delay_5
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=78}] run function medabots_server:spawn_entities/bomb/delay_10
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=79}] run function medabots_server:spawn_entities/bomb/delay_30
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=80}] run function medabots_server:spawn_entities/bomb/delay_60
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=81}] run function medabots_server:spawn_entities/bomb/delay_90
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed,scores={StageBuild=82}] run function medabots_server:spawn_entities/bomb/delay_120
tag @e[distance=..0.7,tag=bomb] add no_ticking