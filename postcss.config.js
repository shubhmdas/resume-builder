<<<<<<< HEAD
module.exports = {
  plugins: [
    require('tailwindcss')("./app/javascript/stylesheets/tailwind.config.js"),
    require('autoprefixer'),
    require('postcss-import'),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    })
  ]
}
=======
module.exports = {
  plugins: [
    require('autoprefixer'),
    require('postcss-import'),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    })
  ]
}
>>>>>>> 12981262b8fa83d4c5a8d24f8cedc40031c93ff2
