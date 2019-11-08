const express = require('express');
const path = require('path');
const hbs = require('hbs');

// set the port, express uses to serve the application.
const port = process.env.PORT || 3001;

const app = express();

app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index'));

app.use((req, res, next) => {
    var err = new Error('not found');
    err.status = 404;
    err.customMessage = "something terribe has happened! your page is missing:("

    next(err);

})

app.use((err, req, res, next) => {
res.render ('error',{ data: err, layout: 'errorPage'})
})

app.listen(port, () => {
    console.log(`app is running on ${port}`);
})

