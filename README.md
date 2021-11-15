# Ansible-IOSXE-Always-On-Demo

## Introduction

For the past few years the network engineering industry has been bombarded with new ideas about Network Automation, Software Defined Networks, Infrastructure as Code (IaC), and the like. It can be really overwhelming to keep out with these new technologies while just keeping up with your day to day work. As a network engineer in the past, when I would hear about all the new automation rage that was supposed to make my work easier I always found myself saying, "Ok where do I start." When I first started my Network Automation journey I was like many other Network Engineers, I lived in the world of the command line interface of systems like IOS or JunOS and the like. I eat and breathed layers 1 through 3 and sometimes 4 of the OSI model and frankly I was pretty much just concerned about getting data from point A to point B. I would like to call it being a "data plumber" and as far as DevOps and programmability was concerned that was someone elses problem. Therefore when it came time for to learn I would spend hours trying to set up my environment and troubleshoot why the very thing I was supposed to test didn't work. I would wast evening and weekends of my life just trying to get the lab to function so I could, learn about Network Automation. That is why I made this demo. It is my goal that the containerized environment will take away the hours spent trying to just get your environment set up. Furthermore, Cisco DevNet's always on IOS XE router sandboxes are the perfect place to test your playbooks. By the end of this demo it is my hope you will see the possiblities of a working ansible environment in acttion and encourage you to begin a deeper journey into Network automation and programibility.

Based on the idea of portability, this lab uses a Docker container running Anisble on an Ubuntu 20.04 Focal image with Python 3.6.10. This portable environment makes it easier to get started with this demo, rather than spending time trying to get your environment set up on your host system. You may run into compatibility issues, you may inadvertently download the wrong version of Python or Ansible; regardless the reason, spending time to set up your system will take time away from what you are here to do and that's to do a hands on demonstration of Ansible network automation. Although you will need to install Docker on your system, this should not be to daunting and there is plenty of resources out there to help you install Docker if you run into problems. Docker is supported on a multitude of operating systems and I will direct you to approriate resouces below in the [Setting up Docker](#setting-up-docker) section.

This lab utilizes the Cisco DevNet's "IOS XE on CSR Recommended Code Always On" sandbox, which is a CSR 1000v currently on a recommended version IOS XE and per the documentation is updated every 12 months.  For more information on the always on sandbox please visit [devnetsandbox.cisco.com](https://devnetsandbox.cisco.com/), if you don't have a DevNet Login, you will be required to register with DevNet, but don't worry, its free! The 'always-on' sandbox is the perfect place to test out the basics of network automation with Ansible. The device is up and running, its not production, and is easily accesible from the internet. Once you have gotten comfortable with the basics of Anisble in this lab, you can branch out to your own lab. I encourage you to set up your own environment such as CML, EveNG, or GNS3 and began to branch out further with Ansible there. I have created a next step walkthrough on a more sophisticated topology for those that are interested. Please visit my repository [Ansible-CML-Demo](https://github.com/barweiss45/Ansible-CML-Demo) if you are looking for a little deeper dive, but just a fair warning the repo is still underconstruction.

## Pre-requisite Skills for this Lab

This is a list of skills that I am asssuming you have prior to running through this demo. However, if you are hazy on a the topics below I have provided some links to help in your learning journey. In the end, if you are hazy on a few of the skills don't worry. This is a walkthrough so if you follow the instructions you'll get through the material. Just be aware that I may skip and glance over some of the basics so, use this section as supplemental resuouce section if you are looking for more information.

* Basic Linux Administration
  * Understanding Bash
  * Linux File Systems and Structures
* Working with Containers and Docker
  * What is a Container?
  * Docker Basics
* Understanding Data Serialization
  * What is YAML?
  * What is JSON?
* Basic Python and Programmaility

## About DevNet's Always On Labs
Information about DevNet's "Always On" lab can be found on [devnetsandbox.cisco.com](https://devnetsandbox.cisco.com). You will be required to login to DevNet (developer.cisco.com). If you do not have a DevNet login then you'll need to register, but don't worry, its free. You don't have to access the device from the web page to do this demo. Everything is already set up for you, but I figured I'd provide you this information if you would like to learn more.

![Screenshot information for the "IOS XE on CSR Recommended Code Always On Sandbox](https://lucid.app/publicSegments/view/4f99bd87-ff95-4e6e-b739-fa5a3d8591be/image.png)

## Setting up Docker

If you do not have Docker installed on your system, that is fine. I will provide you some links that will walk you through this. Installing docker is not difficult and should only take a few minutes to do. However, you will need adequate privileges to install it. If you already have docker installed on your system you can skip this section. Below are links to the official install instructions on Docker.com. **Docker for Desktop will require a license for use by organizations with more than 250 employees or more than $10 Million in revenue starting January 1, 2022.** You may also choose to use [Podman](https://podman.io/) as an alternative to Docker if you are using Linux.

* [Install Docker on Windows](https://docs.docker.com/desktop/windows/install/)
* [Install Docker on MacOS](https://docs.docker.com/desktop/mac/install/)
* [Install Docker on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
* [Install Docker on CentOS](https://docs.docker.com/engine/install/centos/)
* [General Docker Install Information](https://docs.docker.com/engine/install/)

## Cloning Repo and Building the Container

## Accessing The lab

## Exploring the Anisble File Structure

## Running a Ansible Playbook

### The Anatomy of a Playbook

### Using 'ansible-doc'

## Using Jinja2 Templates with Ansible

## Configuring an Interface

## Being a Good Citizen