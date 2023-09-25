<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="./assests/style.css/adminrev.css">
<body>
<jsp:include page="/header.jsp"></jsp:include>

  <div class="pov">
        <div class="wrapper">
            <h1>HEAR WHAT OUR CUSTOMERS SAY</h1>
            <h5>CHECK WHAT THEY SAY ABOUT US</h5>
            <a  id="reviewLink" href="./reviewform.html" >Add Review</a>

            <div class="main"> 
            </div>
</body>
<script>
    let card_content = JSON.parse(localStorage.getItem("review"))

for (let i = 0; i < card_content.length ; i++) {
let div_cards = document.createElement("div")
div_cards.setAttribute("class", "cards")
document.querySelector("div.main").append(div_cards)

let div_card = document.createElement("div")
div_card.setAttribute("class", "card")
div_cards.append(div_card)

// let cardimage = document.createElement("img")
// cardimage.setAttribute("src", card_content[i]["im_g"]);
// div_card.append(cardimage)

let paragraph = document.createElement("p")
paragraph.innerText = card_content[i]["Sp_l"];
div_card.append(paragraph)

let h2 = document.createElement("h2")
h2.innerText = card_content[i]["dname"];
div_card.append(h2)

let h4 = document.createElement("h4")
h4.innerText = card_content[i]["tx_t"];
div_card.append(h4)

}



// let newdata = true;


// let reviewLink = document.getElementById('obj');


// if (newdata==data) {
//   reviewLink.style.display = 'inline';
// } else {
//   reviewLink.style.display = 'none';
// }


</script>
<script src="../header.js"></script>

</body>
</html>