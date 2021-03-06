/* channel.c */
void ch_logfile(FILE *file);
int ch_log_active(void);
void ch_log(channel_T *ch, char *msg);
void ch_logs(channel_T *ch, char *msg, char *name);
channel_T *add_channel(void);
void channel_free(channel_T *channel);
void channel_gui_register(channel_T *channel);
void channel_gui_register_all(void);
channel_T *channel_open(char *hostname, int port_in, int waittime, void (*close_cb)(void));
void channel_set_pipes(channel_T *channel, sock_T in, sock_T out, sock_T err);
void channel_set_job(channel_T *channel, job_T *job);
void channel_set_options(channel_T *channel, jobopt_T *options);
void channel_set_req_callback(channel_T *channel, int part, char_u *callback, int id);
char_u *channel_get(channel_T *channel, int part);
int channel_collapse(channel_T *channel, int part);
int channel_can_write_to(channel_T *channel);
int channel_is_open(channel_T *channel);
char *channel_status(channel_T *channel);
void channel_close(channel_T *channel);
char_u *channel_peek(channel_T *channel, int part);
void channel_clear(channel_T *channel);
void channel_free_all(void);
int channel_get_id(void);
void channel_read(channel_T *channel, int part, char *func);
char_u *channel_read_block(channel_T *channel, int part, int timeout);
int channel_read_json_block(channel_T *channel, int part, int timeout, int id, typval_T **rettv);
channel_T *channel_fd2channel(sock_T fd, int *partp);
void channel_handle_events(void);
int channel_send(channel_T *channel, int part, char_u *buf, char *fun);
int channel_poll_setup(int nfd_in, void *fds_in);
int channel_poll_check(int ret_in, void *fds_in);
int channel_select_setup(int maxfd_in, void *rfds_in);
int channel_select_check(int ret_in, void *rfds_in);
int channel_parse_messages(void);
int set_ref_in_channel(int copyID);
int channel_part_send(channel_T *channel);
int channel_part_read(channel_T *channel);
ch_mode_T channel_get_mode(channel_T *channel, int part);
int channel_get_timeout(channel_T *channel, int part);
/* vim: set ft=c : */
