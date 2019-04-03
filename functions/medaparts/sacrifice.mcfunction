# Increase time by 1
scoreboard players add @s Time 1

# Set which part is activated
scoreboard players set @s[scores={Time=2,Sacrifice=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:bezelga_helming"}}}]}] MedapartType 1
scoreboard players set @s[scores={Time=2,Sacrifice=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:bezelga_helmight"}}}]}] MedapartType 2
scoreboard players set @s[scores={Time=2,Sacrifice=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:abyss_greater_pro_fence"}}}]}] MedapartType 3
scoreboard players set @s[scores={Time=2,Sacrifice=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:abyss_greater_burst"}}}]}] MedapartType 4

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=2,Sacrifice=1}] Time 10
scoreboard players set @s[scores={Time=2,Sacrifice=3}] Time 20

# Give the weapon
replaceitem entity @s[scores={Time=20}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:7b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
replaceitem entity @s[scores={Sacrifice=1,Time=20..22,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}',Lore:['{"translate":"medabots_server:medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:3s}],medabots_server:{id:"medabots_server:sacrifice"}}
replaceitem entity @s[scores={Sacrifice=3,Time=20..22,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}',Lore:['{"translate":"medabots_server:medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:3s}],medabots_server:{id:"medabots_server:sacrifice"}}
replaceitem entity @s[scores={Sacrifice=1..,Time=20..22},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}',Lore:['{"translate":"medabots_server:medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:3s}],medabots_server:{id:"medabots_server:sacrifice"}}

# destroy the arm used
scoreboard players set @s[scores={Sacrifice=1,Time=60}] LeftArmArmor 0
scoreboard players set @s[scores={Sacrifice=3,Time=60}] RightArmArmor 0

# Remove the weapon
clear @s[scores={Time=60}] minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s[scores={Time=60}] minecraft:bow{medabots_server:{id:"medabots_server:sacrifice"}}
replaceitem entity @s[scores={Time=60},type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[scores={Time=60},type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original part
replaceitem entity @s[scores={MedapartType=1,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:16,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bezelga_helming"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bezelga"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.bezelga_helming.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bezelga_helming.model"}']},medabots_server:{id:"medabots_server:bezelga_helming",gender:0b,move:"sacrifice",part:"left_arm",armor:15,power:85,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=2,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:16,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bezelga_helmight"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.bezelga"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.bezelga_helmight.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.bezelga_helmight.model"}']},medabots_server:{id:"medabots_server:bezelga_helmight",gender:0b,move:"sacrifice",part:"right_arm",armor:15,power:66,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=3,Time=60..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_pro_fence"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_pro_fence.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_pro_fence.model"}']},medabots_server:{id:"medabots_server:abyss_greater_pro_fence",gender:0b,move:"sacrifice",part:"left_arm",armor:50,power:54,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=4,Time=60..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:22,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_burst"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.abyss_greater"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_burst.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.abyss_greater_burst.model"}']},medabots_server:{id:"medabots_server:abyss_greater_burst",gender:0b,move:"sacrifice",part:"right_arm",armor:50,power:42,activated:1b,version:1}}

# Finish the move
scoreboard players reset @s[scores={Sacrifice=1,Time=60..,LeftArmArmor=..0},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] Sacrifice
scoreboard players reset @s[scores={Sacrifice=3,Time=60..,RightArmArmor=..0},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] Sacrifice
scoreboard players reset @s[scores={Sacrifice=1,Time=60..,LeftArmArmor=..0},type=!minecraft:player] Sacrifice
scoreboard players reset @s[scores={Sacrifice=3,Time=60..,RightArmArmor=..0},type=!minecraft:player] Sacrifice
execute unless entity @s[scores={Sacrifice=1..}] run scoreboard players reset @s MedapartType
execute unless entity @s[scores={Sacrifice=1..}] run scoreboard players set @s Time 1

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