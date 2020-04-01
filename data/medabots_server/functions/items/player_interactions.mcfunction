execute store result score #temp Time run clear @s minecraft:written_book{medabots_server:{id:"medabots_server:player_interactions"}} 0
execute if score #temp Time matches 0 unless entity @s[nbt={Inventory:[{Slot:10b}]}] run replaceitem entity @s[tag=player_interactions] inventory.1 minecraft:written_book{CustomModelData:6,pages:['{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.challenge","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set 1"},"extra":[{"text":"\\n"},{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.challenge.deny","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set -1"}},{"text":"\\n\\n"},{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.trade","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set 3"}},{"text":"\\n"},{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.trade.deny","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set -2"}}]}'],author:"FVbico",title:"Player Interactions",display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.player_interactions"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop_to_kill"}']},HideFlags:32,medabots_server:{id:"medabots_server:player_interactions",kill:1b}}
scoreboard players reset #temp Time
clear @s[tag=!player_interactions] minecraft:written_book{medabots_server:{id:"medabots_server:player_interactions"}}

execute if entity @s[scores={PlayerInteract=1,Dialog=0},tag=!challenged_to_robattle,tag=!awaiting_challenge_response,gamemode=adventure] run function medabots_server:items/player_interactions/challenge
execute if entity @s[scores={PlayerInteract=1,Dialog=0},tag=challenged_to_robattle,tag=!awaiting_challenge_response] run function medabots_server:items/player_interactions/challenge/accept
execute unless entity @s[tag=!awaiting_challenge_response,tag=!challenged_to_robattle] run function medabots_server:items/player_interactions/challenge/waiting
execute if entity @s[scores={PlayerInteract=2,UsePart=1,Dialog=0}] run function medabots_server:items/player_interactions/challenge/try_tinpet
execute if entity @s[scores={PlayerInteract=-1,Dialog=0}] run function medabots_server:items/player_interactions/challenge/cancel
execute if entity @s[scores={PlayerInteract=3,Dialog=0},tag=!asked_to_trade,tag=!awaiting_trade_response] run function medabots_server:items/player_interactions/trade
execute if entity @s[scores={PlayerInteract=3,Dialog=0},tag=asked_to_trade,tag=!awaiting_trade_response] run function medabots_server:items/player_interactions/trade/accept
execute unless entity @s[tag=!awaiting_trade_response,tag=!asked_to_trade] run function medabots_server:items/player_interactions/trade/waiting
execute if entity @s[scores={PlayerInteract=4,Dialog=0},tag=sneak_pos] run function medabots_server:items/player_interactions/trade/accept_trade
execute if entity @s[scores={PlayerInteract=-2,Dialog=0}] run function medabots_server:items/player_interactions/trade/cancel
execute unless entity @s[scores={PlayerInteract=1..}] run scoreboard players enable @s PlayerInteract
scoreboard players set @s[scores={Dialog=1..}] PlayerInteract 0
scoreboard players set @s[scores={PlayerInteract=1,Dialog=0},gamemode=!adventure] PlayerInteract 0
scoreboard players set @s[scores={PlayerInteract=2,Dialog=0},gamemode=!adventure] PlayerInteract -1