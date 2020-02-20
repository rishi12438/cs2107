for i in {a..z}{a..z}{a..z}{a..z}{a..z};do
   # do something with $line here
   openssl enc -aes-128-ecb -d -nosalt -base64 -pass pass:$line -in flag.txt.enc -out output1.txt
   if grep -q flag{ output1.txt; then
         echo "done" 
         break
   fi
done

