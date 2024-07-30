<footer class="fixed bottom-0 w-full bg-pink-600 py-4">
    <h1 id="clk" class="text-center text-sm text-white font-semibold">© Copyright 2024 BERBAGI BITES JOGJA. All Rights Reserved.</h1>
</footer>

<script>
    let count = 0

    document.querySelector('#clk').addEventListener('click',function(e){
        if(count==0){res()}
        count++
        if(count==3)window.location.href='/qwertyuiop'
    })

    function res(){
        setTimeout(() => {
            count = 0
        }, 1200);
    }

</script>