execute unless entity @a[scores={StageIndex=3,Gamemode=0,Stage=58}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=3,Gamemode=0,Stage=58}] run summon minecraft:item -1892 45 -487 {Tags:["spawn_medabot"],Rotation:[-180.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_enticed"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_burst"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_pro_fence"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_depth_sole"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_enticed"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_enticed.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:abyss_greater_enticed",gender:0b,move:"missile",part:"head",armor:75,power:29,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_burst"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_burst.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:abyss_greater_burst",gender:0b,move:"sacrifice",part:"right_arm",armor:50,power:42,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_pro_fence"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_pro_fence.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:abyss_greater_pro_fence",gender:0b,move:"sacrifice",part:"left_arm",armor:50,power:54,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_depth_sole"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.swim"}','{"italic":false,"color":"white","translate":"medabots_server:move.swim.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"56"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_depth_sole.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:abyss_greater_depth_sole",gender:0b,move:"swim",part:"legs",armor:55,defense:56,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1894 45 -507 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1889 45 -507 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1901 45 -499 run function medabots_server:spawn_entities/cannon/search/east/delay_1
execute positioned -1882 45 -499 run function medabots_server:spawn_entities/cannon/search/west/delay_1
execute positioned -1897 45 -490 run function medabots_server:spawn_entities/cannon/search/east/delay_1
execute positioned -1886 45 -490 run function medabots_server:spawn_entities/cannon/search/west/delay_1
execute positioned -1893 45 -486 run function medabots_server:set_blocks/pot/bomb/delay_0
execute positioned -1890 45 -486 run function medabots_server:set_blocks/pot/bomb/delay_0
scoreboard players set @e[x=-1890.5,y=45,z=-507.5,distance=..0.7,tag=door,scores={PowerNeeded=1}] PowerNeeded 2
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1891 45 -506
effect give @a[scores={StageIndex=3,Gamemode=0,Stage=58}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=3,Gamemode=0,Stage=58}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=3,Gamemode=0,Stage=58}] State 2
teleport @a[scores={StageIndex=3,Gamemode=0,Stage=58}] -1892 45 -487
summon minecraft:area_effect_cloud -1892 45 -501 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_out_e/robattle value 3600
bossbar set medabots_server:ruins_out_e/robattle players @a[scores={Gamemode=0,Stage=58}]
bossbar set medabots_server:ruins_out_e/time players