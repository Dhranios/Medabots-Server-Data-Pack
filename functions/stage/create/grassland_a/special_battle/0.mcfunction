execute unless entity @a[x=-1570,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] positioned -1542 45 -172 run function medabots_server:spawn_entities/medabot/king_pharaoh/king_pharaoh/king_pharaoh/king_pharaoh/kabuto
execute unless entity @a[x=-1570,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] positioned -1542 45 -172 run scoreboard players set @e[distance=..1] Stage 2
execute unless entity @a[x=-1570,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] positioned -1542 45 -172 run tag @e[distance=..1] add enemy_medabot
execute unless entity @a[x=-1570,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] positioned -1542 45 -172 as @e[distance=..1] run data merge entity @s {CustomName:'{"translate":"medabots_server:entity.blue_man"}'}
execute positioned -1543 45 -175 run function medabots_server:spawn_entities/guard/medium/20_medallar_cents
execute positioned -1543 45 -169 run function medabots_server:spawn_entities/guard/medium/20_medallar_cents
execute positioned -1551 45 -172 run function medabots_server:spawn_entities/guard/medium
execute positioned -1557 45 -174 run function medabots_server:spawn_entities/guard/medium
execute positioned -1565 45 -174 run function medabots_server:spawn_entities/guard/medium
execute positioned -1544 45 -170 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned -1544 45 -174 run function medabots_server:spawn_entities/cannon/search/west/delay_4
summon minecraft:item -1565 45 -172 {Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall.model"}']},medabots_server:{stage_item:1b,id:"medabots_server:king_pharaoh_black_hall",gender:0b,move:"press",part:"right_arm",armor:80,power:18,activated:0b,version:1}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
execute positioned -1534 45 -168 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1536 45 -177 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1542 45 -167 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1542 45 -176 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1547 45 -172 run function medabots_server:set_blocks/door/east/power_1
scoreboard players set @e[x=-1527.5,y=45,z=-170.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1533 45 -172
effect give @a[x=-1570,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1570,y=51,z=-180,dx=63,dy=4,dz=63,tag=0] -1542 45 -172
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1531 45 -172 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1544 45 -172 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:grassland_a/robattle value 3600
bossbar set medabots_server:grassland_a/robattle players @a[scores={Stage=1}]
bossbar set medabots_server:grassland_a/time players