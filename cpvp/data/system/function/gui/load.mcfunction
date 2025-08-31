#> system:gui/load
#
# @within main:load

# gui用ストレージをリセット
function gui_maker:system/reset_data

# 登録用の一時的なストレージ
data modify storage cpvp:tmp gui.display set value [{components: {"minecraft:custom_name": "", "minecraft:custom_data": {gui_maker: {display_only: 1b}}}, count: 1, Slot: 18b, id: "minecraft:black_stained_glass_pane"}, {components: {"minecraft:custom_name": "", "minecraft:custom_data": {gui_maker: {display_only: 1b}}}, count: 1, Slot: 19b, id: "minecraft:black_stained_glass_pane"}, {components: {"minecraft:custom_name": "", "minecraft:custom_data": {gui_maker: {display_only: 1b}}}, count: 1, Slot: 20b, id: "minecraft:black_stained_glass_pane"}, {components: {"minecraft:custom_name": "", "minecraft:custom_data": {gui_maker: {display_only: 1b}}}, count: 1, Slot: 21b, id: "minecraft:black_stained_glass_pane"}, {components: {"minecraft:custom_name": "メニュ-に戻る", "minecraft:custom_data": {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'menu'}", trigger_item: 1b}}}, count: 1, Slot: 22b, id: "minecraft:knowledge_book"}, {components: {"minecraft:custom_name": "", "minecraft:custom_data": {gui_maker: {display_only: 1b}}}, count: 1, Slot: 23b, id: "minecraft:black_stained_glass_pane"}, {components: {"minecraft:custom_name": "", "minecraft:custom_data": {gui_maker: {display_only: 1b}}}, count: 1, Slot: 24b, id: "minecraft:black_stained_glass_pane"}, {components: {"minecraft:custom_name": "", "minecraft:custom_data": {gui_maker: {display_only: 1b}}}, count: 1, Slot: 25b, id: "minecraft:black_stained_glass_pane"}, {components: {"minecraft:custom_name": "", "minecraft:custom_data": {gui_maker: {display_only: 1b}}}, count: 1, Slot: 26b, id: "minecraft:black_stained_glass_pane"}]

# guiを生成する
function system:gui/generate_menu_gui
function system:gui/generate_item_gui

# 全プレイヤーをメニュー画面を開いた状態にする
execute as @a run function gui_maker:general/move_page_by_tag {tag:"menu"}

# ストレージのリセット
#data remove storage cpvp:tmp gui