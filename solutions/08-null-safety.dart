void main(){
    String? favoriteColor = null;
    print(favoriteColor ?? 'Not Specified');
    favoriteColor ??= 'Blue';
    print(favoriteColor!.toUpperCase());
}