const Game = require("../models/games.model.js")

// Create and Save a new Game

exports. create = (req, res) => {
    // Validate Request
    if (!req.body) {
        res.status(400).sand({
            message: "Cannot be Empty!"
        });
    }
    // Create a Game
    const game = new Game({
        title: req.body.title,
        description: req.body.description,
        rating: req.body.rating,
        published_status: req.body.published_status || 1
    });

    // Save Game in database
    Game.create(game, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "An error occurred while creating the Game"
            });
        else res.send(data);
    });
};
