execute unless entity @a[scores={StageIndex=2,Gamemode=0,Stage=12}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=2,Gamemode=0,Stage=12}] run summon minecraft:item -1650 45 -466 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_king_balcony"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burncapsule"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_tyrantower"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:20},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:4,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_king_balcony"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_king_balcony.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:baroncastle_king_balcony",gender:0b,move:"falling",part:"head",armor:55,power:28,uses:8,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:30,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.guard_optical"}','{"italic":false,"color":"white","translate":"medabots_server:move.guard_optical.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dondoguu_dohtack",gender:0b,move:"guard_optical",part:"right_arm",armor:55,power:0,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burncapsule"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burncapsule.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:fly_falcon_burncapsule",gender:0b,move:"napalm",part:"left_arm",armor:50,power:24,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_tyrantower"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"28"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_tyrantower.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:baroncastle_tyrantower",gender:0b,move:"float",part:"legs",armor:60,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1643 45 -449 run function medabots_server:spawn_entities/cannon/swivel/north/delay_4
execute positioned -1649 45 -450 run function medabots_server:spawn_entities/cannon/swivel/north/delay_4
execute positioned -1662 45 -457 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4
execute positioned -1661 45 -472 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4
execute positioned -1646 45 -475 run function medabots_server:spawn_entities/cannon/swivel/south/delay_4
execute positioned -1653 45 -460 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1646 45 -464 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1653 45 -472 run function medabots_server:set_blocks/laser_trap/south/delay_10/power_0
execute positioned -1640 45 -467 run function medabots_server:set_blocks/laser_trap/west/delay_10/power_0
execute positioned -1661 45 -462 run function medabots_server:set_blocks/laser_trap/east/delay_10/power_0
execute positioned -1640 45 -456 run function medabots_server:set_blocks/laser_trap/west/delay_10/power_0
scoreboard players set @e[x=-1634.5,y=45,z=-450.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1649 45 -462
effect give @a[scores={StageIndex=2,Gamemode=0,Stage=12}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=2,Gamemode=0,Stage=12}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=2,Gamemode=0,Stage=12}] State 2
teleport @a[scores={StageIndex=2,Gamemode=0,Stage=12}] -1650 45 -466
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1648 45 -464 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1651 45 -464 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:jungle_b/robattle value 3600
bossbar set medabots_server:jungle_b/robattle players @a[scores={Gamemode=0,Stage=12}]
bossbar set medabots_server:jungle_b/time players