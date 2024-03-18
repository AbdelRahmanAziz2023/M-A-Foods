import 'Classes.dart';

List<Food> cartf = [];
List<Drink> cartd = [];
List<Map> users = [
  {
    'name': 'ahmed',
    'email': 'ali.com',
    'password': '159',
    'phone': '8765432',
  },
];
List<Food> HFL = [
  Food(
    Image: 'images/f1.jpg',
    Name: 'Vegan Meatloaf',
    Price: '64.32',
    Recipe:
        'This hearty "meat" loaf is made mostly out of chickpeas and baby bella mushrooms. We are in love! Serve it with a side of vegan mashed potatoes and green beans for the most comforting, healthy meal.',
    count: null,
  ),
  Food(
    Image: 'images/f2.jpg',
    Name: 'Black Bean Tostadas',
    Price: '23.54',
    Recipe:
        'With only 5 ingredients these black bean tostadas are the easiest and fastest healthy meal to throw together. You can always add on additional toppings like corn salsa, avocado ranch, or endless crunchy veggies like radishes or pickled red onions, but here we keep things simple.',
  ),
  Food(
    Image: 'images/f3.jpg',
    Name: '"Skinny" Alfredo',
    Price: '55.00',
    Recipe:
        'A lightened-up version of our fettuccine Alfredo can you feel a little bit better about pasta nights. Skipping the heavy cream and using just a little bit of Greek yogurt still gives you a lusciously creamy sauce you will love.',
  ),
  Food(
    Image: 'images/f4.jpg',
    Name: 'Lemon Pepper Baked Chicken',
    Price: '65.00',
    Recipe:
        'If you throw chicken into a pan with salt and pepper and bake it for forever, of course it is going to be terrible. We know this sounds obvious, but it is what so many people trying to eat healthy do. On the other hand, when you add layers of bright and fresh flavors (like lemon pepper!), eating healthy can be extremely easy and delicious.',
  ),
  Food(
    Image: 'images/f5.jpg',
    Name: 'Buddha Bowl',
    Price: '37.25',
    Recipe:
        'The beauty about these bowls is that they are infinitely adaptable—you can roast just about any veggie, use any number of toppings, and it will taste amazing in this recipe. The only thing we might insist you must keep on the bowl is the incredible peanut dressing. It is insanely delicious.',
  ),
  Food(
    Image: 'images/f6.jpg',
    Name: 'Egg Roll Bowls',
    Price: '23.75',
    Recipe:
        'If youre a fan of crispy savory egg rolls, then you might consider this unwrapped version your dream healthy dinner. Without the need to wrap or fry, this veggie-packed meal comes together in well under an hour. Garnish with crispy raw scallions, toasted sesame seeds, and plenty of sriracha or chili oil.',
  ),
  Food(
    Image: 'images/f7.jpg',
    Name: 'Tofu Stir-Fry',
    Price: '30.50',
    Recipe:
        'For best results, use extra-firm tofu that has been frozen so it can absorb flavors more readily, and simmer the tofu in salted water briefly to make it hardier and less likely to crumble when jostled in the pan.',
  ),
  Food(
    Image: 'images/f8.jpg',
    Name: 'Italian Sausage Stuffed Zucchini',
    Price: '47.20',
    Recipe:
        'A mix of bread crumbs, Italian sausage, and fontina make this one of our absolute favorite zucchini recipes. They are a great low-carb dinner, appetizer, or lunch!',
  ),
  Food(
    Image: 'images/f9.jpg',
    Name: 'Vegan Seared "Scallops" with Succotash',
    Price: '54.32',
    Recipe:
        'In a dish that brings summer vibes to the table no matter the season, king trumpet mushrooms mirror the sweet, delicate flavor of sea scallops. Nestled into a colorful and crisp corn and snap pea succotash, this date-night-worthy dinner is sure to impress.',
  ),
  Food(
    Image: 'images/f10.jpg',
    Name: 'Spicy Salmon Bowl',
    Price: '70.00',
    Recipe:
        'There is something magical about grain bowls. All of the components are great on their own, and once they are tossed together, they somehow become even better.',
  ),
];
List<Food> FFL = [
  Food(
    Image: 'images/ff1.jpg',
    Name: 'Air-Fryer Fish',
    Price: '35.00',
    Recipe:
        'We love the classic fish and chip combo and normally turn to our favorite beer battered fish when the craving hits. But frying can be messy and sometimes we would like to skip that part—this air-fryer fish is the perfect substitute. It is every bit as crunchy and the fish stays perfectly flaky too.',
  ),
  Food(
    Image: 'images/ff2.jpg',
    Name: ' Chick-fil-A Chicken Nuggets',
    Price: '25.45',
    Recipe:
        'can have the reputation of being dry and bland. But that will never be the case with these baked turkey burgers. Even without the oil, they are packed with flavor thanks to soy sauce, garlic, green onion, and shallots.',
  ),
  Food(
    Image: 'images/ff3.jpg',
    Name: ' Chick-fil-A Chicken Sandwich',
    Price: '56.20',
    Recipe:
        'This is the least basic grilled chicken has ever looked. Make it on repeat during summer—when tomatoes are at their peak. (Need other not-boring healthy chicken recipes? We gotchu.)',
  ),
  Food(
    Image: 'images/ff4.jpg',
    Name: ' Taco Bell Crunchwrap Supreme',
    Price: '40.00',
    Recipe:
        'This is the least basic grilled chicken has ever looked. Make it on repeat during summer—when tomatoes are at their peak. (Need other not-boring healthy chicken recipes? We gotchu.)',
  ),
  Food(
    Image: 'images/ff5.jpg',
    Name: ' Domino’s-Style Garlic Breadsticks',
    Price: '37.75',
    Recipe:
        'Each piece looks like a rainbow! Feel free to use your fave veggies, as long as you keep them colorful.',
  ),
  Food(
    Image: 'images/ff6.jpg',
    Name: 'McDonald’s Egg McMuffin',
    Price: '46.10',
    Recipe:
        'You will not miss the hoagie in these low-carb Philly Cheesesteak lettuce wraps. Yes, they are made with provolone—NOT Cheez Whiz. We know they are a little inauthentic, and we are okay with it!',
  ),
  Food(
    Image: 'images/ff7.jpg',
    Name: ' Healthier In-N-Out Burger',
    Price: '50.50',
    Recipe:
        'Possibly our favorite use of cauliflower as a culinary master of disguise is in pizza crust. It might sound crazy but it can be a delicious and healthy alternative to the classic.',
  ),
  Food(
    Image: 'images/ff8.jpg',
    Name: 'Taco Bell Beef Tacos',
    Price: '75.25',
    Recipe:
        'Stuffed with crumbled sausage, mozzarella, and tomato sauce (use store-bought or homemade), this spaghetti squash will rival your favorite Italian pasta dish.',
  ),
  Food(
    Image: 'images/ff9.jpg',
    Name: 'TGI Fridays Jack Daniels Burger',
    Price: '40.30',
    Recipe:
        'If you love all-things "buff chick", this simple mixture of rotisserie chicken, cream cheese, and buffalo sauce will make you melt.',
  ),
  Food(
    Image: 'images/ff10.jpg',
    Name: 'Kitchen Barbecue Chicken Pizza',
    Price: '54.21',
    Recipe:
        'This hearty dinner clocks in somewhere between lasagna and eggplant parm, and it is a great low-carb comfort food meal. It is the perfect recipe to add to your Meatless Monday rotation.',
  ),
];
List<Drink> HDL = [
  Drink(
    Image: 'images/hd.jpeg',
    Name: 'Capetchino',
    Price: '50.00',
    Kind: 'Hot Drink',
  ),
  Drink(
    Image: 'images/hd2.jpeg',
    Name: 'Hot Tea',
    Price: '30.75',
    Kind: 'Hot Drink',
  ),
  Drink(
    Image: 'images/hd3.jpeg',
    Name: 'Classic Mocha',
    Price: '43.00',
    Kind: 'Hot Drink',
  ),
  Drink(
    Image: 'images/hd4.jpeg',
    Name: 'Mudslide Hot Chocolate',
    Price: '10.25',
    Kind: 'Hot Drink',
  ),
  Drink(
    Image: 'images/hd5.jpeg',
    Name: 'Irish Coffee',
    Price: '32.40',
    Kind: 'Hot Drink',
  ),
  Drink(
    Image: 'images/hd6.jpeg',
    Name: 'Frenches Coffee',
    Price: '34.00',
    Kind: 'Hot Drink',
  ),
  Drink(
    Image: 'images/hd7.jpeg',
    Name: 'vanilla chai latte',
    Price: '23.75',
    Kind: 'Hot Drink',
  ),
  Drink(
    Image: 'images/hd8.jpg',
    Name: 'Chai Latte',
    Price: '45.50',
    Kind: 'Hot Drink',
  ),
  Drink(
    Image: 'images/hd9.jpg',
    Name: 'Honey Citrus Ginger Green Tea',
    Price: '13.00',
    Kind: 'Hot Drink',
  ),
  Drink(
    Image: 'images/hd10.jpg',
    Name: 'Beetroot Latte',
    Price: '20.00',
    Kind: 'Hot Drink',
  ),
];
List<Drink> CDL = [
  Drink(
    Image: 'images/cd.jpeg',
    Name: 'Lemongrass Paloma',
    Price: '54.00',
    Kind: 'Cold Drink',
  ),
  Drink(
    Image: 'images/cd2.jpeg',
    Name: 'Watermelon Juice',
    Price: '23.00',
    Kind: 'Cold Drink',
  ),
  Drink(
    Image: 'images/cd3.jpeg',
    Name: 'Orange Juice',
    Price: '65.00',
    Kind: 'Cold Drink',
  ),
  Drink(
    Image: 'images/cd4.jpeg',
    Name: 'Cola with Soda',
    Price: '60.00',
    Kind: 'Cold Drink',
  ),
  Drink(
    Image: 'images/cd5.jpg',
    Name: 'Watermelon Mint Cooler',
    Price: '25.00',
    Kind: 'Cold Drink',
  ),
  Drink(
    Image: 'images/cd6.jpg',
    Name: 'Cranberry Spritzer',
    Price: '30.00',
    Kind: 'Cold Drink',
  ),
  Drink(
    Image: 'images/cd7.jpg',
    Name: 'Mai Tai',
    Price: '55.00',
    Kind: 'Cold Drink',
  ),
  Drink(
    Image: 'images/cd8.jpg',
    Name: 'Boozy Dole Whip',
    Price: '55.00',
    Kind: 'Cold Drink',
  ),
  Drink(
    Image: 'images/cd9.jpg',
    Name: 'Moscow Mule Slushy',
    Price: '40.00',
    Kind: 'Cold Drink',
  ),
  Drink(
    Image: 'images/cd10.jpg',
    Name: 'Cherry Gin Rickey',
    Price: '22.00',
    Kind: 'Cold Drink',
  ),
];
