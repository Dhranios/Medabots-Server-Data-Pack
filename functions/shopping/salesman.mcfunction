tellraw @s {"translate":"medabots_server:message.medallar_count","color":"green","with":[{"score":{"objective":"Money","name":"@s"}}]}
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.greeting"}]}
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.ask"}]}
tellraw @s {"translate":"medabots_server:message.shop.item","clickEvent":{"action":"run_command","value":"/trigger Shopping set 1"},"with":[{"translate":"medabots_server:item.sunglasses"},{"translate":"64"}]}
tellraw @s {"translate":"medabots_server:message.shop.item","clickEvent":{"action":"run_command","value":"/trigger Shopping set 2"},"with":[{"translate":"medabots_server:item.espresso","hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:item.espresso.description"}}},{"translate":"50"}]}
tellraw @s[advancements={medabots_server:special_items/passes/dimensional=false}] {"translate":"medabots_server:message.shop.item","clickEvent":{"action":"run_command","value":"/trigger Shopping set 3"},"with":[{"translate":"medabots_server:item.unknown_crown","hoverEvent":{"action":"show_text","value":[{"translate":"medabots_server:item.unknown_crown.description.1"},{"text":"\n"},{"translate":"medabots_server:item.unknown_crown.description.2"}]}},{"translate":"12800"}]}