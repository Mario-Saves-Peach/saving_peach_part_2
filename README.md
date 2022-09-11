<h1 align="center">Help Mario Save Princess Peach Again!</h1>

<p align='center'> Oh No! Princess Peach has been captured again and sent to a random place on the grid. Do you have what it takes to find the princess and save the day again? Find out by playing this game and it will show you the next move you need to take to save Princess Peach! You'd think Princess Peach would be more aware of her surroundings, but it's fine, she's still the princess.</p> 

<br> 

<p align='center'> <img width="478" alt="Screen Shot 2022-09-10 at 7 49 19 PM" src="https://user-images.githubusercontent.com/93055633/189508386-b8643265-9ccc-484a-bd1b-c2037e5f34d9.png">
</p>

<br>

<h2 align='center'>How to Clone and Play Game</h2> 

<p align='left'>Step 1: First you want to open terminal and cd into the file you want to clone this project into</p>

<p align='left'>Step 2: Run in terminal to clone repo into folder </p> 

```git clone git@github.com:Mario-Saves-Peach/saving_peach_part_2.git```

<p align='left'>Step 3: cd into the project like so </p> 

```cd saving_peach_part_2 ```

<p align='left'>Step 4: Run this in terminal start program </p> 

``` ruby app/next_move.rb ```

<p align='left'>Step 5: Awesome, time to start! Input any number between 3 - 99, hit enter when inputted number (For this example i'll be using 5)</p>

```5```

<p align='left'>Step 6: Now we decide where we want Mario on the grid by giving 2 numbers with a space in between. The first number represents row and the second number represents column. (Make sure to minus 1 from these numbers as it starts from 0 instead of 1)(For my example, I want Mario in row 3 column 4, so I will use 2 3)</p>

``` 2 3 ```

<p align='left'>Step 7: Now we have to build a grid line by line using (-) by making a 5 x 5 grid (or whatever number you inputted like so)</p>

```--p--```  <p>Hit enter and repeat until grid is built (make sure to include Princess Peach anywhere on your grid by using 'p'</p>

```-----```

```---m-``` <p>Also be sure that mario is in the position you declared using 'm'</p>

```-----```

```-----```

<p align='left'>Step 8: Great should have a grid that looks like so</p>

```--p--```

```-----```

```---m-```

```-----```

```-----```

<p align='left'>Step 9: If everything was inputted correctly, hit enter and find the next move to save Princess Peach</p>

<p align='left'>Example Results:</p>

```
UP
```

<h3 align='center'>Great Job! You're still proving you have what it takes to save Princess Peach, keep playing and try many different combinations to see how else you can save Peach! </h3>


<h2 align='center'>Where this challenge came from and how I planned to build it</h2>

<p align='center'>This project came from a HackerRank challenge called Bot Saves Princess - 2: (https://www.hackerrank.com/challenges/saveprincess2)
If you haven't seen the first version of this challenge, please check out part 1: (https://www.hackerrank.com/challenges/saveprincess). This challenge looked even crazier and harder than the first one! But after sitting down, pseudocoding it, and actually thinking of ways I can solve this challenge, it was another very fun project to complete! I find that Pseudocoding not only helps break down the problem and solve it, but guides the project in the right direction! Here is my Pseudocoding process I used to build this project! </p>  


Google Docs: [Mario Saves Peach Pseudocoding](https://docs.google.com/document/d/1wv21M7hbHSQ9xItAyGcUeSXZVO2f5OvO90LPaujh2VA/edit?usp=sharing)

<h3 align='center'>Here are some doodles I did to help me solve the challenge and come up with a method that locates mario and peach no matter where on the grid they are</h3>

<p align='center'><img width="358" alt="Screen Shot 2022-09-10 at 8 16 30 PM" src="https://user-images.githubusercontent.com/93055633/189509090-1804bf23-e6d4-4cba-a19f-7a2256742dee.png"></p>

<h3 align='center'>Here is my score when I inputted my code into the HackerRank Challenge</h3>

<p align='center'><img width="246" alt="Screen Shot 2022-09-10 at 7 11 00 PM" src="https://user-images.githubusercontent.com/93055633/189507433-8337cf79-d7ea-42f7-bd68-9f944752fc47.png"></p>

<h2 align='center'>How to run RSPEC and test this project</h2>

<p align='center'>While testing this application, I focused on two big points to test. I focused on input and output testing. I made sure you can't proceed playing if you've inputted something incorrectly (Error Handling). This is important because a user playing can make a mistake at any moment and it's important to tell them what the mistake was before trying again! I also focused on making sure the method works and can actually fulfill the purpose of the game! This project was built for a bot's input, so when running 'rspec' in the command line, it may look frozen, but it is waiting on your input before continuing. So you will need to pretend to be a bot and play one round. When finished, it will show you not only the next move to save Peach, but also will show you the testing results. (Please Use Picture Below as a Guide)</p>

<br>

<p align='center'><img width="433" alt="Screen Shot 2022-09-10 at 8 20 27 PM" src="https://user-images.githubusercontent.com/93055633/189509181-135b4914-8b89-47f7-8dde-dbbb5a23bd34.png"></p>
