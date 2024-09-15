function cesar(text, shift)
    alphabet = ['A':'Z'; 'a':'z']
    encrypted_text = Char[]   
    
    for char in text
        if char in alphabet
            is_upper = isuppercase(char)
            base = is_upper ? 'A' : 'a' 
            encrypted_char = base + ((char - base + shift) % 26)
            push!(encrypted_text, Char(encrypted_char))
        else
            push!(encrypted_text, char) 
        end
    end
    
    return String(encrypted_text)
  end
  
  println(cesar("Hello, world", 2));