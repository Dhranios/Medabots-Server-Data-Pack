execute unless entity @a[scores={StageIndex=7,Gamemode=0,Stage=21}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=7,Gamemode=0,Stage=21}] run summon minecraft:item 46 53 79 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_great_swallow"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burntube"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_lakeduster"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.level","with":[{"text":"32"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,xp:{levels:32,points:0},id:"medabots_server:kuwagata_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:20,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_great_swallow"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_great_swallow.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:basstroyer_great_swallow",gender:0b,move:"destroy",part:"head",armor:50,charge:60,power:85,uses:7,activated:0b,model_data:{has_head:0b},version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burntube"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burntube.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:fly_falcon_burntube",gender:0b,move:"napalm",part:"right_arm",armor:50,charge:60,power:18,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:poison_scorpi_scorpion_rat",gender:0b,move:"melt",part:"left_arm",armor:45,charge:60,power:28,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:20,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_lakeduster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.swim"}','{"italic":false,"color":"white","translate":"medabots_server:move.swim.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_lakeduster.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:basstroyer_lakeduster",gender:0b,move:"swim",part:"legs",armor:50,defense:52,activated:0b,model_data:{height:0,legs:[],wormtail:{l:0,u:0,f:0}},version:1}}}},version:1}}}}
execute positioned 40 53 72 run function medabots_server:set_blocks/accelerator/north
execute positioned 41 53 71 run function medabots_server:set_blocks/accelerator/north
execute positioned 42 53 70 run function medabots_server:set_blocks/accelerator/north
execute positioned 43 53 69 run function medabots_server:set_blocks/accelerator/north
execute positioned 50 53 69 run function medabots_server:set_blocks/accelerator/north
execute positioned 51 53 70 run function medabots_server:set_blocks/accelerator/north
execute positioned 52 53 71 run function medabots_server:set_blocks/accelerator/north
execute positioned 53 53 72 run function medabots_server:set_blocks/accelerator/north
execute positioned 40 53 86 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned 41 53 87 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned 42 53 88 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned 43 53 89 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned 50 53 89 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned 51 53 88 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned 52 53 87 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned 53 53 86 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
scoreboard players set @e[x=37.5,y=53,z=80.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 47 53 83
effect give @a[scores={StageIndex=7,Gamemode=0,Stage=21}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=7,Gamemode=0,Stage=21}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=7,Gamemode=0,Stage=21}] State 2
teleport @a[scores={StageIndex=7,Gamemode=0,Stage=21}] 46 53 79
summon minecraft:area_effect_cloud 47 53 81 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle max 3600
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Gamemode=0,Stage=21}]
bossbar set medabots_server:paradise_a/time players