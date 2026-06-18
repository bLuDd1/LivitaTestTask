//
//  HomeView.swift
//  LivitaTestTask
//
//  Created by Dima on 18.06.2026.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Color(.systemGray5)
                    .opacity(0.5)
                    .ignoresSafeArea()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 16) {
                        HStack {
                            Button(action: {
                                viewModel.proButtonTapped()
                            }) {
                                Text("GET PRO")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 18)
                                    .padding(.vertical, 12)
                                    .background(
                                        LinearGradient(
                                            colors: [.newOr, .newPur, .newBl],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    )
                                    .cornerRadius(96)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                viewModel.profileButtonTapped()
                            }) {
                                Image(systemName: "person.crop.circle")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.horizontal, 18)
                        .padding(.top, 10)
                        
                        ForEach(viewModel.tools) { tool in
                            ToolCardView(tool: tool) {
                                print("\(tool.title) Tapped")
                            }
                            .padding(.horizontal, 18)
                        }
                        
                        Spacer(minLength: 100)
                    }
                }
            }
        }
        .alert(item: Bindable(viewModel).activeAlert) { alert in
            Alert(
                title: Text(alert.title),
                message: Text(alert.message),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}



#Preview {
    HomeView()
}
