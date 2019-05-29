# Sunglasses
tellraw @s[scores={Money=..63}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Money=64..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.sunglasses"}]}]}
give @s[scores={Money=64..}] minecraft:chainmail_helmet{Unbreakable:1b,HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sunglasses"}'},AttributeModifiers:[],medabots_server:{id:"medabots_server:sunglasses"}}
scoreboard players remove @s[scores={Money=64..}] Money 64
tag @s add stop_trading

function medabots_server:shopping/gui/click_sound