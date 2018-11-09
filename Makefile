APPNAME = helloTFS
OBJS = helloTFS.o
CXX = g++

all: $(APPNAME)
$(APPNAME): $(OBJS)
	$(CXX) -o $@ $(OBJS)
$(OBJS): %.o: %.cpp
	$(CXX) -c $< -o $@
clean:
	rm -f $(OBJS) $(APPNAME)
	
