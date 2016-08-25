$wc = new-object System.Net.WebClient
cd driveletter:\path
ls *.torrent | foreach { 
    $wc.UploadFile( 'https://upload.put.io/v2/files/upload?oauth_token=xxxxxxxx', $_.FullName )
}
del *.torrent

