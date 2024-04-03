#Mapping centrum height vs centrum width (using PCA/line)
x=na.omit(x)
princomp(x)$loadings
princomp(x)$scores
s=princomp(x)$scores
plot(s)
n=rownames(s)
n
plot(s,cex=0)
text(s,labels=n)
plot(s[,2:3],cex=0)
text(s[,2:3],labels=n)
plot(s[,2:3],cex=0)
text(s[,2:3],labels=n,col=pc)

pc=array(dim=length(n))
pc[1:11]='red'
pc[12:23]='blue'
pc[24:31]='green'

#Adding line and labels
plot(s[,2:3],cex=0,xlab='Centrum height',ylab='Centrum width',cex.lab=1.2,bty='L')
points(s[,2:3],col='gray',pch=21,bg=pc)
lines(s[,2:3])

text(15,16,'Thoracic')
text(15,1,'Lumbar')
text(-20,0,'Caudal')





#Mapping centrum height vs centrum width (using PCA/loop)
V=read.csv('Vertebral_shape1.csv')
Measure=colnames(V)
colnames(V)=NA
s=princomp(na.omit(V[,-1]))$scores
dim(s)
plot(s)
plot(s,xlab='Centrum height',ylab='Centrum width',cex.lab=1.2,bty='L')
#head(V)
for(i in 2:3){
  W=read.csv(paste0('Vertebral_shape',i,'.csv'))
  colnames(W)=NA
  V=rbind(V,W,deparse.level=0)
}
s=princomp(na.omit(V[,-1]))$scores


V=read.csv('Vertebral_shape2.csv')
Measure=colnames(V)
colnames(V)=NA
s=princomp(na.omit(V[,-1]))$scores
dim(s)
plot(s)
plot(s,xlab='Centrum height',ylab='Centrum width',cex.lab=1.2,bty='L')
#head(V)
for(i in 2:3){
  W=read.csv(paste0('Vertebral_shape',i,'.csv'))
  colnames(W)=NA
  V=rbind(V,W,deparse.level=0)
}
s=princomp(na.omit(V[,-1]))$scores


V=read.csv('Vertebral_shape3.csv')
Measure=colnames(V)
colnames(V)=NA
s=princomp(na.omit(V[,-1]))$scores
dim(s)
plot(s)
plot(s,xlab='Centrum height',ylab='Centrum width',cex.lab=1.2,bty='L')
#head(V)
for(i in 2:3){
  W=read.csv(paste0('Vertebral_shape',i,'.csv'))
  colnames(W)=NA
  V=rbind(V,W,deparse.level=0)
}
s=princomp(na.omit(V[,-1]))$scores


#God weeps
if (FALSE) {
  MAX = 3
  for (x in 1:MAX) {
    print(toString(i))
    csvName = paste0('Vertebral_shape', toString(3), '.csv')
    V=read.csv(csvName)
    Measure=colnames(V)
    colnames(V)=NA
    s=princomp(na.omit(V[,-1]))$scores
    dim(s)
    plot(s)
    plot(s,xlab='Centrum height',ylab=paste0('width: ',csvName),cex.lab=1.2,bty='L')
    #head(V)
    for(i in 1:3){
      W=read.csv(paste0('Vertebral_shape',i,'.csv'))
      colnames(W)=NA
      V=rbind(V,W,deparse.level=0)
    }
    s=princomp(na.omit(V[,-1]))$scores
  }
}

MAX = 3
V = read.csv( paste0('Vertebral_shape', toString(1), '.csv') )
for (x in 2:3) {
  W = read.csv( paste0('Vertebral_shape', toString(x), '.csv') )
  V = rbind(V,W,deparse.level = 0)
}