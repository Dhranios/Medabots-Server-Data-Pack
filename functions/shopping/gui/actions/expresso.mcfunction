# Espresso
tellraw @s[scores={Money=..49}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Money=50..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.espresso"}]}]}
give @s[scores={Money=50..}] minecraft:beetroot_soup{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.espresso"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.espresso.description"}']},medabots_server:{id:"medabots_server:espresso"}}
scoreboard players remove @s[scores={Money=50..}] Money 50
tag @s add stop_trading

function medabots_server:shopping/gui/click_sound