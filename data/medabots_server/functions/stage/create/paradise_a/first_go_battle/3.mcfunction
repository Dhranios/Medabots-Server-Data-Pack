execute unless entity @a[scores={StageIndex=3,Gamemode=0,Stage=21}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=3,Gamemode=0,Stage=21}] run summon minecraft:item -1746 45 -715 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dogu"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_virus"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dokan"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:38},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:2,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:30,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dogu"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.guard_gunpowder"}','{"italic":false,"color":"white","translate":"medabots_server:move.guard_gunpowder.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dogu.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dondoguu_dogu",gender:0b,move:"guard_gunpowder",part:"head",armor:80,power:0,uses:6,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_virus"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.infect"}','{"italic":false,"color":"white","translate":"medabots_server:move.infect.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_virus.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:maxsnake_virus",gender:0b,move:"infect",part:"right_arm",armor:45,power:30,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_flame_gun",gender:0b,move:"melt",part:"left_arm",armor:45,power:22,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:30,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dokan"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"27"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dokan.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dondoguu_dokan",gender:0b,move:"float",part:"legs",armor:65,defense:27,activated:0b,model_data:{height:0,leg_offset:[]},version:1}}}},version:1}}}}
execute positioned -1744 45 -718 run function medabots_server:spawn_entities/cannon/search/east/delay_4/mission
execute positioned -1746 45 -723 run function medabots_server:spawn_entities/cannon/search/north/delay_4/mission
execute positioned -1749 45 -716 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned -1751 45 -721 run function medabots_server:spawn_entities/cannon/search/west/delay_4/mission
execute positioned -1749 45 -724 run function medabots_server:set_blocks/bridge
scoreboard players set @e[x=-1739.5,y=45,z=-707.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1741 45 -714
effect give @a[scores={StageIndex=3,Gamemode=0,Stage=21}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=3,Gamemode=0,Stage=21}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=3,Gamemode=0,Stage=21}] State 2
teleport @a[scores={StageIndex=3,Gamemode=0,Stage=21}] -1746 45 -715
summon minecraft:area_effect_cloud -1743 45 -713 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","destroy_all_cannons"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Gamemode=0,Stage=21}]
bossbar set medabots_server:paradise_a/time players