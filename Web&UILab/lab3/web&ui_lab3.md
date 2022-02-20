---
layout: post
title:  Web&UI Lab 3
date:   2022-02-20 00:43:26 +0800
author: Borui
categories: work course-assignment
cover_image: /assets/images/tu_dublin.jpg
---
# Web&UI Lab 3



## Part I – Reviewing this week’s lectures (record in blog)

### Page Layout

How exactly can cells be spanned across rows and columns in a table? Provide code and examples.

How did you find coding tables? Outline positive or negative observations, providing examples.
Positive: Good for displaying tables. 

Negative: Bad for making layouts. Deep in DOM tree, poor accessbility.



### Cognition

Browse some university websites in the USA (observing content, layout, colour, responsiveness …): https://searchenginesmarketer.com/company/resources/university-college-list/

State four features that these websites have in common. You should state which websites you have analysed.
https://www.ucla.edu/
https://www.sandiego.edu/
https://www.caltech.edu/
1. Use Cookies
2. Place "Give" on top of the navigation bar.
3. Use big pictures and news for main contents.
4. All fully responsive.

Browse some university websites in Ireland (observing content, layout, colour, responsiveness …): https://www.educationinireland.com/en/Where-can-I-study-/View-all-Universities-Colleges/

State four features that these websites have in common. You should state which websites you have analysed.
https://www.dcu.ie/international
https://www.tudublin.ie/
https://www.ucd.ie/
1. Use Cookies
2. Use double navigation bars.
3. Use sliders, big pictures, and news for main contents.
4. All fully responsive.

From reading the many articles that I have tweeted on flat design/skeuomorhism/neuomorphism answer the following:

What is the meaning of flat design? What website uses flat design?  
Flat design is a user interface design style that uses simple, two-dimensional elements and bright colors. It is often contrasted to the skeuomorphic style that gives the illusion of three dimensions through copying real-life properties.
Most websites use flat desgin now.

What is the meaning of neuomorphism? What website uses neuomorphism?
Neumorphism originated by combining the old classic skeuomorphism (Interface objects that mimic their real-world counterparts in appearance e.g. recycle bin icon used for discarding files) with the flat design.
Mostly Designer's sites.


## Part II – Incorporating CSS into Fish Creek

For the external stylesheet, open up a new text file and call it styles.css. Save it in the same directory as your html files. Most of your CSS rules should go in here. You then need to put <link…> in the <head> section of any of the html pages that are using this style sheet. This is External CSS and styles in here will apply to all of your pages.

For styles that apply to only one web page, you should put <style></style> in the head of the html file. The CSS rules go in this tag. This is Embedded CSS.

Some useful tutorials on CSS are as follows:

W3Schools

Code Academy

Khan Academy



Using the Fish Creek website that you created last week, incorporate Cascading Style Sheets (CSS) – embedded and external, as follows:

All headings should have the same colour, size and font.

Each page should have a different colour background.

All hyperlinks should be the same colour before being clicked, when clicked and when hovered over.

The footer (<footer>) should have the same background colour on both pages, though this colour should differ from the background colour of each page.

In the unordered list, change the list so that list items use squares rather than circles.

In the definition list, use CSS (not more tags!) to style <dt> so that it is always bold and underlined.

Put the navigation links in a <nav> and style this <nav>.


You should check all of your code the HTML Validator - https://validator.w3.org/

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
<link rel="stylesheet" href="styles.css">
<style>
  nav ul {
    list-style-type: none;
    overflow: hidden;
    padding: 0px;
  }
  
  nav li {
    float: left;
  }
  
  nav li a {
    display: block;
    padding-right: 16px;
  }

  body {
    background-color: black;
    color: white;
  }
  
</style>
</head>

<body>

<div>
  <header>
      <h1>Fish Creek Animal Hospital</h1>
  </header>
  <nav>
    <ul>
      <li><a href="index.html">Home</a></li>
      <li><a href="services.html">Services</a></li>
      <li><a href="index.html">Ask the Vet</a></li>
      <li><a href="index.html">Contact</a></li>
    </ul>
  </nav>

  <section>
    <dl>
        <dt>Full Services Facility</dt>
          <dd>Verinarians and staff are on duty 24 hours a day,7 days a week.</dd>
        <dt>Years of Experience</dt>
          <dd>Fish Creek Veterinarians have provided quality,dependable care for your beloved animals since 1984.</dd>
        <dt>Open Door Policy.</dt>
          <dd>Our professional welcome owners to stay with their pets during any medical procedure.</dd>
    </dl>
  </section>
  <br>
  <br>
  <div>
        1-800-555-5555<br>
         1242 Grassy Lane<br>
         Fish Creek,WI 55534
  </div>
  <br>
  <br>


  <footer>
      <em> Copyright &copy; 2013 Fish Creek Animal Hospital</em><br>
      <a id="email" href="#email">borui@cai.com</a>
  </footer>

</div>

</body>

</html>

```
```css
h1 {
    display: block;
    font-size: 2em;
    margin-top: 0.67em;
    margin-bottom: 0.67em;
    margin-left: 0;
    margin-right: 0;
    font-weight: bold;
}

nav a {
    padding: 10px;
    background-color: tomato;
    border: 1px solid white;
}
a:visited {
    color: chartreuse;
}
a:hover {
    color: cornflowerblue;
    background-color: purple;
}

footer {
    background-color: rgb(229, 240, 73);
}

ul {
    list-style-type: square;
    margin: 0%;
}

dt {
    font-weight: bold;
    text-decoration:underline;
}

nav {
    background-color:pink;
    border: 3px solid white;
    border-radius: 10px;
}
```