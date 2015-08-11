feature 'Archive' do
  let(:issue) { Factory.create(:issue) }
  let(:link) { Factory.create(:link) }

  scenario 'will show one issue' do
    visit page_path('archive')
    expect(page).to have_content "MyText"
  end
end