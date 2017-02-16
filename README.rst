
.. highlight:: rest

Kepler Roll 
===========

.. contents::

Introduction
--------------
This roll installs Kepler and its prerequisite (java JRE)

Downloads
~~~~~~~~~~~

#. Download `Kepler distribution v.2.5 <https://code.kepler-project.org/code/kepler/releases/installers/2.5/Kepler-2.5-linux.tar.gz>`_ 
   and put  resulting file Kepler-2.5-linux.tar.gz in src/kepler/
   Check md5sum ::

    # md5sum src/kepler/Kepler-2.5-linux.tar.gz
    ae8cc949b5c587ddf10d607842543cf0  src/kepler/Kepler-2.5-linux.tar.gz

#.  This step is for the information only, The jre file is already present in the roll src. 
     On Oracle JRE `download page <http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html>`_
    accept license, download jre-8u121-linux-x64.rpm distro. 


Building a roll
------------------

Checkout roll distribution from git repo: ::

    # git clone https://github.com/nbcrrolls/kepler
    # cd kepler

To build a roll  ::

    # make roll

The resulting ISO file  kepler-6.2-0.x86_64.disk1.iso  is the roll that can be added to the frontend.

Adding a roll 
---------------

Adding a roll 
--------------
The roll (ISO file) can be added (1) during the initial installation of the cluster (frontend)
or (2) to the existing frontend.

Adding a roll to a new server
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. Add roll ISO to your existing frontend that is configured to be 
   a central server. This procesdure is documented in the section ``Frontend 
   Central Server`` of `Rocks Users Guide <http://central6.rocksclusters.org/roll-documentation/base/6.2/>`_.

#. During the frontend install choose the kepler roll from the list of available rolls
   when you see ``Select Your Rolls`` screen. 

Adding a roll to a live frontend
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A roll can be added to the existing frontend. 

Execute all commands from top level kepler/ ::

   # rocks add roll  kepler-6.2-0.x86_64.disk1.iso 
   # rocks enable roll kepler
   # (cd /export/rocks/install; rocks create distro)  
   # yum clean all
   # rocks run roll kepler > add-roll.sh  
   # bash add-roll.sh  > add-roll.out 2>&1

Where installed roll components are
------------------------------------

This roll will install the follwing RPMS that provide java v.8 (build 1.8.0_121)  ::

    java-1.8.0-openjdk
    java-1.8.0-openjdk-devel
    java-1.8.0-openjdk-headless
    jre1.8.0_121

Kepler is installeed in  /opt/kepler
