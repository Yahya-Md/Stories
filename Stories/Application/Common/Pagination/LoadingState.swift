//
//  LoadingState.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//


enum LoadingState<Value> {
    case idle
    case loading
    case failed(Error?)
    case loaded(Value)
}
