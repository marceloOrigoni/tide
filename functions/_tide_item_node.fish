function _tide_item_node
    if test "$tide_node_always_display" = true
        _tide_print_item node $tide_node_icon' ' (node --version | string trim --chars=v)
    else
        test -e package.json && _tide_print_item node $tide_node_icon' ' (node --version | string trim --chars=v)
    end
end