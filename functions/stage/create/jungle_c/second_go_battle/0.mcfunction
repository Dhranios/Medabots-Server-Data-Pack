execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] run summon minecraft:item -1517 44 -492 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hippopojamas","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hippotent"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_sentineldy"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_gatemonarch"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.hippopojamas","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hipporet"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:9,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:34,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hippotent"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hippopojamas"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hippotent.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hippopojamas_hippotent",gender:0b,move:"defense",part:"head",armor:85,power:88,uses:4,activated:0b,model_data:{has_head:0b},version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_sentineldy"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_sentineldy.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:baroncastle_sentineldy",gender:0b,move:"rifle",part:"right_arm",armor:45,power:16,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_gatemonarch"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_gatemonarch.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:baroncastle_gatemonarch",gender:0b,move:"falling",part:"left_arm",armor:40,power:20,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:34,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hipporet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hippopojamas"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hippopojamas_hipporet.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hippopojamas_hipporet",gender:0b,move:"tank",part:"legs",armor:80,defense:80,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1524 44 -493 run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_0
execute positioned -1521 44 -495 run function medabots_server:set_blocks/hammer_punch/south/delay_10/power_0
execute positioned -1517 44 -496 run function medabots_server:set_blocks/hammer_punch/south/delay_10/power_0
execute positioned -1514 44 -493 run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_0
execute positioned -1517 44 -490 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
execute positioned -1521 44 -488 run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_0
scoreboard players set @e[x=-1521.5,y=44,z=-495.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1521 44 -492
effect give @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] Battle 2
teleport @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] -1517 44 -492
summon minecraft:area_effect_cloud -1519 44 -491 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:jungle_c/robattle value 3600
bossbar set medabots_server:jungle_c/robattle players @a[scores={Stage=24}]
bossbar set medabots_server:jungle_c/time players