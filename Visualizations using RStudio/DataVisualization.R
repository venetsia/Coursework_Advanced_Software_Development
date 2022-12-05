ggplot(data=cartpole_mean, aes(x=Generation, y=Mean_Fitness_NEAT))+geom_point()
ggplot(data=cartpole_mean, aes(x=Generation, y=Mean_Fitness_HyperNeat)) +geom_point()
ggplot(data=cartpole_mean, aes(x=Generation, y=Mean_Fitness_Es_HyperNeat)) +geom_point()
library(scales)
show_col(viridis_pal()(4))
q_colors =  15 # for no particular reason
v_colors =  viridis(q_colors, option = &amp;quot;D&amp;quot;)

ggplot(data=cartpole_mean, aes(x=Generation, y=Stdev_NEAT))+geom_point()
ggplot(data=cartpole_mean, aes(x=Generation, y=Stdev_HyperNEAT))+geom_point()
ggplot(data=cartpole_mean, aes(x=Generation, y=Stdev_Es_HyperNeat))+geom_point()
colnames(cartpole_mean)

p <- ggplot() +
  # blue plot
  geom_point(data=cartpole_mean, aes(x=Generation, y=Mean_Fitness_NEAT)) + 
  geom_smooth(data=cartpole_mean, aes(x=Generation, y=Mean_Fitness_NEAT), fill="blue",
              colour="darkblue", linewidth=1) +
  # red plot
  geom_point(data=cartpole_mean, aes(x=Generation, y=Mean_Fitness_HyperNeat)) + 
  geom_smooth(data=cartpole_mean, aes(x=Generation, y=Mean_Fitness_HyperNeat), fill="red",
              colour="red", linewidth=1)

library("ggplot2")

colors <- c("NEAT" = "#440154FF", "HyperNeat" = "#31688EFF", "ESHyperNEAT" = "#35B779FF")
# plot the data with dataframes with green
# red and blue colors
gfg_plot <-ggplot(NULL, aes(Generation, Mean_Fitness)) + 
  geom_line(data=cartpole_neat_only, aes(x=Generation, y=Mean_Fitness, color="NEAT")) +
  geom_line(data=cartpole_hyperNeat, aes(x=Generation, y=Mean_Fitness, color="HyperNeat"))+
  geom_line(data=cartpole_es_hyperNeat, aes(x=Generation, y=Mean_Fitness, color="ESHyperNEAT")) + theme_minimal()+ scale_color_brewer(palette="Accent") +
  labs(x = "Generation",
       y = "Fitness Mean",
       color = "Legend") +
  scale_color_manual(values = colors)

gfg_plot <-ggplot(NULL, aes(Generation, Mean_Fitness)) + 
  geom_line(data=NEAT_mountain_car  , aes(x=Generation, y=Mean_Fitness, color="NEAT")) +
  geom_line(data=HyperNeat_mountaincar_mean_fitness_per_generation , aes(x=Generation, y=Mean_Fitness, color="HyperNeat"))+
  geom_line(data=ES_HyperNEAT_mountaincar_mean_fitness_per_generation, aes(x=Generation, y=Mean_Fitness, color="ESHyperNEAT")) + theme_minimal()+ scale_color_brewer(palette="Accent") +
  labs(x = "Generation",
       y = "Fitness Mean",
       color = "Legend") +
  scale_color_manual(values = colors)


gfg_plot <-ggplot(NULL, aes(Generation, Mean_Fitness)) + 
  geom_line(data=Neat_fitness_per_generation_Acrobot   , aes(x=Generation, y=Mean_Fitness, color="NEAT")) +
  geom_line(data=hyperneat_fitness_per_generation_acrobat  , aes(x=Generation, y=Mean_Fitness, color="HyperNeat"))+
  geom_line(data=ESHyperNEAT_fitness_per_generation_acrobot , aes(x=Generation, y=Mean_Fitness, color="ESHyperNEAT")) + theme_minimal()+ scale_color_brewer(palette="Accent") +
  labs(x = "Generation",
       y = "Fitness Mean",
       color = "Legend") +
  scale_color_manual(values = colors)


# display the plot
gfg_plot
gfg_plot+ ggtitle("Fitness mean per generation") +
  labs(x="Generation", y ="Fitness Mean") + 
  scale_fill_manual(labels = c("NEAT", "HyperNEAT", "ES-HyperNEAT")) + scale_fill_viridis_d(labels = c("NEAT", "HyperNEAT", "ES-HyperNEAT"))+scale_color_manual(name = "Algorithm", values = c("NEAT" = "#440154FF", "HyperNEAT" = "#31688EFF", "EsHyperNEAT"= "#35B779FF"))


colors <- c("NEAT" = "#440154FF", "HyperNeat" = "#31688EFF", "ESHyperNEAT" = "#35B779FF")
# plot the data with dataframes with green
# red and blue colors
gfg_plot1 <-ggplot(NULL, aes(Generation, Mean_Fitness)) + 
  geom_line(data=NEAT_mean_fitness_specific_activation_functions, aes(x=Generation, y=Mean_Fitness, color="NEAT")) +
  geom_line(data=hyperneat_with_specific_activation , aes(x=Generation, y=Mean_Fitness, color="HyperNeat"))+
  geom_line(data=eshyperneat_cartpole_specific_activation_functions, aes(x=Generation, y=Mean_Fitness, color="ESHyperNEAT")) + theme_minimal()+ scale_color_brewer(palette="Accent") +
  labs(x = "Generation",
       y = "Fitness Mean",
       color = "Legend") +
  scale_color_manual(values = colors)

# display the plot
gfg_plot1
gfg_plot1+ ggtitle("Fitness mean per generation") +
  labs(x="Generation", y ="Fitness Mean") + 
  scale_fill_manual(labels = c("NEAT", "HyperNEAT", "ES-HyperNEAT")) + scale_fill_viridis_d(labels = c("NEAT", "HyperNEAT", "ES-HyperNEAT"))+scale_color_manual(name = "Algorithm", values = c("NEAT" = "#440154FF", "HyperNEAT" = "#31688EFF", "EsHyperNEAT"= "#35B779FF"))

gfg_plot2 <-ggplot(NULL, aes(Generation, Mean_Fitness)) + 
  geom_line(data=NEAT_mountain_car , aes(x=Generation, y=Mean_Fitness, color="NEAT")) +
  labs(x = "Generation",
       y = "Fitness Mean",
       color = "Legend") +
  scale_color_manual(values = colors) + theme_minimal()
gfg_plot2
# plot the data with dataframes with green
# red and blue colors
gfg_plot_1 <-ggplot(NULL, aes(Generation, Stdev)) + 
  geom_line(data=cartpole_neat_only, col="#440154FF") +
  geom_line(data=cartpole_hyperNeat, col="#31688EFF")+
  geom_line(data=cartpole_es_hyperNeat, col="#35B779FF") +theme_light()

# display the plot
gfg_plot_1

ggplot(data=Neat_activation, aes(fill=Activation_Function, y=Avg_Generation, x=Avg_fitness)) +
  geom_bar(position="stack", stat="identity")

ggplot(data=Neat_activation, aes(fill=Activation_Function, y=Avg_fitness, x=Avg_Generation)) +
  geom_bar(position="stack", stat="identity")

ggplot(data=Neat_activation, aes(fill=Activation_Function, y=Avg_fitness, x=Avg_Generation)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(data=Neat_activation, aes(fill=Activation_Function, y=Avg_Generation, x=Avg_fitness)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(data=Neat_activation, aes(x=Avg_Generation, y=Avg_fitness)) + geom_point(aes(color = factor(Activation_Function)))

ggplot(data=Neat_activation, aes(x=Avg_Generation, y=Avg_fitness, fill = Activation_Function)) +
  geom_boxplot()

ggplot(data=Neat_activation, aes(x=Avg_fitness, y=Avg_Generation, fill = Activation_Function)) +
  geom_boxplot()

ggplot(data=Neat_activation, aes(x=Avg_Generation, y=Avg_fitness, fill = Activation_Function)) +
  geom_boxplot() + facet_wrap(~Activation_Function)

ggplot(data=Neat_activation, aes(x=Avg_Generation, y=Avg_fitness, fill = Activation_Function)) +
  geom_boxplot()


ggplot(data=Neat_activation, aes(x=Avg_Generation, y=Avg_fitness, fill = Activation_Function)) + geom_boxplot() + theme_minimal()


ggplot(Neat_activation, aes(x=Avg_Generation, y=Avg_fitness)) + geom_point(aes(color = factor(Activation_Function)))

ggplot(data=Neat_activation, aes(x=Avg_Generation))+
  geom_bar()

ggplot(data=Neat_activation, aes(x=Avg_fitness))+
  geom_bar()

ggplot(Neat_activation, aes( x = Avg_Generation , y = Avg_fitness)) +
  geom_bar(position="stack", stat="identity")
ggplot(Neat_activation, aes(fill = Avg_Generation, x = Avg_fitness , y = Activation_Function)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(data = Neat_activation, aes(x = Avg_Generation)) +
  geom_histogram(fill = "#0073C2FF")

ggplot(Neat_activation, aes( x = Avg_fitness , y = Avg_Generation)) +
  geom_bar(position="stack", stat="identity")
ggplot(Neat_activation, aes(fill = Avg_fitness, x = Avg_Generation , y = Activation_Function)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(Neat_activation, aes(fill = Activation_Function, x = Avg_Generation , y = Avg_fitness)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(Neat_activation, aes(fill = Avg_Generation, x = Avg_fitness , y = Activation_Function)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(Neat_activation, aes(x=Avg_Generation, y=Avg_fitness)) + geom_point(aes(color = factor(Activation_Function)))

ggplot(Neat_activation, aes(x=Avg_fitness, y=Avg_Generation)) + geom_point(aes(color = factor(Activation_Function)))

ggplot(Neat_activation, aes(x=Avg_fitness, y=Activation_Function)) + geom_point(aes(color = factor(Avg_Generation)))

ggplot(Neat_activation, aes(x=Activation_Function, y=Avg_Generation)) + geom_point(aes(color = factor(Avg_fitness)))

ggplot(data=Neat_activation, aes(x=Activation_Function, y=Avg_Generation, fill = Avg_fitness)) +
  geom_boxplot()

ggplot(data=Neat_activation, aes(x=Avg_Generation, y=Activation_Function, fill = Avg_fitness)) +
  geom_boxplot()

ggplot(data=Neat_activation, aes(x=Avg_Generation, y=Avg_fitness, fill = Activation_Function)) +
  geom_boxplot()

b<-ggplot(Neat_activation, aes(x=Avg_Generation, y=Avg_fitness)) + geom_point(aes(shape=Activation_Function), size =5) + theme_minimal()
b
ggplot(data=Neat_activation, aes(x=Avg_Generation, y=Avg_fitness)) +
  geom_boxplot() + facet_wrap(~Activation_Function)

ggplot(data = Neat_activation, aes(y = Avg_Generation, x=Avg_fitness)) +
  geom_boxplot(fill = "blue", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)

ggplot(data = Neat_activation, aes(x = Avg_Generation, y =Avg_fitness)) +
  geom_boxplot( outlier.colour="red",
                outlier.shape=16,
                outlier.size=2, notch=FALSE) +facet_wrap(~Activation_Function)

ggplot(data = Neat_activation, aes(x = Avg_fitness, y = Activation_Function)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = Neat_activation, aes(x = Activation_Function, y = Avg_fitness)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(Neat_activation, aes(x=Avg_Generation, y=Avg_fitness)) + geom_point(aes(color = Activation_Function))

b<-ggplot(Neat_activation, aes(x=Avg_Generation, y=Avg_fitness)) + geom_point(aes(color = Activation_Function)) + theme_minimal()
b
ggplot(Neat_activation, aes(x=Activation_Function, y= Avg_fitness)) + geom_point()


ggplot(Neat_activation, aes( x = Activation_Function , y = Avg_fitness)) +
  geom_bar(position="stack", stat="identity")
ggplot(Neat_activation, aes(x = Activation_Function , y = Avg_fitness)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") 

ggplot(Neat_activation, aes( x = Activation_Function , y = Avg_fitness)) +
  geom_bar(position="stack", stat="identity")
ggplot(Neat_activation, aes(x = Activation_Function , y = Avg_fitness)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Average Fitness per activation function") + theme_minimal()
newdata <- Neat_activation[order(Avg_fitness),]

ggplot(Neat_activation, aes( x = Activation_Function , y = Avg_Generation)) +
  geom_bar(position="stack", stat="identity")
ggplot(Neat_activation, aes(x = Activation_Function , y = Avg_Generation)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") 


install.packages("tidyverse")
library(tidyverse)
# load the library
library(forcats)
Neat_activation %>%
  mutate(name = fct_reorder(Activation_Function, Avg_fitness)) %>%
  ggplot( aes(x=Activation_Function, y=Avg_fitness)) +
  geom_bar(stat="identity", fill="#f68060", alpha=.6, width=.4) +
  coord_flip() +
  xlab("") +
  theme_bw()

ggplot(Neat_activation,aes(x=reorder(Activation_Function, Avg_fitness),y=Avg_fitness)) + 
  geom_bar(stat='identity') + 
  coord_flip() + labs(y='Average Fitness',x='Activation Function') + theme_minimal()

ggplot(dataset, aes( x = Gender , y = Height)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Gender , y = Height)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Gender , y = Distance)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Gender , y = Distance)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")