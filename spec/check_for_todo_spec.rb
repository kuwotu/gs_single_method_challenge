# contains_todo?("Pet store for dog food #TODO") => true
# contains_todo?("Pet store for dog food TODO") => false
# contains_todo?("Pet store for dog food") => false
# contains_todo?(123) => throw error

require "check_for_todo"

RSpec.describe "TODO Checker" do
        it "checks if the text given contains the word #TODO" do
        result = contains_todo?("Pet store for dog food #TODO")
        expect(result).to eq true
    end
        it "returns false if the text given contains TODO without the #" do
        result = contains_todo?("Pet store for dog food TODO")
        expect(result).to eq false
    end
        it "returns false if the text doesn't contain the word #TODO" do
        result = contains_todo?("Pet store for dog food")
        expect(result).to eq false
    end
    it "fails" do
        expect{contains_todo?(123)}.to raise_error "All tasks need to be in a string format"
    end
end
