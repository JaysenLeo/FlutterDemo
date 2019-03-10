class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: 'Apple iphone X',
    author: 'JD',
    imageUrl: 'https://m.360buyimg.com/babel/jfs/t1/7734/6/15470/209997/5c6fcbc9Ebd1c0f0b/e40b7b0dcac61c54.jpg!q70.jpg'
  ),  
  Post(
    title: '荣耀V20 胡歌同款 麒麟980',
    author: 'JD',
    imageUrl: 'https://m.360buyimg.com/babel/jfs/t18157/222/1822300674/231514/6c179af8/5ad87390N086a3c91.jpg!q70.jpg'
  ),
    Post(
    title: '小米9 xiaomi新品三摄 ',
    author: 'JD',
    imageUrl: 'https://m.360buyimg.com/babel/jfs/t1/7734/6/15470/209997/5c6fcbc9Ebd1c0f0b/e40b7b0dcac61c54.jpg!q70.jpg'
  )
];
///   电影信息列表获取
class MovieInfo {
  const MovieInfo({
    this.name,      /// 电影名称
    this.address,   /// 电影出产地区/国家
    this.posterUrl, /// 海报地址
    this.director   /// 导演
  });

  final String name;
  final String address;
  final String posterUrl;
  final String director;
}

final List<MovieInfo> movieInfo = [
  MovieInfo(
      name: '徒手攀岩',
      address: '美国',
      posterUrl: 'https://extraimage.net/images/2019/02/21/637d67d5623c46c801fd0233b0b61f10.jpg',
      director: '金国威 Jimmy Chin / 伊丽莎白·柴·瓦沙瑞莉 Elizabeth Chai Vasarhelyi'
  ),
  MovieInfo(
      name: '徒手攀岩',
      address: '美国',
      posterUrl: 'https://extraimage.net/images/2019/02/21/637d67d5623c46c801fd0233b0b61f10.jpg',
      director: '金国威 Jimmy Chin / 伊丽莎白·柴·瓦沙瑞莉 Elizabeth Chai Vasarhelyi'
  ),
  MovieInfo(
      name: '徒手攀岩',
      address: '美国',
      posterUrl: 'https://extraimage.net/images/2019/02/21/637d67d5623c46c801fd0233b0b61f10.jpg',
      director: '金国威 Jimmy Chin / 伊丽莎白·柴·瓦沙瑞莉 Elizabeth Chai Vasarhelyi'
  ),
];

