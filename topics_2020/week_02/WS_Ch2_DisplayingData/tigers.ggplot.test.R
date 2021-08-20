## Whitlock solution

tigerData <- read.csv(url("https://whitlockschluter3e.zoology.ubc.ca/Data/chapter02/chap02e2aDeathsFromTigers.csv"), stringsAsFactors = FALSE)

head(tigerData)

tigerTable <- table(tigerData$activity)
tigerTable <- sort(tigerTable, decreasing = TRUE)
data.frame(tigerTable, row.names = 1)
str(tigerTable)
head(tigerTable)

tigerTable <- table(tigerData$activity)
tigerData$activity_ordered <- factor(tigerData$activity, 
                                     levels = names(sort(tigerTable, decreasing = TRUE)) )
data.frame(table(tigerData$activity_ordered), row.names = 1)

ggplot(data = tigerData, aes(x = activity_ordered)) + 
  geom_bar(stat = "count", fill = "firebrick") +
  labs(x = "Activity", y = "Frequency") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))


#### kcg
tigers.table.df = table(tigers.df$Activity) %>% sort(decreasing=TRUE) %>%
  as.data.frame()
colnames(tigers.table.df) = c("Activity","Frequency")

# this works
ttd = tigers.table.df
act_levels = factor(ttd$Activity,
                    levels = ttd$Activity[1:nrow(ttd)],
                    ordered=TRUE)
act_levels
str(act_levels)
ggplot(data = ttd, aes(x = act_levels, y=Frequency)) +
  geom_bar(stat = "identity", fill = "firebrick") +
  labs(x = "Activity", y = "Frequency (number of people)") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylim(c(0,50))

# same but reassign to same df
ttd = tigers.table.df
ttd$Activity = factor(ttd$Activity,
                    levels = ttd$Activity[1:nrow(ttd)],
                    ordered=TRUE)
ttd$Activity
str(ttd$Activity)
ggplot(data = ttd, aes(x = Activity, y=Frequency)) +
  geom_bar(stat = "identity", fill = "firebrick") +
  labs(x = "Activity", y = "Frequency (number of people)") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylim(c(0,50))


# this also worksm, better syntax
ttd = tigers.table.df
ttd %>% 
  arrange(desc(Frequency)) %>%
            mutate(Activity=factor(Activity, levels=Activity))
str(ttd)

ggplot(data = ttd, aes(x = Activity, y=Frequency)) +
  geom_bar(stat = "identity", fill = "firebrick") +
  labs(x = "Activity", y = "Frequency (number of people)") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylim(c(0,50))
