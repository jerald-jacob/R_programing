my_mtcars<-mtcars[1:5,1:3]
print(my_mtcars)

wf<-file("my_binary.bat","wb")
col_name<-colnames(my_mtcars)

writeBin(col_name,wf)
writeBin(c(my_mtcars$mpg,my_mtcars$cyl,my_mtcars$disp),wf)
close(wf)

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

