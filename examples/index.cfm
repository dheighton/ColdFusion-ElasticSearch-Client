<cfheader name="Expires" value="#GetHttpTimeString(Now())#">
<cfheader name="Pragma" value="no-cache">
<cfheader name="Cache-Control" value="no-cache, no-store, must-revalidate">
<cfoutput><!DOCTYPE html> 
<html>
	<head>
		<title>ElasticSearch CFML Client Example</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="robots" content="noindex">
		<meta name="author" content="">
		<meta name="description" content="">
	</head>

	<body>
		<div id="wrap">
			<h1>ElasticSearch CFML Client Example</h1>
			<div>
				<cfscript>
					config = [ { host="localhost", port="9200", path="", secure=false, username="", password="" } ];
					clusterManager = new lib.ClusterManager( config );
					// writeDump( var=clusterManager );
					es = new lib.ElasticSearchClient( clusterManager );
					// writeDump( var=es );
					// Example Get Request
    				getResponse = es.prepareGet( "bank","account","3" ).execute();
    				writeDump( var=getResponse );
				</cfscript>
			</div>
			
		</div>

		<div id="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						ElasticSearch CFML Client Example &bull; #application.appVersion# &bull; #dateFormat(now(),"DD.MM.YYYY")# #timeFormat(now(),"HH:mm:ss")# - &copy; 2014 - #year(now())# &bull; <a href="http://www.atginfotech.com" title="ATGInfotech" target="_blank">ATGInfotech</a>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
</cfoutput>