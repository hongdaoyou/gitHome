#!/bin/bash


function get_re_info() {
    php $gitHome/php/re_info_handle.php "$*"

}


get_re_info "$*"

