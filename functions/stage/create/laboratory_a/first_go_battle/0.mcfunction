execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] positioned -1752 44 -271 run function medabots_server:spawn_entities/enemy_medabot/dragonbeetle/dondoguu/nin_ninja/dragonbeetle/kabuto
execute unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] positioned -1752 44 -271 run scoreboard players set @e[distance=..1] Stage 9
execute positioned -1759 44 -264 run function medabots_server:set_blocks/action_floor/enabled/bomb/delay_10
execute positioned -1759 44 -272 run function medabots_server:set_blocks/action_floor/enabled/bomb/delay_10
execute positioned -1748 44 -267 run function medabots_server:set_blocks/action_floor/enabled/bomb/delay_10
execute positioned -1748 44 -275 run function medabots_server:set_blocks/action_floor/enabled/bomb/delay_10
execute positioned -1760 44 -264 run function medabots_server:set_blocks/spring_wall/enabled/east/delay_10
execute positioned -1760 44 -272 run function medabots_server:set_blocks/spring_wall/enabled/east/delay_10
execute positioned -1747 44 -267 run function medabots_server:set_blocks/spring_wall/enabled/west/delay_10
execute positioned -1747 44 -275 run function medabots_server:set_blocks/spring_wall/enabled/west/delay_10
tag @e[x=-1760.5,y=44,z=-270.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1755 44 -270
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] Battle 2
teleport @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] -1752 44 -271
summon minecraft:area_effect_cloud -1753 44 -270 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:laboratory_a/robattle value 3600
bossbar set medabots_server:laboratory_a/robattle players @a[scores={Stage=9}]
bossbar set medabots_server:laboratory_a/time players