# Set which part is activated
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:sphere_doomers_electric_doomer"}}}]}] MedapartID 1

# Give the arrow
replaceitem entity @s weapon.offhand minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:8b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},medabots_server:{id:"medabots_server:anti_fly"}}
replaceitem entity @s[scores={ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:1s}],medabots_server:{id:"medabots_server:anti_fly"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[tag=head_selected] HeadUses 1