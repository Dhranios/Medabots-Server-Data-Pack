execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=13}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=13}] run summon minecraft:item -1747 45 -430 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:20},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_tyranolaser",gender:0b,move:"laser",part:"head",armor:50,power:48,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_megalaser",gender:0b,move:"laser",part:"right_arm",armor:35,power:23,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_veryweighter",gender:0b,move:"press",part:"left_arm",armor:70,power:24,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"48"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_rollertank",gender:0b,move:"tank",part:"legs",armor:85,defense:48,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1741 45 -433 run function medabots_server:set_blocks/mirror/45
execute positioned -1743 45 -431 run function medabots_server:set_blocks/mirror/45
execute positioned -1745 45 -429 run function medabots_server:set_blocks/mirror/45
execute positioned -1755 45 -434 run function medabots_server:set_blocks/mirror/45
execute positioned -1753 45 -432 run function medabots_server:set_blocks/mirror/45
execute positioned -1751 45 -430 run function medabots_server:set_blocks/mirror/45
execute positioned -1744 45 -424 run function medabots_server:set_blocks/mirror/45
execute positioned -1742 45 -422 run function medabots_server:set_blocks/mirror/45
execute positioned -1740 45 -420 run function medabots_server:set_blocks/mirror/45
execute positioned -1750 45 -425 run function medabots_server:set_blocks/mirror/45
execute positioned -1752 45 -423 run function medabots_server:set_blocks/mirror/45
execute positioned -1754 45 -421 run function medabots_server:set_blocks/mirror/45
scoreboard players set @e[x=-1746.5,y=45,z=-412.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1748 45 -426
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=13}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=13}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=13}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=13}] -1747 45 -430
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1746 45 -428 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1749 45 -428 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:seashore_b/robattle value 3600
bossbar set medabots_server:seashore_b/robattle players @a[scores={Gamemode=0,Stage=13}]
bossbar set medabots_server:seashore_b/time players