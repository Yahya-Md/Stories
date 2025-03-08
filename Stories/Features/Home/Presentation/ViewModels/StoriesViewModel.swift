//
//  StoriesViewModel.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//
import Combine

final class StoriesViewModel: LoadableObject {
    
    @Published private(set) var state = LoadingState<[Stories]>.idle
    var canLoadMore: Bool = false
    var isLoadingMore: Bool = false
    private var totalPages = 0
    private var currentPage = 0
    private var totalStories = [Stories]()
    private var cancelables = Set<AnyCancellable>()
    private let useCase: GetStoriesUseCase
    
    init(useCase: GetStoriesUseCase) {
        self.useCase = useCase
    }
    
    func load() {
        state = .loading
        useCase.execute(currentPage: currentPage).sink { [weak self] completion in
            guard let self else { return }
            handleCompletion(completion)
        } receiveValue: { [weak self] result in
            guard let self else { return }
            totalPages = result.totalPages
            totalStories = [result]
            state = .loaded(totalStories)
        }
        .store(in: &cancelables)

    }
    
    func loadMore() {
        canLoadMore = currentPage < totalPages
        guard !isLoadingMore && canLoadMore else { return }
        isLoadingMore = true
        useCase.execute(currentPage: currentPage + 1).sink { [weak self] completion in
            guard let self else { return }
            handleCompletion(completion)
        } receiveValue: { [weak self] result in
            guard let self else { return }
            handleReceiveValue(result)
        }
        .store(in: &cancelables)
    }

    private func handleCompletion(_ completion: Subscribers.Completion<Error>) {
        switch completion {
        case .failure(let error):
            state = .failed(error)
        case .finished:
            break
        }
    }
    
    private func handleReceiveValue(_ result: Stories) {
        totalPages = result.totalPages
        totalStories.append(result)
        state = .loaded(totalStories)
    }
}
