#---------NAMES--------------
LIB_NAME 	= 42lib.a
LIBFT 		= libft
GNL 		= gnl
PRINTF 		= ft_printf
NAME 		= libft
#---------GCC and FLAGS----------

CC 	 	= gcc
CFLAGS 		= -Wall -Wextra -Werror
SANITIZE 	= -fsanitize=address -g3
VALGRIND 	= valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes

#---------DIRECTORIES-----------

SRC_DIR = srcs/$(NAME)/
OBJ_DIR = objs/
INC_DIR = includes/
LIB_DIR = libraries/

#---------FILES----------------
FILES_libft = 	ft_isalpha.c			\
	  	ft_isdigit.c			\
	 	ft_isalnum.c			\
	 	ft_isascii.c			\
	  	ft_isprint.c			\
	  	ft_strlen.c			\
	  	ft_strlcpy.c			\
	  	ft_strlcat.c			\
		ft_strncmp.c			\
		ft_toupper.c			\
	  	ft_tolower.c			\
	  	ft_strnstr.c			\
	  	ft_atoi.c			\
	  	ft_strchr.c			\
	  	ft_strrchr.c			\
	  	ft_memset.c			\
	  	ft_bzero.c			\
	  	ft_memchr.c			\
	  	ft_memcmp.c			\
	  	ft_memcpy.c			\
	  	ft_memmove.c			\
		ft_calloc.c			\
	  	ft_strdup.c			\
	 	ft_substr.c			\
	  	ft_strjoin.c			\
	  	ft_strtrim.c			\
	  	ft_split.c			\
	  	ft_itoa.c			\
	  	ft_strmapi.c			\
	  	ft_striteri.c 			\
	  	ft_putchar_fd.c 		\
	  	ft_putstr_fd.c 			\
	  	ft_putendl_fd.c			\
	  	ft_putnbr_fd.c			\
		ft_lstadd_front_bonus.c 	\
		ft_lstlast_bonus.c      	\
		ft_lstnew_bonus.c  		\
		ft_lstsize_bonus.c		\
		ft_lstadd_back_bonus.c 		\
		ft_lstdelone_bonus.c		\
		ft_lstclear_bonus.c		\
		ft_lstiter_bonus.c		\
		ft_lstmap_bonus.c

FILES_ft_printf =  ft_printf			\
		ft_printf_utils 		\
		ft_printf_utils2 		\
		ft_is_arg			\
		ft_print_args ft_getflags	\
		ft_print_precision 		\
		ft_print_prefix 		\
		ft_print_types 			\
		ft_print_types2 		\
		ft_first_arg 			\
		ft_check_arg			\

FILES_gnl = get_next_line_bonus			\
	    get_next_line_utils_bonus		\


#---------------PREFIX and SUFFIX-----------------


all: libft 

#$(LIB_NAME): 

#OBJF = .cache_exists


libft: $(OBJF) $(OBJ)

SRC_FILES = 	FILES_$(NAME)
SRC	  = 	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJ  	  = 	$(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC_FILES)))

$(OBJ_DIR)%.o: $(SRC_DIR)%.c
	@echo "compiling"
	@$(CC) $(CC_FLAGS) -I $(INC_DIR) -c $< -o $@



$(OBJF):
	@mkdir -p $(OBJ_DIR)
	@mkdir -p $(LIBRARIES_DIR)
