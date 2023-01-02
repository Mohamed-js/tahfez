require "test_helper"

class LessonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson = lessons(:one)
  end

  test "should get index" do
    get lessons_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_url
    assert_response :success
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post lessons_url, params: { lesson: { content_name: @lesson.content_name, content_type: @lesson.content_type, from: @lesson.from, material_id_id: @lesson.material_id_id, student_id_id: @lesson.student_id_id, teacher_id_id: @lesson.teacher_id_id, to: @lesson.to } }
    end

    assert_redirected_to lesson_url(Lesson.last)
  end

  test "should show lesson" do
    get lesson_url(@lesson)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_url(@lesson)
    assert_response :success
  end

  test "should update lesson" do
    patch lesson_url(@lesson), params: { lesson: { content_name: @lesson.content_name, content_type: @lesson.content_type, from: @lesson.from, material_id_id: @lesson.material_id_id, student_id_id: @lesson.student_id_id, teacher_id_id: @lesson.teacher_id_id, to: @lesson.to } }
    assert_redirected_to lesson_url(@lesson)
  end

  test "should destroy lesson" do
    assert_difference('Lesson.count', -1) do
      delete lesson_url(@lesson)
    end

    assert_redirected_to lessons_url
  end
end
