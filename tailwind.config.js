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
        lime:"#F4FFC3",
        tosca: "#0395AF",
        orange: "#F57313",
        yellow: "#F2D394",
        white : "#FFFFFF",
        navy: "#21568A"

      }
    },
  },
  plugins: [],
}

