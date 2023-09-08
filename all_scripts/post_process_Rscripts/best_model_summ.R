# best Moments model summary script

setwd("~/Desktop/PD_stuffies/R_work/Moments")

#read boots of best model
npl=read.table("pCA.n.c.winboots")
### NB!! before reading this table I editted it in textedit to remove the brackets

#make pdf for plotting
pdf("pCA.n.c.winboots_plots.pdf",height=3, width=8)

wmod=as.character(npl[1,2])
npl=npl[,-c(1:2)]

params=c("nu0", "nu1", "nu2", "T1", "T2", "T3", "theta")
names(npl)=c("id","np","ll","boot","p1","p2",params)
head(npl)

is.numeric(npl$theta)


npl$boot <- as.factor(npl$boot)
maxlike=c()
for (b in 1:length(levels(npl$boot))) {
  bb=levels(npl$boot)[b]
  sub=subset(npl,boot==bb)
  maxlike=data.frame(rbind(maxlike,sub[sub$ll==max(sub$ll),]))
}


hist(maxlike$ll,breaks=50,main="bootstrap likes")
abline(v=quantile(maxlike$ll,(1-topq)),col="red")
#abline(v=quantile(maxlike$ll,topq+(1-topq)/2),col="red")
maxlike=maxlike[maxlike$ll>quantile(maxlike$ll,(1-topq)),]
#hist(maxlike$ll,breaks=20)

# ---- log-transforming migration rates

migrations=grep("^m",names(maxlike))
maxlike[,migrations]=as.numeric(apply(maxlike[,migrations,drop=F],2,log,base=10))

if(length(grep("i",wmod))>0) { 
  
  mxl=maxlike
  migrations=grep("^m",names(maxlike))
  migrations.i=grep("^m.*i",names(maxlike))
  migrations=migrations[!(migrations %in% migrations.i)]
  
  mm=apply(mxl[,migrations],1,mean)
  mi=apply(mxl[,migrations.i],1,mean)
  
  maxlike[mm<mi,migrations]=mxl[mm<mi,migrations.i]
  maxlike[mm<mi,migrations.i]=mxl[mm<mi,migrations]
  maxlike[mm<mi,"P"]=1-maxlike[mm<mi,"P"]
}


# ---- makig a long table, defining parameter types
stack(maxlike[,7:ncol(maxlike)])
ms=stack(maxlike[,7:ncol(maxlike)])
names(ms)[2]="parameter"
ms$type="misc"
ms$type[grep("^nu",ms$parameter)]="nu"
ms$type[grep("^T",ms$parameter)]="T"
ms$type[grep("^m",ms$parameter)]="log10.migr"
ms$type[ms$parameter=="P"]="prop.islands"
ms$type[ms$parameter=="theta"]="theta"
ms$type[ms$parameter=="p_misid"]="p_misid"
ms$type=factor(ms$type,levels=c("nu","T","log10.migr","prop.islands","theta","p_misid"))

ms$type <- as.factor(ms$type)
is.factor(ms$type)


ms$type <- as.factor(ms$type)
is.factor(ms$type)


### The script below will generate the params plots, but doesn't write to the local dir--- need to run in R

pp=ggplot(ms,aes(parameter,values))+geom_boxplot()+theme(axis.text.x = element_text(angle = 45,hjust=1))+facet_wrap(~type,scale="free",nrow=1)
plot(pp)
medians=as.numeric(apply(maxlike[,7:ncol(maxlike)],2,median))


q25=apply(maxlike[,7:ncol(maxlike)],2,quantile,prob=0.25)
q75=apply(maxlike[,7:ncol(maxlike)],2,quantile,prob=0.75)

mres=data.frame(cbind(medians, q25,q75))
print(medians)
dev.off()

# ---- finding represenative run (most similar to medians)
idpara=t(maxlike[,7:ncol(maxlike)])
#or idpara=t(df) if you use maxlike1 lines
cors=c()
for(i in 1:ncol(idpara)){
  cors=c(cors,cor(medians,idpara[,i]))
}
bestrun=maxlike$id[which(cors==max(cors))[1]] ## look up this model in directory! then find its matching plots


###Param transform###

#only migiration is log transformed (antilog=10^maxlike[,15:20])
mutationrate=0.0018
gentime=0.002

Ne=round(maxlike[,13]/(4*mutationrate),0) #make this column numb. the one that matches theta
nu0=round(maxlike$nu0*Ne,0)
nu1=round(maxlike$nu1*Ne,0)
nu2=round(maxlike$nu2*Ne,0)

T2=round(gentime*maxlike$T3*2*Ne,0)
T1=round(gentime*maxlike$T3*2*Ne,0)+round(gentime*maxlike$T2*2*Ne,0)


