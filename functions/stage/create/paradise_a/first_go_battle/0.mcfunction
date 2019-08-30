execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] positioned -1674 45 -647 run function medabots_server:spawn_entities/medabot/grade_kabuki/kanehachi_mk2/dondoguu/grade_kabuki/alien
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] positioned -1674 45 -647 run scoreboard players set @e[distance=..1] Stage 21
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] positioned -1674 45 -647 run tag @e[distance=..1] add enemy_medabot
execute positioned -1690 45 -683 run function medabots_server:spawn_entities/mission/guard/medium
execute positioned -1692 45 -676 run function medabots_server:spawn_entities/mission/guard/medium
execute positioned -1686 45 -665 run function medabots_server:spawn_entities/mission/guard/medium
execute positioned -1679 45 -668 run function medabots_server:spawn_entities/mission/guard/medium
execute positioned -1683 45 -653 run function medabots_server:spawn_entities/mission/guard/medium
scoreboard players set @e[x=-1682.5,y=45,z=-693.5,distance=..0.7,tag=door,scores={NeededPower=0}] NeededPower 1
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