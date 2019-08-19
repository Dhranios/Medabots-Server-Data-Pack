execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=0] positioned -1774 44 -379 run function medabots_server:spawn_entities/medabot/dragonbeetle/nin_ninja/attack_tyrano/dragonbeetle/kabuto
execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=0] positioned -1774 44 -379 run scoreboard players set @e[distance=..1] Stage 15
execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=0] positioned -1774 44 -379 run tag @e[distance=..1] add enemy_medabot
execute positioned -1778 44 -378 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned -1776 44 -379 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned -1773 44 -380 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned -1771 44 -380 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned -1777 44 -379 run function medabots_server:set_blocks/pot/6_medallar_cents
execute positioned -1777 44 -376 run function medabots_server:set_blocks/accelerator/south
execute positioned -1775 44 -377 run function medabots_server:set_blocks/accelerator/south
execute positioned -1774 44 -378 run function medabots_server:set_blocks/accelerator/south
execute positioned -1772 44 -378 run function medabots_server:set_blocks/accelerator/south
scoreboard players set @e[x=-1774.5,y=44,z=-368.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1775 44 -376
effect give @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=0] Battle 2
teleport @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=0] -1774 44 -379
summon minecraft:area_effect_cloud -1773 44 -377 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:iceberg_b/robattle value 3600
bossbar set medabots_server:iceberg_b/robattle players @a[scores={Stage=15}]
bossbar set medabots_server:iceberg_b/time players