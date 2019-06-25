execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] positioned -1674 45 -647 run function medabots_server:spawn_entities/enemy_medabot/grade_kabuki/kanehachi_mk2/dondoguu/grade_kabuki/alien
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] positioned -1674 45 -647 run scoreboard players set @e[distance=..1] Stage 21
execute positioned -1690 45 -684 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1681 45 -675 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1677 45 -668 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1684 45 -663 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1684 45 -653 run function medabots_server:spawn_entities/mission/guard/slow
tag @e[x=-1682.5,y=45,z=-693.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1683 45 -692
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] Battle 2
teleport @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] -1674 45 -647
summon minecraft:area_effect_cloud -1673 45 -649 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Stage=21}]
bossbar set medabots_server:paradise_a/time players