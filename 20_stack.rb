require_relative "lib/stack"

st = Stack.new
st.push(1)
st.push(2)
st.push(3)
puts st.pop
puts st.pop
puts st.pop
puts st.pop