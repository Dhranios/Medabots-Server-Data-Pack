# Unknown crown
tellraw @s[scores={Money=..12799},advancements={medabots_server:special_items/passes/dimensional=false}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.thank_you.unknown_crown"}]}
give @s[scores={Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] minecraft:golden_helmet{Unbreakable:1b,HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.unknown_crown"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.unknown_crown.description.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.unknown_crown.description.2"}']},AttributeModifiers:[],medabots_server:{id:"medabots_server:unknown_crown"}}
tag @s[scores={Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] add dialog_magolor
advancement grant @s[scores={Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] only medabots_server:wave_1/you_you_traitor
scoreboard players remove @s[scores={Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] Money 12800
tag @s add stop_trading

function medabots_server:shopping/gui/click_sound