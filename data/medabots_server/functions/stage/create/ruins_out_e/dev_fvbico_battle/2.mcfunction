execute unless entity @a[scores={StageIndex=2,Gamemode=0,Stage=58}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=2,Gamemode=0,Stage=58}] run summon minecraft:item -1878 45 -488 {Tags:["spawn_medabot"],Rotation:[90.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinone"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinogone"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_jaguarnote"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:50},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:5,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:spider_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_rhinone",gender:0b,move:"defense",part:"head",armor:90,charge:60,power:77,uses:4,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinogone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinogone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_rhinogone",gender:0b,move:"missile",part:"right_arm",armor:65,charge:60,power:17,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_rhinoburn",gender:0b,move:"missile",part:"left_arm",armor:65,charge:60,power:22,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_jaguarnote"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"48"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_jaguarnote.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_jaguarnote",gender:0b,move:"tank",part:"legs",armor:85,defense:48,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned -1908 45 -504 run function medabots_server:spawn_entities/guard/fast
execute positioned -1906 45 -506 run function medabots_server:spawn_entities/guard/fast
execute positioned -1910 45 -506 run function medabots_server:spawn_entities/guard/fast
execute positioned -1875 45 -502 run function medabots_server:spawn_entities/guard/fast
execute positioned -1876 45 -499 run function medabots_server:spawn_entities/guard/fast
execute positioned -1874 45 -499 run function medabots_server:spawn_entities/guard/fast
execute positioned -1894 45 -509 run function medabots_server:spawn_entities/cannon/search/east/delay_3
execute positioned -1889 45 -509 run function medabots_server:spawn_entities/cannon/search/west/delay_3
execute positioned -1876 45 -511 run function medabots_server:set_blocks/laser_trap/west/delay_4/power_0
execute positioned -1916 45 -530 run function medabots_server:set_blocks/pot/4_medallar_cents
scoreboard players set @e[x=-1904.5,y=45,z=-484.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1905 45 -488
effect give @a[scores={StageIndex=2,Gamemode=0,Stage=58}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=2,Gamemode=0,Stage=58}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=2,Gamemode=0,Stage=58}] State 2
teleport @a[scores={StageIndex=2,Gamemode=0,Stage=58}] -1878 45 -488
summon minecraft:area_effect_cloud -1902 45 -512 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_out_e/robattle value 3600
bossbar set medabots_server:ruins_out_e/robattle players @a[scores={Gamemode=0,Stage=58}]
bossbar set medabots_server:ruins_out_e/time players