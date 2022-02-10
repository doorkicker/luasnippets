--s: string, sep: string, return: list<string>
--s: the string you want to split
--sep: a string indicating what character should be used to split s into a list.
function split(s, sep)
  local s = s
  result = {}
  
  while true do
    i = string.find(s, sep)
    if i == nil then
      print("finished! result: "..s)
      --break
      return s
    end
    chunk  = string.sub(s, 1, i-1)
    table.insert(result, chunk)
    s = string.sub(s, i+1)
  end
end


