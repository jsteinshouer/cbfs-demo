<h3>Upload Document</h3>
<form id="formElem">
	<input type="file"
		id="mydoc" name="mydoc"
		accept="application/pdf">
	<br />
	<br />
	<input type="submit" value="Upload" />
</form>

<script>
  formElem.onsubmit = function(e) {
    e.preventDefault();
	//Get the file input to upload file to the server
	const fileInput = document.querySelector('#mydoc');
	const myFile = fileInput.files[0];
	// Use https://developer.mozilla.org/en-US/docs/Web/API/FormData to submit the form async
	let myFormData = new FormData(formElem);
	myFormData.append("fileName", myFile.name );
	myFormData.append("fileSize", myFile.size );

	//Use https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API to send the request
	fetch('/main/upload', {
      method: 'POST',
      body: myFormData
    })
	.then((response) => response.json())
  	.then((data) => alert(data.message))
	.catch((error) => console.log(error))

  };
</script>