class UIScrollGallery < UIScrollView
  def initWithNumImages(num_images,frame: frame)
    scrollView = UIScrollGallery.alloc.init
    scrollView.frame = frame
    scrollView.pagingEnabled = true;
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * num_images, scrollView.frame.size.height);
    scrollView.showsHorizontalScrollIndicator = true
    scrollView.showsVerticalScrollIndicator = false
    scrollView.maximumZoomScale = 1.0
    scrollView.minimumZoomScale = 1.0
    scrollView.clipsToBounds = true
    scrollView.scrollsToTop = false
    scrollView
  end

  def add_images(images)
    size = frame.size
    images.each_with_index do |img, i|
      if img.is_a?(String)
        image = UIImageView.alloc.init
        image.setContentMode(UIViewContentModeScaleAspectFit)
        image.image = UIImage.imageNamed(img)
      elsif img.is_a?(UIImage)
        image = UIImageView.alloc.init
        image.image = img
      elsif img.is_a?(UIImageView)
        image = img
      end
      image.frame = [[size.width*i,0],size.to_a]
      self.addSubview(image) 
    end
  end


end
