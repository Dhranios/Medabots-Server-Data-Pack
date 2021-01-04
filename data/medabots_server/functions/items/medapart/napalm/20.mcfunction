clear @s[tag=right_arm_activated] minecraft:fishing_rod{medabots_server:{part:"right_arm",activated:1b}}
clear @s[tag=left_arm_activated] minecraft:fishing_rod{medabots_server:{part:"left_arm",activated:1b}}
clear @s[tag=head_activated] minecraft:fishing_rod{medabots_server:{part:"head",activated:1b}}

# Give the weapon
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run item entity @s[type=minecraft:player] inventory.25 replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:1b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
item entity @s[type=!minecraft:player] weapon.offhand replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:1b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
item entity @s[tag=left_arm_activated,scores={Drop=0}] hotbar.1 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:napalm"}}
item entity @s[tag=right_arm_activated,scores={Drop=0}] hotbar.2 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:napalm"}}
item entity @s[tag=head_activated,scores={Drop=0}] hotbar.3 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:napalm"}}
item entity @s[type=!minecraft:player] weapon.mainhand replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:napalm"}}

# Remove from head uses if this was the head part
execute unless entity @s[gamemode=creative] run scoreboard players remove @s[tag=head_activated] HeadUses 1