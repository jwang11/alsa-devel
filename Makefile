OBJS := play list setting

all: $(OBJS)
	@echo $(OBJS)

play: play.c
	gcc -o $@ $^ -lasound

list: list.c
	gcc -o $@ $^ -lasound

setting: setting.c
	gcc -o $@ $^ -lasound

.PHONY: clean
clean:
	@rm -f $(OBJS)
