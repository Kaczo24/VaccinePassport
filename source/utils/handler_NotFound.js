module.exports = (req, res)=>{
    res.status(404);
    res.send(`
    <html>
        <head>
            <meta charset="UTF-8">
        </head>
        <body>
            <h1>Ta strona nie istnieje.</h1>
            <p id="P">Przekierowanie na stronę główną za 5</p>
            <script>
                let sec = 5;
                const P = document.getElementById("P");
                setInterval(() => {
                    sec--;
                    if(sec == 0) 
                        location.href = location.href.slice(0, -location.pathname.length) + "/page1";
                    P.innerText = "Przekierowanie na stronę główną za " + sec;
                }, 1000);
            </script>
        </body>
    </html>`);
}