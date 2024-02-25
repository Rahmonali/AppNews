//
//  NewsAppTests.swift
//  NewsAppTests
//
//  Created by Rahmonali on 25/02/24.
//

import XCTest
@testable import NewsApp

@MainActor
final class NewsAppTests: XCTestCase {
    
    func testInit() {
        let service = MockNewsService()
        let vm = NewsViewModel(service: service)
        
        XCTAssertNotNil(vm, "The view model should not be nil")
    }
    
    // status should be ok
    func testNewsStatus() async  throws{
        let news = try JSONDecoder().decode(News.self, from: mockNewsData)
        XCTAssertEqual(news.status, "ok")
    }

    func testSuccessfulArticlesFeth() async  {
        let service = MockNewsService()
        
        let vm = NewsViewModel(service: service)
        await vm.fetchArticleAsync()
        
        XCTAssertTrue(vm.articles.count > 0)  // Ensures that article array has article
        XCTAssertEqual(vm.articles.count, 20) // Ensures that all articles were decoded
    }
    
    func testThrowsInvalidDataError() async {
        let service = MockNewsService()
        service.mockError = NewsAPIError.InvalidData
        
        let vm = NewsViewModel(service: service)
        await vm.fetchArticleAsync()
        
        XCTAssertNotNil(vm.errorMessage)
        XCTAssertEqual(vm.errorMessage, NewsAPIError.InvalidData.customDescription)
    }
    
    func testThrowsInvalidStatusCode() async {
        let service = MockNewsService()
        service.mockError = NewsAPIError.invalidStatusCode(statusCode: 404)
        
        let vm = NewsViewModel(service: service)
        await vm.fetchArticleAsync()
        
        XCTAssertNotNil(vm.errorMessage)
        XCTAssertEqual(vm.errorMessage, NewsAPIError.invalidStatusCode(statusCode: 404).customDescription)
    }
}
