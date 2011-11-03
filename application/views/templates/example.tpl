[~include file="header.tpl" title="Example Smarty Page" name="$Name"~]

<h1>
[~if $bold~]<b>[~/if~]
[~* capitalize the first letters of each word of the title *~]
Title: [~$title|capitalize~]
[~if $bold~]</b>[~/if~]
</h1>

[~if $error != ''~]<p class="error">[~$error~]</p>[~/if~]
[~if $message != ''~]<p class="message">[~$message~]</p>[~/if~]

[~ci_config name="base_url"~]
<p>The configuration value of base_url is <em>[~$base_url~]</em></p>

<p>The current date and time is <em>[~$smarty.now|date_format:"%Y-%m-%d %H:%M:%S"~]</em></p>

<p>The value of global assigned variable $SCRIPT_NAME is <em>[~$SCRIPT_NAME~]</em></p>

<p>The value of server environment variable SERVER_NAME is <em>[~$smarty.server.SERVER_NAME~]</em></p>

<p>The value of your IP address is: <em>[~$ip_address~]</em></p>

<p>The value of [~ldelim~]$Name[~rdelim~] is <em>[~$Name~]</em></p>

<p>The value of [~ldelim~]$Name|upper[~rdelim~] is <em>[~$Name|upper~]</em></p>

<h2>An example of a section loop:</h2>
<ul>
[~section name=outer loop=$FirstName~]
[~if $smarty.section.outer.index is odd by 2~]
	<li>[~$smarty.section.outer.rownum~] . [~$FirstName[outer]~] [~$LastName[outer]~]</li>
[~else~]
	<li>[~$smarty.section.outer.rownum~] * [~$FirstName[outer]~] [~$LastName[outer]~]</li>
[~/if~]
[~sectionelse~]
	<li>none</li>
[~/section~]
</ul>

<h2>An example of section looped key values:</h2>
[~section name=sec1 loop=$contacts~]</li>
<ul>
	<li>phone: [~$contacts[sec1].phone~]</li>
	<li>fax: [~$contacts[sec1].fax~]</li>
	<li>cell: [~$contacts[sec1].cell~]</li>
</ul>
[~/section~]

<h2>An example testing strip tags:</h2>
[~strip~]
<table border=0>
	<tr>
		<td>
			<a HREF="[~$SCRIPT_NAME~]">
			<font color="red">This is a  test     </font>
			</a>
		</td>
	</tr>
</table>
[~/strip~]


<h2>An example of the html_select_date function:</h2>

<form>
[~html_select_date start_year=1998 end_year=2010~]
</form>

<h2>An example of the html_select_time function:</h2>

<form>
[~html_select_time use_24_hours=false~]
</form>

<h2>An example using form_validation:</h2>

[~* the following line loads system/languages/$lang/label_lang.php *~]
[~ci_language file="label" lang="$lang"~]
<form action="#" method="post">
<fieldset>
	<label for="username">[~ci_language line="username"~]:</label>
	<input type="text" name="username" id="username" value="[~ci_form_validation field='username'~]" /><br />
	[~ci_form_validation field='username' error='true'~]

	<label for="password">[~ci_language line="password"~]:</label>
[~*
   Note: Can't use ci_form_validation to set the value for password
         because it is encrypted during validation.
*~]
	<input type="password" name="password" id="password" value="" /><br />
	[~ci_form_validation field='password' error='true'~]

	<label for="passconf">[~ci_language line="passconf"~]:</label>
	<input type="password" name="passconf" id="passconf" value="" /><br />
	[~ci_form_validation field='passconf' error='true'~]

	<label for="email">[~ci_language line="email"~]:</label>
	<input type="text" name="email" id="email" value="[~ci_form_validation field='email'~]" /><br />
	[~ci_form_validation field='email' error='true'~]

	[~ci_form_validation field='state' assign='selected_state'~]
	<label for="state">[~ci_language line="state"~]:</label>
	<select name='state'>
	[~html_options values="$state_values" output="$state_output" selected="$selected_state"~]
	</select><br />
	[~ci_form_validation field='states' error='true'~]

	<input type="submit" name="action" value="submit" />
</form>

[~include file="footer.tpl"~]
