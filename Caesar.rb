def caesar_cipher(given_string,num)
  arr = given_string.split("")
small_letter=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
big_letter=small_letter.join().upcase.split("")
new_string=[]
  arr.each do |str|
    if small_letter.include?(str) 
       new_string.push(small_letter[(small_letter.index(str) + num) % 26])

    elsif big_letter.include?(str)
      new_string.push(big_letter[(big_letter.index(str) + num) % 26])
    
    else new_string.push(str)
       
    end
  end
print new_string.join()
end

caesar_cipher("What a String!",5)