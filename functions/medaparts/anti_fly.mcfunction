# Set which part is activated
scoreboard players set @s[scores={Time=20,AntiFly=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:sphere_doomers_electric_doomer"}}}]}] MedapartType 1

# Give the weapon
replaceitem entity @s[scores={Time=20}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:8b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={AntiFly=1,Time=20..22,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:anti_fly"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={AntiFly=3,Time=20..22,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:anti_fly"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={AntiFly=2,Time=20..22,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:anti_fly"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={AntiFly=1..,Time=20},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:anti_fly"}}
replaceitem entity @s[scores={AntiFly=1,Time=20..22,Drop=0,ScoutTime=1..}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:anti_fly"}}
replaceitem entity @s[scores={AntiFly=3,Time=20..22,Drop=0,ScoutTime=1..}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:anti_fly"}}
replaceitem entity @s[scores={AntiFly=2,Time=20..22,Drop=0,ScoutTime=1..}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:anti_fly"}}
replaceitem entity @s[scores={AntiFly=1..,Time=20,ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:anti_fly"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={AntiFly=2,Time=22}] HeadUses 1

# Remove the weapon
clear @s[scores={Time=60..}] minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s[scores={Time=60..}] minecraft:bow{medabots_server:{id:"medabots_server:anti_fly"}}
replaceitem entity @s[scores={Time=60..},type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[scores={Time=60..},type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original part
replaceitem entity @s[scores={MedapartType=1,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:53,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sphere_doomers_electric_doomer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.neutral"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sphere_doomers"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sphere_doomers_electric_doomer.model"}']},medabots_server:{id:"medabots_server:sphere_doomers_electric_doomer",gender:2b,move:"anti_fly",part:"right_arm",armor:40,power:24,activated:1b,version:1}}

# Finish move
scoreboard players reset @s[scores={AntiFly=1,Time=60..},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] AntiFly
scoreboard players reset @s[scores={AntiFly=2,Time=60..},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"right_arm"}}}]}] AntiFly
scoreboard players reset @s[scores={AntiFly=3,Time=60..},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"head"}}}]}] AntiFly
scoreboard players reset @s[scores={AntiFly=1..,Time=60..},type=!minecraft:player] AntiFly
execute unless entity @s[scores={AntiFly=1..}] run scoreboard players reset @s MedapartType
execute unless entity @s[scores={AntiFly=1..}] run scoreboard players set @s Time 0

# Increase time by 1
scoreboard players add @s[scores={AntiFly=1..}] Time 1

# Attacked by shooting trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!ally_team,tag=!enemy_team] run function medabots_server:medaparts/shooting_trap_hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=ally_team] if entity @s[tag=!ally_team] run function medabots_server:medaparts/shooting_trap_hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=enemy_team] if entity @s[tag=!enemy_team] run function medabots_server:medaparts/shooting_trap_hit