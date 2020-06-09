execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=18}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=18}] run summon minecraft:item -1711 44 -559 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_energy_barrier"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:17},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kuwagata_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flip",gender:1b,move:"freeze",part:"head",armor:55,charge:60,power:27,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:37,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_energy_barrier"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_energy_barrier.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pastel_fairy_energy_barrier",gender:1b,move:"shooting_trap",part:"right_arm",armor:45,charge:60,power:25,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flop",gender:1b,move:"freeze",part:"left_arm",armor:35,charge:60,power:30,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flavor",gender:1b,move:"tank",part:"legs",armor:65,defense:40,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned -1721 44 -571 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1717 44 -550 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1706 44 -568 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1703 44 -550 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1715 44 -569 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned -1719 44 -550 run function medabots_server:spawn_entities/cannon/search/north/delay_4/mission
execute positioned -1708 44 -550 run function medabots_server:spawn_entities/cannon/search/north/delay_4/mission
execute positioned -1703 44 -559 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned -1710 44 -572 run function medabots_server:spawn_entities/round_stone
execute positioned -1717 44 -552 run function medabots_server:spawn_entities/ice_block
execute positioned -1718 44 -552 run function medabots_server:spawn_entities/ice_block
execute positioned -1719 44 -552 run function medabots_server:spawn_entities/ice_block
execute positioned -1720 44 -552 run function medabots_server:spawn_entities/ice_block
execute positioned -1721 44 -552 run function medabots_server:spawn_entities/ice_block
execute positioned -1712 44 -567 run function medabots_server:set_blocks/spring_wall/east/delay_10/power_1
execute positioned -1702 44 -567 run function medabots_server:set_blocks/spring_wall/west/delay_10/power_1
scoreboard players set @e[x=-1724.5,y=44,z=-559.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1715 44 -559
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=18}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=18}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=0,Gamemode=0,Stage=18}] State 2
teleport @a[scores={StageIndex=0,Gamemode=0,Stage=18}] -1711 44 -559
summon minecraft:area_effect_cloud -1713 44 -560 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:laboratory_b/robattle value 3600
bossbar set medabots_server:laboratory_b/robattle players @a[scores={Gamemode=0,Stage=18}]
bossbar set medabots_server:laboratory_b/time players