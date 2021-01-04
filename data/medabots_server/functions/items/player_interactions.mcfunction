execute store result score #temp Time run clear @s minecraft:written_book{medabots_server:{id:"medabots_server:player_interactions"}} 0
execute if score #temp Time matches 0 unless entity @s[nbt={Inventory:[{Slot:10b}]}] run item entity @s[tag=player_interactions] inventory.1 replace minecraft:written_book{CustomModelData:6,pages:['{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.medabot","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set 7"},"extra":[{"text":"\\n\\n"},{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.robattle","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set 1"}},{"text":"\\n"},{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.robattle.deny","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set -1"}},{"text":"\\n\\n"},{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.trade","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set 3"}},{"text":"\\n"},{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.trade.deny","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set -2"}}]}','{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.chess","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set 5"},"extra":[{"text":"\\n"},{"italic":false,"color":"black","translate":"medabots_server:item.player_interactions.chess.deny","clickEvent":{"action":"run_command","value":"/trigger PlayerInteract set -3"}}]}'],author:"FVbico",title:"Player Interactions",display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.player_interactions"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop_to_kill"}']},HideFlags:32,medabots_server:{id:"medabots_server:player_interactions",kill:1b}}
scoreboard players reset #temp Time
clear @s[tag=!player_interactions] minecraft:written_book{medabots_server:{id:"medabots_server:player_interactions"}}

execute if entity @s[scores={PlayerInteract=1,Dialog=0},tag=!challenged_to_robattle,tag=!awaiting_robattle_response,gamemode=adventure] run function medabots_server:items/player_interactions/robattle
execute if entity @s[scores={PlayerInteract=1,Dialog=0},tag=challenged_to_robattle,tag=!awaiting_robattle_response] run function medabots_server:items/player_interactions/robattle/accept
execute unless entity @s[tag=!awaiting_robattle_response,tag=!challenged_to_robattle] run function medabots_server:items/player_interactions/robattle/waiting
execute if entity @s[scores={PlayerInteract=2,UsePart=1,Dialog=0}] run function medabots_server:items/player_interactions/robattle/try_tinpet
execute if entity @s[scores={PlayerInteract=-1,Dialog=0}] run function medabots_server:items/player_interactions/robattle/cancel

execute if entity @s[scores={PlayerInteract=3,Dialog=0},tag=!asked_to_trade,tag=!awaiting_trade_response] run function medabots_server:items/player_interactions/trade
execute if entity @s[scores={PlayerInteract=3,Dialog=0},tag=asked_to_trade,tag=!awaiting_trade_response] run function medabots_server:items/player_interactions/trade/accept
execute unless entity @s[tag=!awaiting_trade_response,tag=!asked_to_trade] run function medabots_server:items/player_interactions/trade/waiting
execute if entity @s[scores={PlayerInteract=4,Dialog=0},tag=sneak_pos] run function medabots_server:items/player_interactions/trade/accept_trade
execute if entity @s[scores={PlayerInteract=-2,Dialog=0}] run function medabots_server:items/player_interactions/trade/cancel

execute if entity @s[scores={PlayerInteract=5,Dialog=0},tag=!challenged_to_chess,tag=!awaiting_chess_response] run function medabots_server:items/player_interactions/chess
execute if entity @s[scores={PlayerInteract=5,Dialog=0},tag=challenged_to_chess,tag=!awaiting_chess_response] run function medabots_server:items/player_interactions/chess/accept
execute unless entity @s[tag=!awaiting_chess_response,tag=!challenged_to_chess] unless entity @s[scores={PlayerInteract=6}] run function medabots_server:items/player_interactions/chess/waiting
execute if entity @s[scores={PlayerInteract=6,Dialog=0}] run function medabots_server:items/player_interactions/chess/play
execute if entity @s[scores={PlayerInteract=-3,Dialog=0}] run function medabots_server:items/player_interactions/chess/cancel

execute if entity @s[scores={PlayerInteract=7,Dialog=0}] run function medabots_server:items/player_interactions/medabot

execute unless entity @s[scores={PlayerInteract=1..}] run scoreboard players enable @s PlayerInteract
execute if entity @s[scores={PlayerInteract=4}] run scoreboard players enable @s PlayerInteract
scoreboard players set @s[scores={Dialog=1..}] PlayerInteract 0
scoreboard players set @s[scores={PlayerInteract=1,Dialog=0},gamemode=!adventure] PlayerInteract 0
scoreboard players set @s[scores={PlayerInteract=2,Dialog=0},gamemode=!adventure] PlayerInteract -1