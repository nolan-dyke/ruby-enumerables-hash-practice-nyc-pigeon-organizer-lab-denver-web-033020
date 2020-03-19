def nyc_pigeon_organizer(data)
  names = data[:gender]
  result = {}
  i = 0 
  while i < names[:male].length do 
    result[names[:male][i]] = {:color => [], :gender => ["male"], :lives => []}
    i += 1 
  end 
  i = 0
  while i < names[:female].length do 
    result[names[:female][i]] = {:color => [], :gender => ["female"], :lives => []}
    i += 1 
  end 
  i = 0 
  while i < data[:color][:purple].length do 
    name = data[:color][:purple][i] 
    if result[name]
      result[name][:color] << "purple"
    end 
    i += 1 
  end 
  i = 0 
  while i < data[:color][:grey].length do 
    name = data[:color][:grey][i] 
    if result[name]
      result[name][:color] << "grey"
    end 
    i += 1 
  end 
  i = 0 
  while i < data[:color][:white].length do 
    name = data[:color][:white][i] 
    if result[name]
      result[name][:color] << "white"
    end 
    i += 1 
  end 
  i = 0 
  while i < data[:color][:brown].length do 
    name = data[:color][:brown][i] 
    if result[name]
      result[name][:color] << "brown"
    end 
    i += 1 
  end 
  i = 0 
  while i < data[:lives]["Subway"].length do 
    name = data[:lives]["Subway"][i] 
    if result[name]
      result[name][:lives] << "Subway"
    end 
    i += 1 
  end 
  result
end
