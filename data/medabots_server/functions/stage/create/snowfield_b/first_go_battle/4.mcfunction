execute unless entity @a[scores={StageIndex=4,Gamemode=0,Stage=14}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=4,Gamemode=0,Stage=14}] run summon minecraft:item -1751 45 -528 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_swany"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_feathermend"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_featherdone"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_elegancy"}]}']},medabots_server:{id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:4,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:42,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_swany"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"11"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"95"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_swany.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:uglyduck_swany",gender:1b,move:"no_defend",part:"head",armor:95,power:22,uses:11,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:42,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_feathermend"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:move.break.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_feathermend.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:uglyduck_feathermend",gender:1b,move:"break",part:"right_arm",armor:65,power:26,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:42,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_featherdone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_featherdone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:uglyduck_featherdone",gender:1b,move:"press",part:"left_arm",armor:65,power:26,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:42,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_elegancy"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.swim"}','{"italic":false,"color":"white","translate":"medabots_server:move.swim.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_elegancy.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:uglyduck_elegancy",gender:1b,move:"swim",part:"legs",armor:60,defense:52,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1758 45 -533 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1756 45 -518 run function medabots_server:set_blocks/accelerator/north
execute positioned -1759 45 -521 run function medabots_server:set_blocks/accelerator/north
execute positioned -1755 45 -526 run function medabots_server:set_blocks/accelerator/north
execute positioned -1758 45 -530 run function medabots_server:set_blocks/accelerator/north
execute positioned -1754 45 -534 run function medabots_server:set_blocks/accelerator/north
execute positioned -1751 45 -533 run function medabots_server:set_blocks/accelerator/north
execute positioned -1748 45 -531 run function medabots_server:set_blocks/accelerator/north
execute positioned -1742 45 -528 run function medabots_server:set_blocks/accelerator/north
execute positioned -1747 45 -523 run function medabots_server:set_blocks/accelerator/north
execute positioned -1751 45 -522 run function medabots_server:set_blocks/accelerator/north
execute positioned -1746 45 -519 run function medabots_server:set_blocks/accelerator/north
execute positioned -1741 45 -520 run function medabots_server:set_blocks/accelerator/north
execute positioned -1752 45 -517 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1754 45 -530 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1745 45 -534 run function medabots_server:set_blocks/hole/delay_5
scoreboard players set @e[x=-1746.5,y=45,z=-513.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1752 45 -524
effect give @a[scores={StageIndex=4,Gamemode=0,Stage=14}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=4,Gamemode=0,Stage=14}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=4,Gamemode=0,Stage=14}] Battle 2
teleport @a[scores={StageIndex=4,Gamemode=0,Stage=14}] -1751 45 -528
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1749 45 -526 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1754 45 -526 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:snowfield_b/robattle value 3600
bossbar set medabots_server:snowfield_b/robattle players @a[scores={Gamemode=0,Stage=14}]
bossbar set medabots_server:snowfield_b/time players