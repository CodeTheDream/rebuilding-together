#TODO for Rebuilding Together of The Triangle

The following documentation outlines functions of the application that have not
been implemented, executed, or are on backlog from the project team. 

*Admin Portal - Volunteer Repair Sign Up Management
The project team's goal was to include functionality where the administrator can 
view an index of volunteers and see which repairs they've signed up for. The 
application should also allow the administrator to connect volunteers with other
volunteers who have signed up to do repairs on the same home, as well as connect
the volunteers with the homeowner submitting repair requests. This will give the
administrator ability to view and approve repairs. 

With the current version of this application, when a user volunteers, the 
volunteer_repair record is pending until the administrator initiates this action.


* CRUD to Add Additional Administrators
It's expected that multiple staff from Rebuilding Together of The Triangle will
require administrator login credentials to manage volunteer and homeowner
profiles, in addition to volunteer requests to sign up for repairs. This will
also include ability for an administrator to assign the administrator role to 
staff profiles and user ids. 


* Notifications
The project team proposed to add a function to notify administrators when a new
volunteer or homeowner creates a profile, requests a repair or signs up for a 
repair. Notifications could be sent to the administrator via an email. 
Notification functionality may also be developed for volunteers and homeowners. 
For example, when an administrator approves the volunteer's sign-up for a repair,
there is an ability for the administrator to send a notification to the volunteer
approving their request. Likewise the ability to notify the homeowner that their
request for a repairs has been received and approved.


* Volunteer Profile Photo Saving to Cloud
The gemfile 'carrierwave' was utilized to allow the user to upload a file to the
server, in this case a profile photo. This only allows the saving of the file on
the local machine. In transitioning this application to production, a gemfile or 
or other resource that will allow the storing of files in the cloud will need to
be utilized. The project mentor Leila Alderman provided the following resource 
which may be helpful to others in developing the image uploading and storing
feature of the application, 
https://www.railstutorial.org/book/user_microposts#sec-image_upload_in_production.


* Images and Icons
Images and icons currently included in this application were obtained through 
a search of Google images. In transitioning this application to production 
it is recommended that images and icons used are royalty free or purchased for
use in styling this web application. 

* Inclusion of Additional Volunteer and Homeowner Application Data and Ability
* To Download Applications in PDF Files
The project team referenced Rebuilding Together for The Triangle current Volunteer
and Homeowner Applications in developing the initial application. Future project
teams may consider editing the current tables or adding new tables to collect 
other required information for volunteers and homeowners. The project may also 
consider identifying gems or other resources that will allow the administrator or
a user download and print a copy of their profile. 

In increasing accessibility for all homeowner to request repairs, a future project
team may want to include the ability for RTT staff to collect paper applications
from homeowners and manually create a profile for a homeowner as needed. 