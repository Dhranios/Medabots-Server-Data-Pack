execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=18}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=18}] run summon minecraft:item 77 53 74 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_field_barrier"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_cure_hand"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_flower_fly"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:8,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.level","with":[{"text":"17"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,xp:{levels:17,points:0},id:"medabots_server:chameleon_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:37,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_field_barrier"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"12"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_field_barrier.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pastel_fairy_field_barrier",gender:1b,move:"shooting_trap",part:"head",armor:70,charge:60,power:43,uses:12,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:43,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_cure_hand"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_cure_hand.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pure_mermaid_cure_hand",gender:1b,move:"heal",part:"right_arm",armor:40,charge:60,power:50,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flop",gender:1b,move:"freeze",part:"left_arm",armor:35,charge:60,power:30,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:37,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_flower_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"29"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_flower_fly.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pastel_fairy_flower_fly",gender:1b,move:"float",part:"legs",armor:55,defense:29,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
execute positioned 70 53 62 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned 67 53 82 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned 81 53 66 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned 81 53 82 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned 69 53 64 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned 71 53 82 run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute positioned 80 53 62 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned 85 53 74 run function medabots_server:spawn_entities/item/6_medallar_cents
execute positioned 70 53 69 run function medabots_server:spawn_entities/round_stone
execute positioned 83 53 65 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 71 53 63 run function medabots_server:set_blocks/mirror/45
execute positioned 71 53 79 run function medabots_server:set_blocks/hole/delay_5
execute positioned 80 53 79 run function medabots_server:set_blocks/hole/delay_5
execute positioned 72 53 82 run function medabots_server:set_blocks/glass
scoreboard players set @e[x=63.5,y=53,z=73.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 73 53 74
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=18}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=18}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=18}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=18}] 77 53 74
summon minecraft:area_effect_cloud 75 53 73 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:laboratory_b/robattle max 3600
bossbar set medabots_server:laboratory_b/robattle value 3600
bossbar set medabots_server:laboratory_b/robattle players @a[scores={Gamemode=0,Stage=18}]
bossbar set medabots_server:laboratory_b/time players