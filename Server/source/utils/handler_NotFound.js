module.exports = (req, res)=>{
    res.status(404);
    res.send(`
    <html>
        <head>
            <meta charset="UTF-8">
        </head>
        <body>
            <h1>Ta strona nie istnieje.</h1>
        </body>
    </html>`);
}