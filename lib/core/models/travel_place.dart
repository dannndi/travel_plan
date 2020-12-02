class TravelPlace {
  String name;
  String location;
  double price;
  String url;

  TravelPlace({this.name, this.location, this.price, this.url});
}

List<TravelPlace> dummy_places = [
  TravelPlace(
    name: 'Liberty Statue',
    location: 'New York',
    price: 100,
    url:
        'https://lp-cms-production.imgix.net/2019-06/21c6ef0ba96e0ce5107a91c4506e2df7-statue-of-liberty.jpg?auto=compress&crop=center&fit=crop&format=auto&h=416&w=960',
  ),
  TravelPlace(
    name: 'Candi Borobudur',
    location: 'Yogyakarta, Indonesia',
    price: 90,
    url:
        'https://ik.imagekit.io/tvlk/xpe-asset/AyJ40ZAo1DOyPyKLZ9c3RGQHTP2oT4ZXW+QmPVVkFQiXFSv42UaHGzSmaSzQ8DO5QIbWPZuF+VkYVRk6gh-Vg4ECbfuQRQ4pHjWJ5Rmbtkk=/2001162996890/Candi%2520Borobudur%2520Tickets-b4a91af7-a247-432c-8cce-340e50609fd1.jpeg?_src=imagekit&tr=c-at_max,h-512,q-60,w-720',
  ),
  TravelPlace(
    name: 'Tembok China',
    location: 'China',
    price: 120,
    url:
        'https://assets-a2.kompasiana.com/items/album/2016/03/28/sejarah-tembok-besar-china-56f8e504c4afbd851c1149a3.jpg?t=o&v=760',
  ),
  TravelPlace(
    name: 'Jesus Brazil',
    location: 'Brazil',
    price: 110,
    url:
        'https://cdn.idntimes.com/content-images/post/20180605/e8832f8a060a68fac14539164b99d8a6.jpg',
  ),
  TravelPlace(
    name: 'Hawaii',
    location: 'Hawaii',
    price: 140,
    url:
        'https://www.planetware.com/wpimages/2019/12/hawaii-in-pictures-beautiful-places-to-photograph-hanauma-bay-oahu.jpg',
  ),
];
