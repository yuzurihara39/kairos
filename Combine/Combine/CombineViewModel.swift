//
//  CombineViewModel.swift
//  Combine
//
//  Created by cmStudent on 2022/07/11.
//

import Foundation
import Combine

final class ContentViewModel: ObservableObject {
    @Published var count = 0
    @Published var isTimerRunning = false
    
    private var cancellable: AnyCancellable?
    
    func startCounting() {
        isTimerRunning = true
        cancellable = Timer.publish(every: 1.0, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                self.count += 1
                            }
                    }
                    
                    func stopCounting() {
                        isTimerRunning = false
                        cancellable?.cancel()
                    }
                    
                    func resetCount() {
                        count = 0
                    }
                    }
