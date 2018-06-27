RSpec.describe Song do
  describe "Validations" do
    it "is invalid without a title" do
      song = Song.new(length: 123, play_count: 2)

      expect(song).to_not be_valid
    end
    it "is invalid without a length" do
      song = Song.new(title: "yellow submarine", play_count: 2)

      expect(song).to_not be_valid
    end
  end
  describe 'Class methods' do
    describe 'Song.total_play_count' do
      it 'returns total play counts for all songs' do
        Song.create(title: 'Song 1', length: 180, play_count: 3)
        Song.create(title: 'Song 2', length: 220, play_count: 4)

        expect(Song.total_play_count).to eq(7)
      end
    end
    describe 'Song.average_play_count' do
      it 'returns average of play counts for all songs' do
        Song.create(title: 'Song 1', length: 180, play_count: 13)
        Song.create(title: 'Song 2', length: 220, play_count: 19)

        expect(Song.average_play_count).to eq(16)
      end
    end
  end
end
