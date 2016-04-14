def count_tree_cut(cut, number, current)
  if current >= number # カットし終わった場合
    0
  elsif current < cut # ハサミの数より棒が少ない場合、棒は2倍になる
    1 + count_tree_cut(cut, number, current * 2)
  else # ハサミの数より棒が多い場合、ハサミの数分増える
    1 + count_tree_cut(cut, number, current + cut)
  end
end

p count_tree_cut(3, 8, 1)
