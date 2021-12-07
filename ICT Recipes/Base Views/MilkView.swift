//
//  MilkView.swift
//  TextFieldCalcs
//
//  Created by Scott Bolin on 6-Dec-21.
//

import SwiftUI

struct MilkView: View {
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

    @State private var amountJ: Double = 0
    @State private var isFocusedJ = false



    var decimalFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }()

    var sumTotal: Double {
        return amountA + amountB + amountC + amountD + amountE + amountF + amountG + amountH + amountI + amountJ
    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Qty (kg): ")
                    .frame(maxWidth: 150, alignment: .leading)
                TextField("Quantity (kg)", value: $quantity, formatter: decimalFormatter) { isQuantity = $0 }
                .onChange(of: quantity) { newValue in
                    if isQuantity {
                        amountA = 83.33333333 * newValue
                        amountB = 2.5 * newValue
                        amountC = 3.5 * newValue
                        amountD = 90.0 * newValue
                        amountE = 55.83333333 * newValue
                        amountF = 19.16666667 * newValue
                        amountG = 10.0 * newValue
                        amountH = 61.66666667 * newValue
                        amountI = 490.0 * newValue
                        amountJ = 185.0 * newValue
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
                            quantity = newValue / 83.33333
//                            amountA = 83.33333333 * newValue
                            amountB = 2.5 * quantity
                            amountC = 3.5 * quantity
                            amountD = 90.0 * quantity
                            amountE = 55.83333333 * quantity
                            amountF = 19.16666667 * quantity
                            amountG = 10.0 * quantity
                            amountH = 61.66666667 * quantity
                            amountI = 490.0 * quantity
                            amountJ = 185.0 * quantity
                        }
                    }
                    .overlay(isFocusedA ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("SEP: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("B", value: $amountB, formatter: decimalFormatter) { isFocusedB = $0}
                    .onChange(of: amountB) { newValue in
                        if isFocusedB {
                            quantity = newValue / 2.5
                            amountA = 83.33333333 * quantity
//                            amountB = 2.5 * quantity
                            amountC = 3.5 * quantity
                            amountD = 90.0 * quantity
                            amountE = 55.83333333 * quantity
                            amountF = 19.16666667 * quantity
                            amountG = 10.0 * quantity
                            amountH = 61.66666667 * quantity
                            amountI = 490.0 * quantity
                            amountJ = 185.0 * quantity
                        }
                    }
                    .overlay(isFocusedB ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("EA: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("C", value: $amountC, formatter: decimalFormatter) { isFocusedC = $0}
                    .onChange(of: amountC) { newValue in
                        if isFocusedC {
                            quantity = newValue / 3.5
                            amountA = 83.33333333 * quantity
                            amountB = 2.5 * quantity
//                            amountC = 3.5 * quantity
                            amountD = 90.0 * quantity
                            amountE = 55.83333333 * quantity
                            amountF = 19.16666667 * quantity
                            amountG = 10.0 * quantity
                            amountH = 61.66666667 * quantity
                            amountI = 490.0 * quantity
                            amountJ = 185.0 * quantity
                        }
                    }
                    .overlay(isFocusedC ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
//                    .background(isFocusedC ? Color.green.opacity(0.2) : Color.clear)
                } // HStack

                HStack {
                    Text("น้ำ: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("D", value: $amountD, formatter: decimalFormatter) { isFocusedD = $0}
                    .onChange(of: amountD) { newValue in
                        if isFocusedD {
                            quantity = newValue / 90.0
                            amountA = 83.33333333 * quantity
                            amountB = 2.5 * quantity
                            amountC = 3.5 * quantity
//                            amountD = 90.0 * quantity
                            amountE = 55.83333333 * quantity
                            amountF = 19.16666667 * quantity
                            amountG = 10.0 * quantity
                            amountH = 61.66666667 * quantity
                            amountI = 490.0 * quantity
                            amountJ = 185.0 * quantity
                        }
                    }
                    .overlay(isFocusedD ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
//                    .background(isFocusedD ? Color.green.opacity(0.2) : Color.clear)
                } // HStack

                HStack {
                    Text("นมผง: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("E", value: $amountE, formatter: decimalFormatter) { isFocusedE = $0}
                    .onChange(of: amountE) { newValue in
                        if isFocusedE {
                            quantity = newValue / 55.83333333
                            amountA = 83.33333333 * quantity
                            amountB = 2.5 * quantity
                            amountC = 3.5 * quantity
                            amountD = 90.0 * quantity
//                            amountE = 55.83333333 * quantity
                            amountF = 19.16666667 * quantity
                            amountG = 10.0 * quantity
                            amountH = 61.66666667 * quantity
                            amountI = 490.0 * quantity
                            amountJ = 185.0 * quantity
                        }
                    }
                    .overlay(isFocusedE ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
//                    .background(isFocusedE ? Color.green.opacity(0.2) : Color.clear)
                } // HStack

                HStack {
                    Text("นมพรอง: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("F", value: $amountF, formatter: decimalFormatter) { isFocusedF = $0}
                    .onChange(of: amountF) { newValue in
                        if isFocusedF {
                            quantity = newValue / 19.16666667
                            amountA = 83.33333333 * quantity
                            amountB = 2.5 * quantity
                            amountC = 3.5 * quantity
                            amountD = 90.0 * quantity
                            amountE = 55.83333333 * quantity
                            //amountF = 19.16666667 * quantity
                            amountG = 10.0 * quantity
                            amountH = 61.66666667 * quantity
                            amountI = 490.0 * quantity
                            amountJ = 185.0 * quantity
                        }
                    }
                    .overlay(isFocusedF ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
//                    .background(isFocusedF ? Color.green.opacity(0.2) : Color.clear)
                } // HStack

                HStack {
                    Text("เดกซ์โทรส: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("G", value: $amountG, formatter: decimalFormatter) { isFocusedG = $0}
                    .onChange(of: amountG) { newValue in
                        if isFocusedG {
                            quantity = newValue / 10.0
                            amountA = 83.33333333 * quantity
                            amountB = 2.5 * quantity
                            amountC = 3.5 * quantity
                            amountD = 90.0 * quantity
                            amountE = 55.83333333 * quantity
                            amountF = 19.16666667 * quantity
                            //amountG = 10.0 * quantity
                            amountH = 61.66666667 * quantity
                            amountI = 490.0 * quantity
                            amountJ = 185.0 * quantity
                        }
                    }
                    .overlay(isFocusedG ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
//                    .background(isFocusedG ? Color.green.opacity(0.2) : Color.clear)
                } // HStack

                HStack {
                    Text("มอลโตเดกซ์โทรส: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("H", value: $amountH, formatter: decimalFormatter) { isFocusedH = $0}
                    .onChange(of: amountH) { newValue in
                        if isFocusedH {
                            quantity = newValue / 61.66666667
                            amountA = 83.33333333 * quantity
                            amountB = 2.5 * quantity
                            amountC = 3.5 * quantity
                            amountD = 90.0 * quantity
                            amountE = 55.83333333 * quantity
                            amountF = 19.16666667 * quantity
                            amountG = 10.0 * quantity
                            //amountH = 61.66666667 * quantity
                            amountI = 490.0 * quantity
                            amountJ = 185.0 * quantity
                        }
                    }
                    .overlay(isFocusedH ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
//                    .background(isFocusedH ? Color.green.opacity(0.2) : Color.clear)
                } // HStack

                HStack {
                    Text("นมสด: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("I", value: $amountI, formatter: decimalFormatter) { isFocusedI = $0}
                    .onChange(of: amountI) { newValue in
                        if isFocusedI {
                            quantity = newValue / 490.0
                            amountA = 83.33333333 * quantity
                            amountB = 2.5 * quantity
                            amountC = 3.5 * quantity
                            amountD = 90.0 * quantity
                            amountE = 55.83333333 * quantity
                            amountF = 19.16666667 * quantity
                            amountG = 10.0 * quantity
                            amountH = 61.66666667 * quantity
                            //amountI = 490.0 * quantity
                            amountJ = 185.0 * quantity
                        }
                    }
                    .overlay(isFocusedI ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
//                    .background(isFocusedI ? Color.green.opacity(0.2) : Color.clear)
                } // HStack

                HStack {
                    Text("วิปปิ้งครีม: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("J", value: $amountJ, formatter: decimalFormatter) { isFocusedJ = $0}
                    .onChange(of: amountJ) { newValue in
                        if isFocusedI {
                            quantity = newValue / 185.0
                            amountA = 83.33333333 * quantity
                            amountB = 2.5 * quantity
                            amountC = 3.5 * quantity
                            amountD = 90.0 * quantity
                            amountE = 55.83333333 * quantity
                            amountF = 19.16666667 * quantity
                            amountG = 10.0 * quantity
                            amountH = 61.66666667 * quantity
                            amountI = 490.0 * quantity
                            //amountJ = 185.0 * quantity
                        }
                    }
                    .overlay(isFocusedJ ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
//                    .background(isFocusedJ ? Color.green.opacity(0.2) : Color.clear)
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

struct MilkView_Previews: PreviewProvider {
    static var previews: some View {
        MilkView()
    }
}
