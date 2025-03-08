//
//  StoriesViewModel.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//
import Combine

final class StoriesViewModel: LoadableObject {
    
    @Published private(set) var state = LoadingState<[UserStory]>.idle
    var canLoadMore: Bool = true
    var isLoadingMore: Bool = false
    private var totalPages = 0
    private var currentPage = 1
    private var totalStories = [UserStory]()
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
            totalStories = result.stories
            state = .loaded(totalStories)
        }
        .store(in: &cancelables)

    }
    
    func loadMore() {
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
        isLoadingMore = false
        canLoadMore = true
        totalPages = result.totalPages
        totalStories.append(contentsOf: result.stories)
        state = .loaded(totalStories)
    }
}
