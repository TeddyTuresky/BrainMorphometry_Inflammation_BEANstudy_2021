# Plots FreeSurfer-labeled brain regions that were related to chronic inflammation estimates using the ggseg package.
# For questions: theodore_turesky@gse.harvard.edu

library(ggseg)

# Subcortical
someData = data.frame(
  region = c("putamen"),   
  p = c(1), stringsAsFactors = FALSE); 
#someData$hemi = "left"
ggseg(.data=someData, atlas="aseg", mapping=aes(fill=factor(p)), colour="black", size=.7) +
  theme_void() +
  scale_fill_manual(
    breaks = c("1"), 
    values = c("green"), 
    na.value="grey") +
  theme(legend.position = "none")


ggsave('brainSub-inf.pdf', plot = last_plot(), device=cairo_pdf)



