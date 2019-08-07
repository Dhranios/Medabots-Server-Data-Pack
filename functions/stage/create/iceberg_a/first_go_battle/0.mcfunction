execute unless entity @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] positioned -1702 44 -207 run function medabots_server:spawn_entities/medabot/pastel_fairy/frappe/pure_mermaid/pastel_fairy/chameleon
execute unless entity @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] positioned -1702 44 -207 run scoreboard players set @e[distance=..1] Stage 6
execute unless entity @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] positioned -1702 44 -207 run tag @e[distance=..1] add enemy_medabot
execute positioned -1686 44 -207 run function medabots_server:spawn_entities/guard/slow
execute positioned -1681 44 -207 run function medabots_server:spawn_entities/guard/slow
execute positioned -1689 44 -216 run function medabots_server:spawn_entities/cannon/no_detect/rotating/south/delay_4
execute positioned -1684 44 -218 run function medabots_server:spawn_entities/cannon/no_detect/rotating/south/delay_4
execute positioned -1707 44 -203 run function medabots_server:set_blocks/pot/bomb/delay_5
execute positioned -1703 44 -203 run function medabots_server:set_blocks/pot/6_medallar_cents
tag @e[x=-1709.5,y=44,z=-208.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1707 44 -208
effect give @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] -1702 44 -207
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1705 44 -209 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[0.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1704 44 -206 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-180.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:iceberg_a/robattle value 3600
bossbar set medabots_server:iceberg_a/robattle players @a[scores={Stage=6}]
bossbar set medabots_server:iceberg_a/time players