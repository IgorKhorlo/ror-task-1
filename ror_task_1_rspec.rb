require './ror_task_1.rb'

describe RorTask1 do
  let(:task) { RorTask1.new }

  it 'Should return multiplicity of 3' do
    expect(task.how_many_threes 225). to eq 2
    expect(task.how_many_threes 27). to eq 3
    expect(task.how_many_threes 0). to eq 0
  end

  it 'Should return max number in text' do
    expect(task.max_number_in_text 'Text with99 numbers 5 3 OK and floats 13.4 404.404'). to eq 404.404
  end

  it 'Should return elements at even indexes then at odd as Array' do
    expect(task.even_odd_elements [0.1, 1.1, 2.1, 3.1, 4.1, 5.1, 6.1, 7.1, 8.1]). to eq []
  end

  it 'Should do some actions' do
    except(task.even_elements_addition [1, 2, 3, 4, 5, 1]). to eq []
  end

  it 'Should return sum between zeros' do
    expect(task.sum_between_zeros [1, 2, 0, 5, 6, 7, 8, 9, 10, 0, 13]).to eq 45
  end
end
