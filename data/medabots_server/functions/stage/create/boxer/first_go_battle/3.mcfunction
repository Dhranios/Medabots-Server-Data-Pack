execute unless entity @a[scores={StageIndex=3,Gamemode=0,Stage=29}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=3,Gamemode=0,Stage=29}] run summon minecraft:item -1890 44 -596 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:4,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:aimflash_strobe",gender:0b,move:"falling",part:"head",armor:65,power:20,uses:8,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:aimflash_zoom",gender:0b,move:"laser",part:"right_arm",armor:20,power:27,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:aimflash_tripod",gender:0b,move:"gatling",part:"left_arm",armor:45,power:20,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"28"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:aimflash_carrybag",gender:0b,move:"wheel",part:"legs",armor:50,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1890 44 -602 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1890 44 -601 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1889 44 -601 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1897 44 -593 run function medabots_server:set_blocks/laser_trap/north/delay_10/power_0
execute positioned -1882 44 -593 run function medabots_server:set_blocks/laser_trap/north/delay_10/power_0
execute positioned -1896 44 -598 run function medabots_server:set_blocks/laser_trap/south/delay_11/power_0
execute positioned -1883 44 -598 run function medabots_server:set_blocks/laser_trap/south/delay_11/power_0
execute positioned -1895 44 -590 run function medabots_server:set_blocks/laser_trap/north/delay_12/power_0
execute positioned -1884 44 -590 run function medabots_server:set_blocks/laser_trap/north/delay_12/power_0
execute positioned -1894 44 -600 run function medabots_server:set_blocks/laser_trap/south/delay_13/power_0
execute positioned -1885 44 -600 run function medabots_server:set_blocks/laser_trap/south/delay_13/power_0
execute positioned -1893 44 -588 run function medabots_server:set_blocks/laser_trap/north/delay_14/power_0
execute positioned -1886 44 -588 run function medabots_server:set_blocks/laser_trap/north/delay_14/power_0
scoreboard players set @e[x=-1888.5,y=44,z=-584.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1889 44 -593
effect give @a[scores={StageIndex=3,Gamemode=0,Stage=29}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=3,Gamemode=0,Stage=29}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=3,Gamemode=0,Stage=29}] State 2
teleport @a[scores={StageIndex=3,Gamemode=0,Stage=29}] -1890 44 -596
summon minecraft:area_effect_cloud -1889 44 -595 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Gamemode=0,Stage=29}]
bossbar set medabots_server:boxer/time players