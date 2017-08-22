


//
//  RSSFeed.swift
//  AlamofireRSSParser
//
//  Created by Donald Angelillo on 3/1/16.
//  Copyright © 2016 Donald Angelillo. All rights reserved.
//

import Foundation

/**
    RSS gets deserialized into an instance of `RSSFeed`.  Top-level RSS elements are housed here.
    
    Item-level elements are deserialized into `RSSItem` objects and stored in the `items` property.
*/
open class RSSFeed: CustomStringConvertible {
    open var title: String? = nil
    open var link: String? = nil
    open var feedDescription: String? = nil
    open var pubDate: Date? = nil
    open var lastBuildDate: Date? = nil
    open var language: String? = nil
    open var copyright: String? = nil
    open var managingEditor: String? = nil
    open var webMaster: String? = nil
    open var generator: String? = nil
    open var docs: String? = nil
    open var ttl: NSNumber? = nil
    
    open var items: [RSSItem] = Array()
    
    open var description: String {
        return "title: \(String(describing: self.title))\nfeedDescription: \(String(describing: self.feedDescription))\nlink: \(String(describing: self.link))\npubDate: \(String(describing: self.pubDate))\nlastBuildDate: \(String(describing: self.lastBuildDate))\nlanguage: \(String(describing: self.language))\ncopyright: \(String(describing: self.copyright))\nmanagingEditor: \(String(describing: self.managingEditor))\nwebMaster: \(String(describing: self.webMaster))\ngenerator: \(String(describing: self.generator))\ndocs: \(String(describing: self.docs))\nttl: \(String(describing: self.ttl))\nitems: \n\(self.items)"
    }
    
}
