execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] run function medabots_server:stage/create/boxer/first_go_battle/0_cpu
execute positioned -1865 44 -555 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1877 44 -557 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1875 44 -559 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1870 44 -559 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1868 44 -557 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1868 44 -552 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1870 44 -550 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1875 44 -550 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
execute positioned -1877 44 -552 run function medabots_server:set_blocks/action_floor/enabled/balloon_bomb
tag @e[x=-1878.5,y=44,z=-561.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1874 44 -554
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=0] -1871 44 -555
summon minecraft:area_effect_cloud -1872 44 -554 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=29}]