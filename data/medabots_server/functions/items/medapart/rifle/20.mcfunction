clear @s[tag=right_arm_activated] minecraft:fishing_rod{medabots_server:{part:"right_arm",activated:1b}}
clear @s[tag=left_arm_activated] minecraft:fishing_rod{medabots_server:{part:"left_arm",activated:1b}}
clear @s[tag=head_activated] minecraft:fishing_rod{medabots_server:{part:"head",activated:1b}}

# Give the weapon depending on charge
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run replaceitem entity @s[type=minecraft:player] inventory.25 minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:5b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
replaceitem entity @s[type=!minecraft:player] weapon.offhand minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:5b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=left_arm_activated,scores={MedabotLevel=0..29,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=left_arm_activated,scores={MedabotLevel=30..55,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=left_arm_activated,scores={MedabotLevel=56..85,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=left_arm_activated,scores={MedabotLevel=86..,Drop=0}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=right_arm_activated,scores={MedabotLevel=0..29,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=right_arm_activated,scores={MedabotLevel=30..55,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=right_arm_activated,scores={MedabotLevel=56..85,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=right_arm_activated,scores={MedabotLevel=86..,Drop=0}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=head_activated,scores={MedabotLevel=0..29,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=head_activated,scores={MedabotLevel=30..55,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=head_activated,scores={MedabotLevel=56..85,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=head_activated,scores={MedabotLevel=86..,Drop=0}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={MedabotLevel=0..29},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={MedabotLevel=30..55},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={MedabotLevel=56..85},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s}],medabots_server:{id:"medabots_server:rifle"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={MedabotLevel=86..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=left_arm_activated,scores={MedabotLevel=0..29,Drop=0,ScoutTime=1..}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=left_arm_activated,scores={MedabotLevel=30..55,Drop=0,ScoutTime=1..}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=left_arm_activated,scores={MedabotLevel=56..85,Drop=0,ScoutTime=1..}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=left_arm_activated,scores={MedabotLevel=86..50,Drop=0,ScoutTime=1..}] hotbar.1 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=right_arm_activated,scores={MedabotLevel=0..29,Drop=0,ScoutTime=1..}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=right_arm_activated,scores={MedabotLevel=30..55,Drop=0,ScoutTime=1..}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=right_arm_activated,scores={MedabotLevel=56..85,Drop=0,ScoutTime=1..}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=right_arm_activated,scores={MedabotLevel=86..,Drop=0,ScoutTime=1..}] hotbar.2 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=head_activated,scores={MedabotLevel=0..29,Drop=0,ScoutTime=1..}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=head_activated,scores={MedabotLevel=30..55,Drop=0,ScoutTime=1..}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=head_activated,scores={MedabotLevel=56..85,Drop=0,ScoutTime=1..}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[tag=head_activated,scores={MedabotLevel=86..,Drop=0,ScoutTime=1..}] hotbar.3 minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={MedabotLevel=0..29,ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:1s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={MedabotLevel=30..55,ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:2s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={MedabotLevel=56..85,ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}
replaceitem entity @s[scores={MedabotLevel=86..,ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:rifle"}}

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1