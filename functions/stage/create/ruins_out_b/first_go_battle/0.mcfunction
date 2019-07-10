execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] positioned -1853 45 -497 run function medabots_server:spawn_entities/enemy_medabot/knight_armor/doctor_study/attack_tyrano/knight_armor/chameleon
execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] positioned -1853 45 -497 run scoreboard players set @e[distance=..1] Stage 16
execute positioned -1854 45 -495 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1854 45 -499 run function medabots_server:spawn_entities/mission/guard/slow
execute positioned -1854 45 -501 run function medabots_server:spawn_entities/cannon/no_detect/rotating/east/delay_4
execute positioned -1854 45 -493 run function medabots_server:spawn_entities/cannon/no_detect/rotating/east/delay_4
execute positioned -1851 45 -502 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1849 45 -500 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1849 45 -494 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1851 45 -492 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
tag @e[x=-1842.5,y=45,z=-495.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1849 45 -497
effect give @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] Battle 2
teleport @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] -1853 45 -512
summon minecraft:area_effect_cloud -1850 45 -498 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:ruins_out_b/robattle value 3600
bossbar set medabots_server:ruins_out_b/robattle players @a[scores={Stage=16}]
bossbar set medabots_server:ruins_out_b/time players