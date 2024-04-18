function getBackend() {
    const url = 'http://54.235.50.15:5000/';
    fetch(url)
    .then(response => response.text()) // Parse the response as text
    .then(text => {
        console.log(text);
        document.getElementById("frontend").innerHTML = text; // Set inner HTML with response text
    })
    .catch(error => {
        console.error('There was a problem with the fetch operation:', error);
    });
}
