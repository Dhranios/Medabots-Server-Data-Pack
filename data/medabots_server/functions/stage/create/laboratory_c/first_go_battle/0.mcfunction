execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=28}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=28}] run summon minecraft:item -1585 44 -612 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",medabot_name:'{"translate":"medabots_server:entity.doctor_haru"}',overwrite_robattle_music:21},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:4,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackbalister",gender:1b,move:"missile",part:"head",armor:65,power:31,uses:6,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackfuser",gender:1b,move:"rifle",part:"right_arm",armor:35,power:40,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackblaster",gender:1b,move:"gatling",part:"left_arm",armor:35,power:28,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"44"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackplace",gender:1b,move:"two_legged",part:"legs",armor:40,defense:44,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
execute positioned -1578 44 -607 run function medabots_server:spawn_entities/guard/medium/10_medallar_cents
execute positioned -1584 44 -605 run function medabots_server:spawn_entities/cannon/search/north/delay_4/10_medallar_cents
execute positioned -1589 44 -606 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1577 44 -618 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1583 44 -615 run function medabots_server:spawn_entities/round_stone
execute positioned -1578 44 -618 run function medabots_server:spawn_entities/ice_block
execute positioned -1589 44 -606 run function medabots_server:spawn_entities/balloon_bomb
execute positioned -1589 44 -611 run function medabots_server:spawn_entities/bomb/delay_5
execute positioned -1589 44 -615 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1587 44 -602 run function medabots_server:set_blocks/laser_trap/north/delay_10/power_0
execute positioned -1578 44 -602 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1594 44 -613 run function medabots_server:set_blocks/fan/east/slow/range_19
execute positioned -1593 44 -617 run function medabots_server:set_blocks/mirror/45
execute positioned -1592 44 -610 run function medabots_server:set_blocks/gas_floor/falling/power_0
execute positioned -1585 44 -617 run function medabots_server:set_blocks/wall
execute positioned -1593 44 -603 run function medabots_server:set_blocks/glass
execute positioned -1581 44 -609 run function medabots_server:set_blocks/stone
execute positioned -1579 44 -614 run function medabots_server:set_blocks/accelerator/north
scoreboard players set @e[x=-1585.5,y=44,z=-597.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1586 44 -608
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=28}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=28}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=0,Gamemode=0,Stage=28}] State 2
teleport @a[scores={StageIndex=0,Gamemode=0,Stage=28}] -1585 44 -612
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1584 44 -611 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[45.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1587 44 -609 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-135.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
scoreboard players set @e[x=-1596,y=42,z=-620,dx=22,dy=7,dz=44,tag=mr_referee] MusicType 55
bossbar set medabots_server:laboratory_c/robattle value 3600
bossbar set medabots_server:laboratory_c/robattle players @a[scores={Gamemode=0,Stage=28}]
bossbar set medabots_server:laboratory_c/time players