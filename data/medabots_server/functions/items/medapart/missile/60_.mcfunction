# Remove the weapon
clear @s minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s minecraft:bow{medabots_server:{id:"medabots_server:missile"}}
replaceitem entity @s[type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original part
replaceitem entity @s[scores={MedapartID=1,Drop=0},tag=hostile] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=2,Drop=0},tag=hostile] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinoburn.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:rhinorush_rhinoburn",gender:0b,move:"missile",part:"left_arm",armor:65,power:22,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=3,Drop=0},tag=hostile] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:35,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinogone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rhinorush"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rhinorush_rhinogone.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:rhinorush_rhinogone",gender:0b,move:"missile",part:"right_arm",armor:65,power:17,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=4,Drop=0},tag=hostile] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_enticed"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_enticed.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:abyss_greater_enticed",gender:0b,move:"missile",part:"head",armor:75,power:29,uses:5,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=5,Drop=0},tag=hostile] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackbalister.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:blackbeetle_blackbalister",gender:1b,move:"missile",part:"head",armor:65,power:31,uses:6,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=6,Drop=0},tag=hostile] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:17,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.god_emperor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_missile.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:god_emperor_death_missile",gender:0b,move:"missile",part:"right_arm",armor:50,power:51,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=7,Drop=0},tag=hostile] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:52,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mewtwo_shadow_ball"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.mewtwo"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.mewtwo_shadow_ball.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:mewtwo_shadow_ball",gender:0b,move:"missile",part:"right_arm",armor:60,power:25,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=8,Drop=0},tag=hostile] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:62,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.metabee_missile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"3"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.metabee"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.metabee_missile.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:metabee_missile",gender:0b,move:"missile",part:"head",armor:50,power:29,uses:3,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=9,Drop=0},tag=hostile] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:65,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pururun_jelly_guidemissile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pururun_jelly"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pururun_jelly_guidemissile.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:pururun_jelly_guidemissile",gender:0b,move:"missile",part:"left_arm",armor:20,power:23,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=10,Drop=0},tag=hostile] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:65,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pururun_jelly_missilebase"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"2"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pururun_jelly"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pururun_jelly_missilebase.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:pururun_jelly_missilebase",gender:0b,move:"missile",part:"head",armor:70,power:40,uses:2,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=11,Drop=0},tag=hostile] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:65,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pururun_jelly_intermissile"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pururun_jelly"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pururun_jelly_intermissile.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:pururun_jelly_intermissile",gender:0b,move:"missile",part:"right_arm",armor:20,power:15,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartID=13,Drop=0},tag=hostile] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:71,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.galleom_armored_body"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"200"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.galleom"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.galleom_armored_body.model"}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:galleom_armored_body",gender:0b,move:"missile",part:"head",armor:200,power:80,uses:20,activated:1b,version:1}}

# Finish the move
scoreboard players reset @s[tag=left_arm_selected,nbt={Inventory:[{tag:{medabots_server:{part:"left_arm"}}}]}] MedapartType
scoreboard players reset @s[tag=right_arm_selected,nbt={Inventory:[{tag:{medabots_server:{part:"right_arm"}}}]}] MedapartType
scoreboard players reset @s[tag=head_selected,nbt={Inventory:[{tag:{medabots_server:{part:"head"}}}]}] MedapartType
scoreboard players reset @s[type=!minecraft:player] MedapartType
scoreboard players reset @s[tag=!hostile] MedapartType
execute unless entity @s[scores={MedapartType=1..}] run scoreboard players reset @s MedapartID
execute unless entity @s[scores={MedapartType=1..}] run scoreboard players set @s Time 0