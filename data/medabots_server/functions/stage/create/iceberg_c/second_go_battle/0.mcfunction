execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=26}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=26}] run summon minecraft:item -1553 44 -617 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_energy_barrier"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_repair_arm"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:20},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flip",gender:1b,move:"freeze",part:"head",armor:55,power:27,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:37,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_energy_barrier"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.shooting_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pastel_fairy"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pastel_fairy_energy_barrier.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pastel_fairy_energy_barrier",gender:1b,move:"shooting_trap",part:"right_arm",armor:45,power:25,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:43,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_repair_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pure_mermaid"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pure_mermaid_repair_arm.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pure_mermaid_repair_arm",gender:1b,move:"heal",part:"left_arm",armor:40,power:50,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flavor",gender:1b,move:"tank",part:"legs",armor:65,defense:40,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1552 44 -622 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1551 44 -619 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1551 44 -617 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1553 44 -614 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1555 44 -614 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1556 44 -615 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1556 44 -617 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1557 44 -618 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1557 44 -620 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1555 44 -622 run function medabots_server:set_blocks/hole/delay_5
scoreboard players set @e[x=-1552.5,y=44,z=-624.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1553 44 -621
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=26}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=26}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=0,Gamemode=0,Stage=26}] State 2
teleport @a[scores={StageIndex=0,Gamemode=0,Stage=26}] -1553 44 -617
summon minecraft:area_effect_cloud -1553 44 -619 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:iceberg_c/robattle value 3600
bossbar set medabots_server:iceberg_c/robattle players @a[scores={Gamemode=0,Stage=26}]
bossbar set medabots_server:iceberg_c/time players