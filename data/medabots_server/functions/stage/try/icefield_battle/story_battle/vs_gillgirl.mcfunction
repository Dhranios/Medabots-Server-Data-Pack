function medabots_server:gamemodes/default/set_stats
teleport @s 24 53 20 0 0
scoreboard players set @s StageVersion 2
tag @s add story_battle
tag @s add main
summon minecraft:item 23 53 27 {Tags:["spawn_medabot"],Rotation:[-180.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_magitech"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_onetwothree"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_lookme"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_wandrack"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",medabot_name:'{"translate":"medabots_server:entity.gillgirl"}',overwrite_robattle_music:27},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:6,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.level","with":[{"text":"20"}]}']},medabots_server:{stage_item:0b,xp:{level:20,points:0},id:"medabots_server:alien_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_magitech"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.confuse"}','{"italic":false,"color":"white","translate":"medabots_server:move.confuse.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_magitech.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_magitech",gender:0b,move:"confuse",part:"head",armor:80,charge:60,power:20,uses:6,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_onetwothree"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_onetwothree.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_onetwothree",gender:0b,move:"falling",part:"right_arm",armor:40,charge:60,power:20,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_lookme"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_lookme.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_lookme",gender:0b,move:"no_defend",part:"left_arm",armor:65,charge:60,power:16,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_wandrack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"24"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_wandrack.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_wandrack",gender:0b,move:"float",part:"legs",armor:65,defense:24,activated:0b,model_data:{height:0,legs:[]},version:1}}}},version:1}}}}
function medabots_server:stage/create/icefield_battle/mirrors