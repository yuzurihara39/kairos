//
//  ContentView.swift
//  Combine
//
//  Created by cmStudent on 2022/07/11.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel: NoCombineViewModel
    
    init(viewModel: NoCombineViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text("\(viewModel.count)")
                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                            
                            Button("Start") {
                                viewModel.startCounting()
                            }
                            .disabled(viewModel.isTimerRunning)
                            
                            Button("Stop") {
                                viewModel.stopCounting()
                            }
                            .disabled(!viewModel.isTimerRunning)
                            .padding()
                                        
                                        Button("Reset") {
                                            viewModel.resetCount()
                                        }
                                    }
                                }
                            }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: NoCombineViewModel())
    }
}
