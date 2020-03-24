function medabots_server:gamemodes/default/set_stats
teleport @s -1943 45 -617 90 0
scoreboard players set @s StageVersion 1
tag @s add story_battle
tag @s add main
summon minecraft:item -1954 45 -616 {Tags:["spawn_medabot"],Rotation:[-90.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackincome"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackvice"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackbeat"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackfluke"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:40,medabot_name:'{"translate":"medabots_server:entity.director_tune"}'},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:9,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackincome"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackincome.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackstag_blackincome",gender:1b,move:"scout",part:"head",armor:75,power:95,uses:4,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackvice"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackvice.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackstag_blackvice",gender:1b,move:"sword",part:"right_arm",armor:35,power:24,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackbeat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackbeat.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackstag_blackbeat",gender:1b,move:"hammer",part:"left_arm",armor:35,power:36,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackfluke"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackfluke.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:blackstag_blackfluke",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
function medabots_server:stage/create/woods_battle/stones