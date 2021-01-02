execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=16}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=16}] run summon minecraft:item 5 53 39 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_clearshield"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_point_radar"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_trojan_horse"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:8,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.level","with":[{"text":"16"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,xp:{levels:16,points:0},id:"medabots_server:chameleon_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_clearshield"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"100"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_clearshield.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_armor_clearshield",gender:0b,move:"defense",part:"head",armor:100,charge:60,power:52,uses:8,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:3,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_point_radar"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_point_radar.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:doctor_study_point_radar",gender:0b,move:"scout",part:"right_arm",armor:65,charge:60,power:31,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:attack_tyrano_strike_hit",gender:0b,move:"hammer",part:"left_arm",armor:40,charge:60,power:32,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_trojan_horse"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"32"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.knight_armor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.knight_armor_trojan_horse.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_armor_trojan_horse",gender:0b,move:"wheel",part:"legs",armor:60,defense:32,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned 4 53 41 run function medabots_server:spawn_entities/guard/slow/mission
execute positioned 4 53 37 run function medabots_server:spawn_entities/guard/slow/mission
execute positioned 4 53 35 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4
execute positioned 4 53 43 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4
execute positioned 7 53 34 run function medabots_server:set_blocks/action_floor/balloon_bomb/power_0
execute positioned 9 53 36 run function medabots_server:set_blocks/action_floor/balloon_bomb/power_0
execute positioned 9 53 42 run function medabots_server:set_blocks/action_floor/balloon_bomb/power_0
execute positioned 7 53 44 run function medabots_server:set_blocks/action_floor/balloon_bomb/power_0
scoreboard players set @e[x=15.5,y=53,z=39.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 9 53 39
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=16}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=16}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=0,Gamemode=0,Stage=16}] State 2
teleport @a[scores={StageIndex=0,Gamemode=0,Stage=16}] 5 53 24
summon minecraft:area_effect_cloud 8 53 38 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:ruins_out_b/robattle max 3600
bossbar set medabots_server:ruins_out_b/robattle value 3600
bossbar set medabots_server:ruins_out_b/robattle players @a[scores={Gamemode=0,Stage=16}]
bossbar set medabots_server:ruins_out_b/time players