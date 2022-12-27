component {



	/**
	 * Constructor
	 */
	function init(){
		//Get the default CBFS instance using the default disk
		variables.fileService = getInstance("cbfs").defaultDisk();
	}

	/**
	* index
	*/
	function index( event, rc, prc ){
		event.setView( "Main/index" );
	}

	/**
	* upload
	*/
	function upload( event, rc, prc ){
		//save the uploaded file to the disk using the file service
		fileService.upload(
			fieldName = "mydoc",
			directory = "docs",
			fileName = rc.fileName,
			overwrite = true
		);
		return {"message": "File upload successful!"};
	}

	/**
	* List documents
	*/
	function list( event, rc, prc ){
		//Get a list of files stored in the docs directory. This may error if there are no files using S3.
		prc.docs = fileService.contents(directory="docs");
		prc.fileService = fileService;

		event.setView("main/list");
	}

	/**
	* Download a document
	*/
	function download( event, rc, prc ){
		//Serve a file to the browser
		fileService.download( rc.doc );
	}


}
