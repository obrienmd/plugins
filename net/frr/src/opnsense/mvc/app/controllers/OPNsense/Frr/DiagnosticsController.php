<?php
/*
    Copyright (C) 2017 Fabian Franz
    Copyright (C) 2017 Michael Muenz
    All rights reserved.
    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:
    1. Redistributions of source code must retain the above copyright notice,
       this list of conditions and the following disclaimer.
    2. Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.
    THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES,
    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
    AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
    AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
    OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
    POSSIBILITY OF SUCH DAMAGE.
*/

namespace OPNsense\Frr;

class DiagnosticsController extends \OPNsense\Base\IndexController
{
    public function bgpAction()
    {
        $this->view->title = gettext("Diagnostics: BGP");
        $this->view->diagnosticsForm = $this->getForm("diagnostics");
        $this->view->pick('OPNsense/Frr/diagnosticsbgp');
    }
    public function ospfAction()
    {
        $this->view->title = gettext("Diagnostics: OSPF");
        $this->view->pick('OPNsense/Frr/diagnosticsospf');
    }
    public function ospfv3Action()
    {
        $this->view->title = gettext("Diagnostics: OSPFv3");
        $this->view->pick('OPNsense/Frr/diagnosticsospfv3');
    }
    public function generalAction()
    {
        $this->view->title = gettext("Diagnostics: General");
        $this->view->pick('OPNsense/Frr/diagnosticsgeneral');
    }
    public function logAction()
    {
        $this->view->title = gettext("Diagnostics: Log");
        $this->view->pick('OPNsense/Frr/log');
    }
}
