//
//  PPGetRecentAriclesSpec.swift
//  PPEventRegistryAPI
//
//  Created by Pavel Pantus on 7/15/16.
//  Copyright © 2016 Pavel Pantus. All rights reserved.
//

import Quick
import Nimble
@testable import PPEventRegistryAPI

class PPGetRecentArticlesSpec: QuickSpec {
    override func spec() {

        var getRecentArticles: PPGetRecentArticles?

        beforeEach {
            getRecentArticles = PPGetRecentArticles(completionHandler: nil)
        }

        afterEach {
            getRecentArticles = nil
        }

        it("subclass of PPAsyncOperation") {
            expect(getRecentArticles).to(beAKindOf(PPAsyncOperation.self))
        }

        it("configured with correct httpMethod") {
            expect(getRecentArticles!.httpMethod).to(equal("GET"))
        }

        it("configured with correct controller") {
            expect(getRecentArticles!.controller).to(equal("overview"))
        }

        it("configured with a completion") {
            expect(getRecentArticles!.completionHandler).notTo(beNil())
        }

        it("configured with correct parameters") {
            expect(getRecentArticles!.parameters).to(equal(["action": "getRecentActivity",
                                                            "addEvents": false,
                                                            "addActivity": false,
                                                            "addArticles": true,
                                                            "recentActivityArticlesMaxArticleCount": 5,
                                                            "recentActivityArticlesMaxMinsBack": 10 * 60,
                                                            "recentActivityArticlesMandatorySourceLocation": false,
                                                            "recentActivityArticlesLastActivityId": 0] as NSDictionary))
        }

    }
}