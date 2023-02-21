class ApiConstance{
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String appKey = 'ffc123dbc5aa0a898121321e39672a0a';
  static const String nowPlayingMoviePath = '$baseUrl/movie/now_playing?api_key=$appKey';
  static const String popularMoviePath = '$baseUrl/movie/popular?api_key=$appKey';
  static const String topRatedMoviePath = '$baseUrl/movie/top_rated?api_key=$appKey';
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static  String imageUrl(String path) => '$baseImageUrl$path';
  static  String movieDetailsPath(int movieId) => '$baseUrl/movie/$movieId?api_key=$appKey';
  static  String movieRecommendPath(int movieId) => '$baseUrl/movie/$movieId/recommendations?api_key=$appKey';
}
