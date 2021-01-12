clear @s[tag=right_arm_activated] minecraft:fishing_rod{medabots_server:{part:"right_arm",activated:1b}}
clear @s[tag=left_arm_activated] minecraft:fishing_rod{medabots_server:{part:"left_arm",activated:1b}}
clear @s[tag=head_activated] minecraft:fishing_rod{medabots_server:{part:"head",activated:1b}}

# Give the weapon and ammo depending on charge
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run item entity @s[scores={MedabotLevel=0..15},type=minecraft:player] inventory.25 replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 3
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run item entity @s[scores={MedabotLevel=16..29},type=minecraft:player] inventory.25 replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 4
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run item entity @s[scores={MedabotLevel=30..43},type=minecraft:player] inventory.25 replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 5
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run item entity @s[scores={MedabotLevel=44..57},type=minecraft:player] inventory.25 replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 6
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run item entity @s[scores={MedabotLevel=58..70},type=minecraft:player] inventory.25 replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 7
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run item entity @s[scores={MedabotLevel=71..85},type=minecraft:player] inventory.25 replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 8
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run item entity @s[scores={MedabotLevel=86..98},type=minecraft:player] inventory.25 replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 9
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run item entity @s[scores={MedabotLevel=99..},type=minecraft:player] inventory.25 replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 10
item entity @s[scores={MedabotLevel=0..15},type=!minecraft:player] weapon.offhand replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 3
item entity @s[scores={MedabotLevel=16..29},type=!minecraft:player] weapon.offhand replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 4
item entity @s[scores={MedabotLevel=30..43},type=!minecraft:player] weapon.offhand replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 5
item entity @s[scores={MedabotLevel=44..57},type=!minecraft:player] weapon.offhand replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 6
item entity @s[scores={MedabotLevel=58..70},type=!minecraft:player] weapon.offhand replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 7
item entity @s[scores={MedabotLevel=71..85},type=!minecraft:player] weapon.offhand replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 8
item entity @s[scores={MedabotLevel=86..98},type=!minecraft:player] weapon.offhand replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 9
item entity @s[scores={MedabotLevel=99..},type=!minecraft:player] weapon.offhand replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:6b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}} 10
execute unless entity @s[scores={ScoutTime=1..}] run item entity @s[tag=left_arm_activated,scores={Drop=0}] hotbar.1 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:gatling"}}
execute unless entity @s[scores={ScoutTime=1..}] run item entity @s[tag=right_arm_activated,scores={Drop=0}] hotbar.2 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:gatling"}}
execute unless entity @s[scores={ScoutTime=1..}] run item entity @s[tag=head_activated,scores={Drop=0}] hotbar.3 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:gatling"}}
execute unless entity @s[scores={ScoutTime=1..}] run item entity @s[type=!minecraft:player] weapon.mainhand replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:gatling"}}
item entity @s[tag=left_arm_activated,scores={Drop=0,ScoutTime=1..}] hotbar.1 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:gatling"}}
item entity @s[tag=right_arm_activated,scores={Drop=0,ScoutTime=1..}] hotbar.2 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:gatling"}}
item entity @s[tag=head_activated,scores={Drop=0,ScoutTime=1..}] hotbar.3 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:gatling"}}
item entity @s[scores={ScoutTime=1..},type=!minecraft:player] weapon.mainhand replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:gatling"}}

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1