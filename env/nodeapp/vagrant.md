# Provisioning project

What did you need to do to provision a vm to run mongo db?
We wrote a bash script that has commands to install apache

What did you need to do to provision a vm to:

- Run the node.js application?
  wrote a bash script that to install node and npm
- Use the `nology.training` alias?
  Installing apache server, editing apache config gile, adding nology.training in the config file.
- Use apache server to dirent traffic to a given port?
  by binding ip and configure ip to 0.0.0.0 to allow public traffic
- How are you able to pass in the DB connection string?
  By adding the DB_Path to myvars.sh in the etc/profile.d folder.

---

## General Environment Questions

- What are development environments?
  A development environment is the collection of processes and tools that are used to develop the source code for a program or software product

- How do they relate to an application?
  Development environments enable developers to create and innovate without breaking something in a live environment.

### Virtual machines

- What is a virtual machine?
  a virtual representation, or emulation, of a physical computer
- What does it allow you to do?
  To run environments in a machine that is not part of a pysical computer
- How have you used one?
  Through a virtualization software (VirtualBox)

### Vagrant

- What is vagrant?
  a tool for building and managing virtual development environments.
- What is a `VagrantFile`?
  a configuration file that defines how a virtual machine should be set up and configured.

#### CLI commands

| Command   | What does it do?                        | When did you use it?                                           |
| --------- | --------------------------------------- | -------------------------------------------------------------- |
| reload    | reloads vm                              | whenver we changed vagrant                                     |
| up        | creates and starts vm                   | whenever we wanted to start new project                        |
| provision | to ran bashed                           | whenver we made changes in the script or on inital installatio |
| destroy   | it shuts and deletes vm                 | Debugging and ending project                                   |
| suspend   | it suspends vm instead of shutting down | temprarily suspend                                             |
| ssh       | gives us acces to vm                    | whevever we needed to acces vm                                 |

#### Provisioning

- What is Provisioning in relation to Vagrant?
  automatically setting up and configuring a virtual machine (VM) according to the provisioning script specified in the Vagrantfile

---
