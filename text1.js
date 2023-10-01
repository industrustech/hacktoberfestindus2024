// Get the HTML element that contains the customer input.
const inputElement = document.getElementById('customer-input');

// Get the value of the HTML element.
const inputValue = inputElement.value;

// Validate the input value.
if (!/^[a-zA-Z]+$/.test(inputValue)) {
  // Display an error message to the customer.
  alert('The customer input must contain only letters.');

  // Prevent the customer from submitting the form.
  return false;
}

// Allow the customer to submit the form.
return true;