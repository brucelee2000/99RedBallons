# 99RedBallons
Animating Views with Block Objects
---------------------------------
        // Add transition
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromBottom, animations: {
            self.balloonNumberLabel.text = "\(self.balloonArray[self.currentIndex].number) Balloons"
            self.myImageView.image = self.balloonArray[self.currentIndex].image
            }, completion: { (finished:Bool) -> () in })

**Creates a transition animation for the specified container view**

* This method applies a transition to the specified view so that you can make state changes to it. 
* The block you specify in the animations parameter contains whatever state changes you want to make. 
* You can use this block to add, remove, show, or hide subviews of the specified view.

*view*

The container view that performs the transition.

*duration*

The duration of the transition animation, measured in seconds. If you specify a negative value or 0, the transition is made without animations.

*options* 

A mask of options indicating how you want to perform the animations. For a list of valid constants, see UIViewAnimationOptions.

*animations* 

A block object that contains the changes you want to make to the specified view. This block takes no parameters and has no return value. This parameter must not be NULL.

*completion* 

A block object to be executed when the animation sequence ends. This block has no return value and takes a single Boolean argument that indicates whether or not the animations actually finished before the completion handler was called. If the duration of the animation is 0, this block is performed at the beginning of the next run loop cycle. This parameter may be NULL.
