function medabots_server:gamemodes/default/set_stats
teleport @s -1967 45 -552 -90 0
scoreboard players set @s StageVersion 3
tag @s add story_battle
tag @s add main
summon minecraft:item -1956 45 -551 {Tags:["spawn_medabot"],Rotation:[90.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinone"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinogone"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_jaguarnote"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:20,medabot_name:'{"translate":"medabots_server:entity.shrimplips"}',overwrite_robattle_music:27},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:5,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:spider_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.defense"}','{"italic":false,"color":"white","translate":"medabots_server:move.defense.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_rhinone",gender:0b,move:"defense",part:"head",armor:90,power:77,uses:4,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinogone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinogone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_rhinogone",gender:0b,move:"missile",part:"right_arm",armor:65,power:17,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_rhinoburn",gender:0b,move:"missile",part:"left_arm",armor:65,power:22,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_jaguarnote"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"48"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"85"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_jaguarnote.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:rhinorush_jaguarnote",gender:0b,move:"tank",part:"legs",armor:85,defense:48,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
function medabots_server:stage/create/park_battle/accelerators