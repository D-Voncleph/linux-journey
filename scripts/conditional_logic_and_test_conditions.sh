#MY_VAR="hello"
#if [ ""$MY_VAR"" = "hello" ]; then
   # echo "Variable is indeed hello!"
#fi

#read -p "Enter a number: " NUM
#if [ ""$NUM"" -gt 10 ]; then
#    echo "That number is greater than 10."
#else
#    echo "That number is 10 or less."
#fi

#read -p "Enter your favorite fruit (apple/banana/orange): " FRUIT
#if [ ""$FRUIT"" = "apple" ]; then
#    echo "Apples are crisp!"
#elif [ ""$FRUIT"" = "banana" ]; then
#    echo "Bananas are potassium-rich!"
#elif [ ""$FRUIT"" = "orange" ]; then
#    echo "Oranges are tangy!"
#else
#    echo "I don't know that fruit."
#fi

#VAR1="hello"
#VAR2=""
#[ "$VAR1" = "hello" ] && echo "VAR1 is hello" # `&&` means "and if previous command succeeds"
#[ "$VAR1" = "world" ] && echo "VAR1 is world" # This won't print
#[ -z "$VAR2" ] && echo "VAR2 is empty"
#[ -n "$VAR1" ] && echo "VAR1 is not empty"

#X=5
#Y=10
#if [ ""$X"" -lt ""$Y"" ]; then echo "$X is less than $Y"; fi
#if [ ""$Y"" -eq 10 ]; then echo "$Y is exactly 10"; fi

# Create a dummy file and directory for testing
#touch test_file.txt
#mkdir test_dir

#if [ -e "test_file.txt" ]; then echo "test_file.txt exists."; fi
#if [ -f "test_file.txt" ]; then echo "test_file.txt is a regular file."; fi
#if [ -d "test_dir" ]; then echo "test_dir is a directory."; fi
#if [ -s "test_file.txt" ]; then echo "test_file.txt is not empty."; else echo "test_file.txt is empty."; fi

# Clean up
#rm test_file.txt
#rmdir test_dir

#read -p "Enter a letter (a, b, c, or other): " LETTER

#case "$LETTER" in
#    a|A) # Matches lowercase 'a' or uppercase 'A'
#        echo "You entered the first letter of the alphabet."
#        ;;
#    b|B)
#        echo "You entered the second letter."
#        ;;
#    c) # Only matches lowercase 'c'
#        echo "You entered 'c'."
#        ;;
#    *) # Default case for anything else
#        echo "You entered something else: '$LETTER'."
#        ;;
#esac


echo "Hello and Welcome "

read -p "Kindly Input your Age: " AGE
if [ ""$AGE"" -lt 18 ]; then
    echo "You are a minor"
elif [ ""$AGE"" -ge 65 ]; then
    echo "You is old af"
elif [ ""$AGE"" -ge 18 ]; then
    echo "You are an Adult"
#elif [ ""$AGE"" -ge 65 ]; then
#    echo "You is Old af"
fi


read -p "Would you like to create a file? (y/n): " CHOICE

case ""$CHOICE"" in
    y|Y)
        read -p "Input file name: " FILE
        if [ -e ""$FILE"" ]; then 
            read -p "Filename already exists, Would you like to overwrite the file? (y/n): " OVERWRITE
            case ""$OVERWRITE"" in
                y|Y)
                    touch ""$FILE""
                    echo "Your file has been overwritten"
                    ;;
                n|N)
                    echo "Thank you and Goodbye"
                    ;;
                *)
                    echo "Invalid Input"
                    ;;
            esac
        else 
             touch ""$FILE"" #| [ -a echo #"Your file has been created and will subsequently be deleted# ]# 
        echo "Your file has been created and will subsequently be deleted"
        fi
        rm ""$FILE""
#        echo "Your file has been created and will subsequently be deleted
        ;;
    n|N)
        echo "Thank you very much and Goodbye."
        ;;
    *)
        echo "Invalid Input!!!"
        ;;
esac

#rm ""$FILE""
