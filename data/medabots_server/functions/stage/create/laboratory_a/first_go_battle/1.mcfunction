execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=9}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=9}] run summon minecraft:item 12 53 62 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_clearshield"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_dagger"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_cut_radar"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_trojan_horse"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:9},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:8,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:chameleon_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_clearshield"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"100"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_clearshield.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_armor_clearshield",gender:0b,move:"defense",part:"head",armor:100,charge:60,power:52,uses:8,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_dagger"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_dagger.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nin_ninja_ninja_dagger",gender:0b,move:"sword",part:"right_arm",armor:40,charge:60,power:20,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:3,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_cut_radar"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_cut_radar.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:doctor_study_cut_radar",gender:0b,move:"scout",part:"left_arm",armor:65,charge:60,power:41,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_trojan_horse"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"32"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_trojan_horse.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_armor_trojan_horse",gender:0b,move:"wheel",part:"legs",armor:60,defense:32,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned 17 53 52 run function medabots_server:spawn_entities/guard/slow
execute positioned 6 53 57 run function medabots_server:spawn_entities/guard/slow
execute positioned 17 53 62 run function medabots_server:spawn_entities/guard/slow
execute positioned 6 53 67 run function medabots_server:spawn_entities/guard/slow
scoreboard players set @e[x=11.5,y=53,z=49.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 11 53 57
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=9}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=9}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=9}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=9}] 12 53 62
summon minecraft:area_effect_cloud 11 53 59 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:laboratory_a/robattle value 3600
bossbar set medabots_server:laboratory_a/robattle players @a[scores={Gamemode=0,Stage=9}]
bossbar set medabots_server:laboratory_a/time players