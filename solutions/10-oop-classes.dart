class Book{
    String title;
    String author;
    int _pages;

    Book(this.title, this.author, this._pages);

    Book.guest() : title = 'Unknown', author = 'Unknown', _pages = 0;

    void summary(){
        print('$title by $author, $_pages pages.');
    }

    int getPages(){
        return _pages;
    }       
}

void main(){
    Book b1 = Book('1984', 'George Orwell', 328);
    b1.summary();
    print('Pages of ${b1.title}: ${b1.getPages()}');

    Book b2 = Book.guest();
    b2.summary();

    Book b3 = Book('Raheeq Al Makhtum', 'Safiur Rahman al-Mubarakpuri', 968);
    b3.summary();
}