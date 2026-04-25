<!DOCTYPE html>
<html>
<head>
    <title>Resume Builder</title>
    <style>
        body { font-family: Arial; }
        .resume { border: 1px solid black; padding: 10px; margin-top: 20px; }
    </style>
</head>
<body>

<h1>Create Resume</h1>

<form onsubmit="generateResume(event)">
    Name: <input type="text" id="name"><br><br>
    Email: <input type="email" id="email"><br><br>
    Skills: <textarea id="skills"></textarea><br><br>
    <button type="submit">Save</button>
</form>

<div id="output"></div>

<script>
function generateResume(event) {
    event.preventDefault(); // stop page reload

    let name = document.getElementById("name").value;
    let email = document.getElementById("email").value;
    let skills = document.getElementById("skills").value;

    let resumeHTML = `
        <div class="resume">
            <h2>${name}</h2>
            <p><b>Email:</b> ${email}</p>
            <p><b>Skills:</b> ${skills}</p>
        </div>
    `;

    document.getElementById("output").innerHTML = resumeHTML;
}
</script>

</body>
</html>
