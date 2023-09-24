# Vigenère Cipher in Lua

## Overview

The Vigenère cipher is a classic method of encrypting and decrypting text using a keyword. It's a polyalphabetic substitution cipher where different letters are shifted by different amounts based on the corresponding letters in the keyword. If you'd like to learn more about the Vigenère cipher, feel free to visit [this Wikipedia page](https://en.wikipedia.org/wiki/Vigen%C3%A8re_cipher).

This Lua script provides a simple implementation of the Vigenère cipher, allowing you to encrypt and decrypt messages using a given key.

## Purpose

This project was created with the primary goal of improving my Lua programming skills. It serves as a practical exercise in implementing encryption algorithms and working with Lua scripting.


## How to Use

1. **Download the Lua Script**

   - Make sure you have Lua installed on your system.

   - Download the `vigenere.lua` script to your computer.

2. **Usage**

   - Open a terminal or command prompt.

   - Navigate to the directory where the `vigenere.lua` script is located.

   - Run the script using the Lua interpreter by entering the following commands:

     - To encrypt a message:

       ```
       lua vigenere.lua encrypt "YOUR_MESSAGE" "YOUR_KEY"
       ```

       Replace `"YOUR_MESSAGE"` with the text you want to encrypt and `"YOUR_KEY"` with the encryption key.

     - To decrypt an encrypted message:

       ```
       lua vigenere.lua decrypt "ENCRYPTED_MESSAGE" "YOUR_KEY"
       ```

       Replace `"ENCRYPTED_MESSAGE"` with the text you want to decrypt and `"YOUR_KEY"` with the decryption key.

3. **View the Results**

   - The script will output the encrypted or decrypted message to the console.

   - Copy or use the result as needed.

## Example

```bash
# Encrypt a message
lua vigenere.lua encrypt "HELLOWORLD" "KEY"

# Output: Encrypted Text: RIJVSUCW

# Decrypt the message
lua vigenere.lua decrypt "RIJVSUCW" "KEY"

# Output: Decrypted Text: HELLOWORLD
```