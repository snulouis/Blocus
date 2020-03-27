class Blok < ApplicationRecord

  belongs_to :user, required: false
  belongs_to :region, required: false
  has_one :info
  belongs_to :event, required: false
  def self.search(blokid, key)
    min = 2147483647
    minid = 1
    max = -1
    maxid = 1
    lat = Blok.find(blokid).lat
    lng = Blok.find(blokid).lng
    Blok.all.each do |b|
      next if b.id == blokid
      la = Blok.find(b.id).lat
      ln = Blok.find(b.id).lng
      flag = 0
      ###min###
      if key == 38 && lat < la
        flag =1
      elsif key == 40 && lat > la
        flag =1
      elsif key == 37 && lng > ln
        flag =1
      elsif key == 39 && lng < ln
        flag =1
      end
      if flag == 1
        temp = (lat-la)*(lat-la)+(lng-ln)*(lng-ln)
        if min > temp
          min = temp
          minid = b.id
        end
      end
      ###max###
      flag = 0
      if key == 38 && lat > la
        flag =1
      elsif key == 40 && lat < la
        flag =1
      elsif key == 37 && lng < ln
        flag =1
      elsif key == 39 && lng > ln
        flag =1
      end
      next if flag == 0
      temp = (lat-la)*(lat-la)+(lng-ln)*(lng-ln)
      if max < temp
        max = temp
        maxid = b.id
      end
    end
    if min != 2147483647
      puts minid
      return minid
    else
      return maxid
    end
  end
end
