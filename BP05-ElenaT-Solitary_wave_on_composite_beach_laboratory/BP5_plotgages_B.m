clear all
% % % your results
yourfilename='../NTHMPresults/BP5/Revere_gagesB.txt';
[tt,hg4,hg5,hg6,hg7,hg8,hg9,hg10]=textread(yourfilename,'%f %f %f %f %f %f %f %f %*[^\n]','emptyvalue',NaN); 
ntt=length(tt);
hhh(1:ntt,1:7)=0;
hhh(:,1)=hg4;
hhh(:,2)=hg5;
hhh(:,3)=hg6;
hhh(:,4)=hg7;
hhh(:,5)=hg8;
hhh(:,6)=hg9;
hhh(:,7)=hg10;
% % % measurements
[tg,g4,g5,g6,g7,g8,g9,g10]=textread('gB.txt','%f %f %f %f %f %f %f %f','emptyvalue',NaN); 
ntg=length(tg);
ggg(1:ntg,1:7)=0;
ggg(:,1)=g4;
ggg(:,2)=g5;
ggg(:,3)=g6;
ggg(:,4)=g7;
ggg(:,5)=g8;
ggg(:,6)=g9;
ggg(:,7)=g10;

figure
ax=axes('Position',[0.2 0.1 0.6 0.85],'fontsize',11,'box','on');
hold on
for i=1:7
    dg=(i-7)*10;
    plot(tg,100*ggg(:,i)-dg,'k','linewidth',1)
    plot(tt,100*hhh(:,i)-dg,'r','linewidth',1)
end
grid on
xlim([268 287])
ylim([-2 67])
ii=1:15;
ylab=5*(ii-1);
set(ax,'YTick',ylab)
jj=1:10;
xlab=2*jj+268;
set(ax,'XTick',xlab)
xlabel('sec','fontsize',12)
ylabel('cm','fontsize',12)
