const Map<String, dynamic> product1 = {
  'productCategory': 'Men',
  'productColor': 'Blue',
  'productDescription': 'Best shirt ever.',
  'productID': 1,
  'productImageURL': [
    "https://di2ponv0v5otw.cloudfront.net/posts/2019/03/05/5c7e87bfaa8770701217266a/m_5c7e8887aa8770b466172a36.jpg",
    "https://media.istockphoto.com/photos/female-fashion-clothes-flat-lay-square-picture-id1160533209"
  ],
  'productName': 'Shirt',
  'productPrice': 1000,
  'productSize': 'Medium (M)'
};

const Map<String, dynamic> product2 = {
  'productCategory': 'Men',
  'productColor': 'Green',
  'productDescription': 'Best jeans ever.',
  'productID': 2,
  'productImageURL': [
    "https://di2ponv0v5otw.cloudfront.net/posts/2019/03/05/5c7e87bfaa8770701217266a/m_5c7e8887aa8770b466172a36.jpg",
    "https://media.istockphoto.com/photos/female-fashion-clothes-flat-lay-square-picture-id1160533209",
    "https://di2ponv0v5otw.cloudfront.net/posts/2019/03/05/5c7e87bfaa8770701217266a/m_5c7e8887aa8770b466172a36.jpg"
  ],
  'productName': 'Jeans',
  'productPrice': 2000,
  'productSize': 'Extra Large (XL)'
};

const List userProducts = [product1, product2];

class User {
  String Email;
  String Name;
  List Products;
  String closetName;
  bool isSeller;

  User({
    this.Email = 'rahul123@gmail.com',
    this.Name = 'Rahul',
    this.closetName = "Rahul's Closet",
    this.isSeller = true,
    this.Products = userProducts,
  });
}

class AllUsers {
  List Users;
}

//List Users = [user1, user2, user3, user4];
