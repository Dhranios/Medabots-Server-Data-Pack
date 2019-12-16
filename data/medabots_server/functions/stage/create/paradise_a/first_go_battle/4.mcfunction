execute unless entity @a[scores={StageIndex=4,Gamemode=0,Stage=21}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=4,Gamemode=0,Stage=21}] run summon minecraft:item -1715 45 -697 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackincome"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightjump"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackbeat"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackfluke"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",practice_battle:1b},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:9,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackincome"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackincome.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackstag_blackincome",gender:1b,move:"scout",part:"head",armor:75,power:95,uses:4,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:27,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightjump"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.paralyze"}','{"italic":false,"color":"white","translate":"medabots_server:move.paralyze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.peppercat"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.peppercat_lightjump.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:peppercat_lightjump",gender:1b,move:"paralyze",part:"right_arm",armor:40,power:24,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackbeat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackbeat.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackstag_blackbeat",gender:1b,move:"hammer",part:"left_arm",armor:35,power:36,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackfluke"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackfluke.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackstag_blackfluke",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
execute positioned -1716 45 -700 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1714 45 -695 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1708 45 -697 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1710 45 -701 run function medabots_server:set_blocks/stone
execute positioned -1720 45 -702 run function medabots_server:set_blocks/stone
execute positioned -1720 45 -697 run function medabots_server:set_blocks/stone
scoreboard players set @e[x=-1713.5,y=45,z=-704.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1714 45 -701
effect give @a[scores={StageIndex=4,Gamemode=0,Stage=21}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=4,Gamemode=0,Stage=21}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=4,Gamemode=0,Stage=21}] Battle 2
teleport @a[scores={StageIndex=4,Gamemode=0,Stage=21}] -1715 45 -697
summon minecraft:area_effect_cloud -1714 45 -699 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Gamemode=0,Stage=21}]
bossbar set medabots_server:paradise_a/time players