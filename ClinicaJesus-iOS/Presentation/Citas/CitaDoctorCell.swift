//
//  CitaDoctorCell.swift
//  ClinicaJesus-iOS
//
//  Created by Anthony on 30/04/26.
//

// admin (anthony@gmail.com 123456)
// paciente (paciente1@gmail.com 12345)
// doctor (jorge@gmail.com 12345)


import UIKit

final class CitaDoctorCell: UITableViewCell {
    
    static let identifier = "CitaDoctorCell"
    
    private let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.layer.cornerRadius = 16
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemGray5.cgColor
        return view
    }()
    
    private let pacienteLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = .label
        return label
    }()
    
    private let estadoBadge: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 10)
        label.textAlignment = .center
        label.layer.cornerRadius = 9
        label.clipsToBounds = true
        label.textColor = .white
        return label
    }()
    
    private let correoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.textColor = .systemTeal
        return label
    }()
    
    private let fechaLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .secondaryLabel
        return label
    }()
    
    private let motivoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .secondaryLabel
        label.numberOfLines = 2
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupUI() {
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        selectionStyle = .none
        
        contentView.addSubview(cardView)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        
        [pacienteLabel, estadoBadge, correoLabel, fechaLabel, motivoLabel].forEach {
            cardView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            
            pacienteLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 14),
            pacienteLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 14),
            pacienteLabel.trailingAnchor.constraint(lessThanOrEqualTo: estadoBadge.leadingAnchor, constant: -8),
            
            estadoBadge.centerYAnchor.constraint(equalTo: pacienteLabel.centerYAnchor),
            estadoBadge.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -14),
            estadoBadge.heightAnchor.constraint(equalToConstant: 20),
            estadoBadge.widthAnchor.constraint(greaterThanOrEqualToConstant: 74),
            
            correoLabel.topAnchor.constraint(equalTo: pacienteLabel.bottomAnchor, constant: 4),
            correoLabel.leadingAnchor.constraint(equalTo: pacienteLabel.leadingAnchor),
            correoLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -14),
            
            fechaLabel.topAnchor.constraint(equalTo: correoLabel.bottomAnchor, constant: 4),
            fechaLabel.leadingAnchor.constraint(equalTo: pacienteLabel.leadingAnchor),
            fechaLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -14),
            
            motivoLabel.topAnchor.constraint(equalTo: fechaLabel.bottomAnchor, constant: 4),
            motivoLabel.leadingAnchor.constraint(equalTo: pacienteLabel.leadingAnchor),
            motivoLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -14),
            motivoLabel.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -14)
        ])
    }
    
    func configure(with cita: CitaDoctor) {
        pacienteLabel.text = cita.pacienteNombreCompleto
        correoLabel.text = cita.pacienteCorreo
        fechaLabel.text = "\(cita.fecha) | \(cita.horaInicio) - \(cita.horaFin)"
        motivoLabel.text = "Motivo: \(cita.motivo)"
        
        let estado = cita.estado.uppercased()
        estadoBadge.text = estado
        
        switch estado {
        case "PENDIENTE":
            estadoBadge.backgroundColor = .systemOrange
            
        case "CONFIRMADA":
            estadoBadge.backgroundColor = .systemGreen
            
        case "CANCELADA":
            estadoBadge.backgroundColor = .systemRed
            
        case "ATENDIDA":
            estadoBadge.backgroundColor = .systemBlue
            
        default:
            estadoBadge.backgroundColor = .systemGray
        }
    }
}
