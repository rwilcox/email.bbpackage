import email, mimetypes, fileinput, os, tempfile, subprocess

message = email.message_from_file( open(os.environ["BB_DOC_PATH"]) )
for i, part in enumerate(message.walk()):

    if ( (part.get_content_maintype() == 'text') and ( part.get_content_subtype() == 'html' ) ):
    	os_f, abs_path = tempfile.mkstemp(suffix = ".html")
    	f = os.fdopen(os_f, 'w')
        f.write( part.get_payload(decode=True) )
        f.close()
        subprocess.call( ["/usr/bin/open", abs_path] )

