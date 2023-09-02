VALIDATIONS = {
    presence: 'validate_presence_of',
    uniqueness: 'validate_uniqueness_of',
    numericality: 'validate_numericality_of',
    belong_to: 'belong_to',
    have_many: 'have_many',
    have_and_belong_to_many: 'have_and_belong_to_many' 
}.freeze


RSpec.shared_examples 'model_shared_spec' do |factory, attribs, subj = false|
    subject { create(factory) } unless subj

    it 'has a valid factory' do
        expect(create(factory)).to be_valid
    end

    attribs.each do |attr|
        attr.each do |k,v|
            if v.instance_of?(Array)
                v.each do |validation|
                    if validation == :uniqueness
                        it { is_expected.to(send(VALIDATIONS[validation], k).case_insensitive)}
                    else
                        it { is_expected.to(send(VALIDATIONS[validation], k))}
                    end
                        
                end
            else
                it { is_expected.to(send(VALIDATIONS[v], k))}
            end
        end  
    end
end