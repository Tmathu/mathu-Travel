document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("signup-form");
    

    form.addEventListener("submit", (event) => {
        event.preventDefault();

        const username = document.getElementById("username").value.trim();
        const email=document.getElementById("email").value.trim();
        const password = document.getElementById("password").value.trim();
        const confirm_assword = document.getElementById("confirm_password").value.trim();

        if (!username) {
            alert("Username cannot be empty.");
            return;
        }

        if (password.length < 8) {
            alert("Password must be at least 8 characters long.");
            return;
        }

        if (!/[A-Z]/.test(password)) {
            alert("Password must contain at least one uppercase letter.");
            return;
        }

        if (!/[0-9]/.test(password)) {
            alert("Password must contain at least one number.");
            return;
        }

        if (password !== confirm_assword) {
            alert("Passwords do not match.");
            return;
        }

        alert("Sign-up successful!");
        form.reset(); 
    });
});
