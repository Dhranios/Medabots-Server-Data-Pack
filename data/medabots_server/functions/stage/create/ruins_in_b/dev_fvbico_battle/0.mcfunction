execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=17}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=17}] run summon minecraft:item -1606 44 -527 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_howzer"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:20},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"18"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:bluesdog_headcannon",gender:0b,move:"rifle",part:"head",armor:60,power:40,uses:18,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:bluesdog_aim_rifle",gender:0b,move:"rifle",part:"right_arm",armor:40,power:16,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:bluesdog_battle_rifle",gender:0b,move:"rifle",part:"left_arm",armor:40,power:20,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_howzer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"36"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_howzer.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:bluesdog_howzer",gender:0b,move:"two_legged",part:"legs",armor:45,defense:36,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
execute positioned -1608 44 -527 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1610 44 -530 run function medabots_server:set_blocks/action_floor/cannon/swivel/south/delay_4/power_0
execute positioned -1605 44 -525 run function medabots_server:set_blocks/action_floor/cannon/swivel/west/delay_4/power_0
execute positioned -1600 44 -533 run function medabots_server:set_blocks/action_floor/cannon/swivel/south/delay_4/power_0
execute positioned -1602 44 -535 run function medabots_server:set_blocks/action_floor/cannon/swivel/west/delay_4/power_0
scoreboard players set @e[x=-1612.5,y=44,z=-526.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1612 44 -527
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=17}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=17}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=0,Gamemode=0,Stage=17}] State 2
teleport @a[scores={StageIndex=0,Gamemode=0,Stage=17}] -1606 44 -527
summon minecraft:area_effect_cloud -1608 44 -526 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_in_b/robattle value 3600
bossbar set medabots_server:ruins_in_b/robattle players @a[scores={Gamemode=0,Stage=17}]
bossbar set medabots_server:ruins_in_b/time players