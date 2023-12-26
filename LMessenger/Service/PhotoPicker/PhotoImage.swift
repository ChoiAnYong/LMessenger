//
//  PhotoImage.swift
//  LMessenger
//
//  Created by 최안용 on 12/27/23.
//

import SwiftUI

struct PhotoImage: Transferable {
    
    let data: Data
    
    static var transferRepresentation: some TransferRepresentation {
        DataRepresentation(importedContentType: .image) { data in //원본 이미지에 대한 데이터여서 입력이 크다.
            guard let uiImage = UIImage(data: data) else { //JPEG로 압축
                throw PhotoPickerError.importFailed
            }
            
            guard let data = uiImage.jpegData(compressionQuality: 0.3) else {
                throw PhotoPickerError.importFailed
            }
            
            return PhotoImage(data: data)
        }
    }
}
