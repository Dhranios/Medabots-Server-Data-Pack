execute unless entity @a[scores={StageIndex=3,Gamemode=0,Stage=14}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=3,Gamemode=0,Stage=14}] run summon minecraft:item -1682 45 -528 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_hacker"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.grade_kabuki","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_musk"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:14},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_hacker"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.infect"}','{"italic":false,"color":"white","translate":"medabots_server:move.infect.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_hacker.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:maxsnake_hacker",gender:0b,move:"infect",part:"head",armor:70,power:56,uses:6,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_heavyweighter",gender:0b,move:"press",part:"right_arm",armor:70,power:18,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.confuse"}','{"italic":false,"color":"white","translate":"medabots_server:move.confuse.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.grade_kabuki"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.grade_kabuki_acting.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:grade_kabuki_acting",gender:0b,move:"confuse",part:"left_arm",armor:50,power:16,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_musk"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"16"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_musk.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:maxsnake_musk",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:16,activated:0b,model_data:{height:0,leg_offset:[],wormtail:{l:0,u:0,f:0}},version:1}}}},version:1}}}}
execute positioned -1686 45 -535 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned -1686 45 -535 run function medabots_server:set_blocks/floor_switch/green
execute positioned -1689 45 -529 run function medabots_server:spawn_entities/ice_block
execute positioned -1687 45 -527 run function medabots_server:spawn_entities/ice_block
execute positioned -1685 45 -524 run function medabots_server:spawn_entities/ice_block
execute positioned -1684 45 -521 run function medabots_server:spawn_entities/ice_block
execute positioned -1683 45 -525 run function medabots_server:spawn_entities/ice_block
execute positioned -1679 45 -524 run function medabots_server:spawn_entities/ice_block
execute positioned -1678 45 -530 run function medabots_server:spawn_entities/ice_block
execute positioned -1677 45 -526 run function medabots_server:spawn_entities/ice_block
execute positioned -1677 45 -521 run function medabots_server:spawn_entities/ice_block
execute positioned -1676 45 -523 run function medabots_server:spawn_entities/ice_block
execute positioned -1675 45 -532 run function medabots_server:spawn_entities/ice_block
execute positioned -1686 45 -531 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1685 45 -527 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1683 45 -524 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1677 45 -524 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1675 45 -530 run function medabots_server:set_blocks/hole/delay_5
scoreboard players set @e[x=-1680.5,y=45,z=-516.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1681 45 -524
effect give @a[scores={StageIndex=3,Gamemode=0,Stage=14}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=3,Gamemode=0,Stage=14}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=3,Gamemode=0,Stage=14}] State 2
teleport @a[scores={StageIndex=3,Gamemode=0,Stage=14}] -1682 45 -528
summon minecraft:area_effect_cloud -1679 45 -527 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:snowfield_b/robattle value 3600
bossbar set medabots_server:snowfield_b/robattle players @a[scores={Gamemode=0,Stage=14}]
bossbar set medabots_server:snowfield_b/time players