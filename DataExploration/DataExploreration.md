# Homestead National Monument Water Quality Monitoring
## Scatter plot - Dissolved Oxygen and Temperature
![Plot1](https://github.com/anhha09/ISQA8086/blob/master/DataExploration/Rplot_ScatterPlot_DOvsF.png)
> ggplot(dataset)+ geom_point(aes(x = TempF, y = DissolvedOxygen), color = "blue")  

## Scatter plot - Dissolved Oxygen and Temperature (water quality site facets)
![Plot2](https://github.com/anhha09/ISQA8086/blob/master/DataExploration/Rplot_ScatterPlotFacetSite_DOvsF.png)
> ggplot(dataset)+ geom_point(aes(x = TempF, y = DissolvedOxygen), color = "blue")+ facet_wrap(~ WaterQualitySite, nrow = 2)  

## Scatter plot - Dissolved Oxygen and Temperature (trend line)
![Plot3](https://github.com/anhha09/ISQA8086/blob/master/DataExploration/Rplot_ScatterPlotTrendLine_DOvsF.png)
> ggplot(dataset)+ geom_point(aes(x = TempF, y = DissolvedOxygen),color = "blue")+ 
geom_smooth(aes(x = TempF, y = DissolvedOxygen), color = "black")

## Scatter plot - Conductivity and Temperature
![Plot4](https://github.com/anhha09/ISQA8086/blob/master/DataExploration/Rplot_ScatterPlot_ConductivityVsF.png)
> ggplot(dataset)+ geom_point(aes(x = TempF, y = Conductivity), color = "blue")

## Bar chart - The total number of observations at each site monthly
![Plot5](https://github.com/anhha09/ISQA8086/blob/master/DataExploration/Rplot_BarGraph_Observation_Month_Site.png)
> ggplot(dataset) + geom_bar(mapping=aes(x=Month, fill = WaterQualitySite),color="red")+ scale_x_continuous(limits=c(0,15)) +
  scale_y_continuous( limits=c(0, 30))
