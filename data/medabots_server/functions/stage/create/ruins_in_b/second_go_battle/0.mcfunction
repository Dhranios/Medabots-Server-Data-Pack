execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=17}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=17}] run summon minecraft:item -1621 44 -564 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_holy_helm"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_translate"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_petticoat"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:2,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_holy_helm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.perfect_guard"}','{"italic":false,"color":"white","translate":"medabots_server:move.perfect_guard.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_holy_helm.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saintnurse_holy_helm",gender:1b,move:"perfect_guard",part:"head",armor:60,power:76,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flap",gender:1b,move:"freeze",part:"right_arm",armor:35,power:26,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_translate"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_translate.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saintnurse_translate",gender:1b,move:"heal",part:"left_arm",armor:40,power:20,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_petticoat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_petticoat.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saintnurse_petticoat",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
execute positioned -1618 44 -554 run function medabots_server:spawn_entities/guard/slow
execute positioned -1623 44 -554 run function medabots_server:spawn_entities/guard/slow
execute positioned -1619 44 -568 run function medabots_server:spawn_entities/guard/slow
execute positioned -1622 44 -568 run function medabots_server:spawn_entities/guard/slow
execute positioned -1616 44 -570 run function medabots_server:spawn_entities/guard/slow
execute positioned -1625 44 -570 run function medabots_server:spawn_entities/guard/slow
execute positioned -1627 44 -558 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1614 44 -558 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned -1627 44 -564 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1614 44 -564 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned -1627 44 -558 run function medabots_server:set_blocks/drawbridge/west
execute positioned -1614 44 -558 run function medabots_server:set_blocks/drawbridge/east
execute positioned -1627 44 -564 run function medabots_server:set_blocks/drawbridge/west
execute positioned -1614 44 -564 run function medabots_server:set_blocks/drawbridge/east
execute positioned -1631 44 -556 run function medabots_server:set_blocks/laser_trap/east/delay_10/power_0
execute positioned -1610 44 -561 run function medabots_server:set_blocks/laser_trap/west/delay_10/power_0
execute positioned -1631 44 -566 run function medabots_server:set_blocks/laser_trap/east/delay_10/power_0
scoreboard players set @e[x=-1620.5,y=44,z=-551.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1620 44 -560
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=17}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=17}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=0,Gamemode=0,Stage=17}] State 2
teleport @a[scores={StageIndex=0,Gamemode=0,Stage=17}] -1621 44 -564
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1618 44 -562 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1623 44 -562 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:ruins_in_b/robattle value 3600
bossbar set medabots_server:ruins_in_b/robattle players @a[scores={Gamemode=0,Stage=17}]
bossbar set medabots_server:ruins_in_b/time players