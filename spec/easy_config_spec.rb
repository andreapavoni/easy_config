require_relative 'helper'

describe EasyConfig do

  describe ".load" do

    describe "it loads a basic YAML" do
      let(:path) { File.expand_path './spec/fixtures/basic.yml' }
      let(:obj) { EasyConfig.load_yaml path }

      it "returns a EasyConfig::DeepStruct object" do
        obj.must_be_instance_of EasyConfig::DeepStruct
      end
    end

    describe "it loads a namespace inside YAML" do
      let(:path) { File.expand_path './spec/fixtures/namespaced.yml' }

      it "loads only the given namespace" do
        obj1 = EasyConfig.load_yaml path, 'namespace1'
        obj2 = EasyConfig.load_yaml path, 'namespace2'

        obj1.test.foo.must_equal 1
        obj2.test.foo.must_equal 3
      end

    end

    describe "it loads ERB tags" do
      let(:path) { File.expand_path './spec/fixtures/erbiefed.yml' }

      it "loads only the given namespace" do
        obj = EasyConfig.load_yaml path

        obj.test.foo.must_equal 'this is from ERB'
      end

    end

  end

end
