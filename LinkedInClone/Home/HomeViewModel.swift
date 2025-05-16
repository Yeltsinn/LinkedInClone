//
//  HomeViewModel.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 04/05/25.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    func fetchPostFeed() {
        NetworkRequestor.getFeedItems()
            .map(\.feed)
            .receive(on: DispatchQueue.main)
            .sink(
                  receiveCompletion: { completion in
                      switch completion {
                      case .finished:
                          print("Finalizado com sucesso.")
                      case .failure(let error):
                          print("Erro ao buscar ou decodificar: \(error)")
                      }
                  },
                  receiveValue: { postFeed in
                      self.posts = postFeed
                  }
              )
            .store(in: &cancellables)
    }
}
