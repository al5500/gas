# Project 2: GA Student Blog ('GAS')

[GAS on Heroku](https://gas-ga.herokuapp.com)

### Product Overview
GAS is a site created with the intention of providing an easy, code-friendly blogging platform for GA students; linking their classmates and alumni in one blog to view each person's progress and experience throughout the course. 

Admins (Teachers and Course Producer) are given the power to add new students to existing and new classes as well as create future classes. 

Users, when signing up, can provide their Github, Slack and LinkedIn usernames to display the appropriate information from each social medium via their APIs. 

####Why 'GAS'?

'GAS' = 'General Assembly Students'. It's snappy. 

A: “Oi, what’s your GitHub account, dude?”

B: “Mate, why do you keep asking people that? It’s on GAS. Look it up”


###Who is it for?

**Phase 1:** GA Sydney WDI students, alumni, instructors, course producers and outcomes producers (intake WDI-10 onwards);

**Phase 2:** GA Sydney students, alumni, instructors, course producers and outcomes producers (WDI, FEWD, BEWD, UXDI);

**Phase 3:** GA Global students, alumni, instructors, course producers and outcomes producers.

###What problem does it address?

**Problem 1**: Everyone’s encouraged to start a blog at the beginning of the course, and most people intend to, but few people actually do, and those who don’t generally regret it. This removes a few barriers to students starting their blogs, such as: “what format should my blog take?”, “what site should I use?”. It will also allow users to see what their fellow students (and past alumni) have written about, giving them inspiration and motivation to post. 

**Problem 2**: Students don’t have a central location to find out their classmates’ professional/social accounts. GitHub, Twitter, LinkedIn and Facebook account details. User profiles will give students access to all their classmates’ social/professional profiles/sites.

**Problem 3**: Current students don’t necessarily know what to expect from the course or what to expect once they finish the course. The blog will allow students to see what alumni have done since finishing the course, and allow alumni to see what current students are up to.

### Group
- Chris Barnaby;
- Josh Bonador;
- Alan Wright.

### Framework
####Tools and languages
- Ruby on Rails (4.2.1)
- Javascript (vanilla + jQuery)
- HTML
- CSS
- Ruby

####APIs
- Slack
- Github

####Gems
- Cloudinary (post attachment hosting)
- HTTParty (temporary Slack API integration method)
- Wysihtml5 (rich text editor)
- Gon 
- Bcrypt (authentication)
- HighlightJS (blog post syntax highlighting)
- Bootstrap (CSS - buttons, search bar, nav dropdown)
- Font Awesome (third party icons)

####Heroku plugins
- SendGrid (mailer)

###Models

- Locations *(phase 2)*): 
  - Has many streams
  - Has many groups through streams
- Streams *(phase 2)*:
  - Belongs to location
  - Has many groups 
  - Has many users through groups
- Groups:
  - Belongs to stream *(phase 2)*
  - Has many users
  - Has many posts through users
  - Has many quotes
- Users:
  - Belongs to group
  - Has many posts
  - Has many comments through posts
- Posts:
  - Belongs to user
  - Has many comments
- Comments:
  - Belongs to user
- Quotes:
  - Belongs to group 

### Sprint 2 (for Meet & Greet)


- *ALFIE -* Twitter API integration (get handle, followers, following, avatar).
~~ - *ALFIE -* Quotes - currently displaying quotes from ALL classes (not just current class). ~~ 
~~ - *ALFIE -* All pages - avatars should be clickable links (eg on class index, to class; on class view, to user profile). ~~   
- *ALFIE -* Backbone implementation of quotes feature (to allow 'get another quote' without page reload).
~~ - *ALFIE -* Admin / routes - restict non-admin permissions (eg quotes index and show views, etc). ~~ 
- *ALFIE -* Additional mailers:
  - Welcome email for new users.

~~ - *BADGER -* Improved code-snippet entry functionality on posts. ~~ 
~~  - *BADGER -* Profile page styling. ~~ 
- *BADGER -* Informative root page content (what is GAS, who is it for, etc).
- *BADGER -* Tag cloud & canned search.

- *J-BON -* Selective use of GA fonts (eg, nav bar only?)
- *J-BON -* Footer. 
- *J-BON -* 'Last active' logic on user profile should use session date/time. Not working?
- *J-BON -* Slack API integration - AJAX (get username, avatar, teams(?), online status, slackbot DM).

### Backlog

- Informative error messaging (w/ 'report' link to issues page in github repo)
- New user - admin only?
- Search bar and button styling (mobile-friendly - break to display:block).
- Implementation of locations and streams models (and change root).
- Responsive design.
- Improved visual design and styling.



