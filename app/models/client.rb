class Client < ActiveRecord::Base

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


validates :entreprise, presence:{
    message: "Le nom de l'entreprise doit être renseigné !"
  }

validates :nom, presence: {
    message: "Le nom doit être renseigné !"
  }

validates :entreprise, uniqueness: {
    message: "Cette entreprise est déjà dans la base"
  }

validates :email, presence: {
    message: "L'Email doit être renseigné !"
  }

has_many :projects


end