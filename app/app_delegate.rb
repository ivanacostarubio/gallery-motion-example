class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @controller = GalleryViewController.alloc.init
    @navigation_bar = UINavigationController.alloc.initWithRootViewController(@controller)
    @window.rootViewController = @navigation_bar
    @window.makeKeyAndVisible
    UIApplication.sharedApplication.statusBarHidden = true
    true
  end
end

