require 'rails_helper'

RSpec.feature "Tasks", type: :feature do

  scenario 'creates a new task' do
    visit root_path
    click_on 'task new'
    fill_in 'task[name]', with: 'test task'
    fill_in 'task[body]', with: 'hogehoge'
    fill_in 'task[limits]', with: '2018/09/23'
    select 'untouched', from: 'task[status]'
    select 'normal', from: 'task[priority]'
    click_on '登録'

    expect(page).to have_content 'task created'
  end
end
