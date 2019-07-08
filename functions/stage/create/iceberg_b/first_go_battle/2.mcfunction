execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] positioned -1767 44 -402 run function medabots_server:spawn_entities/enemy_medabot/pinguen/frappe/pure_mermaid/pinguen/mermaid
execute unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] positioned -1767 44 -402 run scoreboard players set @e[distance=..1] Stage 15
execute positioned -1771 44 -391 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1766 44 -409 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1767 44 -411 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1788 44 -411 run function medabots_server:set_blocks/whirlpool
tag @e[x=-1772.5,y=44,z=-390.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1766 44 -398
effect give @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] Battle 2
teleport @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] -1767 44 -402
summon minecraft:area_effect_cloud -1765 44 -400 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:iceberg_b/robattle value 3600
bossbar set medabots_server:iceberg_b/robattle players @a[scores={Stage=15}]
bossbar set medabots_server:iceberg_b/time players