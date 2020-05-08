execute unless entity @a[scores={StageIndex=4,Gamemode=0,Stage=18}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=4,Gamemode=0,Stage=18}] run summon minecraft:item -1678 44 -626 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:30,medabot_name:'{"translate":"medabots_server:entity.doctor_haru"}'},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:4,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackbalister",gender:1b,move:"missile",part:"head",armor:65,power:31,uses:6,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackfuser",gender:1b,move:"rifle",part:"right_arm",armor:35,power:40,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackblaster.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackblaster",gender:1b,move:"gatling",part:"left_arm",armor:35,power:28,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"44"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackplace.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackbeetle_blackplace",gender:1b,move:"two_legged",part:"legs",armor:40,defense:44,activated:0b,model_data:{height:0,leg_offset:[{l:0,u:0,f:0},{l:0,u:0,f:0}]},version:1}}}},version:1}}}}
execute positioned -1680 44 -618 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1685 44 -623 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1679 44 -624 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1671 44 -624 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1684 44 -628 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1675 44 -629 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1678 44 -631 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1676 44 -618 run function medabots_server:set_blocks/stone
execute positioned -1683 44 -620 run function medabots_server:set_blocks/stone
execute positioned -1673 44 -620 run function medabots_server:set_blocks/stone
execute positioned -1677 44 -621 run function medabots_server:set_blocks/stone
execute positioned -1674 44 -623 run function medabots_server:set_blocks/stone
execute positioned -1682 44 -624 run function medabots_server:set_blocks/stone
execute positioned -1674 44 -626 run function medabots_server:set_blocks/stone
execute positioned -1682 44 -627 run function medabots_server:set_blocks/stone
execute positioned -1679 44 -630 run function medabots_server:set_blocks/stone
scoreboard players set @e[x=-1678.5,y=44,z=-613.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1679 44 -622
effect give @a[scores={StageIndex=4,Gamemode=0,Stage=18}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=4,Gamemode=0,Stage=18}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=4,Gamemode=0,Stage=18}] State 2
teleport @a[scores={StageIndex=4,Gamemode=0,Stage=18}] -1678 44 -626
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1677 44 -624 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1680 44 -624 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:laboratory_b/robattle value 3600
bossbar set medabots_server:laboratory_b/robattle players @a[scores={Gamemode=0,Stage=18}]
bossbar set medabots_server:laboratory_b/time players