//
//  HomeViewModel.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 04/05/25.
//

import Combine
import Foundation

class HomeViewModel: ObservableObject {
    
    var cancellables: Set<AnyCancellable> = []
    
    @Published var posts: [Post] = []
    
    private var currentPageForPostList = 1
    private var limitOfItemsPerPage = 2
    private var isTotalNumberOfPostsReached = false
    
    func fetchPostFeed() {
        NetworkRequestor.getFeedItems(page: currentPageForPostList, limit: limitOfItemsPerPage)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: handleCompletion, receiveValue: handleReceivedPosts)
            .store(in: &cancellables)
    }
    
    func fetchMorePostsIfNeeded(currentlyDisplayedPost: Post) {
        guard currentlyDisplayedPost == posts.last && !isTotalNumberOfPostsReached else { return }
        fetchPostFeed()
    }
}

extension HomeViewModel {
    private func handleReceivedPosts(_ postsResponse: PagedItem<Post>) {
        let isLastPage = postsResponse.pages < currentPageForPostList || postsResponse.data.isEmpty
        self.isTotalNumberOfPostsReached = postsResponse.next == nil
        
        self.posts.append(contentsOf: postsResponse.data)
        guard isLastPage == false else { return }
        self.currentPageForPostList += 1
    }
    
    private func handleCompletion(_ completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            posts = []
        }
    }
}
