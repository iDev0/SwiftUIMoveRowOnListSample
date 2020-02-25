//
//  ContentView.swift
//  MoveRowOnListSample
//
//  Created by iDev0 on 2020/02/26.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var appleDevices = ["iPhone", "iPad", "iMac", "Macbook"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(appleDevices, id: \.self) { device in
                    Text(device)
                }
                .onMove { (indexSet, index) in
                    self.appleDevices.move(fromOffsets: indexSet, toOffset: index)
                }
                .navigationBarTitle(Text("Apple Devices"))
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
