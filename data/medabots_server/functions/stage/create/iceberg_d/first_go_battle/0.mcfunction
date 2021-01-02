execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=33}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=33}] run summon minecraft:item 22 53 50 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_catch"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.grade_kabuki","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.level","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,xp:{levels:40,points:0},id:"medabots_server:kabuto_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"105"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_hardweighter",gender:0b,move:"press",part:"head",armor:105,charge:60,power:25,uses:15,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:21,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_catch"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hold"}','{"italic":false,"color":"white","translate":"medabots_server:move.hold.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_catch.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kanehachi_mk2_catch",gender:0b,move:"hold",part:"right_arm",armor:40,charge:60,power:15,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.confuse"}','{"italic":false,"color":"white","translate":"medabots_server:move.confuse.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.grade_kabuki"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:grade_kabuki_acting",gender:0b,move:"confuse",part:"left_arm",armor:50,charge:60,power:16,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"28"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_flyfly",gender:0b,move:"fly",part:"legs",armor:40,defense:28,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned 23 53 41 run function medabots_server:spawn_entities/guard/medium
execute positioned 30 53 45 run function medabots_server:spawn_entities/guard/medium
execute positioned 21 53 47 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned 20 53 47 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned 22 53 42 run function medabots_server:set_blocks/gas_floor/ineffective/power_0
execute positioned 25 53 40 run function medabots_server:set_blocks/stone
execute positioned 29 53 43 run function medabots_server:set_blocks/pot
execute positioned 29 53 44 run function medabots_server:set_blocks/pot
scoreboard players set @e[x=19.5,y=53,z=58.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 23 53 55
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=33}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=33}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=0,Gamemode=0,Stage=33}] State 2
teleport @a[scores={StageIndex=0,Gamemode=0,Stage=33}] 22 53 50
summon minecraft:area_effect_cloud 24 53 53 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:iceberg_d/robattle max 3600
bossbar set medabots_server:iceberg_d/robattle value 3600
bossbar set medabots_server:iceberg_d/robattle players @a[scores={Gamemode=0,Stage=33}]
bossbar set medabots_server:iceberg_d/time players