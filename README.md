#CrossFadingText

This library is a cocoapod and framework that allows text elements such as labels, buttons, and text fields to cross-fade when their contents are changed.

##How it Works

This library adds a transition animation just before changing text.

##Installation

###CocoaPods

Add the following to your Podfile:

```
pod CrossFadingText, '~> 0.2'
```

###Manual Installation

 * Add this repository as a submodule.
 * Add this project as a subproject.
 * In Build Settings, add CrossFadingText in 'Target dependency'.
 * Add the resulting framework in 'Link Binary With Libraries'.

##Usage

###1. UILabel, UITextField, UITextView

Extend CrossFadingLabel/TextField/TextView or set it under 'Custom Class' in a storyboard. There is a duration property, which defaults to 0.25, and the property can be set directly from the storyboard. Any normal UILabel can be animated by calling the category method `setText:withDuration:`.

###1. UIButton

Extend CrossFadingButton or set it under 'Custom Class' in a storyboard. There is a duration property, which defaults to 0.25, and the property can be set directly from the storyboard. Any normal UIButton can be animated by calling the category method `setTitle:forState:withDuration:`.


