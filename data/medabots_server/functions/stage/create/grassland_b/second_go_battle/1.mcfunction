execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=10}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=10}] run summon minecraft:item -1529 45 -400 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_zera_reactor"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_cure_hand"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_fin"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:14},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:2,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:mermaid_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:44,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_zera_reactor"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.repair"}','{"italic":false,"color":"white","translate":"medabots_server:move.repair.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_zera_reactor.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pinguen_zera_reactor",gender:1b,move:"repair",part:"head",armor:40,power:16,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:43,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_cure_hand"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_cure_hand.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pure_mermaid_cure_hand",gender:1b,move:"heal",part:"right_arm",armor:40,power:50,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flop",gender:1b,move:"freeze",part:"left_arm",armor:35,power:30,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:44,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_fin"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.swim"}','{"italic":false,"color":"white","translate":"medabots_server:move.swim.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"56"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_fin.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pinguen_fin",gender:1b,move:"swim",part:"legs",armor:40,defense:56,activated:0b,model_data:{height:0,leg_offset:[]},version:1}}}},version:1}}}}
execute positioned -1533 45 -404 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1532 45 -399 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1526 45 -393 run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute positioned -1519 45 -393 run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute positioned -1514 45 -398 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned -1515 45 -403 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned -1521 45 -410 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1527 45 -409 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1531 45 -404 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1530 45 -399 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1526 45 -395 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1519 45 -395 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1516 45 -398 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1517 45 -403 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1521 45 -408 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute positioned -1527 45 -407 run function medabots_server:set_blocks/floor_switch/yellow/delay_20
scoreboard players set @e[x=-1537.5,y=45,z=-402.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1521 45 -401
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=10}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=10}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=10}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=10}] -1529 45 -400
summon minecraft:area_effect_cloud -1524 45 -399 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:grassland_b/robattle value 3600
bossbar set medabots_server:grassland_b/robattle players @a[scores={Gamemode=0,Stage=10}]
bossbar set medabots_server:grassland_b/time players