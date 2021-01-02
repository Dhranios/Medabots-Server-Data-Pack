execute unless entity @a[scores={StageIndex=6,Gamemode=0,Stage=29}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=6,Gamemode=0,Stage=29}] run summon minecraft:item 15 52 50 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_dont_move"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_light_blow"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_caterpie"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:4,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.level","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,xp:{levels:40,points:0},id:"medabots_server:monkey_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_changedress",gender:1b,move:"transform",part:"head",armor:90,charge:60,power:25,uses:7,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_dont_move"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"25"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_dont_move.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pretty_prime_dont_move",gender:1b,move:"freeze",part:"right_arm",armor:25,charge:60,power:28,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_light_blow"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.paralyze"}','{"italic":false,"color":"white","translate":"medabots_server:move.paralyze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_light_blow.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:peppercat_light_blow",gender:1b,move:"paralyze",part:"left_arm",armor:40,charge:60,power:28,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_caterpie"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"28"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_caterpie.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_caterpie",gender:1b,move:"wheel",part:"legs",armor:55,defense:28,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned 15 53 56 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned 18 53 42 run function medabots_server:set_blocks/press_wall/south/range_5/power_1
execute positioned 16 53 41 run function medabots_server:set_blocks/press_wall/south/range_8/power_1
execute positioned 13 53 41 run function medabots_server:set_blocks/press_wall/south/range_8/power_1
execute positioned 11 53 42 run function medabots_server:set_blocks/press_wall/south/range_5/power_1
execute positioned 8 53 45 run function medabots_server:set_blocks/press_wall/east/range_3/power_1
execute positioned 7 53 47 run function medabots_server:set_blocks/press_wall/east/range_6/power_1
execute positioned 7 53 50 run function medabots_server:set_blocks/press_wall/east/range_6/power_1
execute positioned 8 53 52 run function medabots_server:set_blocks/press_wall/east/range_3/power_1
execute positioned 11 53 55 run function medabots_server:set_blocks/press_wall/north/range_5/power_1
execute positioned 13 53 56 run function medabots_server:set_blocks/press_wall/north/range_8/power_1
execute positioned 16 53 56 run function medabots_server:set_blocks/press_wall/north/range_8/power_1
execute positioned 18 53 55 run function medabots_server:set_blocks/press_wall/north/range_5/power_1
execute positioned 21 53 52 run function medabots_server:set_blocks/press_wall/west/range_3/power_1
execute positioned 22 53 50 run function medabots_server:set_blocks/press_wall/west/range_6/power_1
execute positioned 22 53 47 run function medabots_server:set_blocks/press_wall/west/range_6/power_1
execute positioned 21 53 45 run function medabots_server:set_blocks/press_wall/west/range_3/power_1
scoreboard players set @e[x=21.5,y=53,z=42.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 15 53 43
effect give @a[scores={StageIndex=6,Gamemode=0,Stage=29}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=6,Gamemode=0,Stage=29}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=6,Gamemode=0,Stage=29}] State 2
teleport @a[scores={StageIndex=6,Gamemode=0,Stage=29}] 15 53 43
summon minecraft:area_effect_cloud 14 53 49 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle max 3600
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Gamemode=0,Stage=29}]
bossbar set medabots_server:boxer/time players