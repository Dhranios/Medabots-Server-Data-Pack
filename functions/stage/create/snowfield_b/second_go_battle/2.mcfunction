execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=2] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=2] run function medabots_server:stage/create/snowfield_b/second_go_battle/2_cpu
execute positioned -1673 45 -481 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned -1673 45 -481 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1680 45 -487 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1679 45 -489 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1677 45 -485 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1674 45 -485 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1673 45 -482 run function medabots_server:spawn_entities/balloon_bomb
tag @e[x=-1683.5,y=45,z=-486.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1678 45 -487
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=2] minecraft:night_vision 2 0 true
effect give @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=2] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=2] Battle 2
teleport @a[x=-1762,y=51,z=-538,dx=94,dy=4,dz=93,tag=2] -1675 45 -486
summon minecraft:area_effect_cloud -1676 45 -485 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:snowfield_b/robattle value 3600
bossbar set medabots_server:snowfield_b/robattle players @a[scores={Stage=14}]