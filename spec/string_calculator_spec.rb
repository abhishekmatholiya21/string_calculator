require 'string_calculator'

describe StringCalculator do
  describe "#add" do
    context "when an empty string is passed" do
      it "returns 0" do
        expect(described_class.add("")).to eq(0)
      end
    end

    context "when a single number is passed" do
      it "returns 4" do
        expect(described_class.add("4")).to eq(4)
      end
    end

    context "when two numbers '2,4' are passed" do
      it "returns 6" do
        expect(described_class.add("2,4")).to eq(6)
      end
    end

    context "when a new line and numbers '1\\n2,3' are passed" do
      it "returns 6" do
        expect(described_class.add("1\n2,3")).to eq(6)
      end
    end
    
    context "when a custom delimiter '//;\\n1;2' is passed" do
      it "returns 3" do
        expect(described_class.add("//;\n1;2")).to eq(3)
      end
    end

    context "when the input contains non-numeric characters and digits" do
      it "sums only the digits in the input" do
        expect(described_class.add("dfjgdjg3434")).to eq(3434)
      end
    end

    context "when negative numbers '-1, 22, -2, -3, 5' are passed" do
      it "throws an exception" do
        expect { described_class.add("-1, 22,-2,-3, 5") }.to raise_error("negative numbers not allowed -1, -2, -3")
      end
    end

    context "when a large numbers are passed" do
      it "returns 500500" do
        input = (1..1000).to_a.join(",")
        expect(described_class.add(input)).to eq(500500)
      end
    end
  end
end
