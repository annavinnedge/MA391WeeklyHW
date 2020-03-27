dpois(171, 18)
var(171)

recur_factorial <- function(n) {
  if(n <= 1) {
    return(1)
  } else { 
    return(n * recur_factorial(n-1))
  }
}

recur_factorial(5)

x=seq(0,200)
p=(exp(-171))*((171^x)/recur_factorial(x))
res=data.frame(x=x,p=p)
print(res)


##11d, sensitivity
z=c(0,.1,.2,.3,.4,.5,.6,.7,.8,.9,1)
s=.498*z
print(s)

##11e
pdetect=.75
p=.7
j=c(.1,.2,.3,.4,.5,.6,.7)
pdetectnew=pdetect-c(.1,.2,.3,.4,.5,.6,.7)
pnew=p-c(.1,.2,.3,.4,.5,.6,.7)
print(pnew)
print(pdetectnew)
pdetectfinal=pdetectnew*.95*.7
print(pdetectfinal)
res=data.frame(j=j,pnew=pnew,pdetectfinal=pdetectfinal)
print(res)