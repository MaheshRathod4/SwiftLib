func changeButtonOrImageColor<T>(uiColor:UIColor,imageName:String,type:T) -> T {
  let image:UIImage? = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)
  if let btn = type as? UIButton {
    btn.setImage(image, for: .normal)
    btn.tintColor = uiColor
    return btn as! T
  } else {
    let imageView = type as? UIImageView
    let tintableImage = closeImage?.withRenderingMode(.alwaysTemplate)
    imageView?.image = tintableImage
    imageView?.tintColor = uiColor
    return imageView as! T
  }
}

// UIButton Example
btnCall = changeButtonOrImageColor(uiColor:UIColor.red,imageName:"Call",type:btnCall)

// UIImageView Example
imgCall = changeButtonOrImageColor(uiColor:UIColor.systemBlue,imageName:"Call",type:imgCall)
