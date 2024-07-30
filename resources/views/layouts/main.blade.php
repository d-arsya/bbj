<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{ $title??"Home" }} | Berbagi Bites Jogja</title>
  @vite('resources/css/app.css')
</head>
<body class="md:hidden bg-pink-600 pb-72">
  @include('partials.header')
  @yield('container')
  @include('partials.footer')
</body>
</html>