execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=4}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=4}] run summon minecraft:item 32 53 17 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_allrepair"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_force_barrier"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_purple_fins"}]}']},medabots_server:{id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:5},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:2,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:mermaid_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:43,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_allrepair"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"10"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_allrepair.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pure_mermaid_allrepair",gender:1b,move:"heal",part:"head",armor:65,charge:60,power:10,uses:10,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flap.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flap",gender:1b,move:"freeze",part:"right_arm",armor:35,charge:60,power:26,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:37,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_force_barrier"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_force_barrier.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pastel_fairy_force_barrier",gender:1b,move:"shooting_trap",part:"left_arm",armor:45,charge:60,power:32,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:43,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_purple_fins"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.swim"}','{"italic":false,"color":"white","translate":"medabots_server:move.swim.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"64"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_purple_fins.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pure_mermaid_purple_fins",gender:1b,move:"swim",part:"legs",armor:50,defense:64,activated:0b,model_data:{height:0,legs:[],wormtail:{l:0,u:0,f:0}},version:1}}}},version:1}}}}
execute positioned 3 53 10 run function medabots_server:spawn_entities/guard/slow
execute positioned 3 53 12 run function medabots_server:spawn_entities/guard/slow
execute positioned 43 53 24 run function medabots_server:spawn_entities/cannon/still/west/delay_4
execute positioned 45 53 22 run function medabots_server:spawn_entities/cannon/still/west/delay_4
execute positioned 48 53 8 run function medabots_server:spawn_entities/cannon/still/west/delay_4
execute positioned 46 53 6 run function medabots_server:spawn_entities/cannon/still/west/delay_4
execute positioned 34 53 4 run function medabots_server:spawn_entities/cannon/still/south/delay_4
execute positioned 32 53 2 run function medabots_server:spawn_entities/cannon/still/south/delay_4
execute positioned 30 53 4 run function medabots_server:spawn_entities/cannon/still/south/delay_4
execute positioned 19 53 6 run function medabots_server:spawn_entities/cannon/still/east/delay_4
execute positioned 17 53 8 run function medabots_server:spawn_entities/cannon/still/east/delay_4
execute positioned 15 53 20 run function medabots_server:spawn_entities/cannon/still/east/delay_4
execute positioned 17 53 22 run function medabots_server:spawn_entities/cannon/still/east/delay_4
execute positioned 35 53 7 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 32 53 10 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 32 53 6 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 31 53 8 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 29 53 6 run function medabots_server:spawn_entities/balloon_bomb
execute positioned 58 53 17 run function medabots_server:set_blocks/pot/guard/slow/2_medallar_cents
execute positioned 59 53 20 run function medabots_server:set_blocks/pot/2_medallar_cents
execute positioned 57 53 22 run function medabots_server:set_blocks/pot/2_medallar_cents
execute positioned 61 53 22 run function medabots_server:set_blocks/pot/4_medallar_cents
execute positioned 56 53 24 run function medabots_server:set_blocks/pot/guard/slow/4_medallar_cents
execute positioned 60 53 24 run function medabots_server:set_blocks/pot/4_medallar_cents
execute positioned 32 53 7 run function medabots_server:set_blocks/pot/6_medallar_cents
execute positioned 5 53 9 run function medabots_server:set_blocks/pot
execute positioned 3 53 12 run function medabots_server:set_blocks/pot/6_medallar_cents
execute positioned 8 53 14 run function medabots_server:set_blocks/pot
execute positioned 6 53 16 run function medabots_server:set_blocks/pot
scoreboard players set @e[x=30.5,y=53,z=25.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
tag @e[x=30.5,y=53,z=25.5,distance=..0.7,tag=door] remove robattle
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 33 53 22
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=4}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=4}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=0,Gamemode=0,Stage=4}] State 2
teleport @a[scores={StageIndex=0,Gamemode=0,Stage=4}] 32 53 17
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand 35 53 20 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand 30 53 19 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:seashore_a/robattle value 3600
bossbar set medabots_server:seashore_a/robattle players @a[scores={Gamemode=0,Stage=4}]
bossbar set medabots_server:seashore_a/time players