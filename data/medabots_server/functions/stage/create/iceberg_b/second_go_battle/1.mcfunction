execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=15}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=15}] run summon minecraft:item -1820 44 -433 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_allrepair"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_new_arm"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_purple_fins"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:20},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:2,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:43,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_allrepair"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"10"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_allrepair.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pure_mermaid_allrepair",gender:1b,move:"heal",part:"head",armor:65,power:10,uses:10,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flap",gender:1b,move:"freeze",part:"right_arm",armor:35,power:26,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:44,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_new_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.repair"}','{"italic":false,"color":"white","translate":"medabots_server:move.repair.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"25"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_new_arm.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pinguen_new_arm",gender:1b,move:"repair",part:"left_arm",armor:25,power:20,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:43,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_purple_fins"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.swim"}','{"italic":false,"color":"white","translate":"medabots_server:move.swim.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"64"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_purple_fins.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pure_mermaid_purple_fins",gender:1b,move:"swim",part:"legs",armor:50,defense:64,activated:0b,model_data:{leg_count:0,has_wormtail:1b},version:1}}}},version:1}}}}
execute positioned -1812 44 -428 run function medabots_server:spawn_entities/guard/slow
execute positioned -1821 44 -435 run function medabots_server:spawn_entities/guard/slow
execute positioned -1821 44 -431 run function medabots_server:spawn_entities/guard/slow
execute positioned -1822 44 -432 run function medabots_server:spawn_entities/cannon/search/east/delay_4/mission
execute positioned -1822 44 -434 run function medabots_server:spawn_entities/cannon/search/east/delay_4/mission
execute positioned -1819 44 -424 run function medabots_server:spawn_entities/cannon/search/west/delay_4/mission
execute positioned -1821 44 -430 run function medabots_server:spawn_entities/ice_block
execute positioned -1822 44 -430 run function medabots_server:spawn_entities/ice_block
scoreboard players set @e[x=-1808.5,y=44,z=-423.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1816 44 -433
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=15}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=15}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=15}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=15}] -1820 44 -433
summon minecraft:area_effect_cloud -1817 44 -432 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:iceberg_b/robattle value 3600
bossbar set medabots_server:iceberg_b/robattle players @a[scores={Gamemode=0,Stage=15}]
bossbar set medabots_server:iceberg_b/time players