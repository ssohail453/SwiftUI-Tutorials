//
//  CarouselView.swift
//  SwiftTut
//
//  Created by Syed Sohail on 23/12/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct CarouselItem: Identifiable, Equatable {
    let id = UUID()
    let imageURL: URL
    let aspectRatio: Double
    let deeplinkPath: String?

    static let sampleData: [CarouselItem] = [
        CarouselItem(imageURL: URL(string: "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/wrcb_banner_rent_mobile.png")!, aspectRatio: 1.675, deeplinkPath: "/listing?collectionType=CATEGORY_RENT&collection=bedroom-furniture-on-rent"),
        CarouselItem(imageURL: URL(string: "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/wrcb_banner_unlmtd_mobile_2.png")!, aspectRatio: 1.675, deeplinkPath: "/unlmtd"),
        CarouselItem(imageURL: URL(string: "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/appliances_banner_rent_mobile2.jpg")!, aspectRatio: 1.675, deeplinkPath: "/listing?collection=appliances-on-rent&collectionType=CATEGORY_RENT"),
        CarouselItem(imageURL: URL(string: "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/banner_genz_rep2025_mobile.jpg")!, aspectRatio: 1.675, deeplinkPath: "/listing?collection=gen-z-furniture-on-rent&collectionType=CATEGORY_RENT"),
        CarouselItem(imageURL: URL(string: "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/bedroom_banner_rent_mobile2.jpg")!, aspectRatio: 1.675, deeplinkPath: "/listing?collection=bedroom-furniture-on-rent&collectionType=CATEGORY_RENT"),
        CarouselItem(imageURL: URL(string: "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/living_banner_rent_mobile2.jpg")!, aspectRatio: 1.675, deeplinkPath: "/listing?collection=living-room-furniture-on-rent&collectionType=CATEGORY_RENT"),
    ]
}

struct CarouselView: View {
    let items: [CarouselItem]
    var onTap: (CarouselItem) -> Void


    @State private var selection: Int = 0

    init(items: [CarouselItem] = CarouselItem.sampleData, onTap: @escaping (CarouselItem) -> Void = { _ in }) {
        self.items = items
        self.onTap = onTap
    }

    var body: some View {
        VStack(spacing: 8) {
            TabView(selection: $selection) {
                ForEach(Array(items.enumerated()), id: \.offset) { index, item in
                    Button(action: { onTap(item) }) {
                        WebImage(url: item.imageURL)
                            .resizable()
                            .indicator(.activity)
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width / 4)
                            .clipped()
                            .contentShape(Rectangle())
                    }
                    .buttonStyle(.plain)
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            #if os(iOS)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            #endif
            .frame(height: 300)

            HStack(spacing: 6) {
                ForEach(items.indices, id: \.self) { i in
                    RoundedRectangle(cornerRadius: 2)
                        .fill(i == selection ? Color.primary.opacity(0.9) : Color.secondary.opacity(0.3))
                        .frame(width: 20, height: 4)
                        .animation(.easeInOut(duration: 0.2), value: selection)
                }
            }
            .padding(.top, 2)
        }
        .frame(maxWidth: .infinity)
        .background(Color.clear)
    }
}

#Preview("CarouselView Preview") {
    CarouselView()
}



//let carouselData[String: String] = [
//    {
//      "cta" : {
//        "action" : "click",
//        "data" : {
//          "type" : "Navigation",
//          "actionData" : {
//            "deeplinkPath" : "/listing?collectionType=CATEGORY_RENT&collection=bedroom-furniture-on-rent"
//          }
//        }
//      },
//      "data" : {
//        "image" : {
//          "aspectRatio" : 1.675,
//          "url" : "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/wrcb_banner_rent_mobile.png",
//          "resource" : {
//            "id" : 72,
//            "media_set_id" : 48,
//            "media_asset_id" : 34
//          }
//        },
//        "placeholderText" : "Rent"
//      },
//      "type" : "IMAGE_TILE"
//    },
//    {
//      "cta" : {
//        "action" : "click",
//        "data" : {
//          "type" : "Navigation",
//          "actionData" : {
//            "deeplinkPath" : "/unlmtd"
//          }
//        }
//      },
//      "data" : {
//        "image" : {
//          "aspectRatio" : 1.675,
//          "url" : "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/wrcb_banner_unlmtd_mobile_2.png",
//          "resource" : {
//            "id" : 72,
//            "media_set_id" : 48,
//            "media_asset_id" : 35
//          }
//        },
//        "placeholderText" : "Rent"
//      },
//      "type" : "IMAGE_TILE"
//    },
//    {
//      "cta" : {
//        "action" : "click",
//        "data" : {
//          "type" : "Navigation",
//          "actionData" : {
//            "deeplinkPath" : "/listing?collection=appliances-on-rent&collectionType=CATEGORY_RENT"
//          }
//        }
//      },
//      "data" : {
//        "image" : {
//          "aspectRatio" : 1.675,
//          "url" : "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/appliances_banner_rent_mobile2.jpg",
//          "resource" : {
//            "id" : 72,
//            "media_set_id" : 48,
//            "media_asset_id" : 36
//          }
//        },
//        "placeholderText" : "Rent"
//      },
//      "type" : "IMAGE_TILE"
//    },
//    {
//      "cta" : {
//        "action" : "click",
//        "data" : {
//          "type" : "Navigation",
//          "actionData" : {
//            "deeplinkPath" : "/listing?collection=gen-z-furniture-on-rent&collectionType=CATEGORY_RENT"
//          }
//        }
//      },
//      "data" : {
//        "image" : {
//          "aspectRatio" : 1.675,
//          "url" : "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/banner_genz_rep2025_mobile.jpg",
//          "resource" : {
//            "id" : 72,
//            "media_set_id" : 48,
//            "media_asset_id" : 37
//          }
//        },
//        "placeholderText" : "Rent"
//      },
//      "type" : "IMAGE_TILE"
//    },
//    {
//      "cta" : {
//        "action" : "click",
//        "data" : {
//          "type" : "Navigation",
//          "actionData" : {
//            "deeplinkPath" : "/listing?collection=bedroom-furniture-on-rent&collectionType=CATEGORY_RENT"
//          }
//        }
//      },
//      "data" : {
//        "image" : {
//          "aspectRatio" : 1.675,
//          "url" : "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/bedroom_banner_rent_mobile2.jpg",
//          "resource" : {
//            "id" : 72,
//            "media_set_id" : 48,
//            "media_asset_id" : 38
//          }
//        },
//        "placeholderText" : "Rent"
//      },
//      "type" : "IMAGE_TILE"
//    },
//    {
//      "cta" : {
//        "action" : "click",
//        "data" : {
//          "type" : "Navigation",
//          "actionData" : {
//            "deeplinkPath" : "/listing?collection=living-room-furniture-on-rent&collectionType=CATEGORY_RENT"
//          }
//        }
//      },
//      "data" : {
//        "image" : {
//          "aspectRatio" : 1.675,
//          "url" : "https://assets.furlenco.com/s3-furlenco-images/evolve_2_0/living_banner_rent_mobile2.jpg",
//          "resource" : {
//            "id" : 72,
//            "media_set_id" : 48,
//            "media_asset_id" : 39
//          }
//        },
//        "placeholderText" : "Rent"
//      },
//      "type" : "IMAGE_TILE"
//    }
//  ]

