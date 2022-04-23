---
title: "Dashboard example"
output: 
  flexdashboard::flex_dashboard:
    orientation: columns
    vertical_layout: scroll      
---



Column {data-width=650}
-----------------------------------------------------------------------

### Scatterplot bill_length_mm  vs  bill_depth_mm,


```r
penguins |> 
        ggplot(aes(body_mass_g, 
                   sex,
                   fill = sex)) + 
        geom_boxplot()
```

```
## Warning: Removed 2 rows containing non-finite values (stat_boxplot).
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png)

Column {data-width=350}
-----------------------------------------------------------------------

### Chart B


```r
penguins |> 
        ggplot(aes(flipper_length_mm, 
                   fill = species)) + 
        geom_histogram()+
        facet_wrap(~species)
```

```
## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

```
## Warning: Removed 2 rows containing non-finite values (stat_bin).
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-1.png)

### Chart C


```r
penguins |> 
        ggplot(aes(bill_length_mm, 
                   bill_depth_mm,
                   color = species)) + 
        geom_point()
```

```
## Warning: Removed 2 rows containing missing values (geom_point).
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-1.png)

