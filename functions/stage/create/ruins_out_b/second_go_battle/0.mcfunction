execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] positioned -1853 45 -512 run function medabots_server:spawn_entities/medabot/knight_armor/doctor_study/attack_tyrano/knight_armor/chameleon
execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] positioned -1853 45 -512 run scoreboard players set @e[distance=..1] Stage 16
execute unless entity @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] positioned -1853 45 -512 run tag @e[distance=..1] add enemy_medabot
execute positioned -1846 45 -508 run function medabots_server:spawn_entities/guard/slow
execute positioned -1846 45 -516 run function medabots_server:spawn_entities/guard/slow
execute positioned -1855 45 -507 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/east/delay_4
execute positioned -1855 45 -509 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/east/delay_4
execute positioned -1855 45 -515 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/east/delay_4
execute positioned -1855 45 -517 run function medabots_server:spawn_entities/mission/cannon/no_detect/rotating/east/delay_4
execute positioned -1850 45 -508 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1850 45 -516 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
tag @e[x=-1842.5,y=45,z=-510.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1848 45 -512
effect give @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] Battle 2
teleport @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] -1853 45 -512
summon minecraft:area_effect_cloud -1850 45 -510 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:ruins_out_b/robattle value 3600
bossbar set medabots_server:ruins_out_b/robattle players @a[scores={Stage=16}]
bossbar set medabots_server:ruins_out_b/time players