execute unless entity @a[x=0,y=59,z=0,dx=60,dy=4,dz=74,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=0,y=59,z=0,dx=60,dy=4,dz=74,tag=1] run summon minecraft:item 30 53 9 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather"}]}']},medabots_server:{id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",medabot_name:'{"translate":"medabots_server:entity.brass"}',overwrite_robattle_music:29},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:5,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.level","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,xp:{levels:40,points:0},id:"medabots_server:spider_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:sailor_multi_variablehair",gender:1b,move:"scout",part:"head",armor:75,charge:60,power:50,uses:7,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:sailor_multi_pateri_vulcan",gender:1b,move:"gatling",part:"right_arm",armor:35,charge:60,power:20,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:sailor_multi_short_shot",gender:1b,move:"rifle",part:"left_arm",armor:35,charge:60,power:24,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:sailor_multi_flaregather",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{height:88,legs:[{l:-12,u:-14,f:0},{l:12,u:-14,f:0}]},version:1}}}},version:1}}}}
execute positioned 38 53 17 run function medabots_server:set_blocks/accelerator/north
execute positioned 31 53 17 run function medabots_server:set_blocks/accelerator/north
execute positioned 28 53 17 run function medabots_server:set_blocks/accelerator/north
execute positioned 21 53 17 run function medabots_server:set_blocks/accelerator/north
execute positioned 38 53 6 run function medabots_server:set_blocks/accelerator/south
execute positioned 31 53 6 run function medabots_server:set_blocks/accelerator/south
execute positioned 28 53 6 run function medabots_server:set_blocks/accelerator/south
execute positioned 21 53 6 run function medabots_server:set_blocks/accelerator/south
execute positioned 23 53 19 run function medabots_server:set_blocks/accelerator/east
execute positioned 23 53 13 run function medabots_server:set_blocks/accelerator/east
execute positioned 23 53 10 run function medabots_server:set_blocks/accelerator/east
execute positioned 23 53 4 run function medabots_server:set_blocks/accelerator/east
execute positioned 36 53 19 run function medabots_server:set_blocks/accelerator/west
execute positioned 36 53 13 run function medabots_server:set_blocks/accelerator/west
execute positioned 36 53 10 run function medabots_server:set_blocks/accelerator/west
execute positioned 36 53 4 run function medabots_server:set_blocks/accelerator/west
scoreboard players set @e[x=29.5,y=53,z=23.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
tag @e[x=29.5,y=53,z=23.5,distance=..0.7,tag=door] remove robattle
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 29 53 14
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=26}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=26}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=26}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=26}] 29 53 10
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand 31 53 12 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand 28 53 11 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:iceberg_c/robattle max 3600
bossbar set medabots_server:iceberg_c/robattle value 3600
bossbar set medabots_server:iceberg_c/robattle players @a[scores={Gamemode=0,Stage=26}]
bossbar set medabots_server:iceberg_c/time players