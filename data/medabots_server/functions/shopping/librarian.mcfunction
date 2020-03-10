tellraw @s {"translate":"medabots_server:message.medallar_count","color":"green","with":[{"score":{"objective":"Money","name":"@s"}}]}
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.librarian","color":"green"},{"translate":"medabots_server:message.shop.greeting"}]}
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.librarian","color":"green"},{"text":"Sorry, I have nothing to offer at this time."}]}
scoreboard players set @s ShopIndex0 -1
scoreboard players enable @s ShopIndex0
tag @s add trading_with_librarian