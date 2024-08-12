/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./resources/**/*.blade.php",
    "./resources/**/*.js",
    "./resources/**/*.vue",
  ],
  theme: {
    extend: {
      colors:{
        pink:{
          800: '#0395AF',
          600:'#21568A'
        },
      }
    },
  },
  plugins: [],
}

