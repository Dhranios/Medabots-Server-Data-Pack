execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] run summon minecraft:item -1583 45 -407 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_breathfire"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_virus"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_attach_leg"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_breathfire"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_breathfire.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:attack_tyrano_breathfire",gender:0b,move:"melt",part:"head",armor:70,power:17,uses:7,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_virus"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.infect"}','{"italic":false,"color":"white","translate":"medabots_server:move.infect.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.maxsnake"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.maxsnake_virus.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:maxsnake_virus",gender:0b,move:"infect",part:"right_arm",armor:45,power:30,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_veryweighter",gender:0b,move:"press",part:"left_arm",armor:70,power:24,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_attach_leg"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"44"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_attach_leg.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:attack_tyrano_attach_leg",gender:0b,move:"two_legged",part:"legs",armor:45,defense:44,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
execute positioned -1593 45 -408 run function medabots_server:spawn_entities/cannon/search/east/delay_4/mission
execute positioned -1593 45 -406 run function medabots_server:spawn_entities/cannon/search/east/delay_4/mission
execute positioned -1586 45 -402 run function medabots_server:spawn_entities/cannon/search/north/delay_4/mission
execute positioned -1583 45 -402 run function medabots_server:spawn_entities/cannon/search/north/delay_4/mission
execute positioned -1586 45 -413 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned -1583 45 -414 run function medabots_server:spawn_entities/cannon/search/south/delay_4/mission
execute positioned -1577 45 -412 run function medabots_server:spawn_entities/cannon/search/west/delay_4/mission
execute positioned -1576 45 -404 run function medabots_server:spawn_entities/cannon/search/west/delay_4/mission
scoreboard players set @e[x=-1589.5,y=45,z=-411.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1587 45 -408
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] Battle 2
teleport @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] -1583 45 -407
summon minecraft:area_effect_cloud -1584 45 -409 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up"],Duration:2147483647}
bossbar set medabots_server:jungle_b/robattle value 3600
bossbar set medabots_server:jungle_b/robattle players @a[scores={Stage=12}]
bossbar set medabots_server:jungle_b/time players