class MemoriesController < ApplicationController

def index
  @memory = Memory.new
  @user = current_user
  @memories = Memory.where(user_id: @user.id)
end

def new
  @user = current_user
  @memory = Memory.new
end

def create
  @user = current_user
  @memory = Memory.new(memory_params)
  @memory.user_id = @user.id
  @memory.save
  redirect_to memories_path
end

private

def memory_params
  params.require(:memory).permit(:header, :photo)
end

end
