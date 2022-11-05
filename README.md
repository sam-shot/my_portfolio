
# My Resume App

An Interactive Mobile version of my Resume.




![](https://img.shields.io/badge/version-1.o-brightgreen)


## Author

- [@sam-shot](https://www.github.com/sam-shot)


## Libraries I used

 - [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)
    : I used the package to implement the splash Sceen of the App
 - [url_launcher](https://pub.dev/packages/url_launcher)
    : I used this package to implement browser support to the App


## Features

- Dark/Light mode toggle with System theme detection Integration
- Responsive
- Multilingual Support with Language auto detection
- Browser Support to Open my Social Links

## Features I would have Added 

- I would had added more interactive animations if I had more time.

## Link to App

Download the app [here](www.samshotmedia.cf)


## Screenshots

![App Screenshot](https://hambizzl.sirv.com/Images/Screenshot%20(11).png)




![App Screenshot](https://hambizzl.sirv.com/Images/Screenshot%20(10).png)



## Run Locally

Clone the project.
- Make sure you have flutter installed.
- If you don't view [flutter's website](https://flutter.dev/), follow the instructions and install it.


```bash
  git clone https://github.com/sam-shot/my_portfolio
```

Go to the project directory

```bash
  cd my_portfolio
```

Install dependencies

```bash
  flutter run pub get
```

Run the App

```bash
  flutter run
```


## Support

For support, email samshotmedai01@gmail.com 


## Challenges I faced

- Making the App multi language : I solve this challenge by using easy localization package to implement multi language support smoothly
- Making the App Responsive : I solved this challenge by making use of 
```
  MediaQuery.of(context).size
```
 To get device width and render the UI in respect to the device's width
