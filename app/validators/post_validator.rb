class PostValidator < ActiveModel::Validator
    def validate(record)
        if !record.title.nil?
            unless record.title.match(/won't believe|secret|top [\d]+|guess/i)
                record.errors[:title] << "Not clickbait enough."
            end
        end
    end
end