model.exports = app => {
    const games = require("..controllers/games.controller.js");

    var router = require("express").Router();

    // Create/Post a new Game
    router.post("/", games.create);

    // Get all Games
    router.get("/", games.findAll);

    // Get a Game
    router.get("/:id", games.findOne);

    // Update a Game
    router.put("/:id", games.update);

    // Delete a Game
    router.delete("/:id", games.delete);

    // 10 Most Recent Games
    router.get("/10/most-recent", games.getMostRecent);

    // 10 Most Popular Games
    router.get("/10/most-popular", games.getMostPopular);

    // Find a Game by title
    router.get("/:title", games.findByTitle);

    app.use('api/games', router);
};