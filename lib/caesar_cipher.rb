def letter(x, y)
  l = x.ord
  l1 = l + y
  if l < 65 || l > 122 || 90 < l && l < 97
    l1 = l
  end
  if l1 > 122
    l1 = l1 - 26
  end
  if l1 > 90 && l1 < 97
    l1 = l1 -26
  end
  return l1.chr
end

def caesar_cipher(x, y)
  tab = x.split(//)
  tab.map!.each do |x|
    letter(x, y)
  end
  return tab.join
end