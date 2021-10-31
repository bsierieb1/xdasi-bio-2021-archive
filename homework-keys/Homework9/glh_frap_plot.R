####FRAP exponential funstion

##load frap data
glh_frap<- as.data.frame(read.csv("glh_frap.csv"))

##normalization
affine <- function(x){(x-min(x))/(1-min(x))}

frap_glh_norm <- glh_frap %>%
  group_by(ID,strain, rep) %>%
  #filter(Time >= 0)%>%
  mutate(intensity_norm = affine(Intensity))

frap_glh_norm_sum<-frap_glh_norm %>%
  group_by(ID, Time, strain) %>%
  summarise(mean= mean(intensity_norm), sd= sd(intensity_norm),
            se=sd(intensity_norm)/sqrt(length(intensity_norm)))

frap_glh_norm_sum$upper<- frap_glh_norm_sum$mean + frap_glh_norm_sum$se
frap_glh_norm_sum$lower<- frap_glh_norm_sum$mean - frap_glh_norm_sum$se

frap_glh_norm_sum$strain<-factor(frap_glh_norm_sum$strain, 
                                 levels=c("WT", "mip1uae1"))

frap_glh_plot <- ggplot(frap_glh_norm_sum, aes(x =Time, y = mean, color = strain))+
  geom_line() +
  scale_color_manual(values=c("#808080", "#4cba76")) +
  scale_fill_manual(values=c("#808080", "#4cba76")) +
  xlab("Time [s]")+
  ylab("Normalized Intensity [AU]")+
  theme(panel.background=element_blank(), 
        strip.background = element_blank(),
        strip.placement = "outside",
        strip.text=element_blank(),
        panel.border=element_rect(colour="black",fill=NA),
        legend.title = element_blank(),
        legend.position="none", 
        legend.direction="horizontal",
        axis.text=element_text(size=16, face="bold", color= "black"),
        axis.title=element_text(size=18,face="bold"))  +
  #ggtitle("FRAP")+
  geom_ribbon(aes(ymin=lower,ymax=upper, fill= strain),alpha=0.3, linetype = 0)#+
#facet_grid(.~stage)+
#geom_text(data = ann_text,label=ann_text$label, color="black", size=5)
frap_glh_plot