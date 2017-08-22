
//
//  RSSItem.swift
//  AlamofireRSSParser
//
//  Created by Donald Angelillo on 3/1/16.
//  Copyright © 2016 Donald Angelillo. All rights reserved.
//

import Foundation

/**
    Item-level elements are deserialized into `RSSItem` objects and stored in the `items` array of an `RSSFeed` instance
*/
open class RSSItem: CustomStringConvertible {
    open var title: String? = nil
    open var link: String? = nil
    
    /**
        Upon setting this property the `itemDescription` will be scanned for HTML and all image urls will be extracted and stored in `imagesFromDescription`
     */
    open var itemDescription: String? = nil {
        didSet {
            if let itemDescription = self.itemDescription {
                self.imagesFromDescription = self.imagesFromHTMLString(itemDescription)
            }
        }
    }
    
    /**
     Upon setting this property the `content` will be scanned for HTML and all image urls will be extracted and stored in `imagesFromContent`
     */
    open var content: String? = nil {
        didSet {
            if let content = self.content {
                self.imagesFromContent = self.imagesFromHTMLString(content)
            }
        }
    }
    
    open var guid: String? = nil
    open var author: String? = nil
    open var comments: String? = nil
    open var source: String? = nil
    open var pubDate: Date? = nil
    open var mediaThumbnail: String? = nil;
    open var mediaContent: String? = nil
    open var imagesFromDescription: [String]? = nil
    open var imagesFromContent: [String]? = nil
    open var enclosures: [[String: String]]? = nil
    
    open var description: String {
        return "\ttitle: \(String(describing: self.title))\n\tlink: \(String(describing: self.link))\n\titemDescription: \(String(describing: self.itemDescription))\n\tguid: \(String(describing: self.guid))\n\tauthor: \(String(describing: self.author))\n\tcomments: \(String(describing: self.comments))\n\tsource: \(String(describing: self.source))\n\tpubDate: \(String(describing: self.pubDate))\n\tmediaThumbnail: \(String(describing: self.mediaThumbnail))\n\tmediaContent: \(String(describing: self.mediaContent))\n\timagesFromDescription: \(String(describing: self.imagesFromDescription))\n\timagesFromContent: \(String(describing: self.imagesFromContent))\n\tenclosures: \(String(describing: self.enclosures))\n\n"
    }
    
    
    /**
        Retrieves all the images (\<img\> tags) from a given String contaning HTML using a regex.
        
        - Parameter htmlString: A String containing HTML
     
        - Returns: an array of image url Strings ([String])
     */
    fileprivate func imagesFromHTMLString(_ htmlString: String) -> [String] {
        let htmlNSString = htmlString as NSString;
        var images: [String] = Array();
        
        do {
            let regex = try NSRegularExpression(pattern: "(https?)\\S*(png|jpg|jpeg|gif)", options: [NSRegularExpression.Options.caseInsensitive])
        
            regex.enumerateMatches(in: htmlString, options: [NSRegularExpression.MatchingOptions.reportProgress], range: NSMakeRange(0, htmlString.characters.count)) { (result, flags, stop) -> Void in
                if let range = result?.range {
                    images.append(htmlNSString.substring(with: range))  //because Swift ranges are still completely ridiculous
                }
            }
        }
        
        catch {
            
        }
        
        return images;
    }
}
