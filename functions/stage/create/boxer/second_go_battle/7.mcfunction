execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] positioned -1890 44 -578 run function medabots_server:spawn_entities/enemy_medabot/blackbeetle
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] positioned -1890 44 -578 run scoreboard players set @e[distance=..1] Stage 29
execute positioned -1892 44 -561 run function medabots_server:set_blocks/gas_floor/enabled/confuse
execute positioned -1887 44 -561 run function medabots_server:set_blocks/gas_floor/enabled/no_defend
execute positioned -1900 44 -569 run function medabots_server:set_blocks/gas_floor/enabled/confuse
execute positioned -1900 44 -574 run function medabots_server:set_blocks/gas_floor/enabled/ineffective
execute positioned -1892 44 -582 run function medabots_server:set_blocks/gas_floor/enabled/ineffective
execute positioned -1887 44 -582 run function medabots_server:set_blocks/gas_floor/enabled/no_defend
execute positioned -1879 44 -574 run function medabots_server:set_blocks/gas_floor/enabled/no_defend
execute positioned -1879 44 -569 run function medabots_server:set_blocks/gas_floor/enabled/falling
execute positioned -1887 44 -569 run function medabots_server:set_blocks/gas_floor/enabled/falling
execute positioned -1892 44 -569 run function medabots_server:set_blocks/gas_floor/enabled/no_defend
execute positioned -1892 44 -574 run function medabots_server:set_blocks/gas_floor/enabled/ineffective
execute positioned -1887 44 -574 run function medabots_server:set_blocks/gas_floor/enabled/confuse
tag @e[x=-1889.5,y=44,z=-557.5,distance=..0.7,tag=door,tag=open] remove open
tag @e[x=-1878.5,y=44,z=-561.5,distance=..0.7,tag=door,tag=open] remove open
tag @e[x=-1875.5,y=44,z=-570.5,distance=..0.7,tag=door,tag=open] remove open
tag @e[x=-1879.5,y=44,z=-581.5,distance=..0.7,tag=door,tag=open] remove open
tag @e[x=-1888.5,y=44,z=-584.5,distance=..0.7,tag=door,tag=open] remove open
tag @e[x=-1899.5,y=44,z=-580.5,distance=..0.7,tag=door,tag=open] remove open
tag @e[x=-1902.5,y=44,z=-571.5,distance=..0.7,tag=door,tag=open] remove open
tag @e[x=-1898.5,y=44,z=-560.5,distance=..0.7,tag=door,tag=open] remove open
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1889 44 -565
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=7] -1890 44 -578
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1887 44 -571 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1892 44 -572 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=29}]
bossbar set medabots_server:boxer/time players