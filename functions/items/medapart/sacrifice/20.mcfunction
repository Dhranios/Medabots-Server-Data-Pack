# Set which part is activated
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:bezelga_helming"}}}]}] MedapartID 1
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:bezelga_helmight"}}}]}] MedapartID 2
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:abyss_greater_pro_fence"}}}]}] MedapartID 3
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:abyss_greater_burst"}}}]}] MedapartID 4

# Give the weapon
replaceitem entity @s weapon.offhand minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:7b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}',Lore:['{"translate":"medabots_server:medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:3s}],medabots_server:{id:"medabots_server:sacrifice"}}
replaceitem entity @s[scores={ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.sacrifice"}',Lore:['{"translate":"medabots_server:medabots_server:move.sacrifice"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:5s}],medabots_server:{id:"medabots_server:sacrifice"}}

# destroy the arm used
scoreboard players set @s[tag=left_arm_selected] LeftArmArmor 0
scoreboard players set @s[tag=right_arm_selected] RightArmArmor 0