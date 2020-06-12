import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct IcescoGithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://icesco.github.io")!
    var name = "iCesco's Blog"
    var description = "A description of IcescoGithubIo"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

private extension Node where Context == HTML.BodyContext {
    
    static func wrapper(_ nodes: Node...) -> Node {
        .div(.class("wrapper"), .group(nodes))
    }
    
    static func itemList<T: Website>(for items: [Item<T>], on site: T) -> Node {
        return .ul(
            .class("item-list"),
            .forEach(items) { item in
                .li(
                    .article(
                        .h1(.a(
                            .href(item.path),
                            .text(item.title)
                            )),
                        .p(.text(item.description))
                    )
                )
            }
        )
    }
}

struct MyHTMLFactory<Site: Website>: HTMLFactory {
    
    typealias Site = IcescoGithubIo
    
    
    func makeIndexHTML(for index: Index, context: PublishingContext<IcescoGithubIo>) throws -> HTML {
        HTML(
            .head(for: index, on: context.site),
            .body(
                .header(
                    .wrapper(
                        .nav(
                            .class("site-name"),
                            .text(context.site.name)
                        )
                    )
                ),// HEADER
                
                .wrapper(
                    
                )
            )
        )
    }
    
    func makeSectionHTML(for section: Section<IcescoGithubIo>, context: PublishingContext<IcescoGithubIo>) throws -> HTML {
        HTML(
            .head(for: section, on: context.site)
        )
    }
    
    func makeItemHTML(for item: Item<IcescoGithubIo>, context: PublishingContext<IcescoGithubIo>) throws -> HTML {
        HTML(
            .head(for: item, on: context.site)
        )
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<IcescoGithubIo>) throws -> HTML {
        try makeIndexHTML(for: context.index, context: context)
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<IcescoGithubIo>) throws -> HTML? {
        nil
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<IcescoGithubIo>) throws -> HTML? {
        nil
    }
}

extension Theme where Site == IcescoGithubIo {
    
    static var myCustomTheme: Theme {
      
        Theme(htmlFactory: MyHTMLFactory<IcescoGithubIo>(),
        resourcePaths: Set<Path>())
    
    }
}

// This will generate your website using the built-in Foundation theme:
try IcescoGithubIo().publish(withTheme: .myCustomTheme)
