tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mineral_buyer"},{"translate":"medabots_server:message.shop.greeting"}]}
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mineral_buyer"},{"translate":"medabots_server:message.shop.ask"}]}
tellraw @s {"translate":"medabots_server:message.shop.sell.1.more.an","clickEvent":{"action":"run_command","value":"/trigger Shopping set 4"},"with":[{"text":"50"},{"translate":"item.minecraft.iron_nugget"}]}
tellraw @s {"translate":"medabots_server:message.shop.sell.1.more.an","clickEvent":{"action":"run_command","value":"/trigger Shopping set 5"},"with":[{"text":"2"},{"translate":"item.minecraft.iron_ingot"}]}
tag @s add trading_with_mineral_buyer