execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=53}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=53}] run summon minecraft:item -1825 45 -322 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_tyranolaser",gender:0b,move:"laser",part:"head",armor:50,power:48,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_megalaser",gender:0b,move:"laser",part:"right_arm",armor:35,power:23,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:attack_tyrano_strike_hit",gender:0b,move:"hammer",part:"left_arm",armor:40,power:32,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"48"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_rollertank.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:keithturtle_rollertank",gender:0b,move:"tank",part:"legs",armor:85,defense:48,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1816 45 -317 run function medabots_server:spawn_entities/guard/slow
execute positioned -1819 45 -320 run function medabots_server:spawn_entities/guard/slow
execute positioned -1820 45 -324 run function medabots_server:spawn_entities/guard/slow
execute positioned -1821 45 -325 run function medabots_server:spawn_entities/guard/slow
execute positioned -1815 45 -318 run function medabots_server:spawn_entities/cannon/still/west/delay_4/2_medallar_cents
execute positioned -1815 45 -319 run function medabots_server:spawn_entities/cannon/still/west/delay_4/2_medallar_cents
execute positioned -1823 45 -316 run function medabots_server:spawn_entities/round_stone/north
execute positioned -1823 45 -322 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1823 45 -315 run function medabots_server:set_blocks/spring_wall/north/delay_10/power_1
execute positioned -1823 45 -323 run function medabots_server:set_blocks/spring_wall/south/delay_10/power_1
# Medapart pot
execute positioned -1827 45 -320 run function medabots_server:set_blocks/pot
replaceitem block -1827 45 -320 container.0 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:17,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_laser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.god_emperor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_laser.model"}']},medabots_server:{stage_item:1b,id:"medabots_server:god_emperor_death_laser",gender:0b,move:"laser",part:"left_arm",armor:50,power:57,activated:0b,version:1}}
execute positioned -1820 45 -314 run function medabots_server:set_blocks/glass
execute positioned -1819 45 -314 run function medabots_server:set_blocks/glass
execute positioned -1819 45 -315 run function medabots_server:set_blocks/glass
execute positioned -1818 45 -315 run function medabots_server:set_blocks/glass
execute positioned -1822 45 -315 run function medabots_server:set_blocks/glass
execute positioned -1822 45 -316 run function medabots_server:set_blocks/glass
execute positioned -1822 45 -317 run function medabots_server:set_blocks/glass
execute positioned -1821 45 -316 run function medabots_server:set_blocks/glass
execute positioned -1817 45 -317 run function medabots_server:set_blocks/glass
execute positioned -1819 45 -317 run function medabots_server:set_blocks/glass
execute positioned -1819 45 -318 run function medabots_server:set_blocks/glass
execute positioned -1820 45 -318 run function medabots_server:set_blocks/glass
execute positioned -1819 45 -319 run function medabots_server:set_blocks/glass
execute positioned -1818 45 -319 run function medabots_server:set_blocks/glass
execute positioned -1818 45 -320 run function medabots_server:set_blocks/glass
execute positioned -1817 45 -319 run function medabots_server:set_blocks/glass
execute positioned -1822 45 -319 run function medabots_server:set_blocks/glass
execute positioned -1822 45 -320 run function medabots_server:set_blocks/glass
execute positioned -1821 45 -320 run function medabots_server:set_blocks/glass
execute positioned -1822 45 -321 run function medabots_server:set_blocks/glass
execute positioned -1822 45 -322 run function medabots_server:set_blocks/glass
execute positioned -1822 45 -323 run function medabots_server:set_blocks/glass
execute positioned -1820 45 -321 run function medabots_server:set_blocks/glass
execute positioned -1819 45 -321 run function medabots_server:set_blocks/glass
execute positioned -1820 45 -323 run function medabots_server:set_blocks/glass
execute positioned -1823 45 -324 run function medabots_server:set_blocks/glass
execute positioned -1824 45 -317 run function medabots_server:set_blocks/glass
execute positioned -1825 45 -317 run function medabots_server:set_blocks/glass
execute positioned -1824 45 -318 run function medabots_server:set_blocks/glass
execute positioned -1824 45 -319 run function medabots_server:set_blocks/glass
execute positioned -1826 45 -319 run function medabots_server:set_blocks/glass
execute positioned -1824 45 -321 run function medabots_server:set_blocks/glass
execute positioned -1825 45 -321 run function medabots_server:set_blocks/glass
execute positioned -1824 45 -322 run function medabots_server:set_blocks/glass
execute positioned -1824 45 -323 run function medabots_server:set_blocks/glass
execute positioned -1826 45 -323 run function medabots_server:set_blocks/glass
execute positioned -1818 45 -321 run function medabots_server:set_blocks/door/south/power_1
scoreboard players set @e[x=-1819.5,y=45,z=-311.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1819 45 -313
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=53}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=53}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=53}] Battle 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=53}] -1825 45 -322
summon minecraft:area_effect_cloud -1818 45 -314 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:rock_e/robattle value 3600
bossbar set medabots_server:rock_e/robattle players @a[scores={Gamemode=0,Stage=53}]
bossbar set medabots_server:rock_e/time players