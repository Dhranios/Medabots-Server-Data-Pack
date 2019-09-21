execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=1] positioned -1683 44 -559 run function medabots_server:spawn_entities/medabot/pastel_fairy/pure_mermaid/frappe/pastel_fairy/chameleon
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=1] positioned -1683 44 -559 run scoreboard players set @e[distance=..1] Stage 18
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=1] positioned -1683 44 -559 run tag @e[distance=..1] add enemy_medabot
execute positioned -1690 44 -571 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1693 44 -551 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1679 44 -567 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1679 44 -551 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1691 44 -569 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1689 44 -551 run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute positioned -1680 44 -571 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1675 44 -559 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned -1690 44 -564 run function medabots_server:spawn_entities/round_stone
execute positioned -1677 44 -568 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1689 44 -570 run function medabots_server:set_blocks/mirror/45
execute positioned -1689 44 -554 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1680 44 -554 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1688 44 -551 run function medabots_server:set_blocks/glass
scoreboard players set @e[x=-1696.5,y=44,z=-559.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1687 44 -559
effect give @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=1] Battle 2
teleport @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,tag=1] -1683 44 -559
summon minecraft:area_effect_cloud -1685 44 -560 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:laboratory_b/robattle value 3600
bossbar set medabots_server:laboratory_b/robattle players @a[scores={Stage=18}]
bossbar set medabots_server:laboratory_b/time players