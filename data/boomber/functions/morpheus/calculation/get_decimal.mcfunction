execute if score #cal_value bb.players matches 100..999 run scoreboard players remove #cal_value bb.players 100
execute if score #cal_value bb.players matches 1000..9999 run scoreboard players remove #cal_value bb.players 1000
execute if score #cal_value bb.players matches 100.. run function boomber:morpheus/calculation/get_decimal