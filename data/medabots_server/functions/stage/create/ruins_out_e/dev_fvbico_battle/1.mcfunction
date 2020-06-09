execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=58}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=58}] run summon minecraft:item -1909 45 -531 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.devil_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_boartusk"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_drillril"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_woollybond"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_mashglow"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:50},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:11,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.devil_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:devil_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:29,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_boartusk"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"12"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_boartusk.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:boarbooster_boartusk",gender:1b,move:"hammer",part:"head",armor:55,charge:60,power:28,uses:12,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:29,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_drillril"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:move.break.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_drillril.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:boarbooster_drillril",gender:1b,move:"break",part:"right_arm",armor:50,charge:60,power:30,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:29,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_woollybond"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:move.break.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_woollybond.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:boarbooster_woollybond",gender:1b,move:"break",part:"left_arm",armor:50,charge:60,power:36,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:29,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_mashglow"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"28"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_mashglow.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:boarbooster_mashglow",gender:1b,move:"fly",part:"legs",armor:40,defense:28,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned -1906 45 -518 run function medabots_server:spawn_entities/cannon/swivel/west/delay_3
execute positioned -1906 45 -520 run function medabots_server:spawn_entities/cannon/swivel/west/delay_2
execute positioned -1906 45 -522 run function medabots_server:spawn_entities/cannon/swivel/west/delay_4
execute positioned -1906 45 -524 run function medabots_server:spawn_entities/cannon/swivel/west/delay_3
execute positioned -1906 45 -526 run function medabots_server:spawn_entities/cannon/swivel/west/delay_2
execute positioned -1906 45 -528 run function medabots_server:spawn_entities/cannon/swivel/west/delay_4
execute positioned -1916 45 -530 run function medabots_server:spawn_entities/item/4_medallar_cents
execute positioned -1921 45 -531 run function medabots_server:set_blocks/pot/guard/fast
execute positioned -1920 45 -531 run function medabots_server:set_blocks/pot/guard/fast
execute positioned -1917 45 -534 run function medabots_server:set_blocks/pot/guard/fast
execute positioned -1917 45 -535 run function medabots_server:set_blocks/pot/guard/fast
execute positioned -1921 45 -535 run function medabots_server:set_blocks/pot/1_medallar_cent
scoreboard players set @e[x=-1916.5,y=45,z=-512.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1917 45 -517
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=58}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=58}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=58}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=58}] -1874 45 -531
summon minecraft:area_effect_cloud -1914 45 -521 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_out_e/robattle value 3600
bossbar set medabots_server:ruins_out_e/robattle players @a[scores={Gamemode=0,Stage=58}]
bossbar set medabots_server:ruins_out_e/time players