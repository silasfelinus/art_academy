<h1>AI Art Manager</h1>
<h2>An interface to create, sculpt, and deploy AI artists</h2>

------
<h3>Vision:</h3> 
<p>An accessible gui to add, edit, and deploy 2d artist AI profiles. AI artists can be customizable with influences and preferred styles. Once deployed, artists will use AI tools to create art, either moderated by the human creator or deplayed autonymously. </p>

<p>AI artists will be given the opportunity to custom order prints of their art, as well as sell their art via print-on-demand services, with profits split between the creator and gallery.</p>



------
<h3>TASKS:</h3>
<ul>
<li>Testing Infrastructure/Outline (Python)</li>

<li>Load Artists from artists.ini into manager (Python)</li>

<li>Check for new artist(s) in import.ini and update if needed (Python)</li>

<li>Create random artist (Python)</li>

<li>Display Artist's profile pages on Cafe Purr (Javascript)</li>

<li>Cafe Purr Style Viewer (Javascript)</li>

<li>Cafe Purr Artist Viewer (Javascript)</li>

<li>Edit Artist details via WP (Javascript)</li>

<li>Create Prompt based on Artist Profile (Python)</li>

<li>Submit Prompt to Modelling App (Python)</li>

<li>Receive and process Modeling Art Results (Python)</li>

<li>Display Modeling Art Results for Creator response (Javascript)</li>

<li>Post new work to social media (Python)</li>

<li>Process and Update artist information with social media feedback (Python)</li>

<li>Display Cafe Purr Art Gallery (Javascript)</li>

<li>Link Print-on-Demand services (AKA: monetize the project)</li>

<li>Advertising/Spotlight Artists on Marketplace (Javascript)</li>

<li>Wordpress Plugin (Javascript)</li>

 <li>Link/Create NFT database (Python)</li>
</ul>

<h3>FILES/DIRECTORIES:</h3>
<table>
 <tr>
  <th>/backup:</th><th>Backups</th>
 </tr>
 <tr>
 <th>/images:</th><th>Images</th>
 </tr>
 <tr>
 <th>wordpress:</th><th>Symlink to the project's wordpress files</th>
 </tr>
 <tr>
 <th>aimanager.php:</th><th>Symlink to the wordpress plugin file</th>
 </tr>
 <tr>
 <th>talent.ini:</th><th>The collection of AI artist profiles</th>
 </tr>
 <tr>
 <th>README.md:</th><th>A brilliant readme file. Simply the best.</th>
 </tr>
 <tr>
 <th>/Lists</th><th>Raw Text lists separated by line</th>
 </tr>
 <tr>
 <th>animals.txt:</th><th>real animals</th>
 </tr>
 <tr>
 <th>artists.txt:</th><th>famous visual  artists </th>
 </tr>
 <tr>
 <th>beautiful.txt</th><th>imdb top 100 most beautiful celebrities</th>
 </tr>
 <tr>
 <th>legendary.txt:</th><th>imaginary creatures (from Wikipedia)</th>
 </tr>
 <tr>
 <th>locations.txt:</th><th>unsorted collection of real and imaginary places</th>
 </tr>
 <tr>
 <th>movies.txt:</th><th>unsorted and duplicated list of movies pulled from the 1000 top actors "movie known for" list</th>
 </tr>
 <tr>
 <th>mythical.txt:</th><th>mythical creatures from https://www.mythicalcreaturesguide.com/list-of-mythical-creatures/</th>
 </tr>
 <tr>
 <th>actors.txt:</th><th>Top 1000 famous actors and actresses according to some random person on IMDB</th>
 </tr>
 <tr>
 <th>styles.txt:</th><th>style modifiers, </th>
 </tr>
 <tr>
 <th>textdump.txt:</th><th>An unsorted list of prompts that I enjoyed, to be sorted into the other lists</th>
 </tr>
 <tr>
 <th>trending.txt:</th><th>websites for style trends (aka, trending on...)</th>
 </tr>
 <tr>
 <th>artists.xlsx</th><th>collection of Artists from the MJ Community (See Resources)</th>
 </tr>
 <tr>
 <th>styles.xlsx</th><th>collection of Styles from the MJ Community (See Resources)</th>
</tr>
 </table>


<h3>AI Artist Format</h3>

<table>
 <tr>
  <th>
   Name:</th><th>Personal Name of the AI
  </th>
 </tr>
  <tr>
<th>
Creator:</th><th>Username of the human manager/creator
  </th>
 </tr>
  <tr>
<th>
Username:</th><th>The AI's Username on social media
  </th>
 </tr>
  <tr>
<th>
Password:</th><th>password to use for AI'S social media accounts
  </th>
 </tr>
  <tr>
<th>
Birthday:</th><th>Date Created, in format MM/DD/XXXX (Sorry Europeans)
  </th>
 </tr>
  <tr>
<th>
Website:</th><th>Website URL
  </th>
 </tr>
  <tr>
<th>
Bio:</th><th>Flavor Bio, can be anything in text
  </th>
 </tr>
  <tr>
<th>
Influences:</th><th>Artistic Influences, separated by commas
  </th>
 </tr>
  <tr>
<th>
Styles:</th><th>Style Options, separated by commas
  </th>
 </tr>
  <tr>
<th>
Creativity:</th><th>(Options: High, Medium, Low) Determines how important to weigh influences
  </th>
 </tr>
  <tr>
<th>
Subjects:</th><th>prefered art subjects and generalized terms
  </th>
 </tr>
  <tr>
<th>
Colors:</th><th>favorite color(s)
  </th>
 </tr>
  <tr>
<th>
Crushes:</th><th>celebrity crushes to use as inspirations for art models
  </th>
 </tr>
  <tr>
<th>
Animals:</th><th>favorite animals
  </th>
 </tr>
  <tr>
<th>
Portrait:</th><th>Link to social media bio picture
  </th>
 </tr>
  <tr>
<th>
Friends:</th><th>Other AIs that could influence art and for cross-promotion
  </th>
 </tr>
  <tr>
<th>
Frequency:</th><th>How often does the artist create? Options: High, Medium, Low
  </th>
 </tr>
  <tr>
<th>
Tools:</th><th>Which generative tools does the artist use
  </th>
 </tr>
  <tr>
<th>
Socials:</th><th>[Social media accounts, separated by comma]
  </th>
 </tr>
  <tr>
<th>
Markets:</th><th>Artist marketplace accounts, separated by comma
  </th>
 </tr>
  <tr>
<th>
SFW:</th><th>SFW? (True/False), default: True
  </th>
 </tr>
</table>




<h3>Resources:</h3>
<ul>
<li>https://docs.google.com/spreadsheets/d/1e9QfrsYslKPC3CRRpBaMaGffsu46GggZOOO9lA-vrcg/edit#gid=504820139 #An incredible source for Styles</li>

<li>https://docs.google.com/spreadsheets/d/1e2MZ1K6WMTUuxlPAQ_2A0rz-H55NBykb66TY7DuerVg/edit#gid=471187713  #An incredible source for Artists</li>

<li>https://www.mythicalcreaturesguide.com/list-of-mythical-creatures/ for a list of mythical creatures</li>

<li>https://www.imdb.com/list/ls066164634/ IMDB 100 most beautiful people on the planet</li>

<li>https://www.imdb.com/list/ls058011111/  IMDB top 1000 actors and actresses</li>
</ul>


