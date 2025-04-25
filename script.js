document.getElementById('saveBtn').addEventListener('click', () => {
  const destination = document.getElementById('destination').value;
  const startDate = document.getElementById('start_date').value;
  const returnDate = document.getElementById('return_date').value;
  const activities = document.getElementById('activities').value;

  // Check if all fields are filled
  if (!destination || !startDate || !returnDate || !activities) {
    alert('Please fill out all fields.');
    return;
  }

  // Display an alert with the details
  alert(`Your trip details have been saved!\n\nDestination: ${destination}\nStartDate: ${startDate}\nReturnDate: ${returnDate}\nActivities: ${activities}`);

  // Submit the form
  document.getElementById('tripForm').submit();  // This will submit the form to plan.php
});
