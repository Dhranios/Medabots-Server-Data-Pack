execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] positioned -1820 44 -433 run function medabots_server:spawn_entities/enemy_medabot/pure_mermaid/frappe/pinguen/pure_mermaid/mermaid
execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] positioned -1820 44 -433 run scoreboard players set @e[distance=..1] Stage 15
execute positioned -1812 44 -428 run function medabots_server:spawn_entities/guard/slow
execute positioned -1821 44 -435 run function medabots_server:spawn_entities/guard/slow
execute positioned -1821 44 -431 run function medabots_server:spawn_entities/guard/slow
execute positioned -1822 44 -432 run function medabots_server:spawn_entities/mission/cannon/detect/rotating/east/delay_4
execute positioned -1822 44 -434 run function medabots_server:spawn_entities/mission/cannon/detect/rotating/east/delay_4
execute positioned -1819 44 -424 run function medabots_server:spawn_entities/mission/cannon/detect/rotating/west/delay_4
execute positioned -1821 44 -430 run function medabots_server:spawn_entities/ice_block
execute positioned -1822 44 -430 run function medabots_server:spawn_entities/ice_block
tag @e[x=-1808.5,y=44,z=-423.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1814 44 -433
effect give @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] Battle 2
teleport @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] -1820 44 -433
summon minecraft:area_effect_cloud -1817 44 -432 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:iceberg_b/robattle value 3600
bossbar set medabots_server:iceberg_b/robattle players @a[scores={Stage=15}]
bossbar set medabots_server:iceberg_b/time players