rf <- c(0.003, 0.008, 0.008, 0.014, 0.016, 0.021, 0.022)
nb <- c(0.003, 0.008, 0.013, 0.014, 0.016, 0.02, 0.023)

g_range <- range(0, 0.04)

png("../img/CLASSIFICATION_TIME_JSAT.png",500,500)
plot(rf, type="o", col="blue", ylim=g_range, 
   axes=FALSE, ann=FALSE)

axis(1, at=1:7, lab=c("G","W","WG","B","BG","WB","WBG"))
axis(2, las=0, at=c(0.000,0.005,0.010,0.015,0.020,0.025,0.030,0.035,0.040))

box()

lines(nb, type="o", pch=22, lty=2, col="red")
title(xlab="Signal Type Combinations")
title(ylab="Avg. Classification Time in seconds")

legend(1, g_range[2], c("Random Forest","Naive Bayes"), cex=0.8, 
   col=c("blue","red"), pch=21:22, lty=1:2);
graphics.off()
