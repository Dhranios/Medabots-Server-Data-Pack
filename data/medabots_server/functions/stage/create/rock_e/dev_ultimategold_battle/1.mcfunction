execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=53}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=53}] run summon minecraft:item 81 53 23 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.level","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,xp:{levels:60,points:0},id:"medabots_server:kabuto_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_tyranolaser",gender:0b,move:"laser",part:"head",armor:50,charge:60,power:48,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_megalaser",gender:0b,move:"laser",part:"right_arm",armor:35,charge:60,power:23,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:attack_tyrano_strike_hit",gender:0b,move:"hammer",part:"left_arm",armor:40,charge:60,power:32,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"48"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_rollertank",gender:0b,move:"tank",part:"legs",armor:85,defense:48,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned 90 53 28 run function medabots_server:spawn_entities/guard/slow
execute positioned 87 53 25 run function medabots_server:spawn_entities/guard/slow
execute positioned 86 53 21 run function medabots_server:spawn_entities/guard/slow
execute positioned 85 53 20 run function medabots_server:spawn_entities/guard/slow
execute positioned 91 53 27 run function medabots_server:spawn_entities/cannon/still/west/delay_4/2_medallar_cents
execute positioned 91 53 26 run function medabots_server:spawn_entities/cannon/still/west/delay_4/2_medallar_cents
execute positioned 83 53 29 run function medabots_server:spawn_entities/round_stone/north
execute positioned 83 53 23 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 83 53 30 run function medabots_server:set_blocks/spring_wall/north/delay_10/power_1
execute positioned 83 53 22 run function medabots_server:set_blocks/spring_wall/south/delay_10/power_1
# Medapart pot
execute positioned 79 53 25 run function medabots_server:set_blocks/pot
execute positioned 79 53 25 run data modify entity @e[distance=..0.7,tag=pot,limit=1] ArmorItems[3].tag.medabots_server merge value {contents:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:17,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_laser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.god_emperor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_laser.model"}']},medabots_server:{stage_item:1b,id:"medabots_server:god_emperor_death_laser",gender:0b,move:"laser",part:"left_arm",armor:50,charge:60,power:57,activated:0b,version:1}}}}
execute positioned 86 53 31 run function medabots_server:set_blocks/glass
execute positioned 87 53 31 run function medabots_server:set_blocks/glass
execute positioned 87 53 30 run function medabots_server:set_blocks/glass
execute positioned 88 53 30 run function medabots_server:set_blocks/glass
execute positioned 84 53 30 run function medabots_server:set_blocks/glass
execute positioned 84 53 29 run function medabots_server:set_blocks/glass
execute positioned 84 53 28 run function medabots_server:set_blocks/glass
execute positioned 85 53 29 run function medabots_server:set_blocks/glass
execute positioned 89 53 28 run function medabots_server:set_blocks/glass
execute positioned 87 53 28 run function medabots_server:set_blocks/glass
execute positioned 87 53 27 run function medabots_server:set_blocks/glass
execute positioned 86 53 27 run function medabots_server:set_blocks/glass
execute positioned 87 53 26 run function medabots_server:set_blocks/glass
execute positioned 88 53 26 run function medabots_server:set_blocks/glass
execute positioned 88 53 25 run function medabots_server:set_blocks/glass
execute positioned 89 53 26 run function medabots_server:set_blocks/glass
execute positioned 84 53 26 run function medabots_server:set_blocks/glass
execute positioned 84 53 25 run function medabots_server:set_blocks/glass
execute positioned 85 53 25 run function medabots_server:set_blocks/glass
execute positioned 84 53 24 run function medabots_server:set_blocks/glass
execute positioned 84 53 23 run function medabots_server:set_blocks/glass
execute positioned 84 53 22 run function medabots_server:set_blocks/glass
execute positioned 86 53 24 run function medabots_server:set_blocks/glass
execute positioned 87 53 24 run function medabots_server:set_blocks/glass
execute positioned 86 53 22 run function medabots_server:set_blocks/glass
execute positioned 83 53 21 run function medabots_server:set_blocks/glass
execute positioned 82 53 28 run function medabots_server:set_blocks/glass
execute positioned 81 53 28 run function medabots_server:set_blocks/glass
execute positioned 82 53 27 run function medabots_server:set_blocks/glass
execute positioned 82 53 26 run function medabots_server:set_blocks/glass
execute positioned 80 53 26 run function medabots_server:set_blocks/glass
execute positioned 82 53 24 run function medabots_server:set_blocks/glass
execute positioned 81 53 24 run function medabots_server:set_blocks/glass
execute positioned 82 53 23 run function medabots_server:set_blocks/glass
execute positioned 82 53 22 run function medabots_server:set_blocks/glass
execute positioned 80 53 22 run function medabots_server:set_blocks/glass
execute positioned 88 53 24 run function medabots_server:set_blocks/door/x/power_1
scoreboard players set @e[x=86.5,y=53,z=33.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 87 53 32
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=53}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=53}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=53}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=53}] 81 53 23
summon minecraft:area_effect_cloud 88 53 31 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:rock_e/robattle max 3600
bossbar set medabots_server:rock_e/robattle value 3600
bossbar set medabots_server:rock_e/robattle players @a[scores={Gamemode=0,Stage=53}]
bossbar set medabots_server:rock_e/time players