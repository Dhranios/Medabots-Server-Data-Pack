execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=31}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=31}] run summon minecraft:item -1656 45 -736 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_gigalaser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:20},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_tyranolaser",gender:0b,move:"laser",part:"head",armor:50,power:48,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:30,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.guard_optical"}','{"italic":false,"color":"white","translate":"medabots_server:move.guard_optical.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dondoguu_dohtack",gender:0b,move:"guard_optical",part:"right_arm",armor:55,power:0,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_gigalaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_gigalaser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_gigalaser",gender:0b,move:"laser",part:"left_arm",armor:35,power:29,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"48"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_rollertank",gender:0b,move:"tank",part:"legs",armor:85,defense:48,activated:0b,model_data:{height:0,leg_offset:[]},version:1}}}},version:1}}}}
execute positioned -1656 45 -727 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1650 45 -730 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1648 45 -737 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1659 45 -739 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1662 45 -735 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1653 45 -728 run function medabots_server:set_blocks/wall
execute positioned -1657 45 -729 run function medabots_server:set_blocks/wall
execute positioned -1654 45 -731 run function medabots_server:set_blocks/wall
execute positioned -1651 45 -732 run function medabots_server:set_blocks/wall
execute positioned -1649 45 -735 run function medabots_server:set_blocks/wall
execute positioned -1656 45 -734 run function medabots_server:set_blocks/wall
execute positioned -1652 45 -739 run function medabots_server:set_blocks/wall
execute positioned -1654 45 -741 run function medabots_server:set_blocks/wall
execute positioned -1657 45 -740 run function medabots_server:set_blocks/wall
execute positioned -1659 45 -737 run function medabots_server:set_blocks/wall
execute positioned -1662 45 -738 run function medabots_server:set_blocks/wall
execute positioned -1661 45 -733 run function medabots_server:set_blocks/wall
scoreboard players set @e[x=-1654.5,y=45,z=-723.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1656 45 -732
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=31}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=31}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=31}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=31}] -1656 45 -736
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1654 45 -733 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[135.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1658 45 -735 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-45.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:jungle_d/robattle value 3600
bossbar set medabots_server:jungle_d/robattle players @a[scores={Gamemode=0,Stage=31}]
bossbar set medabots_server:jungle_d/time players