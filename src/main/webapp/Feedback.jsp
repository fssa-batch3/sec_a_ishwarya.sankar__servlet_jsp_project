<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Form</title>
    <!-- Link to Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* CSS for star rating */
        .rating {
            display: inline-block;
        }

        .rating input[type="radio"] {
            display: none;
        }

        .rating label {
            font-size: 30px;
            color: #FFD700;
            cursor: pointer;
        }

        .rating label:hover,
        .rating label:hover ~ label {
            color: #FFD700;
        }

        .rating input[type="radio"]:checked ~ label {
            color: #FFD700;
        }

        /* Center and style the form */
        .feedback-form {
            margin: 0 auto;
            max-width: 500px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="feedback-form">
                    <h1 class="text-center">Feedback Form</h1>
                    <form action="FeedbackServlet" method="post">
                        <div class="form-group">
                            <label for="feedback">Feedback:</label>
                            <textarea id="feedback" name="feedback" class="form-control" rows="4" pattern="^[A-Za-z0-9_]{3,20}$" required></textarea>
                        </div>
                        <div class="form-group">
                            <label for="feedback">UserName:</label>
                            <textarea id="feedback" name="UserName" class="form-control" rows="4"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="rating">Rating:</label><br>
                            <div class="rating">
                                <input type="radio" id="star5" name="rating" value="5">
                                <label for="star5">5</label>
                                <input type="radio" id="star4" name="rating" value="4">
                                <label for="star4">4</label>
                                <input type="radio" id="star3" name="rating" value="3">
                                <label for="star3">3</label>
                                <input type="radio" id="star2" name="rating" value="2">
                                <label for="star2">2</label>
                                <input type="radio" id="star1" name="rating" value="1">
                                <label for="star1">1</label>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <script>
        // JavaScript to handle star rating selection
        document.addEventListener("DOMContentLoaded", function() {
            const ratingInputs = document.querySelectorAll(".rating input[type='radio']");
            ratingInputs.forEach(input => {
                input.addEventListener("click", function() {
                    ratingInputs.forEach(radioInput => {
                        radioInput.parentNode.classList.remove("selected");
                    });
                    this.parentNode.classList.add("selected");
                });
            });
        });
    </script>
</body>
</html>
