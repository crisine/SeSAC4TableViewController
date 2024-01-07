//
//  SecondTableViewController.swift
//  SeSAC4TableViewController
//
//  Created by Minho on 1/7/24.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    let headerList = ["전체 설정", "개인 설정", "기타"]
    let labelList = [["공지사항", "실험실", "버전 정보"],
                     ["개인/보안", "알림", "채팅", "멀티프로필"],
                     ["고객센터/도움말"]]

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        
        titleLabel.textColor = .white
        titleLabel.font = .boldSystemFont(ofSize: 18)
        titleLabel.text = "설정"
        titleLabel.textAlignment = .center
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        tableView.separatorColor = .gray
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labelList[section].count
    }
    
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 40))
            
            let label = UILabel()
            label.frame = CGRect.init(x: 20, y: 5, width: headerView.frame.width - 10, height: headerView.frame.height - 10)
        
            label.text = headerList[section]
        
            label.font = .boldSystemFont(ofSize: 18)
            label.textColor = .lightGray
            
            headerView.addSubview(label)
            
            return headerView
        }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
        
        cell.backgroundColor = tableView.backgroundColor
        
        let sectionIndex: Int = indexPath.section
        let currentCellIndex: Int = indexPath.row
        
        cell.titleLabel.font = .systemFont(ofSize: 14)
        cell.titleLabel.text = labelList[sectionIndex][currentCellIndex]
        cell.titleLabel.textColor = .white
        
        return cell
    }
}
