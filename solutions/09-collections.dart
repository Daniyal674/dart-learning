void main(){
    List <String> movies = ['3 Idioits', '12th Fail', 'Javed Iqbal', 'Chup Chup Ke', '83'];

    Set <String> genres = {'Comedy', 'Drama', 'Crime', 'Comedy', 'Sports'};

    Map <String, String> movieDetails = {
        '3 Idioits': 'Comedy',
        '12th Fail': 'Drama',
        'Javed Iqbal': 'Crime',
        'Chup Chup Ke': 'Comedy',
        '83': 'Sports'
    };

    var comedyMovies = movies.where((movie) => movieDetails[movie] == 'Comedy').toList();
    print(comedyMovies);
}