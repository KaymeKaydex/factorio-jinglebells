data:extend { {
    type = "terrain",
    name = "christmas-tree",
} }

do
    local item = table.deepcopy(data.raw.item['trees'])
    item.name = "christmas-tree"
    item.order = "c[christmas-tree]"
    item.place_result = "christmas-tree"
    item.icon = "__jinglebells__/graphics/icons/spoiling-plant.png"
    data:extend { item }
end