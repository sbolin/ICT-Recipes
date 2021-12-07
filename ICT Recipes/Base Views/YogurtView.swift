//
//  YogurtView.swift
//  TextFieldCalcs
//
//  Created by Scott Bolin on 6-Dec-21.
//

import SwiftUI

struct YogurtView: View {
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

    var decimalFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }()

    var sumTotal: Double {
        return amountA + amountB + amountC + amountD + amountE + amountF + amountG + amountH
    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Qty (kg): ")
                    .frame(maxWidth: 150, alignment: .leading)
                TextField("Quantity (kg)", value: $quantity, formatter: decimalFormatter) { isQuantity = $0 }
                .onChange(of: quantity) { newValue in
                    if isQuantity {
                        amountA = 90.0 * newValue
                        amountB = 305.0 * newValue
                        amountC = 66.66666667 * newValue
                        amountD = 13.33333333 * newValue
                        amountE = 20.0 * newValue
                        amountF = 50.0 * newValue
                        amountG = 6.0 * newValue
                        amountH = 450.0 * newValue
//                        qtyIsFocused = false
                    } // if
                } // onChange
 //               .focused($qtyIsFocused)
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
                            quantity = newValue / 90.0
                            //amountA = 90.0 * quantity
                            amountB = 305.0 * quantity
                            amountC = 66.66666667 * quantity
                            amountD = 13.33333333 * quantity
                            amountE = 20.0 * quantity
                            amountF = 50.0 * quantity
                            amountG = 6.0 * quantity
                            amountH = 450.0 * quantity
                        }
                    }
                    .overlay(isFocusedA ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("น้ำ: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("B", value: $amountB, formatter: decimalFormatter) { isFocusedB = $0}
                    .onChange(of: amountB) { newValue in
                        if isFocusedB {
                            quantity = newValue / 305.0
                            amountA = 90.0 * quantity
                            //amountB = 305.0 * quantity
                            amountC = 66.66666667 * quantity
                            amountD = 13.33333333 * quantity
                            amountE = 20.0 * quantity
                            amountF = 50.0 * quantity
                            amountG = 6.0 * quantity
                            amountH = 450.0 * quantity
                        }
                    }
                    .overlay(isFocusedB ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("นมผง: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("C", value: $amountC, formatter: decimalFormatter) { isFocusedC = $0}
                    .onChange(of: amountC) { newValue in
                        if isFocusedC {
                            quantity = newValue / 66.66666667
                            amountA = 90.0 * quantity
                            amountB = 305.0 * quantity
                            //amountC = 66.66666667 * quantity
                            amountD = 13.33333333 * quantity
                            amountE = 20.0 * quantity
                            amountF = 50.0 * quantity
                            amountG = 6.0 * quantity
                            amountH = 450.0 * quantity
                        }
                    }
                    .overlay(isFocusedC ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("นมพรอง: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("D", value: $amountD, formatter: decimalFormatter) { isFocusedD = $0}
                    .onChange(of: amountD) { newValue in
                        if isFocusedD {
                            quantity = newValue / 13.33333333
                            amountA = 90.0 * quantity
                            amountB = 305.0 * quantity
                            amountC = 66.66666667 * quantity
                            //amountD = 13.33333333 * quantity
                            amountE = 20.0 * quantity
                            amountF = 50.0 * quantity
                            amountG = 6.0 * quantity
                            amountH = 450.0 * quantity
                        }
                    }
                    .overlay(isFocusedD ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("เดกซ์โทรส: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("E", value: $amountE, formatter: decimalFormatter) { isFocusedE = $0}
                    .onChange(of: amountE) { newValue in
                        if isFocusedE {
                            quantity = newValue / 20.0
                            amountA = 90.0 * quantity
                            amountB = 305.0 * quantity
                            amountC = 66.66666667 * quantity
                            amountD = 13.33333333 * quantity
                            //amountE = 20.0 * quantity
                            amountF = 50.0 * quantity
                            amountG = 6.0 * quantity
                            amountH = 450.0 * quantity
                        }
                    }
                    .overlay(isFocusedE ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("วิปปิ้งครีม: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("F", value: $amountF, formatter: decimalFormatter) { isFocusedF = $0}
                    .onChange(of: amountF) { newValue in
                        if isFocusedF {
                            quantity = newValue / 50.0
                            amountA = 90.0 * quantity
                            amountB = 305.0 * quantity
                            amountC = 66.66666667 * quantity
                            amountD = 13.33333333 * quantity
                            amountE = 20.0 * quantity
                            //amountF = 50.0 * quantity
                            amountG = 6.0 * quantity
                            amountH = 450.0 * quantity
                        }
                    }
                    .overlay(isFocusedF ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("SER: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("G", value: $amountG, formatter: decimalFormatter) { isFocusedG = $0}
                    .onChange(of: amountG) { newValue in
                        if isFocusedG {
                            quantity = newValue / 6.0
                            amountA = 90.0 * quantity
                            amountB = 305.0 * quantity
                            amountC = 66.66666667 * quantity
                            amountD = 13.33333333 * quantity
                            amountE = 20.0 * quantity
                            amountF = 50.0 * quantity
                            //amountG = 6.0 * quantity
                            amountH = 450.0 * quantity
                        }
                    }
                    .overlay(isFocusedG ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
                } // HStack

                HStack {
                    Text("โยเกิร์ต: ")
                        .frame(maxWidth: 150, alignment: .leading)
                    TextField("H", value: $amountH, formatter: decimalFormatter) { isFocusedH = $0}
                    .onChange(of: amountH) { newValue in
                        if isFocusedH {
                            quantity = newValue / 450.0
                            amountA = 90.0 * quantity
                            amountB = 305.0 * quantity
                            amountC = 66.66666667 * quantity
                            amountD = 13.33333333 * quantity
                            amountE = 20.0 * quantity
                            amountF = 50.0 * quantity
                            amountG = 6.0 * quantity
                            //amountH = 450.0 * quantity
                        }
                    }
                    .overlay(isFocusedH ? RoundedRectangle(cornerRadius: 6).stroke(Color.green, lineWidth: 2) : nil)
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

struct YogurtView_Previews: PreviewProvider {
    static var previews: some View {
        YogurtView()
    }
}
