<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
  <link rel="stylesheet" href="./assests/style.css/about.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" >
</head>
<body>
<jsp:include page="./header.jsp"></jsp:include>

 <section class="about" id="about">
    <h1 class="heading">About Us</h1>
    <div class="row">
        <div class="image">
                                <img src="./assests/image/about-img (1).png"  height=100px width=500px>
            <div class="content">
                <h3>We take care of your healthy life</h3>
                <p>Medlife Hospitals has emerged as Asia’s foremost integrated healthcare services provider<br> and has a robust presence across the healthcare ecosystem, including Hospitals,<br> Pharmacies, Primary Care & Diagnostic Clinics and several retail health models. The Group also has Telemedicine facilities across several countries, Health Insurance Services, Global Projects Consultancy, Medical Colleges, Medvarsity for E-Learning, Colleges of Nursing and Hospital Management and a Research Foundation. In addition, ‘ASK Medlife’ – an online consultation portal and Medlife Home Health provide the care continuum.
                 </p>
            </div>
        </div>
    </div>
</header>
<h1>Frequently Asked Questions</h1>
<div class="faq-container">
  <div class="faq">
    <h3 class="faq-title">
How to book an appointment?    </h3>
    <p class="faq-text">You can
      a) Call our Customer Care number: 1860 500 7788
      b) Or send an SMS/whatsapp to 9701003333
      c) Or log on to www.apolloclinic.com and request an appointment
      d) Or directly walk in to the nearest Apollo Clinic</p>
    <button class="faq-toggle">
      <i class="fas fa-angle-down"></i>
    </button>
  </div>

  <div class="faq active">
    <h3 class="faq-title">
What are the service available in medlife?    </h3>
    <p class="faq-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quod nobis, repellat neque non dicta
      fugiat veritatis sit delectus perspiciatis quis?</p>
    <button class="faq-toggle">
      <i class="fas fa-angle-down"></i>
    </button>
  </div>

  <div class="faq">
    <h3 class="faq-title">
 What are the working hours?    </h3>
    <p class="faq-text">To make it convenient for you, your neighbourhood Apollo Clinic is open from 8 AM to 8 PM. We work on Sundays also, for more detail please call 1860 500 7788</p>
    <button class="faq-toggle">
      <i class="fas fa-angle-down"></i>
    </button>
  </div>

  <div class="faq">
    <h3 class="faq-title">
can emergencies treated here?    </h3>
    <p class="faq-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quod nobis, repellat neque non dicta
      fugiat veritatis sit delectus perspiciatis quis?</p>
    <button class="faq-toggle">
      <i class="fas fa-angle-down"></i>
    </button>
  </div>

  <div class="faq">
    <h3 class="faq-title">
    Are all doctors available daily?    </h3>
    <p class="faq-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quod nobis, repellat neque non dicta
      fugiat veritatis sit delectus perspiciatis quis?</p>
    <button class="faq-toggle">
      <i class="fas fa-angle-down"></i>
    </button>
  </div>
</div>

      <script src="./header.jsp"></script>
      <script>
        const buttons = document.querySelectorAll(".faq-toggle");

buttons.forEach((button) => {
  button.addEventListener("click", () =>
    button.parentElement.classList.toggle("active")
  );
});

      </script>
      <jsp:include page="./footer.jsp"></jsp:include>
      
</body>
</html>