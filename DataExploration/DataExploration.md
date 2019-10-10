# Homestead National Monument Water Quality Monitoring
For this assignment, a new csv file (CleanedWaterQuality16_17.csv) has been created and stored in the DataExploration directory. This new csv file is part of the original dataset from Homestead. Here are the cleaning steps:
  - Filtered dataset and only kept the 2016 and 2017 data
  - Filled Date column by combining the Month, Date, and Year columns
  - Capitalized the first letter for all water quality site
  - Added missing temperature and precipitation by using data from additional spreadsheets received from Ranger Jesse
  - Calculated the mean for pH, conductivity, dissolved oxygen, and total phosphates and filled in the empty cells with it

## Scatter plot - Dissolved Oxygen and Temperature
![Plot1](https://github.com/anhha09/ISQA8086/blob/master/DataExploration/Rplot_ScatterPlot_DOvsF.png)
<pre><code> ggplot(dataset)+ geom_point(aes(x = TempF, y = DissolvedOxygen), color = "blue")</code></pre>  
For this first plot, the goal is to identify the correlation between temperature and dissolved water. The expectation is that lower temperature water should hold more dissolved oxygen and vice versa. The scatter plot above does support the hypothesis, however, due to human errors, there are some scatter points.

## Scatter plot - Dissolved Oxygen and Temperature (water quality site facets)
![Plot2](https://github.com/anhha09/ISQA8086/blob/master/DataExploration/Rplot_ScatterPlotFacetSite_DOvsF.png)
<pre><code> ggplot(dataset)+ geom_point(aes(x = TempF, y = DissolvedOxygen), color = "blue")+ facet_wrap(~ WaterQualitySite, nrow = 2)</code></pre>  
For this second plot, by adding water quality site facets, the scatter plot does support the hypothesis. In the North scatter plot, when the temperature is high (60F– 100F), the dissolved oxygen amount is lower compared to the amount of dissolved oxygen in the lower temperature (below 60F). For data cleaning, this plot shows that the data from WGP and NEGP sites were recorded during the warmer seasons.

## Scatter plot - Dissolved Oxygen and Temperature (trend line)
![Plot3](https://github.com/anhha09/ISQA8086/blob/master/DataExploration/Rplot_ScatterPlotTrendLine_DOvsF.png)
<pre><code> ggplot(dataset)+ geom_point(aes(x = TempF, y = DissolvedOxygen),color = "blue")+ 
geom_smooth(aes(x = TempF, y = DissolvedOxygen), color = "black")</code></pre>
For this third plot, the trend line is added to test our hypothesis further. The line curved up when the temperature is lower and curved down when the temperature is higher. Based on this line, it is safe to say that temperature and dissolved oxygen are correlated.

## Scatter plot - Conductivity and Temperature
![Plot4](https://github.com/anhha09/ISQA8086/blob/master/DataExploration/Rplot_ScatterPlot_ConductivityVsF.png)
<pre><code> ggplot(dataset)+ geom_point(aes(x = TempF, y = Conductivity), color = "blue")</code></pre>
For this fourth plot, the goal is to identify the correlation between conductivity and temperature. With higher temperatures, chemical compounds like sugar and salt will break down which will affect the conductivity of the water. Based on this plot, there is a cluster of points in the lower conductivity area when the temperature is high (70F -100F).

## Bar chart - The total number of observations at each site monthly
![Plot5](https://github.com/anhha09/ISQA8086/blob/master/DataExploration/Rplot_BarGraph_Observation_Month_Site.png)
<pre><code> ggplot(dataset) + geom_bar(mapping=aes(x=Month, fill = WaterQualitySite),color="red")+ scale_x_continuous(limits=c(0,15)) +
  scale_y_continuous( limits=c(0, 30))</code></pre>
For this last plot, the goal is to identify the total number of observations at each site monthly. Based on the plot, WGP and NEGP data were not recorded in the fall and winter months. This plot will help break down the dataset and make it easier to analyze the data.
