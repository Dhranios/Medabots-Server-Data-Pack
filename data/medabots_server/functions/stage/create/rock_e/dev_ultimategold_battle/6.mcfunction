execute unless entity @a[scores={StageIndex=6,Gamemode=0,Stage=53}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=6,Gamemode=0,Stage=53}] run summon minecraft:item 68 53 40 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villain","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_grave_lane"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villain","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_tudge_shield"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villain","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_crime_stick"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villain","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_protoauto"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:50},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:4,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:monkey_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:66,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_grave_lane"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villain"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_grave_lane.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:le_villain_grave_lane",gender:0b,move:"laser",part:"head",armor:50,charge:60,power:17,uses:4,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:66,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_tudge_shield"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villain"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_tudge_shield.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:le_villain_tudge_shield",gender:0b,move:"defense",part:"right_arm",armor:90,charge:60,power:17,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:66,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_crime_stick"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.ineffective"}','{"italic":false,"color":"white","translate":"medabots_server:move.ineffective.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villain"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_crime_stick.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:le_villain_crime_stick",gender:0b,move:"ineffective",part:"left_arm",armor:60,charge:60,power:15,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:66,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_protoauto"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villain"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.le_villain_protoauto.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:le_villain_protoauto",gender:0b,move:"wheel",part:"legs",armor:55,defense:35,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned 57 53 32 run function medabots_server:spawn_entities/guard/slow
execute positioned 58 53 31 run function medabots_server:spawn_entities/guard/slow
execute positioned 58 53 33 run function medabots_server:spawn_entities/guard/slow
execute positioned 63 53 31 run function medabots_server:spawn_entities/guard/slow
execute positioned 63 53 33 run function medabots_server:spawn_entities/guard/slow
execute positioned 64 53 32 run function medabots_server:spawn_entities/guard/medium
execute positioned 63 53 37 run function medabots_server:spawn_entities/guard/slow
execute positioned 65 53 37 run function medabots_server:spawn_entities/guard/slow
execute positioned 64 53 38 run function medabots_server:spawn_entities/guard/slow
execute positioned 62 53 41 run function medabots_server:spawn_entities/guard/fast
execute positioned 64 53 42 run function medabots_server:spawn_entities/guard/fast
execute positioned 59 53 32 run function medabots_server:spawn_entities/cannon/search/west/delay_4/2_medallar_cents
execute positioned 65 53 30 run function medabots_server:spawn_entities/cannon/tripwire/west/delay_4/2_medallar_cents
execute positioned 69 53 34 run function medabots_server:spawn_entities/cannon/tripwire/west/delay_4/2_medallar_cents
execute positioned 68 53 36 run function medabots_server:set_blocks/glass
execute positioned 67 53 37 run function medabots_server:set_blocks/glass
scoreboard players set @e[x=52.5,y=53,z=30.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 54 53 26
effect give @a[scores={StageIndex=6,Gamemode=0,Stage=53}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=6,Gamemode=0,Stage=53}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=6,Gamemode=0,Stage=53}] State 2
teleport @a[scores={StageIndex=6,Gamemode=0,Stage=53}] 68 53 40
summon minecraft:area_effect_cloud 60 53 34 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:rock_e/robattle value 3600
bossbar set medabots_server:rock_e/robattle players @a[scores={Gamemode=0,Stage=53}]
bossbar set medabots_server:rock_e/time players