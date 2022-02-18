Lab 4 
This is the last lab that will be marked. It must be completed by 
Sunday February 27th.  
Part I – Coding a Fish Creek Website  
1. Alter your Fish Creek code (from previous labs) to use the following:  
a. Classes and ids  
b. Centring layers 
```css
.centered{
    margin-left: auto;
    margin-right: auto;
    width: 70%;
}
```
c. The position attribute
```

```
d. The float attribute  
Ensure No. 1 is complete before you answer 2 & 3.  
2. Test your code with the HTML validator (http://validator.w3.org/ ) and the CSS 
validator (http://jigsaw.w3.org/css-validator/ ). (record in blog)  
    1. What are the problems that are highlighted?  
    2. Were you able to fix them?  
```
Warning: Consider adding a lang attribute to the html start tag to declare the language of this document.

From line 1, column 16; to line 2, column 6

TYPE html>↩<html>↩<head

For further guidance, consult Declaring the overall language of a page and Choosing language tags.

If the HTML checker has misidentified the language of this document, please file an issue report or send e-mail to report the problem.

Warning: Section lacks heading. Consider using h2-h6 elements to add identifying headings to all sections.

From line 48, column 3; to line 48, column 11

</nav>↩↩  <section>↩    <
```
fix: add lang and header 
```
<html lang="en">
...
</html>
```
3. Test your code across three browsers. (record in blog)  
    1. Were there any?  
    2. If so, were you able to fix them?  
    I tried IE, Chrome, and Edge, there were no problems.
4. Try the following CSS game: http://flukeout.github.io/ (record in blog) 
    1. What level did you get to?  
    Level 32
    2. What did you learn from the game??  
        * "+" to select the following element.
        * "~" You can select all siblings of an element that follow it. This is like the Adjacent Selector (A + B) except it gets all of the following elements instead of one.
        * ">" You can select elements that are direct children of other elements. A child element is any element that is nested directly in another element.
        * "el:first-child" You can select the first child element. el is the tag name of the child not the parent.
        * .example:nth-of-type(odd) selects all odd instances of a the example class.
        * span:nth-of-type(6n+2) selects every 6th instance of a span, starting from (and including) the second instance.
        * a[href] selects all a elements that have a href attribute no matter what value href equals to.
        * [attribute="value"]Attribute selectors are case sensitive, each character must match exactly.
        * .toy[category^="Swim"] selects elements with class toy and either category="Swimwear or category="Swimming".
        * [class*="heading"] selects all elements with "heading" in their class, like class="main-heading" and class="sub-heading"
 
 
Part II – Web Development Tools (record in blog)  
1. Look at the “Developer Tools” in the Chrome Browser and answer the following:  
a. What does your page look like from a mobile perspective?  
Bigger texts due to lower resolutions and smaller buttons due to using of % to adjust size in css.
b. What will you use this tool for when developing a website?  
Checking responsiveness and availibility on phones or tablets.
2. Research and describe one other extension/add-on that could be helpful when 
developing a website for each of the following browsers:  
a. Firefox  
b. Chrome  
  
Part III – Perception, Attention & Memory (record in blog)  

3. Visual perception (attention and memory) 
Play the following games - https://www.freebrainagegames.com/  
i. Comment on how you did overall.  
Congratulations! Your Brain Age is 32
ii. Comment on what strategies you used to get the best score you could.  
name the position and rememder sequence instead of positions in the first game.
 

4. Visual memory – play the following game: https://www.proprofs.com/games/pattern-
memory/  
a. Comment on how you did.  
b. Did you use the Gestalt principles (https://www.interaction-
design.org/literature/topics/gestalt-principles) during this game?  
c. How can this exercise help you as an interaction designer?  
 
 
5. Testing attention & working memory – do the following activity: 
https://youtu.be/vJG698U2Mvo 
a. How selective was your attention?  
b. How is this relevant to usability?  