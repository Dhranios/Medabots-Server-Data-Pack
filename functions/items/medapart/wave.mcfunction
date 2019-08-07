execute if entity @s[scores={Time=25}] run function medabots_server:items/medapart/wave/25
execute if entity @s[scores={Time=120..}] run function medabots_server:items/medapart/wave/120_

# Increase time by 1
scoreboard players add @s[scores={Wave=1..}] Time 1

# Prevent knockback from this attack
replaceitem entity @s[scores={Wave=1..}] armor.head minecraft:stone_button{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.remove_knockback"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.remove_knockback.wave"}']},AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:2.0f,Operation:0,UUIDMost:93175l,UUIDLeast:132111l,Slot:"head"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],medabots_server:{id:"medabots_server:remove_knockback"}}
execute unless entity @s[scores={Wave=1..}] run replaceitem entity @s armor.head minecraft:air