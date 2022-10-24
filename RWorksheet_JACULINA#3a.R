#Drake Francis M. Jaculina BSIT 2A

#Worksheet-3a in R

#Using Vectors
#1. There is a built-in vector LETTERS contains the uppercase letters of the alphabet
# and letters which contains the lowercase letters of the alphabet.

LETTERS
letters

#LETTERS
## [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S"
## [20] "T" "U" "V" "W" "X" "Y" "Z"
#letters
## [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s"
## [20] "t" "u" "v" "w" "x" "y" "z"

#Based on the above vector LETTERS:
    #a. You need to produce a vector that contains the first 11 letters
        eleven_LETTERS <- LETTERS[1:11]
        eleven_LETTERS
    
    #b. Produce a vector that contains the odd numbered letters
        odd_LETTERS <- LETTERS[1:26 %% 2 != 0]
        odd_LETTERS
    
    #c. Produce a vector that contains the vowels
        vowels_LETTERS <- LETTERS[c(1,5,9,15,21)]
        vowels_LETTERS

#Based on the above vector letters:
    #d. Produce a vector that contains the last 5 lowercase letters.
        lastfive_lowercase_letters <- letters[22:26]
        lastfive_lowercase_letters    
    
    #e. Produce a vector that contains letters between 15 to 24 letters in lowercase.
        between_15to24 <- letters[15:24]
        between_15to24

#2. Create a vector with the average temperatures in April for Tuguegarao City, Manila,
#Iloilo City, Tacloban, Samal Island, and Davao City. The average temperatures in
#Celcius are 42, 39, 34, 34, 30, and 27 degrees. 
    city <- c("Tuguegarao City","Manila","Iloilo City","Tacloban","Samal Island","Davao City")
    city
    temp <- c(42,39,34,34,30,27) 
    temp
    
    #a. What is the R code and its result for creating a character vector for the city/town of
    #Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City? Name the
    #object as city. The names should follow the same order as in the instruction
    city <- c("Tuguegarao City","Manila","Iloilo City","Tacloban","Samal Island","Davao City")
    city
      #Result:
      #[1] "Tuguegarao City" "Manila"          "Iloilo City"     "Tacloban"       
      #[5] "Samal Island"    "Davao City" 
    
    #b. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees.
    #Name the object as temp. Write the R code and its output. Numbers should also follow what
    #is in the instruction.
    temp <- c(42,39,34,34,30,27)   
    temp 
      #Output:
      #[1] 42 39 34 34 30 27
    
    #c. Associate the temperature temp with the city by using names() function. What is
    #the R code and its result?
    names(temp) <- city
    temp
      #Result:
      #Tuguegarao City          Manila     Iloilo City        Tacloban    Samal Island
      #            42              39              34              34              30
      #Davao City 
      #            27
    
    #d. From the answer in c, what is the content of index 5 and index 6? What is its R code?
    index_5and6 <- temp[5:6]
    index_5and6

#Using Matrices
#2. Create a matrix of one to eight and eleven to fourteen with four columns and three
    #rows.
    
    #a. What will be the R code for the #2 question and its result?
    number2_question <- matrix(c(1:8,11:14), nrow = 3, ncol = 4)
    number2_question
      #Result:
    #      [,1] [,2] [,3] [,4]
    #[1,]    1    4    7   12
    #[2,]    2    5    8   13
    #[3,]    3    6   11   14
    
    #b. Multiply the matrix by two. What is its R code and its result?
    multiply_bytwo <- number2_question * 2
    multiply_bytwo
      #Result:
    #     [,1] [,2] [,3] [,4]
    #[1,]    2    8   14   24
    #[2,]    4   10   16   26
    #[3,]    6   12   22   28
    
    #c. What is the content of row 2? What is its R code?
    row_two <- multiply_bytwo[2]
    row_two
    
    #d. What will be the R code if you want to display the column 3 and column 4 in row 1
    #and row 2? What is its output?
    display_d <- multiply_bytwo[1:2,3:4]
    display_d
      #Output:
    #     [,1] [,2]
    #[1,]   14   24
    #[2,]   16   26
    
    #e. What is the R code is you want to display only the columns in 2 and 3, row 3? What
    #is its output?
    display_e <- multiply_bytwo[3,2:3]
    display_e
      #Output:
    #[1] 12 22

    #f. What is the R code is you want to display only the columns 4? What is its output?
    display_f <- multiply_bytwo[,4]
    display_f
      #Output:
    #[1] 24 26 28
    
    #g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro
    #for the matrix that was created in b.‘. What is its R code and corresponding output?
    dimnames(multiply_bytwo) <- list(c("isa","dalawa","tatlo"),c("uno","dos","tres","quatro"))
    multiply_bytwo
      #Output:
    #       uno dos tres quatro
    #isa      2   8   14     24
    #dalawa   4  10   16     26
    #tatlo    6  12   22     28

    #h. From the original matrix you have created in a, reshape the matrix by assigning a
    #new dimension with dim(). New dimensions should have 2 columns and 6 rows. What will
    #be the R code and its output?
    dim(multiply_bytwo) <- c(6,2)
    multiply_bytwo
    dim(multiply_bytwo)
      #Output:
    #     [,1] [,2]
    #[1,]    2   14
    #[2,]    4   16
    #[3,]    6   22
    #[4,]    8   24
    #[5,]   10   26
    #[6,]   12   28
    
    #>   dim(multiply_bytwo)
    #[1] 6 2

#Using Arrays 
#3. An array contains 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1
    #a. Create an array for the above numeric values. Each values will be repeated twice
    #What will be the R code if you are to create a three-dimensional array with 4 columns and 2
    #rows. What will be its output?
    numeric_value1 <- array(c(1,2,3,6,7,8,9,0,3,4,5,1))
    numeric_value1
    numeric_value2 <- rep(numeric_value1, 2)
    numeric_value2
    dim(numeric_value2) <- c(2,4,3)
    numeric_value2
      #Output:
    #>     numeric_value1 <- #array(c(1,2,3,6,7,8,9,0,3,4,5,1))
    #>     numeric_value1
    #[1] 1 2 3 6 7 8 9 0 3 4 5 1
    #>     numeric_value2 <- #rep(numeric_value1, 2)
    #>     numeric_value2
    #[1] 1 2 3 6 7 8 9 0 3 4 5 1 1 2 3 6 7 8 9 #0 3 4 5 1
    #>     dim(numeric_value2) <- c(2,4,3)
    #>     numeric_value2
    #, , 1
    
    #     [,1] [,2] [,3] [,4]
    #[1,]    1    3    7    9
    #[2,]    2    6    8    0
    
    #, , 2
    
    #     [,1] [,2] [,3] [,4]
    #[1,]    3    5    1    3
    #[2,]    4    1    2    6
    
    #, , 3
    
    #     [,1] [,2] [,3] [,4]
    #[1,]    7    9    3    5
    #[2,]    8    0    4    1
    
    #b. How many dimensions do your array have?
    #[1] 2 4 3
    
    dim(numeric_value2)
      #Output:
    #[1] 2 4 3
    
    #c. Name the rows as lowercase letters and columns as uppercase letters starting fro
    #the A. The array names should be “1st-Dimensional Array”, “2nd-Dimentional Array”, and
    #“3rd-Dimensional Array”. What will be the R codes and its output?
    dimnames(numeric_value2) <- list(c("a","b"),c("A","B","C","D"),c("1st-Dimensional Array",
                                              "2nd-Dimensional Array","3rd-Dimentional Array"))
    numeric_value2
      #Output
    #, , 1st-Dimensional Array
    
    #  A B C D
    #a 1 3 7 9
    #b 2 6 8 0
    
    #, , 2nd-Dimensional Array
    
    #  A B C D
    #a 3 5 1 3
    #b 4 1 2 6
    
    #, , 3rd-Dimentional Array
    
    #  A B C D
    #a 7 9 3 5
    #b 8 0 4 1

        