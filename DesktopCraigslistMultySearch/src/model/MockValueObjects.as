package model
{
	import flash.filesystem.File;

	/**
	 * This class shows: 
	 * 1. The structure of XML Data we are receiving from the Server Call 
	 * as Result Items
	 * We use in the Datagrids as DataProvider and save in Shared Object
	 * 2. The structure of Search XML.
	 * Instead of creating Search Object, we just use the XML.
	*/
	public class MockValueObjects
	{
		
		// this is to see the location of the Shared Object, not used in the Application
		var appStorageDir:File = new File(File.applicationStorageDirectory.nativePath);	
		
		// This is an example of the item we would receive from service call
		public resultItem:XML = 
			<item about="http://atlanta.craigslist.org/atl/cpg/4198353659.html">
			  <title><![CDATA[Looking For Experienced Web Designer (Atlanta, Ga)]]></title>
			  <link>http://atlanta.craigslist.org/atl/cpg/4198353659.html</link>
			  <description><![CDATA[I'm looking for someone to help me develop my site. This domain has already been purchased I just need help with designing a simple site. The site will function as a blog, and showcase events that I cover as well as other projects. Please email me so [...]]]></description>
			  <dc_date>2013-11-17T20:00:12-08:00</dc_date>
			  <dc_language>en-us</dc_language>
			  <dc_rights>&amp;copy; 2013 craigslist</dc_rights>
			  <dc_source>http://atlanta.craigslist.org/atl/cpg/4198353659.html</dc_source>
			  <dc_title><![CDATA[Looking For Experienced Web Designer (Atlanta, Ga)]]></dc_title>
			  <dc_type>text</dc_type>
			  <issued>2013-11-17T20:00:12-08:00</issued>
			</item>;
		
		// his is an example of the Search XML
		// Title max 25 digits, no special characters
		// Description max 300 digits
		// keywords used in search (may be can be used as a hint?
		// The first item selected as "yes" will be shown in the search results, everything else is "no"
		public search:XML = 
			<item>
			  <id>SoftwareProjectFlex&Java</id>
			  <title>Software Project Flex&Java</title>
			  <description>Looking for Software Project </description>
			  <keywords>java, project, software, flex<keywords>
			  <is_selected>yes</is_selected> 
			</item>;
	}
	
}