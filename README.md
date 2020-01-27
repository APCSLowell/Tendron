Tendron
==================

In this lab, you will use recursion to generate a graphic image. Your code will draw a "plant" recursively, modifying the structure as the elements get smaller, going through smaller branches and finally to leaves. Every time the `draw()` function runs, it generates a new and different plant since growth occurs randomly.   

The main program, `Tendron.pde`, sets up the `size()` and `background()`. Then when `draw()` is called, it creates a new `Cluster`and calls the `show()` function of the Cluster class, telling it to draw a cluster starting at the midpoint of the screen using 50 short segments.      

A cluster is a group of seven tendrils. Each tendril is made of a series of short line segments, and as each segment is drawn, it may turn a bit left or right, giving a more life-like appearance.   

At the end of each tendril, a new cluster is created. The new cluster will have fewer line segments, therefore each tendril will be shorter than before. Recursively, these tendrils will again spawn clusters until a minimum tendril length is reached. Here is the final result:

![Alt text](Tendril.gif)    

When drawn, the tendrils together look very plant-like for such a simple algorithm. The effect is enhanced by using the tendril length to determine the line color used when drawing.   

Suggested steps to completing this assignment:
----------------------------------------------
1. Fork and clone down this repository   

2. Complete the `Cluster` class which has one public method, `show`. The display method creates seven tendrils by creating Tendril objects and then invoking their `show` methods.

3. Complete the `Tendril` class which does the actual drawing through its only method, `show`. The `show` method draws the tendril using [Processing's `line()` function](https://processing.org/reference/line_.html). The functions `line` and `stroke` are the only functions you need to draw your image. In drawing the tendril, remember to wiggle the direction and to use an appropriate color for a life-like appearance. After each tendril is drawn, conditionally create a new, smaller cluster on the end, which will have its own seven tendrils, each of which may have a cluster at the end.   



Extensions
----------------------
Have fun and be creative. Your Tendron doesn't have to look like any other.

Samples of Student Work
-----------------------
None yet!   

*Note: this assignment was adapted from [Roger Frank's APCS assignment](https://web.archive.org/web/20100118105220/http://rfrank.net:80/cslabs-final/1640-tendron/1640.html)*
