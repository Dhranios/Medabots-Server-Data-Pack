execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/wave/10
execute if entity @s[scores={Time=30..}] run function medabots_server:items/medapart/wave/30..

# Increase time by 1
scoreboard players add @s[scores={Wave=1..}] Time 1

# Prevent knockback from this attack
replaceitem entity @s armor.head minecraft:stone_button{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.remove_knockback"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.remove_knockback.wave"}']},AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1.0f,Operation:0,UUIDMost:93175l,UUIDLeast:132111l,Slot:"head"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],medabots_server:{id:"medabots_server:remove_knockback"}}