
// Function to filter gallery items
function filterGallery(category) {
    let items = document.querySelectorAll('.gallery-item');
    items.forEach(item => {
        if (item.classList.contains(category)) {
            item.classList.remove('hidden');
        } else {
            item.classList.add('hidden');
        }
    });
}

//Toggle code for FAQS
document.addEventListener('DOMContentLoaded', () => {
    const faqItems = document.querySelectorAll('.faq-item');

    faqItems.forEach(item => {
        const question = item.querySelector('.question');
        const toggle = item.querySelector('.toggle');

        question.addEventListener('click', () => {
            // Toggle active state
            item.classList.toggle('active');

            // Rotate the toggle symbol
            if (item.classList.contains('active')) {
                toggle.style.transform = 'rotate(45deg)';
            } else {
                toggle.style.transform = 'rotate(0deg)';
            }
        });
    });
});


window.onload = function() {
    // Here, use your server-side check to see if a user is logged in
    <% if (Session["UserEmail"] != null) { %>
      // If logged in, hide login button and show user icon
      document.getElementById('loginButtonContainer').style.display = 'none';
      document.getElementById('userIconContainer').style.display = 'block';
    <% } else { %>
      // If not logged in, keep login button visible
      document.getElementById('loginButtonContainer').style.display = 'block';
      document.getElementById('userIconContainer').style.display = 'none';
    <% } %>
  };