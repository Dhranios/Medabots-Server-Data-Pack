execute unless entity @a[scores={StageIndex=2,Gamemode=0,Stage=18}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=2,Gamemode=0,Stage=18}] run summon minecraft:item 17 53 42 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_cover_up"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.kasou_touchu","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_twist"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_tiptoe"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:17},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:9,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_cover_up"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melee_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.melee_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"18"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_cover_up.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nin_ninja_cover_up",gender:0b,move:"melee_trap",part:"head",armor:70,charge:60,power:22,uses:8,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:5,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kasou_touchu"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kasou_touchu_shitake",gender:0b,move:"no_defend",part:"right_arm",armor:60,charge:60,power:16,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:21,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_twist"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hold"}','{"italic":false,"color":"white","translate":"medabots_server:move.hold.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_twist.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kanehachi_mk2_twist",gender:0b,move:"hold",part:"left_arm",armor:40,charge:60,power:19,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_tiptoe"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_tiptoe.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nin_ninja_tiptoe",gender:0b,move:"two_legged",part:"legs",armor:45,defense:60,activated:0b,model_data:{height:81,legs:[{l:-11,u:-5,f:0},{l:11,u:-5,f:0}]},version:1}}}},version:1}}}}
execute positioned 11 53 52 run function medabots_server:spawn_entities/guard/medium
execute positioned 23 53 53 run function medabots_server:spawn_entities/guard/medium
execute positioned 11 53 40 run function medabots_server:spawn_entities/guard/medium
execute positioned 23 53 40 run function medabots_server:spawn_entities/guard/medium
execute positioned 5 53 47 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned 29 53 50 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned 4 53 40 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned 21 53 34 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned 6 53 47 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 10 53 53 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 28 53 50 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 21 53 54 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 5 53 40 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 7 53 36 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 21 53 35 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 27 53 34 run function medabots_server:set_blocks/floor_switch/blue
execute positioned 6 53 47 run function medabots_server:set_blocks/pot
execute positioned 10 53 53 run function medabots_server:set_blocks/pot
execute positioned 28 53 50 run function medabots_server:set_blocks/pot
execute positioned 21 53 54 run function medabots_server:set_blocks/pot
execute positioned 5 53 40 run function medabots_server:set_blocks/pot
execute positioned 7 53 36 run function medabots_server:set_blocks/pot
execute positioned 21 53 35 run function medabots_server:set_blocks/pot
execute positioned 27 53 34 run function medabots_server:set_blocks/pot
execute positioned 17 53 34 run function medabots_server:set_blocks/pot/6_medallar_cents
scoreboard players set @e[x=17.5,y=53,z=56.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s 17 53 46
effect give @a[scores={StageIndex=2,Gamemode=0,Stage=18}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=2,Gamemode=0,Stage=18}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=2,Gamemode=0,Stage=18}] State 2
teleport @a[scores={StageIndex=2,Gamemode=0,Stage=18}] 17 53 42
summon minecraft:area_effect_cloud 16 53 44 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door"],Duration:2147483647}
bossbar set medabots_server:laboratory_b/robattle value 3600
bossbar set medabots_server:laboratory_b/robattle players @a[scores={Gamemode=0,Stage=18}]
bossbar set medabots_server:laboratory_b/time players