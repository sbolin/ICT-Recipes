//
//  SorbetView.swift
//  TextFieldCalcs
//
//  Created by Scott Bolin on 6-Dec-21.
//

import SwiftUI

struct SorbetView: View {
    @State private var quantity: Double = 0
    @State private var isQuantity = false
//    @FocusState private var qtyIsFocused: Bool

    @State private var amountA: Double = 0
    @State private var isFocusedA = false

    @State private var amountB: Double = 0
    @State private var isFocusedB = false

    @State private var amountC: Double = 0
    @State private var isFocusedC = false

    @State private var amountD: Double = 0
    @State private var isFocusedD = false

    @State private var amountE: Double = 0
    @State private var isFocusedE = false

    @State private var amountF: Double = 0
    @State private var isFocusedF = false

    @State private var amountG: Double = 0
    @State private var isFocusedG = false

    @State private var amountH: Double = 0
    @State private var isFocusedH = false

    @State private var amountI: Double = 0
    @State private var isFocusedI = false

    var decimalFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }()

    var sumTotal: Double {
        return amountA + amountB + amountC + amountD + amountE + amountF + amountG + amountH + amountI
    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Qty (kg): ")
                    .frame(maxWidth: 150, alignment: .leading)
                TextField("Quantity (kg)", value: $quantity, formatter: decimalFormatter) { isQuantity = $0 }
                .onChange(of: quantity) { newValue in
                    if isQuantity {
                        amountA = 141.66666667 * newValue
                        amountB = 3.0 * newValue
                        amountC = 300.0 * newValue
                        amountD = 10.0 * newValue
                        amountE = 30.0 * newValue
                        amountF = 1.0 * newValue
                        amountG = 500.0 * newValue
                        amountH = 3.0 * newValue
                        amountI = 2.5 * newValue
//                        qtyIsFocused = false
                    } // if
                } // onChange
//                .focused($qtyIsFocused)
                .overlay(isQuantity ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
            } // HStack
            Divider()
            Group {
                HStack {
                    Text("น้ำตาล: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("A", value: $amountA, formatter: decimalFormatter) { isFocusedA = $0 }
                    .onChange(of: amountA) { newValue in
                        if isFocusedA {
                            quantity = newValue / 141.66666667
                            //amountA = 141.66666667 * newValue
                            amountB = 3.0 * quantity
                            amountC = 300.0 * quantity
                            amountD = 10.0 * quantity
                            amountE = 30.0 * quantity
                            amountF = 1.0 * quantity
                            amountG = 500.0 * quantity
                            amountH = 3.0 * quantity
                            amountI = 2.5 * quantity
                        }
                    }
                    .overlay(isFocusedA ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("SEJ: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("B", value: $amountB, formatter: decimalFormatter) { isFocusedB = $0}
                    .onChange(of: amountB) { newValue in
                        if isFocusedB {
                            quantity = newValue / 3.0
                            amountA = 141.66666667 * newValue
                            //amountB = 3.0 * quantity
                            amountC = 300.0 * quantity
                            amountD = 10.0 * quantity
                            amountE = 30.0 * quantity
                            amountF = 1.0 * quantity
                            amountG = 500.0 * quantity
                            amountH = 3.0 * quantity
                            amountI = 2.5 * quantity
                        }
                    }
                    .overlay(isFocusedB ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("น้ำ: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("C", value: $amountC, formatter: decimalFormatter) { isFocusedC = $0}
                    .onChange(of: amountC) { newValue in
                        if isFocusedC {
                            quantity = newValue / 300.0
                            amountA = 141.66666667 * newValue
                            amountB = 3.0 * quantity
                            //amountC = 300.0 * quantity
                            amountD = 10.0 * quantity
                            amountE = 30.0 * quantity
                            amountF = 1.0 * quantity
                            amountG = 500.0 * quantity
                            amountH = 3.0 * quantity
                            amountI = 2.5 * quantity
                        }
                    }
                    .overlay(isFocusedC ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("เดกซ์โทรส: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("D", value: $amountD, formatter: decimalFormatter) { isFocusedD = $0}
                    .onChange(of: amountD) { newValue in
                        if isFocusedD {
                            quantity = newValue / 10.0
                            amountA = 141.66666667 * newValue
                            amountB = 3.0 * quantity
                            amountC = 300.0 * quantity
                            //amountD = 10.0 * quantity
                            amountE = 30.0 * quantity
                            amountF = 1.0 * quantity
                            amountG = 500.0 * quantity
                            amountH = 3.0 * quantity
                            amountI = 2.5 * quantity
                        }
                    }
                    .overlay(isFocusedD ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("มอลโตเดกซ์โทรส: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("E", value: $amountE, formatter: decimalFormatter) { isFocusedE = $0}
                    .onChange(of: amountE) { newValue in
                        if isFocusedE {
                            quantity = newValue / 30.0
                            amountA = 141.66666667 * newValue
                            amountB = 3.0 * quantity
                            amountC = 300.0 * quantity
                            amountD = 10.0 * quantity
                            //amountE = 30.0 * quantity
                            amountF = 1.0 * quantity
                            amountG = 500.0 * quantity
                            amountH = 3.0 * quantity
                            amountI = 2.5 * quantity
                        }
                    }
                    .overlay(isFocusedE ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("เกลือทะเล: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("F", value: $amountF, formatter: decimalFormatter) { isFocusedF = $0}
                    .onChange(of: amountF) { newValue in
                        if isFocusedF {
                            quantity = newValue / 1.0
                            amountA = 141.66666667 * newValue
                            amountB = 3.0 * quantity
                            amountC = 300.0 * quantity
                            amountD = 10.0 * quantity
                            amountE = 30.0 * quantity
                            //amountF = 1.0 * quantity
                            amountG = 500.0 * quantity
                            amountH = 3.0 * quantity
                            amountI = 2.5 * quantity
                        }
                    }
                    .overlay(isFocusedF ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("น้ำและผลไม้ปั่น: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("G", value: $amountG, formatter: decimalFormatter) { isFocusedG = $0}
                    .onChange(of: amountG) { newValue in
                        if isFocusedG {
                            quantity = newValue / 500.0
                            amountA = 141.66666667 * newValue
                            amountB = 3.0 * quantity
                            amountC = 300.0 * quantity
                            amountD = 10.0 * quantity
                            amountE = 30.0 * quantity
                            amountF = 1.0 * quantity
                            //amountG = 500.0 * quantity
                            amountH = 3.0 * quantity
                            amountI = 2.5 * quantity
                        }
                    }
                    .overlay(isFocusedG ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("กรดซิตริก: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("H", value: $amountH, formatter: decimalFormatter) { isFocusedH = $0}
                    .onChange(of: amountH) { newValue in
                        if isFocusedH {
                            quantity = newValue / 3.0
                            amountA = 141.66666667 * newValue
                            amountB = 3.0 * quantity
                            amountC = 300.0 * quantity
                            amountD = 10.0 * quantity
                            amountE = 30.0 * quantity
                            amountF = 1.0 * quantity
                            amountG = 500.0 * quantity
                            //amountH = 3.0 * quantity
                            amountI = 2.5 * quantity
                        }
                    }
                    .overlay(isFocusedH ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("กลิ่นและสีตามความเหมาะสม: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("I", value: $amountI, formatter: decimalFormatter) { isFocusedI = $0}
                    .onChange(of: amountI) { newValue in
                        if isFocusedI {
                            quantity = newValue / 2.5
                            amountA = 141.66666667 * newValue
                            amountB = 3.0 * quantity
                            amountC = 300.0 * quantity
                            amountD = 10.0 * quantity
                            amountE = 30.0 * quantity
                            amountF = 1.0 * quantity
                            amountG = 500.0 * quantity
                            amountH = 3.0 * quantity
                            //amountI = 2.5 * quantity
                        }
                    }
                    .overlay(isFocusedI ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack
            } // Group
            HStack {
                Text("All quantities in grams")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            Divider()
            HStack {
                Text("ผลรวม: \(decimalFormatter.string(from: NSNumber(value: sumTotal))!)")
                    .fontWeight(.bold)
                Text("kg")
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .frame(height: 32)
            .background(Color(.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 8))
        } // VStack
        .keyboardType(.decimalPad)
        .textFieldStyle(.roundedBorder)
        .padding()
        .onTapGesture {
            self.endTextEditing()
        }

    } // body
}

struct SorbetView_Previews: PreviewProvider {
    static var previews: some View {
        SorbetView()
    }
}
