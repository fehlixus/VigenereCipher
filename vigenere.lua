function vigenereEncrypt(plainText, key)
    local encryptedText = ""
    local keyLength = #key
    local keyIndex = 1

    for i = 1, #plainText do
        local char = plainText:sub(i, i)
        if char:match("[%a]") then
            local shift = key:sub(keyIndex, keyIndex):byte() - 65 
            local encryptedChar = string.char(((char:byte() - 65 + shift) % 26) + 65)
            encryptedText = encryptedText .. encryptedChar
            keyIndex = (keyIndex % keyLength) + 1
        else
            encryptedText = encryptedText .. char
        end
    end

    return encryptedText
end

function vigenereDecrypt(encryptedText, key)
    local decryptedText = ""
    local keyLength = #key
    local keyIndex = 1

    for i = 1, #encryptedText do
        local char = encryptedText:sub(i, i)
        if char:match("[%a]") then
            local shift = key:sub(keyIndex, keyIndex):byte() - 65 
            local decryptedChar = string.char(((char:byte() - 65 - shift + 26) % 26) + 65)
            decryptedText = decryptedText .. decryptedChar
            keyIndex = (keyIndex % keyLength) + 1
        else
            decryptedText = decryptedText .. char
        end
    end

    return decryptedText
end