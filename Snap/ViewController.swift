//
//  ViewController.swift
//  Snap
//
//  Created by Олейник Богдан on 24.04.2022.
//

import SwiftUI
import SnapKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }

    private func initialize() {
        view.backgroundColor = UIColor(red: 241/255, green: 238/255, blue: 228/255, alpha: 1)
        let label = UILabel()
        label.text = "☘️ Welcome!"
        view.addSubview(label)
        label.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(50)
            maker.top.equalToSuperview().inset(150)
        }
        
        let extraLabel = UILabel()
        extraLabel.text = "Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing Label for testing"
        extraLabel.numberOfLines = 0
        view.addSubview(extraLabel)
        extraLabel.snp.makeConstraints { maker in
            maker.left.right.equalToSuperview().inset(50)
            maker.top.equalTo(label).inset(50)
        }
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
        button.layer.cornerRadius = 20
        button.setTitle("Get your username ->", for: .normal)
        button.setTitleColor(.white, for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(220)
            maker.bottom.equalToSuperview().inset(30)
            maker.height.equalTo(40)
        }
        button.addTarget(self, action: #selector(buttonTaped), for: .touchUpInside)
    }
    
    @objc private func buttonTaped() {
        print("sovjdsv")
    }
    
}

//MARK: - Canvas
struct FlowProvider: PreviewProvider {
  static var previews: some View {
    ContainterView().edgesIgnoringSafeArea(.all).previewInterfaceOrientation(.portrait)
  }

  struct ContainterView: UIViewControllerRepresentable {

    let view = ViewController()
    func makeUIViewController(context: UIViewControllerRepresentableContext<FlowProvider.ContainterView>) -> ViewController {
      return view
    }

    func updateUIViewController(_ uiViewController: FlowProvider.ContainterView.UIViewControllerType, context: UIViewControllerRepresentableContext<FlowProvider.ContainterView>) {

    }
  }
}
