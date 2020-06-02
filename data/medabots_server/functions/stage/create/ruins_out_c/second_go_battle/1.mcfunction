execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=27}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=27}] run summon minecraft:item -1656 44 -697 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_twinincome"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_fourvice"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.kasou_touchu","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_maitake"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_windfluke"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:34},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:9,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_twinincome"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_twinincome.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dorcus_twinincome",gender:0b,move:"scout",part:"head",armor:85,power:72,uses:6,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_fourvice"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_fourvice.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dorcus_fourvice",gender:0b,move:"sword",part:"right_arm",armor:45,power:32,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:5,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_maitake"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kasou_touchu"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_maitake.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kasou_touchu_maitake",gender:0b,move:"no_defend",part:"left_arm",armor:60,power:16,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_windfluke"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_windfluke.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dorcus_windfluke",gender:0b,move:"two_legged",part:"legs",armor:50,defense:52,activated:0b,model_data:{height:0,leg_offset:[{l:0,u:0,f:0},{l:0,u:0,f:0}]},version:1}}}},version:1}}}}
execute positioned -1662 44 -689 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1661 44 -690 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1661 44 -691 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1660 44 -694 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1660 44 -695 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1661 44 -698 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1661 44 -699 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1662 44 -700 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1649 44 -689 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1650 44 -690 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1650 44 -691 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1651 44 -694 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1651 44 -695 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1650 44 -698 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1650 44 -699 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1649 44 -700 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
scoreboard players set @e[x=-1655.5,y=44,z=-684.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
tag @e[x=-1655.5,y=44,z=-684.5,distance=..0.7,tag=door] remove robattle
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1656 44 -692
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=27}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=27}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=27}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=27}] -1656 44 -697
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1654 44 -694 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[45.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1658 44 -695 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-135.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:ruins_out_c/robattle value 3600
bossbar set medabots_server:ruins_out_c/robattle players @a[scores={Gamemode=0,Stage=27}]
bossbar set medabots_server:ruins_out_c/time players