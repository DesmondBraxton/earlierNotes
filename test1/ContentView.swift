//
//  ContentView.swift
//  test1
//
//  Created by MacBook Pro on 11/29/21.
//

import SwiftUI

struct ContentView {

let columns: [GridItem] = [GridItem(.flexible()),
                           GridItem(.flexible()),
                           GridItem(.flexible())]

@State private var moves: [Move?] = Array(repeating: nil, count: 9)


    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                LazyVGrid(columns: columns,spacing: 5) {
                    ForEach(0..<9) { i in
                        ZStack {
                            Rectangle()
                                .foregroundColor(.blue).opacity(0.5)
                                .frame(width: geometry.size.width/3-15 ,height:geometry.size.width/3-15 )
                            
                            Image(systemName: moves[i]?.Indicator ?? "" )
                                    .resizable()
                                    .frame(width: 40, height:40)
                                    .foregroundColor(.black)
                            
                            
                       }
                        .onTapGesture {
                            if isSquareOccupied(in: moves, forIndex:i) {return}
                            moves[i] = Move(player: .human, boardIndex: i)
                            
                            //check for win condition or draw
                            
                        }
            
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
    
    func isSquareOccupied(in moves: [Move?], forIndex index: Int) -> Bool {
        return moves.contains(where:{ $0?.boardIndex == index})
    }
    
    func determineComputerMovePosition(in moves:[Move?]) -> Int{
        var movePosition = Int.random(in: 0..<9)
        
        while isSquareOccupied(in: moves, forIndex: movePosition) {
            var movePosition = Int.random(in: 0..<9)
        }
        
        return movePosition
    }
}


enum Player {
    case human, computer
}

struct Move {
    let player: Player
    let boardIndex: Int
    
    var Indicator: String {
        return player == .human ? "xmark" : "circle"
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
