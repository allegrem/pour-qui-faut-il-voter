module ItemsHelper

  def list_select_options
    [["Challenge",-1]].concat Item::LIST_NAMES.map.with_index { |l,i| [l,i] }
  end

end
