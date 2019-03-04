# Increase time by 1
scoreboard players add @s Time 1

# Set which part is activated
scoreboard players set @s[scores={Time=2,Laser=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:aimflash_zoom"}}}]}] MedapartType 1
scoreboard players set @s[scores={Time=2,Laser=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:keithturtle_gigalaser"}}}]}] MedapartType 2
scoreboard players set @s[scores={Time=2,Laser=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:keithturtle_tyranolaser"}}}]}] MedapartType 3
scoreboard players set @s[scores={Time=2,Laser=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:keithturtle_megalaser"}}}]}] MedapartType 4
scoreboard players set @s[scores={Time=2,Laser=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:arcbeetle_prominence"}}}]}] MedapartType 5
scoreboard players set @s[scores={Time=2,Laser=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:god_emperor_death_laser"}}}]}] MedapartType 6
scoreboard players set @s[scores={Time=2,Laser=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:rob_famicom_zapper"}}}]}] MedapartType 7
scoreboard players set @s[scores={Time=2,Laser=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:iron_man_repulsor_beam"}}}]}] MedapartType 8
scoreboard players set @s[scores={Time=2,Laser=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:le_villan_grave_lane"}}}]}] MedapartType 9

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Laser=1}] Time 19
scoreboard players set @s[scores={Time=3,Laser=3}] Time 27

# Give the weapon
replaceitem entity @s[scores={Time=56}] weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:6724056,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:2b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
replaceitem entity @s[scores={Laser=1,Time=56..58,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.laser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:5s}],medabots_server:{id:"medabots_server:laser"}}
replaceitem entity @s[scores={Laser=3,Time=56..58,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.laser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:5s}],medabots_server:{id:"medabots_server:laser"}}
replaceitem entity @s[scores={Laser=2,Time=56..58,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.laser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:5s}],medabots_server:{id:"medabots_server:laser"}}
replaceitem entity @s[scores={Laser=1..,Time=56..58},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.laser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:5s}],medabots_server:{id:"medabots_server:laser"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Laser=2,Time=56}] HeadUses 1

# Remove the weapon
clear @s[scores={Time=106}] minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s[scores={Time=106}] minecraft:bow{medabots_server:{id:"medabots_server:laser"}}
replaceitem entity @s[scores={Time=106},type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[scores={Time=106},type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original part
replaceitem entity @s[scores={MedapartType=1,Time=108..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom.model"}']},medabots_server:{id:"medabots_server:aimflash_zoom",gender:0b,move:"laser",part:"right_arm",armor:20,power:27,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=2,Time=108..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_gigalaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_gigalaser.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_gigalaser.model"}']},medabots_server:{id:"medabots_server:keithturtle_gigalaser",gender:0b,move:"laser",part:"left_arm",armor:35,power:29,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=3,Time=108..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_tyranolaser.model"}']},medabots_server:{id:"medabots_server:keithturtle_tyranolaser",gender:0b,move:"laser",part:"head",armor:50,power:48,uses:5,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=4,Time=108..,Drop=0}] hotbar.2 minecraft:fishing_rod{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.keithturtle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.keithturtle_megalaser.model"}']},medabots_server:{id:"medabots_server:keithturtle_megalaser",gender:0b,move:"laser",part:"right_arm",armor:35,power:23,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=5,Time=108..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:15,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.arcbeetle_prominence"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.arcbeetle"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.arcbeetle_prominence.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.arcbeetle_prominence.model"}']},medabots_server:{id:"medabots_server:arcbeetle_prominence",gender:0b,move:"laser",part:"head",armor:70,power:76,uses:4,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=6,Time=108..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:17,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_laser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.god_emperor"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_laser.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_laser.model"}']},medabots_server:{id:"medabots_server:god_emperor_death_laser",gender:0b,move:"laser",part:"left_arm",armor:50,power:57,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=7,Time=108..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:49,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.rob_famicom_zapper"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.rob"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.rob_famicom_zapper.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.rob_famicom_zapper.model"}']},medabots_server:{id:"medabots_server:rob_famicom_zapper",gender:0b,move:"laser",part:"head",armor:40,power:52,uses:5,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=8,Time=108..,Drop=0}] hotbar.1 minecraft:fishing_rod{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:50,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.iron_man_repulser_beam"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"95"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.iron_man"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.iron_man_repulser_beam.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"?"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.iron_man_repulser_beam.model"}']},medabots_server:{id:"medabots_server:iron_man_repulser_beam",gender:0b,move:"laser",part:"left_arm",armor:95,power:35,activated:1b,version:1}}
replaceitem entity @s[scores={MedapartType=9,Time=108..,Drop=0}] hotbar.3 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:66,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.le_villan_grave_lane"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"4"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.le_villan"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.le_villan_grave_lane.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.le_villan_grave_lane.model"}']},medabots_server:{id:"medabots_server:le_villan_grave_lane",gender:0b,move:"laser",part:"head",armor:50,power:17,uses:4,activated:1b,version:1}}

# Finish the move
scoreboard players reset @s[scores={Laser=1,Time=108..},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{part:"left_arm"}}}]}] Laser
scoreboard players reset @s[scores={Laser=3,Time=108..},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{part:"right_arm"}}}]}] Laser
scoreboard players reset @s[scores={Laser=2,Time=108..},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{part:"head"}}}]}] Laser
scoreboard players reset @s[scores={Laser=1..,Time=108..},type=!minecraft:player] Laser
execute unless entity @s[scores={Laser=1..}] run scoreboard players reset @s MedapartType
execute unless entity @s[scores={Laser=1..}] run scoreboard players set @s Time 1

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