import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct SwiftXYZ: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case portfolio
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
//        Got this from site not sure about https://swiftunwrap.com/article/building-blog-swift-publish/
//        let path: Path
//        let tags: [Tag]
//        let description: String
//        let isDraft: Bool
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://swift.jerad.XYZ")!
    var name = "SwiftXYZ"
    var description = "A site build by Swift; for jerad"
    var language: Language { .english }
    var imagePath: Path? { "images/surfer-logo-sm.png" }
}

// This will generate your website using the built-in Foundation theme:
// Default way to generate website
try SwiftXYZ().publish(withTheme: .foundation)

// Trying custom site generation based on README
//try SwiftXYZ().publish(
//    withTheme: .foundation,
//    additionalSteps: [
//        // Add an item programmatically
////        Adds a post with this data without a source file
////        .addItem(Item(
////            path: "posts",
////            sectionID: .posts,
////            metadata: SwiftXYZ.ItemMetadata(),
//////            metadata: DeliciousRecipes.ItemMetadata(
//////                ingredients: ["Chocolate", "Coffee", "Flour"],
//////                preparationTime: 10 * 60
//////            ),
////            tags: ["blog", "posts"],
////            content: Content(
////                title: "Here are my posts"
////            )
////        )),
//        // Add default titles to all sections
//        .step(named: "Default section titles") { context in
//            context.mutateAllSections { section in
//                guard section.title.isEmpty else { return }
//
//                switch section.id {
//                case .posts:
//                    section.title = "Site Posts"
//                case .portfolio:
//                    section.title = "iOS Portfolio"
//                case .about:
//                    section.title = "About.."
//                }
//            }
//        }
//    ]
//)
