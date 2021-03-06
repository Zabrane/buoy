-include("buoy.hrl").
-include_lib("shackle/include/shackle.hrl").

%% macros
-define(APP, buoy).
-define(CLIENT, buoy_client).
-define(GET_ENV(Key, Default), application:get_env(?APP, Key, Default)).
-define(LOOKUP(Key, List), ?LOOKUP(Key, List, undefined)).
-define(LOOKUP(Key, List, Default), shackle_utils:lookup(Key, List, Default)).
-define(MAX_32_BIT_INT, 4294967296).

%% defaults
-define(DEFAULT_BACKLOG_SIZE, 1024).
-define(DEFAULT_BODY, undefined).
-define(DEFAULT_HEADERS, []).
-define(DEFAULT_IP, "127.0.0.1").
-define(DEFAULT_PID, self()).
-define(DEFAULT_POOL_OPTIONS, []).
-define(DEFAULT_POOL_SIZE, 16).
-define(DEFAULT_POOL_STRATEGY, round_robin).
-define(DEFAULT_PORT, 80).
-define(DEFAULT_RECONNECT, true).
-define(DEFAULT_RECONNECT_MAX, 120000).
-define(DEFAULT_RECONNECT_MIN, 500).
-define(DEFAULT_SOCKET_OPTIONS, [
                                 inet,
                                 binary,
                                 {packet, raw},
                                 {header, 0},
                                 {delay_send, false},
                                 {nodelay, true},
                                 {exit_on_close, true},
                                 {show_econnreset, true},
                                 {send_timeout_close, true},
                                 %% {send_timeout, 1500},
                                 {tos, 72},
                                 {send_timeout_close, true} ]).
-define(DEFAULT_TIMEOUT, 5000).
