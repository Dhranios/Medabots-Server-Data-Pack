execute unless entity @a[scores={StageIndex=2,Gamemode=0,Stage=14}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=2,Gamemode=0,Stage=14}] run summon minecraft:item 87 53 52 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_search_radar"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.kasou_touchu","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_chairly"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:8,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.level","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,xp:{levels:20,points:0},id:"medabots_server:chameleon_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:3,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_search_radar"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"100"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_search_radar.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:doctor_study_search_radar",gender:0b,move:"scout",part:"head",armor:100,charge:60,power:56,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:5,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kasou_touchu"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kasou_touchu_shitake",gender:0b,move:"no_defend",part:"right_arm",armor:60,charge:60,power:16,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:20,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:basstroyer_srounding",gender:0b,move:"destroy",part:"left_arm",armor:35,charge:60,power:59,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:3,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_chairly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"28"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.doctor_study"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.doctor_study_chairly.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:doctor_study_chairly",gender:0b,move:"wheel",part:"legs",armor:60,defense:28,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned 89 53 57 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned 89 53 57 run function medabots_server:set_blocks/floor_switch/green
execute positioned 82 53 51 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 83 53 49 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 85 53 53 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 88 53 53 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 89 53 56 run function medabots_server:spawn_entities/balloon_bomb
scoreboard players set @e[x=78.5,y=53,z=51.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 84 53 51
effect give @a[scores={StageIndex=2,Gamemode=0,Stage=14}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=2,Gamemode=0,Stage=14}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=2,Gamemode=0,Stage=14}] State 2
teleport @a[scores={StageIndex=2,Gamemode=0,Stage=14}] 87 53 52
summon minecraft:area_effect_cloud 86 53 53 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:snowfield_b/robattle max 3600
bossbar set medabots_server:snowfield_b/robattle value 3600
bossbar set medabots_server:snowfield_b/robattle players @a[scores={Gamemode=0,Stage=14}]
bossbar set medabots_server:snowfield_b/time players