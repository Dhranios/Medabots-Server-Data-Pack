execute unless entity @a[scores={StageIndex=4,Gamemode=0,Stage=14}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=4,Gamemode=0,Stage=14}] run summon minecraft:item -1751 45 -528 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:37,medabot_name:'{"translate":"medabots_server:entity.red_pepper"}'},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kabuto_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_grand_bomb",gender:0b,move:"napalm",part:"head",armor:110,charge:60,power:23,uses:7,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_black_hall",gender:0b,move:"press",part:"right_arm",armor:80,charge:60,power:18,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_dark_hall",gender:0b,move:"press",part:"left_arm",armor:80,charge:60,power:22,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_sit_down",gender:0b,move:"tank",part:"legs",armor:110,defense:52,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned -1758 45 -533 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1756 45 -518 run function medabots_server:set_blocks/accelerator/north
execute positioned -1759 45 -521 run function medabots_server:set_blocks/accelerator/north
execute positioned -1755 45 -526 run function medabots_server:set_blocks/accelerator/north
execute positioned -1758 45 -530 run function medabots_server:set_blocks/accelerator/north
execute positioned -1754 45 -534 run function medabots_server:set_blocks/accelerator/north
execute positioned -1751 45 -533 run function medabots_server:set_blocks/accelerator/north
execute positioned -1748 45 -531 run function medabots_server:set_blocks/accelerator/north
execute positioned -1742 45 -528 run function medabots_server:set_blocks/accelerator/north
execute positioned -1747 45 -523 run function medabots_server:set_blocks/accelerator/north
execute positioned -1751 45 -522 run function medabots_server:set_blocks/accelerator/north
execute positioned -1746 45 -519 run function medabots_server:set_blocks/accelerator/north
execute positioned -1741 45 -520 run function medabots_server:set_blocks/accelerator/north
execute positioned -1752 45 -517 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1754 45 -530 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1745 45 -534 run function medabots_server:set_blocks/hole/delay_5
scoreboard players set @e[x=-1746.5,y=45,z=-513.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
tag @e[x=-1746.5,y=45,z=-513.5,distance=..0.7,tag=door] remove robattle
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1752 45 -524
effect give @a[scores={StageIndex=4,Gamemode=0,Stage=14}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=4,Gamemode=0,Stage=14}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=4,Gamemode=0,Stage=14}] State 2
teleport @a[scores={StageIndex=4,Gamemode=0,Stage=14}] -1751 45 -528
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1749 45 -526 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1754 45 -526 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:snowfield_b/robattle value 3600
bossbar set medabots_server:snowfield_b/robattle players @a[scores={Gamemode=0,Stage=14}]
bossbar set medabots_server:snowfield_b/time players