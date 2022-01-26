
class Movie{
  String title;
  String tagline;
  String poster;
  String rating;
  String releaseDate;
  String genre;
  String status;
  String homepage;
  String country;
  String production;
  String overview;
  List<Review> reviews;

  Movie({
      required this.title,
      required this.tagline,
      required this.poster,
      required this.rating,
      required this.releaseDate,
      required this.genre,
      required this.status,
      required this.homepage,
      required this.country,
      required this.production,
      required this.overview,
      required this.reviews
  });
}

class Review{
  String author;
  String content;

  Review({
    required this.author,
    required this.content
  });
}

var movieList = [
  Movie(
      title: 'Spiderman: No Way Home',
      tagline: 'The Multiverse unleashed.',
      poster: 'https://image.tmdb.org/t/p/w500/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg',
      rating: '8.4',
      releaseDate: 'Dec 15, 2021',
      genre: 'Action, Adventure, Science Fiction',
      status: 'Released', 
      homepage: 'https://www.spidermannowayhome.movie', 
      country: 'United States of America', 
      production: 'Marvel Studios, Pascal Pictures, Columbia Pictures', 
      overview: 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.',
      reviews: [
        Review(author: 'garethmb', content: 'Life for Peter Parker (Tom Holland) is complicated thanks to his dual life as Spider-Man and the challenges of being in High School. Unfortunately for him; his best intentions are about to make things much worse in “Spider-Man: No Way Home”.\r\n\r\nTaking place where “Spider-Man: Far From Home” ended; Peter must deal with his secret identity being leaked by Tabloid Journalist J. Jonah Jameson (J.K. Simmons); and the throngs of people, helicopters, and protestors who follow his every move and camp outside his home.\r\n\r\nAs if this was not bad enough; being accused of being a murderer has drawn the attention of the authorities which further complicates his life as does returning to a school where everyone knows his identity.\r\n\r\nDesperate to get away from the constant scrutiny and observation; Peter seeks out Doctor Strange (Benedict Cumberbatch), and asks him to cast a spell that would make the world forget that Peter Parker is Spider-Man.\r\n\r\nStrange agrees but mid-spell Peter requests that there are some exemptions from the spell which include his Girlfriend MJ (Zendaya); his Aunt May (Marisa Tomei); and his friend Ned (Jacob Batalon).\r\n\r\nStrange agrees but in doing so; complications arise which allows entrants from other dimensions to enter their realm. Soon Peter is accosted by villains whom he does not know but seem to know him; that is until he is unmasked and they have no idea who this Peter Parker is before them.\r\n\r\nAs more villains arrive; Peter learns of their fates in their natural dimension and is determined to save them and give them a second chance which puts him at odds with Doctor Strange who says they must go back to whatever fate they had.\r\n\r\nWhat follows is a descent into humor and darkness as Peter despite his best intentions sees the situation go from bad to worse and he must fight to stay true to himself and save the day.\r\n\r\nThe film is a difficult one to review in the fact that there are so many surprise guests, twists, and turns that it is challenging to not reveal anything but suffice it to say that fans should absolutely enjoy it.\r\n\r\nThe film takes its time getting to the action as it has a very slow and deliberate climb and Director Jon Watts is confident enough in the characters and premise that he allows ample time for the characters and setting to build and be established before he gets to the action.\r\n\r\nWhile there is considerable fan service in the film; it never once seems like it is pandering and it all fits very well within the story and the MCU and opens up numerous possibilities for the future.\r\n\r\nThere is a mid-credit scene and a post-credit scene which is basically a trailer and both are very engaging in terms of the possibilities as Marvel has again shown that their plan of interwoven stories and characters continues to deliver and that Spider-Man still remains as popular and engaging as ever.\r\n\r\n4 stars out of 5'),
        Review(author: 'Manuel São Bento', content: 'Spider-Man: No Way Home is one of the darkest, saddest, emotionally draining entries in the MCU, surpassing all of my expectations.\r\n\r\nDespite a messy, convoluted first half with some pacing issues and occasionally frustrating, poorly placed humor, Jon Watts, Chris McKenna, and Erik Sommers more than compensate these minor issues with some of the best (and brutally violent) Spider-Man action ever witnessed on screen.\r\n\r\nIn addition to this, the surprisingly coherent narrative packs shocking developments and actually offers enough screentime for the villains to significantly impact Peter Parkers arc. Unbelievably outstanding performances from everyone involved, especially Tom Holland, Zendaya, and Willem Dafoe.\r\n\r\nA heartfelt, nostalgic homage to the Spider-Man legacy that fans will rewatch countless times, laughing and crying along for many more years to come.\r\n\r\nA memorable, passionate, once-in-a-lifetime cinematic experience'),

      ]),
  Movie(
    title: 'Eternals',
    tagline: 'In the beginning...',
    poster: 'https://image.tmdb.org/t/p/w500/b6qUu00iIIkXX13szFy7d0CyNcg.jpg',
    rating: '7.3',
    releaseDate: 'Nov 03, 2021',
    genre: 'Action, Adventure, Fantasy, Science Fiction',
    status: 'Released',
    homepage: 'https://www.marvel.com/movies/the-eternals',
    country: 'United States of America',
    production: 'Marvel Studios',
    overview: 'The Eternals are a team of ancient aliens who have been living on Earth in secret for thousands of years. When an unexpected tragedy forces them out of the shadows, they are forced to reunite against mankind’s most ancient enemy, the Deviants.',
    reviews: [
      Review(author: 'Manuel São Bento', content: 'Eternals boasts evident narrative issues that affect its overall structure and pacing, but Chloé Zhao still manages to deliver a solid MCU installment.\r\n\r\nPacked with outstanding performances from the stellar ensemble cast, Zhao still follows some of Marvels success formulas, but her unique style brings new attributes to the cinematic universe, such as the distinctly gorgeous cinematography and the profound themes of faith and humanity.\r\n\r\nDespite the exposition-driven screenplay, the admittedly underdeveloped yet inclusive, diverse group of characters hold genuinely compelling relationships. For fans of the mandatory action, the extraordinary entertainment levels are still present, but its definitely the furthest from the MCU a film has ever been.\r\n\r\nIts meant to be divisive, but fortunately, I fall on the positive side.'),
      Review(author: 'Cinetea', content: 'Large to its own deficit. Enjoyable to its own demise.\r\nEmotion is lost in the density of the film much too much is crammed into the time, the viewer cannot feel 10 different emotion for 10 different people in 2h30 it isnt possible the film is structure well and cinematically (no one doubted) beautiful visuals. For the casual viewer this film is entertaining with no excitment or attachement. The marvel enthusiast will find this film exciting but numb: full but empty.\r\n\r\nOne could say this film is ambitious, it is, but now it is purely a wallpaper cinematic event.'),

    ]),
];