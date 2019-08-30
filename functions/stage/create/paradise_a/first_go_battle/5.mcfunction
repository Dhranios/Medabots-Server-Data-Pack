execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] positioned -1743 45 -669 run function medabots_server:spawn_entities/medabot/fly_falcon/shoot_spider/basstroyer/fly_falcon/kabuto
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] positioned -1743 45 -669 run scoreboard players set @e[distance=..1] Stage 21
execute unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] positioned -1743 45 -669 run tag @e[distance=..1] add enemy_medabot
execute positioned -1738 45 -666 run function medabots_server:spawn_entities/guard/medium
execute positioned -1734 45 -675 run function medabots_server:spawn_entities/guard/medium
execute positioned -1739 45 -679 run function medabots_server:spawn_entities/guard/medium
execute positioned -1748 45 -678 run function medabots_server:spawn_entities/guard/medium
execute positioned -1753 45 -672 run function medabots_server:spawn_entities/guard/medium
execute positioned -1754 45 -666 run function medabots_server:spawn_entities/guard/medium
execute positioned -1733 45 -669 run function medabots_server:spawn_entities/mission/cannon/search/west/delay_4
execute positioned -1732 45 -679 run function medabots_server:spawn_entities/mission/cannon/search/west/delay_4
execute positioned -1744 45 -680 run function medabots_server:spawn_entities/mission/cannon/search/south/delay_4
execute positioned -1754 45 -677 run function medabots_server:spawn_entities/mission/cannon/search/east/delay_4
execute positioned -1751 45 -665 run function medabots_server:spawn_entities/mission/cannon/search/east/delay_4
scoreboard players set @e[x=-1739.5,y=45,z=-681.5,distance=..0.7,tag=door,scores={NeededPower=0}] NeededPower 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1744 45 -673
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] minecraft:night_vision 2 0 true
effect give @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] Battle 2
teleport @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] -1743 45 -669
summon minecraft:area_effect_cloud -1746 45 -670 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Stage=21}]
bossbar set medabots_server:paradise_a/time players