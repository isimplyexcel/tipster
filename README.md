# *Tipster*

**Tipster** is a tip calculator application for iOS.

Submitted by: **Paul**

Time spent: **7** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Add a reset button to set quickly set all values back to 0.
- [x] Implement split tip option using stepper
- [x] Add a app icon image

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='/tipster.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

- I ran into an issue where my app displayed a blank black screen because something went wrong with the navigation controller. I was able to resolve this issue by googling the error message that appeared in the console. It turned out that my navigation controller was not set to be the initial view controller.

- Finding the stepper component was a little difficult because I did not know what that component was called. Once again, googling and stackoverflow helped me find the right name for incrementing and decrementing party size. 

## License

    Copyright [2019] [isimplyexcel]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
