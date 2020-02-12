Tendron
==================

In this lab, you will use recursion to generate a tendron. A tendron has a cluster of 7 tendrils. At the end of each tendril is a cluster of 7 smaller tendrils. This pattern of clusters of tendrils repeats until the tendrils reach a minimum tendril length. You can think of this as a slightly more complex [Fractal tree](https://github.com/APCSLowell/FractalTree#fractal-tree). Instead of 2 branches in a v shape, there are 7 tendrils that radiate in all directions. Instead of straight branches, the tendrils wiggle randomly left and right as they radiate outward.

Your code will draw the Tendron recursively, modifying the structure as the elements get smaller, going through smaller tendrils and clusters. Every time the `draw()` function runs, it generates a new and different Tendron since growth occurs randomly.   

The main program, `Tendron.pde`, sets up the `size()` and `background()`. Then when `draw()` is called, it creates a new tendron by calling the constructor of the `Cluster` class, telling it to create a cluster of tendrils starting at the midpoint of the screen with each tendril using 50 short segments.      

The cluster of seven tendrils each randomly turn a bit left or right as they move out from the center. At the end of each tendril the new cluster will have fewer line segments, therefore each tendril will be shorter than before. Recursively, these tendrils will again spawn clusters until a minimum tendril length is reached. Here is the final result:

![Alt text](Tendron.gif)    

When drawn, the tendrils together look very plant-like for such a simple algorithm. The effect is enhanced by using the tendril length to determine the `stroke` used when drawing.   

Suggested steps to completing this assignment:
----------------------------------------------
1. Fork and clone down this repository   

2. Complete the `Tendril` class constructor

3. Write code in the `Cluster` class constructor to make one `new Tendril()` with the same initial number of segments and starting (x,y) coordinates. Give the tendril a random angle between 0 and 2π. Then call the tendril's `show()` function.  We'll add more tendrils to the cluster later.

4. Complete the `Tendril` class `show()` function which does the actual drawing. The `show` method draws the tendril using only the two Processing functions [`line`](https://processing.org/reference/line_.html) and [`stroke`](https://processing.org/reference/stroke_.html). In drawing the tendril, we will wiggle the direction with a random walk (similar to the [Lightning](https://github.com/APCSLowell/Lightning#lightning) assignment) for a life-like appearance. Here's one way to randomly wiggle the line: 

    * declare `startX` and initialize it to `myX`
    * declare `startY` and initialize it to `myY`
    * repeat `myNumSegments` times
      * Change `myAngle` by adding a random decimal from -0.2 to 0.2
      * declare `endX` and initialize it to `startX` plus the cosine of `myAngle` times the segment length
      * declare `endY` and initialize it to `startY` plus the sine of `myAngle` times the segment length
      * draw a line from (`startX`,`startY`) to (`endX`,`endY`)
      * Set `startX` to `endX`
      * Set `startY` to `endY`

4. Run your program. You should see one random tendril every time you click the screen
![Alt text](Tendron2.gif)    
5. Now go back to the `Cluster` constructor and modify it to make 7 Tendrils. You may want to evenly space each tendril's angle so that is a multiple of 2π/7.
6. In the Tendril `show()` add code that recursively creates a new `Cluster` at the end of each Tendril if `myNumSegments` is greater than or equal to the minimum tendril length (3 is a good choice)
7. Add code at the beginning of the tendril `show()` function to change the `stroke()` based on the length of the tendril.

Extensions
----------------------
The instructions above are only a suggestion. Have fun and be creative. Your Tendron doesn't have to look like any other.

Samples of Student Work
-----------------------
[Rafael](https://rafaelcenzano.github.io/Tendron/)    

*Note: this assignment was adapted from [Roger Frank's APCS assignment](https://web.archive.org/web/20100118105220/http://rfrank.net:80/cslabs-final/1640-tendron/1640.html)*
