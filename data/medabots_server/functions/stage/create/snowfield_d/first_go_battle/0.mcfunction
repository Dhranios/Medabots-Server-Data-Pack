execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=32}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=32}] run summon minecraft:item -1551 45 -803 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightcircuit"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightjump"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_force_barrier"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_quick_alert"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:40},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightcircuit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.paralyze"}','{"italic":false,"color":"white","translate":"medabots_server:move.paralyze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightcircuit.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:peppercat_lightcircuit",gender:1b,move:"paralyze",part:"head",armor:60,power:44,uses:7,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightjump"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.paralyze"}','{"italic":false,"color":"white","translate":"medabots_server:move.paralyze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightjump.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:peppercat_lightjump",gender:1b,move:"paralyze",part:"right_arm",armor:40,power:24,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:37,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_force_barrier"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_force_barrier.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pastel_fairy_force_barrier",gender:1b,move:"shooting_trap",part:"left_arm",armor:45,power:32,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_quick_alert"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_quick_alert.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:peppercat_quick_alert",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{height:0,leg_offset:[{l:0,u:0,f:0},{l:0,u:0,f:0}],tail:{l:0,u:0,f:0}},version:1}}}},version:1}}}}
execute positioned -1559 45 -800 run function medabots_server:spawn_entities/raft
execute positioned -1554 45 -798 run function medabots_server:spawn_entities/raft
execute positioned -1549 45 -800 run function medabots_server:spawn_entities/raft
execute positioned -1554 45 -802 run function medabots_server:spawn_entities/raft
execute positioned -1555 45 -806 run function medabots_server:spawn_entities/raft
execute positioned -1549 45 -806 run function medabots_server:spawn_entities/raft
execute positioned -1560 45 -795 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1555 45 -794 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1549 45 -796 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1545 45 -798 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1545 45 -806 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1546 45 -811 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1550 45 -812 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1554 45 -811 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1558 45 -809 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1561 45 -805 run function medabots_server:set_blocks/hole/delay_5
scoreboard players set @e[x=-1562.5,y=45,z=-795.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1555 45 -804
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=32}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=32}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=0,Gamemode=0,Stage=32}] State 2
teleport @a[scores={StageIndex=0,Gamemode=0,Stage=32}] -1551 45 -803
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1553 45 -806 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[0.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1553 45 -801 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-180.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:snowfield_d/robattle value 3600
bossbar set medabots_server:snowfield_d/robattle players @a[scores={Gamemode=0,Stage=32}]
bossbar set medabots_server:snowfield_d/time players