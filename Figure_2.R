my_vector = c(2501, 214, 1066, 103, 180)
names(my_vector)=c("ABP","ACP","AFP","APP","AVP")

my_bar = barplot(my_vector,  ylim=c(0,2600), col= c("deeppink","green","red","blue", "yellow"), cex.axis=1.3, cex.names=1.3, cex.lab=1.5,
    main="", space=0.7,
    ylab="Number of peptides")
box();

