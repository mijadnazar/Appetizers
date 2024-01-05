//
//  DetailView.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/12/1402 AP.
//

import SwiftUI

struct AppetizerDetailView: View {
    var appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    @EnvironmentObject var order: Order
    
    var body: some View {
        ZStack (alignment: .trailing){
            VStack(spacing: 20) {
                AppetizerRemoteImage(urlString: appetizer.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225)
                
                VStack {
                    Text(appetizer.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(appetizer.description)
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .padding( )
                    
                    HStack(spacing: 40) {
                        NutritionInfo(title: "Calories", value: appetizer.calories)
                        NutritionInfo(title: "Carbs", value: appetizer.carbs)
                        NutritionInfo(title: "Protein", value: appetizer.protein)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    order.add(appetizer)
                    isShowingDetail = false
                }, label: {
//                    APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
                    
                    Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                })
                .standardButtonStyled()
//                .buttonStyle(.bordered)
//                .tint(.brandPrimary)
//                .controlSize(.large)
                .padding(.bottom, 30)
                
            }
            .frame(width: 300, height: 525)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: 40)
            .overlay(alignment: .topTrailing, content: {
                Button(action: {
                    isShowingDetail = false
                }, label: {
                    XDismissButton()
                })
            })
        }
    }
}

struct NutritionInfo: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
            
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
