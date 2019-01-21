defmodule SmpClient do
 def do_this do

   pid = spawn(Multi, :listen, [])

   send pid, {:ok, "hello"}
   send pid, {:ok, "hello there guvna"}
   send pid, {:ok, [1,2,3]}
 end
end
