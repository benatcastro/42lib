#---------NAMES--------------
LIB_NAME 	= 42lib.a
LIBFT 		= libft
GNL 		= gnl
PRINTF 		= ft_printf
NAME 		= libft
#---------GCC and FLAGS----------

CC 	 		= gcc
AR			= ar rc
CFLAGS 		= -Wall -Wextra -Werror
SANITIZE 	= -fsanitize=address -g3
VALGRIND 	= valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes

#---------DIRECTORIES-----------
SRC_DIR = srcs/
OBJ_DIR = objs/
INC_DIR = includes/
LIB_DIR = libraries/

#---------FILES----------------
FILES_LIBFT = 	ft_isalpha			\
	  	ft_isdigit			\
	 	ft_isalnum			\
	 	ft_isascii			\
	  	ft_isprint			\
	  	ft_strlen			\
	  	ft_strlcpy			\
	  	ft_strlcat			\
		ft_strncmp			\
		ft_toupper			\
	  	ft_tolower			\
	  	ft_strnstr			\
	  	ft_atoi			\
	  	ft_strchr			\
	  	ft_strrchr			\
	  	ft_memset			\
	  	ft_bzero			\
	  	ft_memchr			\
	  	ft_memcmp			\
	  	ft_memcpy			\
	  	ft_memmove			\
		ft_calloc			\
	  	ft_strdup			\
	 	ft_substr			\
	  	ft_strjoin			\
	  	ft_strtrim			\
	  	ft_split			\
	  	ft_itoa			\
	  	ft_strmapi			\
	  	ft_striteri 			\
	  	ft_putchar_fd 		\
	  	ft_putstr_fd 			\
	  	ft_putendl_fd			\
	  	ft_putnbr_fd			\
		ft_lstadd_front_bonus 	\
		ft_lstlast_bonus      	\
		ft_lstnew_bonus  		\
		ft_lstsize_bonus		\
		ft_lstadd_back_bonus 	\
		ft_lstdelone_bonus		\
		ft_lstclear_bonus		\
		ft_lstiter_bonus		\
		ft_lstmap_bonus

FILES_FT_PRINTF =  ft_printf			\
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

FILES_GNL = 	get_next_line_bonus		\
		get_next_line_utils_bonus	\


#---------------PREFIX and SUFFIX-----------------

SRC_LIBFT = $(addprefix $(SRC_DIR)libft/, $(addsuffix .c, $(FILES_LIBFT)))
OBJ_LIBFT = $(addprefix $(OBJ_DIR), $(addsuffix .o, $(FILES_LIBFT)))

#OBJF = .cache_exists

all: libft

	$(AR) $(NAME) $(OBJ_DIR)%.o

mk_dirs:
	@mkdir -p $(LIB_DIR)
	@mkdir -p $(OBJ_DIR)

libft: mk_dirs $(OBJ_LIBFT)
	@echo "hello"

$(OBJ_LIBFT)%.o: $(SRC_LIBFT)
	@echo "compiling $@"
	@$(CC) $(CC_FLAGS) -I $(INC_DIR) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)
	rm -rf $(LIB_DIR)
