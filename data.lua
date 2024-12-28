data:extend { {
    type = "impact-category",
    name = "christmas-tree",
} }

do
    local item = table.deepcopy(data.raw.tree["tree-01"])
    item.name = "christmas-tree"
    item.order = "c[christmas-tree]"
    item.place_result = "christmas-tree"
    item.icon = "__jinglebells__/graphics/icons/christmas_tree.png"
    data:extend { item }
end