# in mtcars we have to subset a small pieces of data ,and it converted into a binery file called "my_binary.bat"
# the binery file is used to convert another dataframe and the resultent data frame is called "new_data_farame"

# subset the mtcar with 5 rows and 3 columns

my_mtcars<-mtcars[1:5,1:3]
print(my_mtcars)

# write new binery file my_binary.bat ,we have to specify the wb for write the binery file

wf<-file("my_binary.bat","wb")

#  list the columns in the created dataframe we have to assign a veriable called col_name
col_name<-colnames(my_mtcars)
 
# write the binery file using the R function called  'wirteBin'. the writeBin function the parameters are first the columns name
# in the new dataframe in this program we have already assign a veriable called col_name. then the second parameter is the binery file
# we have to use the veriable 'wf<-file(filename,operation)'

writeBin(col_name,wf)

# then write another writeBin function to specify each columns in the newally created datframe  and finaly the operation 'wf'

writeBin(c(my_mtcars$mpg,my_mtcars$cyl,my_mtcars$disp),wf)
close(wf)

# we have to read the binery file using the 'readBin' R function .firstly we create a veriable to assing the read file using the 
# file function
r_bf<-file("my_binary.bat","rb")


cr_name<-readBin(r_bf,character(),n=3)
cr_name

values<-readBin(r_bf,numeric(),n=15)
values

mpg_val<-values[1:5]
cyl_val<-values[6:10]
disp_val<-values[11:15]

new_data_farame<-cbind(mpg_val,cyl_val,disp_val)
new_data_farame
crname<-colnames(new_data_farame)
crname
