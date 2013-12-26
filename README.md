GCMTemplateProject
==================
[![Build Status](https://travis-ci.org/gamechanger/GCMTemplateProject.png)](https://travis-ci.org/gamechanger/GCMTemplateProject)

A template project for creating public GCM* projects

* Rename the project, targets, and folders
  * [How to duplicate a project](http://stackoverflow.com/questions/17744319/duplicate-and-rename-xcode-project-associated-folders)
  * Update script/template.podspec.erb.
    * Remember to update the description as CocoaPods will automatically tweet using this description.
    * If you'd like, update the social_media_url to https://twitter.com/your-twitter-handle if you'd like to get @-mentioned when CocoaPods announces the library release.
  * Regenerate GCMTemplateProject.podspec. `ruby script/generate-podspec.rb 0.1.0 > GCMTemplateProject.podspec`
  * Rename GCMTemplateProject.podspec to match the name of your new repository.
  * Update the Podfile to use the up-to-date project and target names.
  * Pick a gemset name (it should be unique) and update it in .ruby-gemset.
  * Change the names in the Rakefile
* Configure Travis CI 
  * [Register the project with Travis CI.](http://about.travis-ci.org/docs/user/getting-started/)
  * Configure hipchat notifications with our encrypted API key by following the instructions [here](http://about.travis-ci.org/docs/user/notifications/#HipChat-notification).
  * Update the build status image at the top of README.md (this file).
* Configure gcbot to handle pull requests
  * edit scripts/gc-github-global-watcher.coffee
  * create a github service hook that's pull request-aware: `curl -u <your github username> --data @script/webhook.json https://api.github.com/repos/gamechanger/<project name>/hooks`
