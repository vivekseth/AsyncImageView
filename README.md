AsyncImageView
==============

subclass of UIImageView to asynchronously load images. 

Usage
-----

Instead of using a UIImageView, import `AsyncImageView.h` and use that instead. To load an image asynchronously, simply `[self.imageView setImageURL:@"http://www.site.com/image.png"]`

To Do
----
- Add more methods to enable using images via POST requests
- create default loading animation, with ability to override
