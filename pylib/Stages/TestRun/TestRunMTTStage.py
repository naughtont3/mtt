#!/usr/bin/env python
#
# Copyright (c) 2015-2016 Intel, Inc. All rights reserved.
# $COPYRIGHT$
#
# Additional copyrights may follow
#
# $HEADER$
#

from __future__ import print_function
from yapsy.IPlugin import IPlugin

## @addtogroup Stages
# @{
# @addtogroup TestRun
# ordering 500
# @}
class TestRunMTTStage(IPlugin):
    def __init__(self):
        # initialise parent class
        IPlugin.__init__(self)
    def print_name(self):
        print("Run test software package")

    def ordering(self):
        return 500
