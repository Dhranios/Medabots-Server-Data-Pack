execute unless entity @a[scores={StageIndex=5,Gamemode=0,Stage=29}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=5,Gamemode=0,Stage=29}] run summon minecraft:item -1917 44 -572 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_twinincome"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_fourvice"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_intensebeat"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_windfluke"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_twinincome"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_twinincome.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dorcus_twinincome",gender:0b,move:"scout",part:"head",armor:85,power:72,uses:6,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_fourvice"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_fourvice.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dorcus_fourvice",gender:0b,move:"sword",part:"right_arm",armor:45,power:32,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_intensebeat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_intensebeat.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dorcus_intensebeat",gender:0b,move:"hammer",part:"left_arm",armor:45,power:52,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_windfluke"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_windfluke.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dorcus_windfluke",gender:0b,move:"two_legged",part:"legs",armor:50,defense:52,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
execute positioned -1920 44 -572 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1916 44 -578 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1918 44 -577 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1918 44 -576 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1919 44 -575 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1919 44 -574 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1919 44 -569 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1919 44 -568 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1918 44 -567 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1918 44 -566 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1916 44 -565 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1912 44 -573 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1911 44 -572 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1911 44 -571 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1912 44 -570 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
scoreboard players set @e[x=-1903.5,y=44,z=-571.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1906 44 -572
effect give @a[scores={StageIndex=5,Gamemode=0,Stage=29}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=5,Gamemode=0,Stage=29}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=5,Gamemode=0,Stage=29}] Battle 2
teleport @a[scores={StageIndex=5,Gamemode=0,Stage=29}] -1918 44 -572
summon minecraft:area_effect_cloud -1916 44 -571 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Gamemode=0,Stage=29}]
bossbar set medabots_server:boxer/time players