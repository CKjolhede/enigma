# enigma

Enigma is a program modeled after the infamous code breaking methods used by the Allied Forces during WWII to crack the Axis communication encryptions.  The premise is that each character within a commuication is transposed based upon 2 ciphers. The first of which is a 6 digit random integer and the second is an enumerated date. These ciphers are manipulated and transcribed in such a way that every consecutive character in the commuincation is transposed differently than the previous. 

I was confronted by a number of challenges during this project. The largest was how to organize the closely interconnected data streams as I funneled them through a series of smaller modules. I designed this program with the SRP princple in mind. I want to created a data flow that initiated and concluded in the central encryption/decryption class.  I utilized 3 modules:  1 to handle the key cipher, 1 to handle the date cipher, and one to combine the ciphers and perform the character shift. THe main enigma class coordinated the flow of the methods and performed the final processing.

The second challenge came about as I tried to discover the most streamlined and sensible code to manipulate the strings.

Overall, it was an enjoyable project. I'm intrigued and want to know more about the CLI commands.

I was disappointed to find that my test coverage was staggeringly low.  I felt I had definitevly covered all the key aspects of the program with my tests. It wasn't until shortly before the project was due that I finally managed to figure out why my simplecov wasn't working so I wasn't aware my coverage was so low.  I wouuld like to understand better how this coverage is calculated.
