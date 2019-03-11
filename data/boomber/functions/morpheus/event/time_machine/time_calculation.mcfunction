scoreboard players operation #bb.mp.offset_time bb.calculation = #bb.mp.time bb.calculation

execute if score #bb.mp.time bb.calculation matches ..0 run function #boomber:morpheus/time_skipped

execute if score #bb.mp.offset_time bb.calculation matches 1..9 run time add 1
execute if score #bb.mp.offset_time bb.calculation matches 1..9 run scoreboard players remove #bb.mp.time bb.calculation 1
execute if score #bb.mp.offset_time bb.calculation matches 1..9 run function boomber:morpheus/event/time_machine/time_calculation

execute if score #bb.mp.offset_time bb.calculation matches 10..99 run time add 10
execute if score #bb.mp.offset_time bb.calculation matches 10..99 run scoreboard players remove #bb.mp.time bb.calculation 10
execute if score #bb.mp.offset_time bb.calculation matches 10..99 run function boomber:morpheus/event/time_machine/time_calculation

execute if score #bb.mp.offset_time bb.calculation matches 100..999 run time add 100
execute if score #bb.mp.offset_time bb.calculation matches 100..999 run scoreboard players remove #bb.mp.time bb.calculation 100
execute if score #bb.mp.offset_time bb.calculation matches 100..999 run function boomber:morpheus/event/time_machine/time_calculation

execute if score #bb.mp.offset_time bb.calculation matches 1000..9999 run time add 1000
execute if score #bb.mp.offset_time bb.calculation matches 1000..9999 run scoreboard players remove #bb.mp.time bb.calculation 1000
execute if score #bb.mp.offset_time bb.calculation matches 1000..9999 run function boomber:morpheus/event/time_machine/time_calculation

execute if score #bb.mp.offset_time bb.calculation matches 10000.. run time add 10000
execute if score #bb.mp.offset_time bb.calculation matches 10000.. run scoreboard players remove #bb.mp.time bb.calculation 10000
execute if score #bb.mp.offset_time bb.calculation matches 10000.. run function boomber:morpheus/event/time_machine/time_calculation