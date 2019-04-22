# README for Rebuilding Together of The Triangle


* Rebuilding Together of The Triangle

The purpose of this application is to expand functionality of the Rebuilding
website located at https://www.rttriangle.org/ to connect volunteers with repair
jobs (like painting, or repairing a roof) as requested by homeowners.


* Project Team
Code the Dream Interns: Kwasi Yeboah, Narayan Rai, Tilneil Gary
Mentors: John McGarvey, Leila Alderman
Administrator: Ramiro Rodriguez


* Timeline
March 13, 2019 - April 22, 2019


* Ruby version
ruby-2.4.0


* System dependencies
The following gem files were added to the default gem file installed by Rails: 
gem 'bootstrap', '~> 4.3.1'
gem 'carrierwave', '~> 0.11.2'
gem 'devise', '~> 4.6.2'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'pundit', '~> 2.0.1'
gem 'rubocop', '~> 0.67.2', require: false


* Database creation
Lucidchart was utilized to outline database tables and their relationships. This
can be accessed at https://www.lucidchart.com/documents/edit/df40cd3e-20f9-45c8-a3e5-40f109063b34/0. 
The tables that are greyed out were not added to this application; however, this 
does include information that was included on the RTT's volunteer and homeowner
application forms. A future project team may consider including this information
in future releases. This application includes the following tables:
- Users,
- Volunteers, 
- Homeowners, 
- Repairs, and
- a join table, for Volunteer who sign up for Repairs.


* Getting Started

The project team utilized github for version control and created forks of this
repository and merge changes into the master. The repository for this application
is available on github at https://github.com/CodeTheDream/rebuilding-together.git.
The following are instructions to access this application: 
1. Create a new workspace in cloud 9. Select a "blank" template option. 
2. Open the workspace, then open the directory by typing '$ cd directory-name'
   in the command line.
3. In command line copy the repository to your local machine by typing '$ git clone
   https://github.com/CodeTheDream/rebuilding-together.git'. 
4. Create a new local branch using `git checkout -b <feature-branch>`.
5. Work on your feature, adding commits to your feature branch.
    a. Install Ruby on Rails, '$ gem install rails'. 
    b. Install Ruby Gems, '$ bundle install'.
    c. Run migrations, '$ rails db:migrate'.
    d. Run server, '$ rails s -b $IP.
6. After you've finished your feature, make sure all of your work has been 
   committed.
7. Use `git checkout master` to move back to your local master branch.
8. Use `git pull upstream master` to pull down the latest changes from your
   teammates.
9. Use `git checkout <feature-branch>` to move back to your feature branch.
10. Run `git merge master` to pull those updates into your feature branch. 
    Resolve any merge conflicts.
11. Push your changes to your forked project repository using
   `git push origin <feature-branch>`.
12. Go to GitHub and create a pull request by clicking on the button that should
    appear at the top of the repository (either the original or your forked
    repository).
13. Add a descriptive pull request statement and add your reviewers.
14. If you need to make changes after the code review, be sure that you make
    those changes on your local feature branch and commit.
15. To update your pull request, simply `git push origin <feature-branch`.
16. Once it's accepted, your branch will get merged into the master branch of
    the upstream repository.
17. Now it's time to pull in your own changes! Use `git checkout master` 
    followed by `git pull upstream master` to pull in your changes. You can also
    Do a `git push origin master` at this point.  This will keep your fork's 
    master copy in sync. Check that your changes are reflected in the master 
    branch before deleting the feature branch, just to be sure that no work is 
    lost.
18. Now that you're finished with it, delete your local branch using
    `git branch -d <feature-branch>`.
19. Time for a new feature branch!


* How The Application Works

Home Page
Upon running the rails server you will be redirected to the root or home page.
This page includes a navigation bar that will direct the user to the Rebuilding 
Together of The Triangle home page, volunteer portal or homeowner portal. 
Additionally the user can sign-up for an account or login using devise. The user
interface for volunteers and homeowners is designed to require the user to sign-up
or log-in.

The user has an option to create a profile as a volunteer, homeowner or both.

Volunteer Portal
The volunteers profile allows the user the ability to upload a profile photo, enter
personal information, select their availability and enter notes about their 
volunteer skills and interests. If a profile photo is not added, a default avatar
placeholder is displayed. The volunteer portal navigation bar allows the user to
return to the root page, sign up for a repair; in addition to view, edit and
delete their profile, and sign-out. On the sign-up for repair page, repairs only
show if a homeowner has requested repairs. The volunteer user can view available 
repairs, sign-up for a repair or remove them from their profile. 

Homeowner Portal
The homeowners profile allows the user to enter their personal information, how 
they learned about Rebuilding Together of the Triangle and emergency contact 
information. The homeowner navigation bar allows the user to return to the home 
or root page, view their profile, request a repair, edit or delete their profile
and sign-out. Under the "Request A Repair" tab, the user can view repairs they've
submitted or create a new repair. Repairs that have been created will be displayed
and given an option for the user to edit or delete the repair. 

Admin Portal
The application has been designed to allow the Administrators and only the 
administrators the ability to view all volunteer and homeowner profiles. Only the
administrator has access to the index methods for volunteers, owners and repairs. 


<!--* Database initialization-->

<!--* How to run the test suite-->

<!--* Services (job queues, cache servers, search engines, etc.)-->

<!--* Deployment instructions-->

