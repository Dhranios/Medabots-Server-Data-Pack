execute unless entity @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] positioned -1702 44 -207 run function medabots_server:spawn_entities/medabot/pastel_fairy/frappe/pure_mermaid/pastel_fairy/chameleon
execute unless entity @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] positioned -1702 44 -207 run scoreboard players set @e[distance=..1] Stage 6
execute unless entity @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] positioned -1702 44 -207 run tag @e[distance=..1] add enemy_medabot
execute positioned -1686 44 -205 run function medabots_server:spawn_entities/guard/normal
execute positioned -1682 44 -205 run function medabots_server:spawn_entities/guard/normal
execute positioned -1704 44 -213 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1703 44 -213 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1689 44 -216 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1684 44 -218 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4/2_medallar_cents
execute positioned -1684 44 -219 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1683 44 -219 run function medabots_server:spawn_entities/cannon/detect/rotating/south/delay_4
execute positioned -1707 44 -203 run function medabots_server:set_blocks/pot/bomb/delay_5
execute positioned -1702 44 -201 run function medabots_server:set_blocks/pot/bomb/delay_5
execute positioned -1701 44 -202 run function medabots_server:set_blocks/pot/bomb/delay_5
execute positioned -1703 44 -203 run function medabots_server:set_blocks/pot/6_medallar_cents
execute positioned -1683 44 -200 run function medabots_server:set_blocks/stone
tag @e[x=-1709.5,y=44,z=-208.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1705 44 -208
effect give @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1764,y=50,z=-247,dx=88,dy=4,dz=63,tag=0] -1702 44 -207
summon minecraft:armor_stand -1705 44 -209 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:iceberg_a/robattle value 3600
bossbar set medabots_server:iceberg_a/robattle players @a[scores={Stage=6}]
bossbar set medabots_server:iceberg_a/time players