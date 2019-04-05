# Set which part is activated
scoreboard players set @s[scores={Time=20,Rifle=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:baroncastle_sentineldy"}}}]}] MedapartType 1
scoreboard players set @s[scores={Time=20,Rifle=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:saikachis_fuser"}}}]}] MedapartType 2
scoreboard players set @s[scores={Time=20,Rifle=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:bluesdog_battle_rifle"}}}]}] MedapartType 3
scoreboard players set @s[scores={Time=20,Rifle=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:bluesdog_headcannon"}}}]}] MedapartType 4
scoreboard players set @s[scores={Time=20,Rifle=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:bluesdog_aim_rifle"}}}]}] MedapartType 5
scoreboard players set @s[scores={Time=20,Rifle=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:sailor_multi_short_shot"}}}]}] MedapartType 6
scoreboard players set @s[scores={Time=20,Rifle=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:blackbeetle_blackfuser"}}}]}] MedapartType 7
scoreboard players set @s[scores={Time=20,Rifle=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:arcbeetle_explode"}}}]}] MedapartType 8
scoreboard players set @s[scores={Time=20,Rifle=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:magolor_darkness"}}}]}] MedapartType 9
scoreboard players set @s[scores={Time=20,Rifle=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:warbonnet_shoot_barrel"}}}]}] MedapartType 10
scoreboard players set @s[scores={Time=20,Rifle=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:metabee_revolver"}}}]}] MedapartType 11
scoreboard players set @s[scores={Time=20,Rifle=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:amelia_spear"}}}]}] MedapartType 12

# Give the weapon depending on charge
replaceitem entity @s[scores={Time=20}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:5b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
replaceitem entity @s[scores={Rifle=1,Charge=0..14,Time=20..22,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=1,Charge=15..27,Time=20..22,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=1,Charge=28..42,Time=20..22,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=1,Charge=43..50,Time=20..22,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=3,Charge=0..14,Time=20..22,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=3,Charge=15..27,Time=20..22,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=3,Charge=28..42,Time=20..22,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=3,Charge=43..50,Time=20..22,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=2,Charge=0..14,Time=20..22,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=2,Charge=15..27,Time=20..22,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=2,Charge=28..42,Time=20..22,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=2,Charge=43..50,Time=20..22,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=1..,Charge=0..14,Time=20..22},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=1..,Charge=15..27,Time=20..22},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=1..,Charge=28..42,Time=20..22},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Rifle=1..,Charge=43..50,Time=20..22},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s}],medabots_server:{id:"medabots_server:rifle"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Rifle=2,Time=22}] HeadUses 1

# Remove the weapon
clear @s[scores={Time=60}] minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s[scores={Time=60}] minecraft:bow{medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={Time=60},type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[scores={Time=60},type=!minecraft:player] weapon.mainhand minecraft:air

# Give back original part
replaceitem entity @s[scores={MedapartType=1,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_sentineldy"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_sentineldy.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_sentineldy.model"}']},medabots_server:{id:"medabots_server:baroncastle_sentineldy",gender:0b,move:"rifle",part:"right_arm",armor:45,power:16,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=2,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=3,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_battle_rifle.model"}']},medabots_server:{id:"medabots_server:bluesdog_battle_rifle",gender:0b,move:"rifle",part:"left_arm",armor:40,power:20,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=4,Time=60..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"18"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_headcannon.model"}']},medabots_server:{id:"medabots_server:bluesdog_headcannon",gender:0b,move:"rifle",part:"head",armor:60,power:40,uses:18,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=5,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bluesdog"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bluesdog_aim_rifle.model"}']},medabots_server:{id:"medabots_server:bluesdog_aim_rifle",gender:0b,move:"rifle",part:"right_arm",armor:40,power:16,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=6,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot.model"}']},medabots_server:{id:"medabots_server:sailor_multi_short_shot",gender:1b,move:"rifle",part:"left_arm",armor:35,power:24,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=7,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:24,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackbeetle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackbeetle_blackfuser.model"}']},medabots_server:{id:"medabots_server:blackbeetle_blackfuser",gender:1b,move:"rifle",part:"right_arm",armor:35,power:40,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=8,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:15,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.arcbeetle_explode"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.arcbeetle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.arcbeetle_explode.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.arcbeetle_explode.model"}']},medabots_server:{id:"medabots_server:arcbeetle_explode",gender:0b,move:"rifle",part:"right_arm",armor:50,power:12,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=9,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:45,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magolor_darkness"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magolor"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.magolor_darkness.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magolor_darkness.model"}']},medabots_server:{id:"medabots_server:magolor_darkness",gender:0b,move:"rifle",part:"right_arm",armor:30,power:23,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=10,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:56,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_shoot_barrel"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.warbonnet"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_shoot_barrel.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.warbonnet_shoot_barrel.model"}']},medabots_server:{id:"medabots_server:warbonnet_shoot_barrel",gender:0b,move:"rifle",part:"right_arm",armor:30,power:25,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=11,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:62,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.metabee_revolver"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.metabee"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.metabee_revolver.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.metabee_revolver.model"}']},medabots_server:{id:"medabots_server:metabee_revolver",gender:0b,move:"rifle",part:"right_arm",armor:30,power:17,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=12,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:46,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.amelia_spear"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.amelia"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.amelia_spear.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.amelia_spear.model"}']},medabots_server:{id:"medabots_server:amelia_spear",gender:1b,move:"rifle",part:"left_arm",armor:65,power:25,activated:1b,version:1}}

# Finish the move
scoreboard players reset @s[scores={Rifle=1,Time=60..},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] Rifle
scoreboard players reset @s[scores={Rifle=3,Time=60..},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] Rifle
scoreboard players reset @s[scores={Rifle=2,Time=60..},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] Rifle
scoreboard players reset @s[scores={Rifle=1..,Time=60..},type=!minecraft:player] Rifle
execute unless entity @s[scores={Rifle=1..}] run scoreboard players reset @s MedapartType
execute unless entity @s[scores={Rifle=1..}] run scoreboard players set @s Time 0

# Increase time by 1
scoreboard players add @s Time 1

# Attacked by shooting trap
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team] if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.shooting_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team] run tag @s[scores={Death=1..}] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team]
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team] run effect give @s[tag=!undead,tag=!ally_medabot] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team] run effect give @s[tag=undead,tag=!ally_medabot] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team] if entity @s[scores={Death=1..},type=minecraft:player,tag=!ally_medabot] run tellraw @a {"translate":"medabots_server:death.shooting_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team] run tag @s[scores={Death=1..},tag=!ally_medabot] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team] if entity @s[tag=!ally_medabot] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team]
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team] run effect give @s[tag=!undead,tag=!enemy_medabot] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team] run effect give @s[tag=undead,tag=!enemy_medabot] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team] if entity @s[scores={Death=1..},type=minecraft:player,tag=!enemy_medabot] run tellraw @a {"translate":"medabots_server:death.shooting_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team] run tag @s[scores={Death=1..},tag=!enemy_medabot] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team] if entity @s[tag=!enemy_medabot] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team]