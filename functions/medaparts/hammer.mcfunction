# Increase time by 1
scoreboard players add @s Time 1

# Set which part is activated
scoreboard players set @s[scores={Time=2,Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:dorcus_intensebeat"}}}]}] MedapartType 1
scoreboard players set @s[scores={Time=2,Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:attack_tyrano_strike_hit"}}}]}] MedapartType 2
scoreboard players set @s[scores={Time=2,Hammer=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:attack_tyrano_crab_hit"}}}]}] MedapartType 3
scoreboard players set @s[scores={Time=2,Hammer=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:boarbooster_boartusk"}}}]}] MedapartType 4
scoreboard players set @s[scores={Time=2,Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:blackstag_blackbeat"}}}]}] MedapartType 5
scoreboard players set @s[scores={Time=2,Hammer=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:amelia_silver_axe"}}}]}] MedapartType 6
scoreboard players set @s[scores={Time=2,Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:ashton_ash_buster"}}}]}] MedapartType 7
scoreboard players set @s[scores={Time=2,Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:smilidonad_straw_hammer"}}}]}] MedapartType 8
scoreboard players set @s[scores={Time=2,Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:rokusho_pipo_hammer"}}}]}] MedapartType 9
scoreboard players set @s[scores={Time=2,Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:suzumega_hummer_light_hammer"}}}]}] MedapartType 10

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Hammer=1}] Time 19
scoreboard players set @s[scores={Time=3,Hammer=3}] Time 27

# Give the weapon
replaceitem entity @s[scores={Hammer=1,Time=32..34,Drop=0}] hotbar.1 minecraft:iron_axe{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[scores={Hammer=3,Time=32..34,Drop=0}] hotbar.2 minecraft:iron_axe{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[scores={Hammer=2,Time=32..34,Drop=0}] hotbar.3 minecraft:iron_axe{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[scores={Hammer=1..,Time=32..34},type=!minecraft:player] weapon.mainhand minecraft:iron_axe{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Hammer=2,Time=32}] HeadUses 1

# Remove the weapon
clear @s[scores={Time=56}] minecraft:iron_axe{medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[scores={Time=56},type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original part
replaceitem entity @s[scores={MedapartType=1,Time=58..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:32,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_intensebeat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dorcus"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_intensebeat.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dorcus_intensebeat.model"}']},medabots_server:{id:"medabots_server:dorcus_intensebeat",gender:0b,move:"hammer",part:"left_arm",armor:45,power:52,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=2,Time=58..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_strike_hit.model"}']},medabots_server:{id:"medabots_server:attack_tyrano_strike_hit",gender:0b,move:"hammer",part:"left_arm",armor:40,power:32,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=3,Time=58..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_crab_hit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_crab_hit.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_crab_hit.model"}']},medabots_server:{id:"medabots_server:attack_tyrano_crab_hit",gender:0b,move:"hammer",part:"right_arm",armor:40,power:24,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=4,Time=58..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:29,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_boartusk"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"12"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_boartusk.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_boartusk.model"}']},medabots_server:{id:"medabots_server:boarbooster_boartusk",gender:1b,move:"hammer",part:"head",armor:55,power:28,uses:12,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=5,Time=58..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:14,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackbeat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.blackstag"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackbeat.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.blackstag_blackbeat.model"}']},medabots_server:{id:"medabots_server:blackstag_blackbeat",gender:1b,move:"hammer",part:"left_arm",armor:35,power:36,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=6,Time=58..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:46,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.amelia_silver_axe"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.amelia"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.amelia_silver_axe.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.amelia_silver_axe.model"}']},medabots_server:{id:"medabots_server:amelia_silver_axe",gender:1b,move:"hammer",part:"right_arm",armor:45,power:25,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=7,Time=58..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:48,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ashton_ash_buster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.ashton"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.ashton_ash_buster.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.ashton_ash_buster.model"}']},medabots_server:{id:"medabots_server:ashton_ash_buster",gender:0b,move:"hammer",part:"left_arm",armor:40,power:23,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=8,Time=58..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:55,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.smilidonad_straw_hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.smilidonad"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.smilidonad_straw_hammer.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.smmilidonad_straw_hammer.model"}']},medabots_server:{id:"medabots_server:smilidonad_straw_hammer",gender:0b,move:"hammer",part:"left_arm",armor:30,power:17,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=9,Time=58..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:63,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_pipo_hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rokusho"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_pipo_hammer.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rokusho_pipo_hammer.model"}']},medabots_server:{id:"medabots_server:rokusho_pipo_hammer",gender:0b,move:"hammer",part:"left_arm",armor:30,power:25,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=10,Time=58..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:67,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.suzumega_hummer_light_hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"12"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.suzumega_hummer"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.suzumega_hummer_light_hammer.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.suzumega_hummer_light_hammer.model"}']},medabots_server:{id:"medabots_server:suzumega_hummer_light_hammer",gender:0b,move:"hammer",part:"left_arm",armor:12,power:70,activated:1b,version:1}}

# Finish move
scoreboard players reset @s[scores={Hammer=1,Time=58..},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] Hammer
scoreboard players reset @s[scores={Hammer=3,Time=58..},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] Hammer
scoreboard players reset @s[scores={Hammer=2,Time=58..},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] Hammer
scoreboard players reset @s[scores={Hammer=1..,Time=58..},type=!minecraft:player] Hammer
execute unless entity @s[scores={Hammer=1..}] run scoreboard players reset @s MedapartType
execute unless entity @s[scores={Hammer=1..}] run scoreboard players set @s Time 1

# Allow dealing damage
effect clear @s minecraft:weakness

# Attacked my melee trap
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run tag @s[scores={Death=1..}] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team]
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run effect give @s[tag=!undead,tag=!ally_medabot] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run effect give @s[tag=undead,tag=!ally_medabot] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[scores={Death=1..},type=minecraft:player,tag=!ally_medabot] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] run tag @s[scores={Death=1..},tag=!ally_medabot] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[tag=!ally_medabot] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team]
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run effect give @s[tag=!undead,tag=!enemy_medabot] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run effect give @s[tag=undead,tag=!enemy_medabot] minecraft:instant_health 1 0 true
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[scores={Death=1..},type=minecraft:player,tag=!enemy_medabot] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] run tag @s[scores={Death=1..},tag=!enemy_medabot] add had_death
execute if entity @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[tag=!enemy_medabot] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team]