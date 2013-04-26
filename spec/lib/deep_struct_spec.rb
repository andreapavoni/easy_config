require_relative '../helper'

describe EasyConfig::DeepStruct do
  let(:hash) { {a: 1, b: {c: 3}} }
  let(:deep_struct) { EasyConfig::DeepStruct.new hash }

  describe ".new" do
    it "returns a DeepStruct object" do
      deep_struct.must_be_instance_of EasyConfig::DeepStruct
    end
  end

  it "inherits from OpenStruct" do
    deep_struct.class.ancestors.must_include OpenStruct
  end

  it "exposes method names to access keys" do
    deep_struct.a.must_equal 1
  end

  it "can wrap another DeepStruct" do
    deep_struct.b.must_be_instance_of EasyConfig::DeepStruct
    deep_struct.b.c.must_equal 3
  end

  describe "#to_h" do
    it "returns the original Hash" do
      deep_struct.to_h.must_equal  hash
    end
  end

end
