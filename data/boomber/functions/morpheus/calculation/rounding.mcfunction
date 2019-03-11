
execute store result score #cal_player_needed bb.players run scoreboard players get #player_needed bb.players

execute if score #cal_value bb.players matches 100.. run function boomber:morpheus/calculation/get_decimal

execute if score #cal_value bb.players matches 1..99 store result score #player_needed bb.players run scoreboard players operation #player_needed bb.players += #100 bb.global
