execute unless entity @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] run summon minecraft:item -1716 44 -334 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_free_arm"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flip.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flip",gender:1b,move:"freeze",part:"head",armor:55,power:27,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:44,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_free_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.repair"}','{"italic":false,"color":"white","translate":"medabots_server:move.repair.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"25"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pinguen"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pinguen_free_arm.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:pinguen_free_arm",gender:1b,move:"repair",part:"right_arm",armor:25,power:16,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.freeze"}','{"italic":false,"color":"white","translate":"medabots_server:move.freeze.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flop.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flop",gender:1b,move:"freeze",part:"left_arm",armor:35,power:30,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:68,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.frappe"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.frappe_flavor.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:frappe_flavor",gender:1b,move:"tank",part:"legs",armor:65,defense:40,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1727 44 -343 run function medabots_server:spawn_entities/guard/slow
execute positioned -1721 44 -341 run function medabots_server:spawn_entities/guard/slow
execute positioned -1712 44 -341 run function medabots_server:spawn_entities/guard/slow
execute positioned -1706 44 -343 run function medabots_server:spawn_entities/guard/slow
execute positioned -1727 44 -322 run function medabots_server:spawn_entities/guard/slow
execute positioned -1721 44 -324 run function medabots_server:spawn_entities/guard/slow
execute positioned -1712 44 -324 run function medabots_server:spawn_entities/guard/slow
execute positioned -1706 44 -322 run function medabots_server:spawn_entities/guard/slow
execute positioned -1722 44 -330 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_1
execute positioned -1722 44 -335 run function medabots_server:set_blocks/hammer_punch/south/delay_10/power_1
execute positioned -1711 44 -330 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_1
execute positioned -1711 44 -335 run function medabots_server:set_blocks/hammer_punch/south/delay_10/power_1
execute positioned -1722 44 -331 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1722 44 -334 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1711 44 -331 run function medabots_server:set_blocks/floor_switch/blue
execute positioned -1711 44 -334 run function medabots_server:set_blocks/floor_switch/blue
scoreboard players set @e[x=-1716.5,y=44,z=-319.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1717 44 -331
effect give @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] minecraft:night_vision 2 0 true
effect give @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] Battle 2
teleport @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=1] -1716 44 -334
summon minecraft:area_effect_cloud -1717 44 -333 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_in_a/robattle value 3600
bossbar set medabots_server:ruins_in_a/robattle players @a[scores={Stage=8}]
bossbar set medabots_server:ruins_in_a/time players